Module [java.base](../../module-summary.md)

# Package java.io

---

package java.io

Provides for system input and output through data streams,
serialization and the file system.
Unless otherwise noted, passing a `null` argument to a constructor or
method in any class or interface in this package will cause a
`NullPointerException` to be thrown.
A *pathname string* passed as a `String` argument to a
constructor or method in any class or interface in this package will be
interpreted as described in the class specification of [`File`](File.md "class in java.io").

## Object Serialization

**Warning: Deserialization of untrusted data is inherently dangerous
and should be avoided. Untrusted data should be carefully validated according to the
"Serialization and Deserialization" section of the
.**

* [Java Object Serialization Specification](../../../../specs/serialization/index.md)* best practices

Since:
:   1.0

External Specifications
:   * [Java Object Serialization Specification](../../../../specs/serialization/index.md)

* All Classes and InterfacesInterfacesClassesEnum ClassesException ClassesAnnotation Interfaces

  Class

  Description

  [BufferedInputStream](BufferedInputStream.md "class in java.io")

  A `BufferedInputStream` adds
  functionality to another input stream-namely,
  the ability to buffer the input and to
  support the `mark` and `reset`
  methods.

  [BufferedOutputStream](BufferedOutputStream.md "class in java.io")

  The class implements a buffered output stream.

  [BufferedReader](BufferedReader.md "class in java.io")

  Reads text from a character-input stream, buffering characters so as to
  provide for the efficient reading of characters, arrays, and lines.

  [BufferedWriter](BufferedWriter.md "class in java.io")

  Writes text to a character-output stream, buffering characters so as to
  provide for the efficient writing of single characters, arrays, and strings.

  [ByteArrayInputStream](ByteArrayInputStream.md "class in java.io")

  A `ByteArrayInputStream` contains
  an internal buffer that contains bytes that
  may be read from the stream.

  [ByteArrayOutputStream](ByteArrayOutputStream.md "class in java.io")

  This class implements an output stream in which the data is
  written into a byte array.

  [CharArrayReader](CharArrayReader.md "class in java.io")

  This class implements a character buffer that can be used as a
  character-input stream.

  [CharArrayWriter](CharArrayWriter.md "class in java.io")

  This class implements a character buffer that can be used as a Writer.

  [CharConversionException](CharConversionException.md "class in java.io")

  Base class for character conversion exceptions.

  [Closeable](Closeable.md "interface in java.io")

  A `Closeable` is a source or destination of data that can be closed.

  [Console](Console.md "class in java.io")

  Methods to access the character-based console device, if any, associated
  with the current Java virtual machine.

  [DataInput](DataInput.md "interface in java.io")

  The `DataInput` interface provides
  for reading bytes from a binary stream and
  reconstructing from them data in any of
  the Java primitive types.

  [DataInputStream](DataInputStream.md "class in java.io")

  A data input stream lets an application read primitive Java data
  types from an underlying input stream in a machine-independent
  way.

  [DataOutput](DataOutput.md "interface in java.io")

  The `DataOutput` interface provides
  for converting data from any of the Java
  primitive types to a series of bytes and
  writing these bytes to a binary stream.

  [DataOutputStream](DataOutputStream.md "class in java.io")

  A data output stream lets an application write primitive Java data
  types to an output stream in a portable way.

  [EOFException](EOFException.md "class in java.io")

  Signals that an end of file or end of stream has been reached
  unexpectedly during input.

  [Externalizable](Externalizable.md "interface in java.io")

  Only the identity of the class of an Externalizable instance is
  written in the serialization stream and it is the responsibility
  of the class to save and restore the contents of its instances.

  [File](File.md "class in java.io")

  An abstract representation of file and directory pathnames.

  [FileDescriptor](FileDescriptor.md "class in java.io")

  Instances of the file descriptor class serve as an opaque handle
  to the underlying machine-specific structure representing an open
  file, an open socket, or another source or sink of bytes.

  [FileFilter](FileFilter.md "interface in java.io")

  A filter for abstract pathnames.

  [FileInputStream](FileInputStream.md "class in java.io")

  A `FileInputStream` obtains input bytes
  from a file in a file system.

  [FilenameFilter](FilenameFilter.md "interface in java.io")

  Instances of classes that implement this interface are used to
  filter filenames.

  [FileNotFoundException](FileNotFoundException.md "class in java.io")

  Signals that an attempt to open the file denoted by a specified pathname
  has failed.

  [FileOutputStream](FileOutputStream.md "class in java.io")

  A file output stream is an output stream for writing data to a
  `File` or to a `FileDescriptor`.

  [FilePermission](FilePermission.md "class in java.io")

  This class represents access to a file or directory.

  [FileReader](FileReader.md "class in java.io")

  Reads text from character files using a default buffer size.

  [FileWriter](FileWriter.md "class in java.io")

  Writes text to character files using a default buffer size.

  [FilterInputStream](FilterInputStream.md "class in java.io")

  A `FilterInputStream` wraps some other input stream, which it uses as
  its basic source of data, possibly transforming the data along the way or
  providing additional functionality.

  [FilterOutputStream](FilterOutputStream.md "class in java.io")

  This class is the superclass of all classes that filter output
  streams.

  [FilterReader](FilterReader.md "class in java.io")

  Abstract class for reading filtered character streams.

  [FilterWriter](FilterWriter.md "class in java.io")

  Abstract class for writing filtered character streams.

  [Flushable](Flushable.md "interface in java.io")

  A `Flushable` is a destination of data that can be flushed.

  [InputStream](InputStream.md "class in java.io")

  This abstract class is the superclass of all classes representing
  an input stream of bytes.

  [InputStreamReader](InputStreamReader.md "class in java.io")

  An InputStreamReader is a bridge from byte streams to character streams: It
  reads bytes and decodes them into characters using a specified [`charset`](../nio/charset/Charset.md "class in java.nio.charset").

  [InterruptedIOException](InterruptedIOException.md "class in java.io")

  Signals that an I/O operation has been interrupted.

  [InvalidClassException](InvalidClassException.md "class in java.io")

  Thrown when the Serialization runtime detects one of the following
  problems with a Class.

  [InvalidObjectException](InvalidObjectException.md "class in java.io")

  Indicates that one or more deserialized objects failed validation
  tests.

  [IOError](IOError.md "class in java.io")

  Thrown when a serious I/O error has occurred.

  [IOException](IOException.md "class in java.io")

  Signals that an I/O exception of some sort has occurred.

  [LineNumberInputStream](LineNumberInputStream.md "class in java.io")

  Deprecated.

  This class incorrectly assumes that bytes adequately represent
  characters.

  [LineNumberReader](LineNumberReader.md "class in java.io")

  A buffered character-input stream that keeps track of line numbers.

  [NotActiveException](NotActiveException.md "class in java.io")

  Thrown when serialization or deserialization is not active.

  [NotSerializableException](NotSerializableException.md "class in java.io")

  Thrown when an instance is required to have a Serializable interface.

  [ObjectInput](ObjectInput.md "interface in java.io")

  ObjectInput extends the DataInput interface to include the reading of
  objects.

  [ObjectInputFilter](ObjectInputFilter.md "interface in java.io")

  Filter classes, array lengths, and graph metrics during deserialization.

  [ObjectInputFilter.Config](ObjectInputFilter.Config.md "class in java.io")

  A utility class to set and get the JVM-wide deserialization filter factory,
  the static JVM-wide filter, or to create a filter from a pattern string.

  [ObjectInputFilter.FilterInfo](ObjectInputFilter.FilterInfo.md "interface in java.io")

  FilterInfo provides access to information about the current object
  being deserialized and the status of the [`ObjectInputStream`](ObjectInputStream.md "class in java.io").

  [ObjectInputFilter.Status](ObjectInputFilter.Status.md "enum class in java.io")

  The status of a check on the class, array length, number of references,
  depth, and stream size.

  [ObjectInputStream](ObjectInputStream.md "class in java.io")

  An ObjectInputStream deserializes primitive data and objects previously
  written using an ObjectOutputStream.

  [ObjectInputStream.GetField](ObjectInputStream.GetField.md "class in java.io")

  Provide access to the persistent fields read from the input stream.

  [ObjectInputValidation](ObjectInputValidation.md "interface in java.io")

  Callback interface to allow validation of objects within a graph.

  [ObjectOutput](ObjectOutput.md "interface in java.io")

  ObjectOutput extends the DataOutput interface to include writing of objects.

  [ObjectOutputStream](ObjectOutputStream.md "class in java.io")

  An ObjectOutputStream writes primitive data types and graphs of Java objects
  to an OutputStream.

  [ObjectOutputStream.PutField](ObjectOutputStream.PutField.md "class in java.io")

  Provide programmatic access to the persistent fields to be written
  to ObjectOutput.

  [ObjectStreamClass](ObjectStreamClass.md "class in java.io")

  Serialization's descriptor for classes.

  [ObjectStreamConstants](ObjectStreamConstants.md "interface in java.io")

  Constants written into the Object Serialization Stream.

  [ObjectStreamException](ObjectStreamException.md "class in java.io")

  Superclass of all exceptions specific to Object Stream classes.

  [ObjectStreamField](ObjectStreamField.md "class in java.io")

  A description of a Serializable field from a Serializable class.

  [OptionalDataException](OptionalDataException.md "class in java.io")

  Exception indicating the failure of an object read operation due to
  unread primitive data, or the end of data belonging to a serialized
  object in the stream.

  [OutputStream](OutputStream.md "class in java.io")

  This abstract class is the superclass of all classes representing
  an output stream of bytes.

  [OutputStreamWriter](OutputStreamWriter.md "class in java.io")

  An OutputStreamWriter is a bridge from character streams to byte streams:
  Characters written to it are encoded into bytes using a specified [`charset`](../nio/charset/Charset.md "class in java.nio.charset").

  [PipedInputStream](PipedInputStream.md "class in java.io")

  A piped input stream should be connected
  to a piped output stream; the piped input
  stream then provides whatever data bytes
  are written to the piped output stream.

  [PipedOutputStream](PipedOutputStream.md "class in java.io")

  A piped output stream can be connected to a piped input stream
  to create a communications pipe.

  [PipedReader](PipedReader.md "class in java.io")

  Piped character-input streams.

  [PipedWriter](PipedWriter.md "class in java.io")

  Piped character-output streams.

  [PrintStream](PrintStream.md "class in java.io")

  A `PrintStream` adds functionality to another output stream,
  namely the ability to print representations of various data values
  conveniently.

  [PrintWriter](PrintWriter.md "class in java.io")

  Prints formatted representations of objects to a text-output stream.

  [PushbackInputStream](PushbackInputStream.md "class in java.io")

  A `PushbackInputStream` adds
  functionality to another input stream, namely
  the ability to "push back" or "unread" bytes,
  by storing pushed-back bytes in an internal buffer.

  [PushbackReader](PushbackReader.md "class in java.io")

  A character-stream reader that allows characters to be pushed back into the
  stream.

  [RandomAccessFile](RandomAccessFile.md "class in java.io")

  Instances of this class support both reading and writing to a
  random access file.

  [Reader](Reader.md "class in java.io")

  Abstract class for reading character streams.

  [SequenceInputStream](SequenceInputStream.md "class in java.io")

  A `SequenceInputStream` represents
  the logical concatenation of other input
  streams.

  [Serial](Serial.md "annotation interface in java.io")

  Indicates that an annotated field or method is part of the [serialization mechanism](Serializable.md "interface in java.io") defined by the
  [Java Object Serialization Specification](../../../../specs/serialization/output.md).

  [Serializable](Serializable.md "interface in java.io")

  Serializability of a class is enabled by the class implementing the
  java.io.Serializable interface.

  [SerializablePermission](SerializablePermission.md "class in java.io")

  This class is for Serializable permissions.

  [StreamCorruptedException](StreamCorruptedException.md "class in java.io")

  Thrown when control information that was read from an object stream
  violates internal consistency checks.

  [StreamTokenizer](StreamTokenizer.md "class in java.io")

  The `StreamTokenizer` class takes an input stream and
  parses it into "tokens", allowing the tokens to be
  read one at a time.

  [StringBufferInputStream](StringBufferInputStream.md "class in java.io")

  Deprecated.

  This class does not properly convert characters into bytes.

  [StringReader](StringReader.md "class in java.io")

  A character stream whose source is a string.

  [StringWriter](StringWriter.md "class in java.io")

  A character stream that collects its output in a string buffer, which can
  then be used to construct a string.

  [SyncFailedException](SyncFailedException.md "class in java.io")

  Signals that a sync operation has failed.

  [UncheckedIOException](UncheckedIOException.md "class in java.io")

  Wraps an [`IOException`](IOException.md "class in java.io") with an unchecked exception.

  [UnsupportedEncodingException](UnsupportedEncodingException.md "class in java.io")

  The Character Encoding is not supported.

  [UTFDataFormatException](UTFDataFormatException.md "class in java.io")

  Signals that a malformed string in
  [modified UTF-8](DataInput.md#modified-utf-8)
  format has been read in a data
  input stream or by any class that implements the data input
  interface.

  [WriteAbortedException](WriteAbortedException.md "class in java.io")

  Signals that one of the ObjectStreamExceptions was thrown during a
  write operation.

  [Writer](Writer.md "class in java.io")

  Abstract class for writing to character streams.