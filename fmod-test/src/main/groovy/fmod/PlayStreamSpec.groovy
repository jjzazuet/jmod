package fmod

import net.tribe7.fmod.FMOD_RESULT
import net.tribe7.fmod.System
import net.tribe7.fmod.fmod
import spock.lang.Specification

import java.nio.LongBuffer

class PlayStreamSpec extends Specification {

    void setupSpec() {
        java.lang.System.load(new File('../fmod/linux/lib/amd64/libfmod.so').absolutePath)
        java.lang.System.load(new File('../fmod/build/libs/fmod-jni/shared/libfmod-jni.so').absolutePath)
    }

    void "Play Stream."() {
        System s = fmod.System_Create()
        LongBuffer lb = LongBuffer.allocate(1)
        FMOD_RESULT res = s.getVersion(lb)
        s.close()
        s.release()
        expect: true
    }
}
