#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/raw_ostream.h"

#include "llvm/IR/LegacyPassManager.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"

using namespace llvm;

namespace {
  struct T_Hello : public FunctionPass {

    static char ID;
    T_Hello() : FunctionPass(ID) {}

    bool runOnFunction(Function &F) override {
      errs() << "Hello: ";
      errs().write_escaped(F.getName()) << '\n';
      return false;

    }

  };
}

char T_Hello::ID = 0;

static RegisterPass<T_Hello> X("t_hello", "t hello world pass",
			       false /* only looks at CFG */,
			       false /* analysis pass */);

static RegisterStandardPasses Y (llvm::PassManagerBuilder::EP_EarlyAsPossible,
				 [](const llvm::PassManagerBuilder &Builder,
				    llvm::legacy::PassManagerBase &PM) { PM.add(new T_Hello()); });
