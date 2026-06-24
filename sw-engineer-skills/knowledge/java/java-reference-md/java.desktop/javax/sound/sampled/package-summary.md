Module [java.desktop](../../../module-summary.md)

# Package javax.sound.sampled

---

package javax.sound.sampled

Provides interfaces and classes for capture, processing, and playback of
sampled audio data.

## Related Documentation

For more information on using Java Sound see:

* [The Java Sound Tutorial](https://docs.oracle.com/javase/tutorial/sound/)

Please note: In the `javax.sound.sampled` APIs, a `null`
reference parameter to methods is incorrect unless explicitly documented on
the method as having a meaningful interpretation. Usage to the contrary is
incorrect coding and may result in a run time exception either immediately or
at some later time. `NullPointerException` is an example of typical and
acceptable run time exception for such cases.

Since:
:   1.3

* Related Packages

  Package

  Description

  [javax.sound.sampled.spi](spi/package-summary.md)

  Supplies abstract classes for service providers to subclass when offering new
  audio devices, sound file readers and writers, or audio format converters.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AudioFileFormat](AudioFileFormat.md "class in javax.sound.sampled")

  An instance of the `AudioFileFormat` class describes an audio file,
  including the file type, the file's length in bytes, the length in sample
  frames of the audio data contained in the file, and the format of the audio
  data.

  [AudioFileFormat.Type](AudioFileFormat.Type.md "class in javax.sound.sampled")

  An instance of the `Type` class represents one of the standard
  types of audio file.

  [AudioFormat](AudioFormat.md "class in javax.sound.sampled")

  `AudioFormat` is the class that specifies a particular arrangement of
  data in a sound stream.

  [AudioFormat.Encoding](AudioFormat.Encoding.md "class in javax.sound.sampled")

  The `Encoding` class names the specific type of data representation
  used for an audio stream.

  [AudioInputStream](AudioInputStream.md "class in javax.sound.sampled")

  An audio input stream is an input stream with a specified audio format and
  length.

  [AudioPermission](AudioPermission.md "class in javax.sound.sampled")

  The `AudioPermission` class represents access rights to the audio
  system resources.

  [AudioSystem](AudioSystem.md "class in javax.sound.sampled")

  The `AudioSystem` class acts as the entry point to the sampled-audio
  system resources.

  [BooleanControl](BooleanControl.md "class in javax.sound.sampled")

  A `BooleanControl` provides the ability to switch between two possible
  settings that affect a line's audio.

  [BooleanControl.Type](BooleanControl.Type.md "class in javax.sound.sampled")

  An instance of the `BooleanControl.Type` class identifies one kind
  of boolean control.

  [Clip](Clip.md "interface in javax.sound.sampled")

  The `Clip` interface represents a special kind of data line whose audio
  data can be loaded prior to playback, instead of being streamed in real time.

  [CompoundControl](CompoundControl.md "class in javax.sound.sampled")

  A `CompoundControl`, such as a graphic equalizer, provides control over
  two or more related properties, each of which is itself represented as a
  `Control`.

  [CompoundControl.Type](CompoundControl.Type.md "class in javax.sound.sampled")

  An instance of the `CompoundControl.Type` inner class identifies
  one kind of compound control.

  [Control](Control.md "class in javax.sound.sampled")

  [`Lines`](Line.md "interface in javax.sound.sampled") often have a set of controls, such as gain and pan, that
  affect the audio signal passing through the line.

  [Control.Type](Control.Type.md "class in javax.sound.sampled")

  An instance of the `Type` class represents the type of the control.

  [DataLine](DataLine.md "interface in javax.sound.sampled")

  `DataLine` adds media-related functionality to its superinterface,
  `Line`.

  [DataLine.Info](DataLine.Info.md "class in javax.sound.sampled")

  Besides the class information inherited from its superclass,
  `DataLine.Info` provides additional information specific to data
  lines.

  [EnumControl](EnumControl.md "class in javax.sound.sampled")

  An `EnumControl` provides control over a set of discrete possible
  values, each represented by an object.

  [EnumControl.Type](EnumControl.Type.md "class in javax.sound.sampled")

  An instance of the `EnumControl.Type` inner class identifies one
  kind of enumerated control.

  [FloatControl](FloatControl.md "class in javax.sound.sampled")

  A `FloatControl` object provides control over a range of floating-point
  values.

  [FloatControl.Type](FloatControl.Type.md "class in javax.sound.sampled")

  An instance of the `FloatControl.Type` inner class identifies one
  kind of float control.

  [Line](Line.md "interface in javax.sound.sampled")

  The `Line` interface represents a mono or multi-channel audio feed.

  [Line.Info](Line.Info.md "class in javax.sound.sampled")

  A `Line.Info` object contains information about a line.

  [LineEvent](LineEvent.md "class in javax.sound.sampled")

  The `LineEvent` class encapsulates information that a line sends its
  listeners whenever the line opens, closes, starts, or stops.

  [LineEvent.Type](LineEvent.Type.md "class in javax.sound.sampled")

  The LineEvent.Type inner class identifies what kind of event occurred on
  a line.

  [LineListener](LineListener.md "interface in javax.sound.sampled")

  Instances of classes that implement the `LineListener` interface can
  register to receive events when a line's status changes.

  [LineUnavailableException](LineUnavailableException.md "class in javax.sound.sampled")

  A `LineUnavailableException` is an exception indicating that a line
  cannot be opened because it is unavailable.

  [Mixer](Mixer.md "interface in javax.sound.sampled")

  A mixer is an audio device with one or more lines.

  [Mixer.Info](Mixer.Info.md "class in javax.sound.sampled")

  The `Mixer.Info` class represents information about an audio mixer,
  including the product's name, version, and vendor, along with a textual
  description.

  [Port](Port.md "interface in javax.sound.sampled")

  Ports are simple lines for input or output of audio to or from audio devices.

  [Port.Info](Port.Info.md "class in javax.sound.sampled")

  The `Port.Info` class extends `Line.Info` with additional
  information specific to ports, including the port's name and whether it
  is a source or a target for its mixer.

  [ReverbType](ReverbType.md "class in javax.sound.sampled")

  The `ReverbType` class provides methods for accessing various
  reverberation settings to be applied to an audio signal.

  [SourceDataLine](SourceDataLine.md "interface in javax.sound.sampled")

  A source data line is a data line to which data may be written.

  [TargetDataLine](TargetDataLine.md "interface in javax.sound.sampled")

  A target data line is a type of [`DataLine`](DataLine.md "interface in javax.sound.sampled") from which audio data can be
  read.

  [UnsupportedAudioFileException](UnsupportedAudioFileException.md "class in javax.sound.sampled")

  An `UnsupportedAudioFileException` is an exception indicating that an
  operation failed because a file did not contain valid data of a recognized
  file type and format.