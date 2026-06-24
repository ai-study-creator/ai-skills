Module [java.xml](../../../../module-summary.md)

# Package javax.xml.stream.util

---

package javax.xml.stream.util

Provides utility classes for the Streaming API for XML (StAX).

Since:
:   1.6

* Related Packages

  Package

  Description

  [javax.xml.stream](../package-summary.md)

  Defines interfaces and classes for the Streaming API for XML (StAX).

  [javax.xml.stream.events](../events/package-summary.md)

  Defines event interfaces for the Streaming API for XML (StAX).
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [EventReaderDelegate](EventReaderDelegate.md "class in javax.xml.stream.util")

  This is the base class for deriving an XMLEventReader
  filter.

  [StreamReaderDelegate](StreamReaderDelegate.md "class in javax.xml.stream.util")

  This is the base class for deriving an XMLStreamReader filter
  This class is designed to sit between an XMLStreamReader and an
  application's XMLStreamReader.

  [XMLEventAllocator](XMLEventAllocator.md "interface in javax.xml.stream.util")

  This interface defines a class that allows a user to register
  a way to allocate events given an XMLStreamReader.

  [XMLEventConsumer](XMLEventConsumer.md "interface in javax.xml.stream.util")

  This interface defines an event consumer interface.