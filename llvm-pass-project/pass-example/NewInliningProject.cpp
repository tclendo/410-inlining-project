// https://gist.github.com/mshockwave/68ad87fbe469b69639b32fce4e6150e3#file-llvmpass2018-part1-register-final-cpp

#include "llvm/IR/PassManager.h"
#include "llvm/Passes/PassBuilder.h"
#include "llvm/Passes/PassPlugin.h"
#include "llvm/Support/raw_ostream.h"
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

  // simply print out the number of SCC's on the call graph
  errs() << "SCC Size: " << C.getName() << "\n";

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
