%{
#include "fmod_errors.h"
#include "fmod_studio.hpp"
%}

%rename(FMOD_System) FMOD::System;
%include "fmod.i"
%include "fmod_studio_common.h"
%include "fmod_studio.hpp"
