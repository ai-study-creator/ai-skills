Module [java.desktop](../../../module-summary.md)

# Package javax.imageio.stream

---

package javax.imageio.stream

A package of the Java Image I/O API dealing with low-level I/O from files and
streams.

The `ImageInputStream` interface unifies streaming and file-based
operations. An abstract base class, `ImageInputStreamImpl` is provided
to simplify writing a new `ImageInputStream` class. Concrete
implementation classes (`FileImageInputStream`,
`FileCacheImageInputStream`, and `MemoryCacheImageInputStream`)
are provided that allow input to come from a `File` or
`InputStream` with or without the use of a temporary cache file.

The `ImageOutputStream` interface performs an analogous function for
output. An abstract base class, `ImageOutputStreamImpl` is provided,
along with concrete implementation classes (`FileImageOutputStream`,
`FileCacheImageOutputStream`, and `MemoryCacheImageOutputStream`)
are provided that allow output to go to a `File` or
`OutputStream` with or without the use of a temporary cache file.

The `IIOByteBuffer` class provides an alternative way to perform reads
of sequences of bytes that reduces the amount of internal data copying.

Since:
:   1.4

* Related Packages

  Package

  Description

  [javax.imageio](../package-summary.md)

  The main package of the Java Image I/O API.

  [javax.imageio.event](../event/package-summary.md)

  A package of the Java Image I/O API dealing with synchronous notification of
  events during the reading and writing of images.

  [javax.imageio.metadata](../metadata/package-summary.md)

  A package of the Java Image I/O API dealing with reading and writing
  metadata.

  [javax.imageio.spi](../spi/package-summary.md)

  A package of the Java Image I/O API containing the plug-in interfaces for
  readers, writers, transcoders, and streams, and a runtime registry.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [FileCacheImageInputStream](FileCacheImageInputStream.md "class in javax.imageio.stream")

  An implementation of `ImageInputStream` that gets its
  input from a regular `InputStream`.

  [FileCacheImageOutputStream](FileCacheImageOutputStream.md "class in javax.imageio.stream")

  An implementation of `ImageOutputStream` that writes its
  output to a regular `OutputStream`.

  [FileImageInputStream](FileImageInputStream.md "class in javax.imageio.stream")

  An implementation of `ImageInputStream` that gets its
  input from a `File` or `RandomAccessFile`.

  [FileImageOutputStream](FileImageOutputStream.md "class in javax.imageio.stream")

  An implementation of `ImageOutputStream` that writes its
  output directly to a `File` or
  `RandomAccessFile`.

  [IIOByteBuffer](IIOByteBuffer.md "class in javax.imageio.stream")

  A class representing a mutable reference to an array of bytes and
  an offset and length within that array.

  [ImageInputStream](ImageInputStream.md "interface in javax.imageio.stream")

  A seekable input stream interface for use by
  `ImageReader`s.

  [ImageInputStreamImpl](ImageInputStreamImpl.md "class in javax.imageio.stream")

  An abstract class implementing the `ImageInputStream` interface.

  [ImageOutputStream](ImageOutputStream.md "interface in javax.imageio.stream")

  A seekable output stream interface for use by
  `ImageWriter`s.

  [ImageOutputStreamImpl](ImageOutputStreamImpl.md "class in javax.imageio.stream")

  An abstract class implementing the `ImageOutputStream` interface.

  [MemoryCacheImageInputStream](MemoryCacheImageInputStream.md "class in javax.imageio.stream")

  An implementation of `ImageInputStream` that gets its
  input from a regular `InputStream`.

  [MemoryCacheImageOutputStream](MemoryCacheImageOutputStream.md "class in javax.imageio.stream")

  An implementation of `ImageOutputStream` that writes its
  output to a regular `OutputStream`.