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
%include "enums.swg"

%nodefaultctor FMOD::System;
%nodefaultdtor FMOD::System;

%typemap(in,numinputs=0) FMOD::System ** (FMOD::System *tptr) {
  $1 = &tptr;
}

// 3:
%typemap(jstype)  FMOD_RESULT FMOD::System_Create "$typemap(jstype, FMOD::System*)"
%typemap(jtype)   FMOD_RESULT FMOD::System_Create "$typemap(jtype,  FMOD::System*)"
%typemap(jni)     FMOD_RESULT FMOD::System_Create "$typemap(jni,    FMOD::System*)";
%typemap(javaout) FMOD_RESULT FMOD::System_Create "$typemap(javaout,FMOD::System*)";

// 4:
%typemap(out) FMOD_RESULT FMOD::System_Create ""
%typemap(argout) FMOD::System ** {
  *(FMOD::System **)&$result = *$1;
}

// 5:
%javaexception("IllegalStateException") FMOD::System_Create {
  $action
  if (!result) {
    jclass clazz = JCALL1(FindClass, jenv, "IllegalStateException");
    JCALL2(ThrowNew, jenv, clazz, "Error creating System");
    return $null;
  }
}

%include "fmod_errors.h"
%include "fmod_dsp_effects.h"
%include "fmod_common.h"
%include "fmod.h"
%include "fmod.hpp"
