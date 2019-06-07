# ---------------------------------------------------- 
# --- Digital Communication module
# ---------------------------------------------------- 
__precompile__()


module DigitalComm
# ---------------------------------------------------- 
# --- Modules  
# ---------------------------------------------------- 
# Only submodules are considered so don't need to overload packages here 
# --> Go to next section with submodules loading 


# ---------------------------------------------------- 
# --- Submodules inclusion  
# ---------------------------------------------------- 
# --- Binary managment 
include("genBitSequence.jl");
# Export 
export genBitSequence!  , genBitSequence;
export genByteSequence! , genByteSequence;


# --- QAM bit mapping 
include("bitMapping.jl");
export bitMappingQAM! , bitMappingQAM;

# --- QAM Hard demapper 
include("bitDeMapping.jl");
export bitDemappingQAM! ,  bitDemappingQAM;
include("hardConstellation.jl");
export hardConstellation! , hardConstellation;


end