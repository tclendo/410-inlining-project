add_llvm_library( LLVMInliningProject MODULE
  InliningProject.cc
  
  PLUGIN_TOOL
  opt
  )
