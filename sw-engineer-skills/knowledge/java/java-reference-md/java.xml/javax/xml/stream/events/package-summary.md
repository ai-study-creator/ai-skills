Module [java.xml](../../../../module-summary.md)

# Package javax.xml.stream.events

---

package javax.xml.stream.events

Defines event interfaces for the Streaming API for XML (StAX).

Since:
:   1.6

* Related Packages

  Package

  Description

  [javax.xml.stream](../package-summary.md)

  Defines interfaces and classes for the Streaming API for XML (StAX).

  [javax.xml.stream.util](../util/package-summary.md)

  Provides utility classes for the Streaming API for XML (StAX).
* Interfaces

  Class

  Description

  [Attribute](Attribute.md "interface in javax.xml.stream.events")

  An interface that contains information about an attribute.

  [Characters](Characters.md "interface in javax.xml.stream.events")

  This describes the interface to Characters events.

  [Comment](Comment.md "interface in javax.xml.stream.events")

  An interface for comment events

  [DTD](DTD.md "interface in javax.xml.stream.events")

  This is the top level interface for events dealing with DTDs

  [EndDocument](EndDocument.md "interface in javax.xml.stream.events")

  A marker interface for the end of the document

  [EndElement](EndElement.md "interface in javax.xml.stream.events")

  An interface for the end element event.

  [EntityDeclaration](EntityDeclaration.md "interface in javax.xml.stream.events")

  An interface for handling Entity Declarations
  This interface is used to record and report unparsed entity declarations.

  [EntityReference](EntityReference.md "interface in javax.xml.stream.events")

  An interface for handling Entity events.

  [Namespace](Namespace.md "interface in javax.xml.stream.events")

  An interface that contains information about a namespace.

  [NotationDeclaration](NotationDeclaration.md "interface in javax.xml.stream.events")

  An interface for handling Notation Declarations
  Receive notification of a notation declaration event.

  [ProcessingInstruction](ProcessingInstruction.md "interface in javax.xml.stream.events")

  An interface that describes the data found in processing instructions

  [StartDocument](StartDocument.md "interface in javax.xml.stream.events")

  An interface for the start document event

  [StartElement](StartElement.md "interface in javax.xml.stream.events")

  The StartElement interface provides access to information about
  start elements.

  [XMLEvent](XMLEvent.md "interface in javax.xml.stream.events")

  This is the base event interface for handling markup events.