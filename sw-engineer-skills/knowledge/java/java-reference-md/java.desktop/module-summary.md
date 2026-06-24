# Module java.desktop

---

module java.desktop

Defines the AWT and Swing user interface toolkits, plus APIs for
accessibility, audio, imaging, printing, and JavaBeans.

The documentation in this module includes links to external overviews,
tutorials, examples, guides, media format specifications, and other similar
documentation. These links are meant to be informative to the reader and
nothing more. Information at these external resources, no matter the hosting
or the author, is not part of Java Platform API specification unless
explicitly stated to be so.

Since:
:   9

* ## Packages

  Exports

  Package

  Description

  [java.applet](java/applet/package-summary.md)

  Provides the classes necessary to create an applet and the classes an applet
  uses to communicate with its applet context.

  [java.awt](java/awt/package-summary.md)

  Contains all of the classes for creating user interfaces and for painting
  graphics and images.

  [java.awt.color](java/awt/color/package-summary.md)

  Provides classes for color spaces.

  [java.awt.desktop](java/awt/desktop/package-summary.md)

  Provides interfaces and classes for interaction with various desktop
  capabilities.

  [java.awt.dnd](java/awt/dnd/package-summary.md)

  Drag and Drop is a direct manipulation gesture found in many Graphical User
  Interface systems that provides a mechanism to transfer information between
  two entities logically associated with presentation elements in the GUI.

  [java.awt.event](java/awt/event/package-summary.md)

  Provides interfaces and classes for dealing with different types of events
  fired by AWT components.

  [java.awt.font](java/awt/font/package-summary.md)

  Provides classes and interface relating to fonts.

  [java.awt.geom](java/awt/geom/package-summary.md)

  Provides the Java 2D classes for defining and performing operations on
  objects related to two-dimensional geometry.

  [java.awt.im](java/awt/im/package-summary.md)

  Provides classes and interfaces for the input method framework.

  [java.awt.im.spi](java/awt/im/spi/package-summary.md)

  Provides interfaces that enable the development of input methods that can be
  used with any Java runtime environment.

  [java.awt.image](java/awt/image/package-summary.md)

  Provides classes for creating and modifying images.

  [java.awt.image.renderable](java/awt/image/renderable/package-summary.md)

  Provides classes and interfaces for producing rendering-independent images.

  [java.awt.print](java/awt/print/package-summary.md)

  Provides classes and interfaces for a general printing API.

  [java.beans](java/beans/package-summary.md)

  Contains classes related to developing *beans* -- components based on
  the JavaBeans architecture.

  [java.beans.beancontext](java/beans/beancontext/package-summary.md)

  Provides classes and interfaces relating to bean context.

  [javax.accessibility](javax/accessibility/package-summary.md)

  Defines a contract between user-interface components and an assistive
  technology that provides access to those components.

  [javax.imageio](javax/imageio/package-summary.md)

  The main package of the Java Image I/O API.

  [javax.imageio.event](javax/imageio/event/package-summary.md)

  A package of the Java Image I/O API dealing with synchronous notification of
  events during the reading and writing of images.

  [javax.imageio.metadata](javax/imageio/metadata/package-summary.md)

  A package of the Java Image I/O API dealing with reading and writing
  metadata.

  [javax.imageio.plugins.bmp](javax/imageio/plugins/bmp/package-summary.md)

  Package containing the public classes used by the built-in BMP plug-in.

  [javax.imageio.plugins.jpeg](javax/imageio/plugins/jpeg/package-summary.md)

  Classes supporting the built-in JPEG plug-in.

  [javax.imageio.plugins.tiff](javax/imageio/plugins/tiff/package-summary.md)

  Public classes used by the built-in TIFF plug-ins.

  [javax.imageio.spi](javax/imageio/spi/package-summary.md)

  A package of the Java Image I/O API containing the plug-in interfaces for
  readers, writers, transcoders, and streams, and a runtime registry.

  [javax.imageio.stream](javax/imageio/stream/package-summary.md)

  A package of the Java Image I/O API dealing with low-level I/O from files and
  streams.

  [javax.print](javax/print/package-summary.md)

  Provides the principal classes and interfaces for the Java Print
  Service API.

  [javax.print.attribute](javax/print/attribute/package-summary.md)

  Provides classes and interfaces that describe the types of Java Print
  Service attributes and how they can be collected into attribute sets.

  [javax.print.attribute.standard](javax/print/attribute/standard/package-summary.md)

  Package `javax.print.attribute.standard` contains classes for specific
  printing attributes.

  [javax.print.event](javax/print/event/package-summary.md)

  Package `javax.print.event` contains event classes and listener
  interfaces.

  [javax.sound.midi](javax/sound/midi/package-summary.md)

  Provides interfaces and classes for I/O, sequencing, and synthesis of MIDI
  (Musical Instrument Digital Interface) data.

  [javax.sound.midi.spi](javax/sound/midi/spi/package-summary.md)

  Supplies interfaces for service providers to implement when offering new MIDI
  devices, MIDI file readers and writers, or sound bank readers.

  [javax.sound.sampled](javax/sound/sampled/package-summary.md)

  Provides interfaces and classes for capture, processing, and playback of
  sampled audio data.

  [javax.sound.sampled.spi](javax/sound/sampled/spi/package-summary.md)

  Supplies abstract classes for service providers to subclass when offering new
  audio devices, sound file readers and writers, or audio format converters.

  [javax.swing](javax/swing/package-summary.md)

  Provides a set of "lightweight" (all-Java language) components
  that, to the maximum degree possible, work the same on all platforms.

  [javax.swing.border](javax/swing/border/package-summary.md)

  Provides classes and interface for drawing specialized borders around a Swing
  component.

  [javax.swing.colorchooser](javax/swing/colorchooser/package-summary.md)

  Contains classes and interfaces used by the `JColorChooser` component.

  [javax.swing.event](javax/swing/event/package-summary.md)

  Provides for events fired by Swing components.

  [javax.swing.filechooser](javax/swing/filechooser/package-summary.md)

  Contains classes and interfaces used by the `JFileChooser` component.

  [javax.swing.plaf](javax/swing/plaf/package-summary.md)

  Provides one interface and many abstract classes that Swing uses to provide
  its pluggable look-and-feel capabilities.

  [javax.swing.plaf.basic](javax/swing/plaf/basic/package-summary.md)

  Provides user interface objects built according to the Basic look and feel.

  [javax.swing.plaf.metal](javax/swing/plaf/metal/package-summary.md)

  Provides user interface objects built according to the Java look and feel
  (once codenamed *Metal*), which is the default look and feel.

  [javax.swing.plaf.multi](javax/swing/plaf/multi/package-summary.md)

  Provides user interface objects that combine two or more look and feels.

  [javax.swing.plaf.nimbus](javax/swing/plaf/nimbus/package-summary.md)

  Provides user interface objects built according to the cross-platform Nimbus
  look and feel.

  [javax.swing.plaf.synth](javax/swing/plaf/synth/package-summary.md)

  Synth is a skinnable look and feel in which all painting is delegated.

  [javax.swing.table](javax/swing/table/package-summary.md)

  Provides classes and interfaces for dealing with `javax.swing.JTable`.

  [javax.swing.text](javax/swing/text/package-summary.md)

  Provides classes and interfaces that deal with editable and noneditable text
  components.

  [javax.swing.text.html](javax/swing/text/html/package-summary.md)

  Provides the class `HTMLEditorKit` and supporting classes for creating
  HTML text editors.

  [javax.swing.text.html.parser](javax/swing/text/html/parser/package-summary.md)

  Provides the default HTML parser, along with support classes.

  [javax.swing.text.rtf](javax/swing/text/rtf/package-summary.md)

  Provides a class (`RTFEditorKit`) for creating Rich-Text-Format text
  editors.

  [javax.swing.tree](javax/swing/tree/package-summary.md)

  Provides classes and interfaces for dealing with `javax.swing.JTree`.

  [javax.swing.undo](javax/swing/undo/package-summary.md)

  Allows developers to provide support for undo/redo in applications such as
  text editors.

  Indirect Exports

  From

  Packages

  [java.datatransfer](../java.datatransfer/module-summary.md)

  [java.awt.datatransfer](../java.datatransfer/java/awt/datatransfer/package-summary.md)

  [java.xml](../java.xml/module-summary.md)

  [javax.xml](../java.xml/javax/xml/package-summary.md) [javax.xml.catalog](../java.xml/javax/xml/catalog/package-summary.md) [javax.xml.datatype](../java.xml/javax/xml/datatype/package-summary.md) [javax.xml.namespace](../java.xml/javax/xml/namespace/package-summary.md) [javax.xml.parsers](../java.xml/javax/xml/parsers/package-summary.md) [javax.xml.stream](../java.xml/javax/xml/stream/package-summary.md) [javax.xml.stream.events](../java.xml/javax/xml/stream/events/package-summary.md) [javax.xml.stream.util](../java.xml/javax/xml/stream/util/package-summary.md) [javax.xml.transform](../java.xml/javax/xml/transform/package-summary.md) [javax.xml.transform.dom](../java.xml/javax/xml/transform/dom/package-summary.md) [javax.xml.transform.sax](../java.xml/javax/xml/transform/sax/package-summary.md) [javax.xml.transform.stax](../java.xml/javax/xml/transform/stax/package-summary.md) [javax.xml.transform.stream](../java.xml/javax/xml/transform/stream/package-summary.md) [javax.xml.validation](../java.xml/javax/xml/validation/package-summary.md) [javax.xml.xpath](../java.xml/javax/xml/xpath/package-summary.md) [org.w3c.dom](../java.xml/org/w3c/dom/package-summary.md) [org.w3c.dom.bootstrap](../java.xml/org/w3c/dom/bootstrap/package-summary.md) [org.w3c.dom.events](../java.xml/org/w3c/dom/events/package-summary.md) [org.w3c.dom.ls](../java.xml/org/w3c/dom/ls/package-summary.md) [org.w3c.dom.ranges](../java.xml/org/w3c/dom/ranges/package-summary.md) [org.w3c.dom.traversal](../java.xml/org/w3c/dom/traversal/package-summary.md) [org.w3c.dom.views](../java.xml/org/w3c/dom/views/package-summary.md) [org.xml.sax](../java.xml/org/xml/sax/package-summary.md) [org.xml.sax.ext](../java.xml/org/xml/sax/ext/package-summary.md) [org.xml.sax.helpers](../java.xml/org/xml/sax/helpers/package-summary.md)
* ## Modules

  Requires

  Modifier

  Module

  Description

  transitive

  [java.datatransfer](../java.datatransfer/module-summary.md)

  Defines the API for transferring data between and within applications.

  transitive

  [java.xml](../java.xml/module-summary.md)

  Defines the Java APIs for XML Processing (JAXP).
* ## Services

  Uses

  Type

  Description

  [AccessibilityProvider](javax/accessibility/AccessibilityProvider.md "class in javax.accessibility")

  Service Provider Interface (SPI) for Assistive Technology.

  [AudioFileReader](javax/sound/sampled/spi/AudioFileReader.md "class in javax.sound.sampled.spi")

  Provider for audio file reading services.

  [AudioFileWriter](javax/sound/sampled/spi/AudioFileWriter.md "class in javax.sound.sampled.spi")

  Provider for audio file writing services.

  [FormatConversionProvider](javax/sound/sampled/spi/FormatConversionProvider.md "class in javax.sound.sampled.spi")

  A format conversion provider provides format conversion services from one or
  more input formats to one or more output formats.

  [ImageInputStreamSpi](javax/imageio/spi/ImageInputStreamSpi.md "class in javax.imageio.spi")

  The service provider interface (SPI) for
  `ImageInputStream`s.

  [ImageOutputStreamSpi](javax/imageio/spi/ImageOutputStreamSpi.md "class in javax.imageio.spi")

  The service provider interface (SPI) for
  `ImageOutputStream`s.

  [ImageReaderSpi](javax/imageio/spi/ImageReaderSpi.md "class in javax.imageio.spi")

  The service provider interface (SPI) for `ImageReader`s.

  [ImageTranscoderSpi](javax/imageio/spi/ImageTranscoderSpi.md "class in javax.imageio.spi")

  The service provider interface (SPI) for `ImageTranscoder`s.

  [ImageWriterSpi](javax/imageio/spi/ImageWriterSpi.md "class in javax.imageio.spi")

  The service provider interface (SPI) for `ImageWriter`s.

  [InputMethodDescriptor](java/awt/im/spi/InputMethodDescriptor.md "interface in java.awt.im.spi")

  Defines methods that provide sufficient information about an input method
  to enable selection and loading of that input method.

  [MidiDeviceProvider](javax/sound/midi/spi/MidiDeviceProvider.md "class in javax.sound.midi.spi")

  A `MidiDeviceProvider` is a factory or provider for a particular type
  of MIDI device.

  [MidiFileReader](javax/sound/midi/spi/MidiFileReader.md "class in javax.sound.midi.spi")

  A `MidiFileReader` supplies MIDI file-reading services.

  [MidiFileWriter](javax/sound/midi/spi/MidiFileWriter.md "class in javax.sound.midi.spi")

  A `MidiFileWriter` supplies MIDI file-writing services.

  [MixerProvider](javax/sound/sampled/spi/MixerProvider.md "class in javax.sound.sampled.spi")

  A provider or factory for a particular mixer type.

  [PrintServiceLookup](javax/print/PrintServiceLookup.md "class in javax.print")

  Implementations of this class provide lookup services for print services
  (typically equivalent to printers) of a particular type.

  [SoundbankReader](javax/sound/midi/spi/SoundbankReader.md "class in javax.sound.midi.spi")

  A `SoundbankReader` supplies soundbank file-reading services.

  [StreamPrintServiceFactory](javax/print/StreamPrintServiceFactory.md "class in javax.print")

  A `StreamPrintServiceFactory` is the factory for
  [`StreamPrintService`](javax/print/StreamPrintService.md "class in javax.print") instances, which can print to an output stream in
  a particular document format described as a mime type.