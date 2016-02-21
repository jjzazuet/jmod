%{
#include "fmod_errors.h"
#include "fmod_studio.hpp"
%}

%include "java.swg"
%include "enums.swg"
%include "std_string.i"
%include "exception.i"

%rename(FMOD_System) FMOD::System;
%include "fmod.i"
%include "fmod_studio_common.h"
%include "fmod_studio.hpp"
