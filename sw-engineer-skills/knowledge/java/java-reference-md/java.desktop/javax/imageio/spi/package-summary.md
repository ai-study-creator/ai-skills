Module [java.desktop](../../../module-summary.md)

# Package javax.imageio.spi

---

package javax.imageio.spi

A package of the Java Image I/O API containing the plug-in interfaces for
readers, writers, transcoders, and streams, and a runtime registry.

The `javax.imageio.spi` package contains service provider interfaces
for reading, writing, and transcoding images, and obtaining image input and
output streams, as well as a run-time registry that discovers installed
instances of Image I/O service providers and allows new instances to be
registered dynamically.

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

  [javax.imageio.stream](../stream/package-summary.md)

  A package of the Java Image I/O API dealing with low-level I/O from files and
  streams.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [IIORegistry](IIORegistry.md "class in javax.imageio.spi")

  A registry for Image I/O service provider instances.

  [IIOServiceProvider](IIOServiceProvider.md "class in javax.imageio.spi")

  A superinterface for functionality common to all Image I/O service
  provider interfaces (SPIs).

  [ImageInputStreamSpi](ImageInputStreamSpi.md "class in javax.imageio.spi")

  The service provider interface (SPI) for
  `ImageInputStream`s.

  [ImageOutputStreamSpi](ImageOutputStreamSpi.md "class in javax.imageio.spi")

  The service provider interface (SPI) for
  `ImageOutputStream`s.

  [ImageReaderSpi](ImageReaderSpi.md "class in javax.imageio.spi")

  The service provider interface (SPI) for `ImageReader`s.

  [ImageReaderWriterSpi](ImageReaderWriterSpi.md "class in javax.imageio.spi")

  A superclass containing instance variables and methods common to
  `ImageReaderSpi` and `ImageWriterSpi`.

  [ImageTranscoderSpi](ImageTranscoderSpi.md "class in javax.imageio.spi")

  The service provider interface (SPI) for `ImageTranscoder`s.

  [ImageWriterSpi](ImageWriterSpi.md "class in javax.imageio.spi")

  The service provider interface (SPI) for `ImageWriter`s.

  [RegisterableService](RegisterableService.md "interface in javax.imageio.spi")

  An optional interface that may be provided by service provider
  objects that will be registered with a
  `ServiceRegistry`.

  [ServiceRegistry](ServiceRegistry.md "class in javax.imageio.spi")

  A registry for service provider instances for Image I/O service types.

  [ServiceRegistry.Filter](ServiceRegistry.Filter.md "interface in javax.imageio.spi")

  A simple filter interface used by
  `ServiceRegistry.getServiceProviders` to select
  providers matching an arbitrary criterion.