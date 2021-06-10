// https://gist.github.com/mshockwave/68ad87fbe469b69639b32fce4e6150e3#file-llvmpass2018-part1-register-final-cpp

#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"

// #include "llvm/Analysis/LazyCallGraph.h"

using namespace llvm;

namespace {

class NewInliningPass : public PassInfoMixin<NewInliningPass> {
public:
  // PreservedAnalyses run(Function &F,
  //                       FunctionAnalysisManager &FAM);

  PreservedAnalyses run(LazyCallGraph::SCC &C,
			CGSCCAnalysisManager &AM,
			LazyCallGraph &CG,
			CGSCCUpdateResult &UR
			);
};

} // end anonymous namespace

PreservedAnalyses NewInliningPass::run(LazyCallGraph::SCC &C,
				       CGSCCAnalysisManager &AM,
				       LazyCallGraph &CG,
				       CGSCCUpdateResult &UR) {

  // Essentially, it seems like we can wrap out CGSCCAnalysisManager with any
  // other pass manager's analysis and apply further transformations/analysis
  // to the result.
  
  // With that said, I genuinely don't know what this does but it's apparently
  // an essential analysis manager. It's a type of OuterAnalysisManagerProxy
  // that essentially performs analysis on an inner IR and allows an outer
  // IR unit to view the results?
  const auto &MAMProxy =
    AM.getResult<ModuleAnalysisManagerCGSCCProxy>(C, CG);

	// A function analysis manager proxy for use in more analysis
	FunctionAnalysisManager &FAM =
		AM.getResult<FunctionAnalysisManagerCGSCCProxy>(C, CG)
		.getManager();
	
	// Neither of these proxies are actually used for our case here,
	// we simply act upon the call graph. The proxies were written as I was
	// trying to understand the inliner more.
	
	// ------------------------------------------

  // we cannot act on an empty SCC
  if (C.size() == 0) {
    errs() << "Cannot work on empty SCC" << "\n";
    return PreservedAnalyses::all();
  }

	// also unused right now. meant for InlineAnalysis and getting initial state
	// of SCC I think?
	Module &M = *C.begin()->getFunction().getParent();

	// list of calls
	std::vector<CallBase*> Calls;

	// this loop essentially loops through all the instructions for each
	// SCC node and checks if the instruction calls another function.
	// if it does, we simply add it to a list of calls.

	// this is what the current llvm inliner does but much less sophisticated
	for (auto &N : C) {
		for (Instruction &I : instructions(N.getFunction())) {
			if (auto *CB = dyn_cast<CallBase>(&I)) {
				if (Function *Callee = CB->getCalledFunction()) {
					if (!Callee->isDeclaration()) {
						//errs() << "Is called function\n";
						Calls.push_back(CB);
					}
				}
			}
		}

		// print out the node as well
		errs() << "CGSCC Node: " << N.getName() << "\n";
	}

	if (!Calls.empty()) {
		for (auto &CBN : Calls) {
			errs() << "Call to: " << CBN << "\n";
			// errs() << CBN << "\n";
		}
	}

  return PreservedAnalyses::all();
}

extern "C" ::llvm::PassPluginLibraryInfo LLVM_ATTRIBUTE_WEAK
llvmGetPassPluginInfo() {
  return {
    LLVM_PLUGIN_API_VERSION, "NewInliningPass", "v0.1",
    [](PassBuilder &PB) {
      PB.registerPipelineParsingCallback(
        [](StringRef Name, CGSCCPassManager &CGPM,
           ArrayRef<PassBuilder::PipelineElement>) {
          if(Name == "new-inlining-pass"){
            //FPM.addPass(NewInliningPass());
	    CGPM.addPass(NewInliningPass());
            return true;
          }
          return false;
        }
      );
    }
  };
}
