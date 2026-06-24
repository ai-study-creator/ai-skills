Module [java.xml](../../../module-summary.md)

# Package javax.xml.stream

---

package javax.xml.stream

Defines interfaces and classes for the Streaming API for XML (StAX).

StAX provides two basic functions: the cursor API allowing users to
read and write XML efficiently, and the event iterator API promoting
ease of use that is event based, easy to extend and pipeline.
The event iterator API is intended to layer on top of the cursor API.

The cursor API defines two interfaces: [`XMLStreamReader`](XMLStreamReader.md "interface in javax.xml.stream")
and [`XMLStreamWriter`](XMLStreamWriter.md "interface in javax.xml.stream"), while the event iterator API defines:
[`XMLEventReader`](XMLEventReader.md "interface in javax.xml.stream") and [`XMLEventWriter`](XMLEventWriter.md "interface in javax.xml.stream").

StAX supports plugability with [`XMLInputFactory`](XMLInputFactory.md "class in javax.xml.stream") and
[`XMLOutputFactory`](XMLOutputFactory.md "class in javax.xml.stream") that define how an implementation is
located through a process as described in the `newFactory`
methods.

Since:
:   1.6

* Related Packages

  Package

  Description

  [javax.xml](../package-summary.md)

  Defines constants for XML processing.

  [javax.xml.stream.events](events/package-summary.md)

  Defines event interfaces for the Streaming API for XML (StAX).

  [javax.xml.stream.util](util/package-summary.md)

  Provides utility classes for the Streaming API for XML (StAX).
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [EventFilter](EventFilter.md "interface in javax.xml.stream")

  This interface declares a simple filter interface that one can
  create to filter XMLEventReaders

  [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.stream")

  An error class for reporting factory configuration errors.

  [Location](Location.md "interface in javax.xml.stream")

  Provides information on the location of an event.

  [StreamFilter](StreamFilter.md "interface in javax.xml.stream")

  This interface declares a simple filter interface that one can
  create to filter XMLStreamReaders

  [XMLEventFactory](XMLEventFactory.md "class in javax.xml.stream")

  This interface defines a utility class for creating instances of
  XMLEvents

  [XMLEventReader](XMLEventReader.md "interface in javax.xml.stream")

  This is the top level interface for parsing XML Events.

  [XMLEventWriter](XMLEventWriter.md "interface in javax.xml.stream")

  This is the top level interface for writing XML documents.

  [XMLInputFactory](XMLInputFactory.md "class in javax.xml.stream")

  Defines an abstract implementation of a factory for getting streams.

  [XMLOutputFactory](XMLOutputFactory.md "class in javax.xml.stream")

  Defines an abstract implementation of a factory for
  getting XMLEventWriters and XMLStreamWriters.

  [XMLReporter](XMLReporter.md "interface in javax.xml.stream")

  This interface is used to report non-fatal errors.

  [XMLResolver](XMLResolver.md "interface in javax.xml.stream")

  This interface is used to resolve resources during an XML parse.

  [XMLStreamConstants](XMLStreamConstants.md "interface in javax.xml.stream")

  This interface declares the constants used in this API.

  [XMLStreamException](XMLStreamException.md "class in javax.xml.stream")

  The base exception for unexpected processing errors.

  [XMLStreamReader](XMLStreamReader.md "interface in javax.xml.stream")

  The XMLStreamReader interface allows forward, read-only access to XML.

  [XMLStreamWriter](XMLStreamWriter.md "interface in javax.xml.stream")

  The XMLStreamWriter interface specifies how to write XML.