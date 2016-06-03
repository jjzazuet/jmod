%{
#include "fmod_errors.h"
#include "fmod.hpp"
%}

%include "../shared/buffers.i"
%apply int* BUFF {int*}
%apply float* BUFF {float*}
%apply void* BUFF {void*}
%apply unsigned int* BUFF {unsigned int*}

%include "std_string.i"
%include "java.swg"
%include "enums.swg"

%include "fmod_errors.h"
%include "fmod_dsp_effects.h"
%include "fmod_common.h"
%include "fmod.h"
%include "fmod.hpp"
