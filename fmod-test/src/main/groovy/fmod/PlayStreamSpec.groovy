package fmod

import spock.lang.Specification

class PlayStreamSpec extends Specification {

   void setupSpec() {

   }

   void "Play Stream."() {
      File f = new File('.')
      println  f.absolutePath
      expect: true
   }
}
