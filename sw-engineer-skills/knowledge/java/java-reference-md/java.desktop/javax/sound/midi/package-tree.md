# Hierarchy For Package javax.sound.midi

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.sound.midi.[MidiDevice.Info](MidiDevice.Info.md "class in javax.sound.midi")
  + javax.sound.midi.[MidiEvent](MidiEvent.md "class in javax.sound.midi")
  + javax.sound.midi.[MidiFileFormat](MidiFileFormat.md "class in javax.sound.midi")
  + javax.sound.midi.[MidiMessage](MidiMessage.md "class in javax.sound.midi") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))
    - javax.sound.midi.[MetaMessage](MetaMessage.md "class in javax.sound.midi")
    - javax.sound.midi.[ShortMessage](ShortMessage.md "class in javax.sound.midi")
    - javax.sound.midi.[SysexMessage](SysexMessage.md "class in javax.sound.midi")
  + javax.sound.midi.[MidiSystem](MidiSystem.md "class in javax.sound.midi")
  + javax.sound.midi.[Patch](Patch.md "class in javax.sound.midi")
  + javax.sound.midi.[Sequence](Sequence.md "class in javax.sound.midi")
  + javax.sound.midi.[Sequencer.SyncMode](Sequencer.SyncMode.md "class in javax.sound.midi")
  + javax.sound.midi.[SoundbankResource](SoundbankResource.md "class in javax.sound.midi")
    - javax.sound.midi.[Instrument](Instrument.md "class in javax.sound.midi")
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * javax.sound.midi.[InvalidMidiDataException](InvalidMidiDataException.md "class in javax.sound.midi")
      * javax.sound.midi.[MidiUnavailableException](MidiUnavailableException.md "class in javax.sound.midi")
  + javax.sound.midi.[Track](Track.md "class in javax.sound.midi")
  + javax.sound.midi.[VoiceStatus](VoiceStatus.md "class in javax.sound.midi")

## Interface Hierarchy

* java.lang.[AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")
  + javax.sound.midi.[MidiDevice](MidiDevice.md "interface in javax.sound.midi")
    - javax.sound.midi.[Sequencer](Sequencer.md "interface in javax.sound.midi")
    - javax.sound.midi.[Synthesizer](Synthesizer.md "interface in javax.sound.midi")
  + javax.sound.midi.[Receiver](Receiver.md "interface in javax.sound.midi")
    - javax.sound.midi.[MidiDeviceReceiver](MidiDeviceReceiver.md "interface in javax.sound.midi")
  + javax.sound.midi.[Transmitter](Transmitter.md "interface in javax.sound.midi")
    - javax.sound.midi.[MidiDeviceTransmitter](MidiDeviceTransmitter.md "interface in javax.sound.midi")
* java.util.[EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")
  + javax.sound.midi.[ControllerEventListener](ControllerEventListener.md "interface in javax.sound.midi")
  + javax.sound.midi.[MetaEventListener](MetaEventListener.md "interface in javax.sound.midi")
* javax.sound.midi.[MidiChannel](MidiChannel.md "interface in javax.sound.midi")
* javax.sound.midi.[Soundbank](Soundbank.md "interface in javax.sound.midi")