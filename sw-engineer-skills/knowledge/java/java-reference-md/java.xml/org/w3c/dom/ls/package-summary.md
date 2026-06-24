Module [java.xml](../../../../module-summary.md)

# Package org.w3c.dom.ls

---

package org.w3c.dom.ls

Provides interfaces for DOM Level 3 Load and Save. Refer to the
[Document Object Model (DOM) Level 3 Load and Save Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-LS-20040407),
the Load and Save interface allows programs and scripts to dynamically
load the content of an XML document into a DOM document and serialize a DOM
document into an XML document.

Since:
:   1.5

* Related Packages

  Package

  Description

  [org.w3c.dom](../package-summary.md)

  Provides the interfaces for the Document Object Model (DOM).

  [org.w3c.dom.bootstrap](../bootstrap/package-summary.md)

  Provides a factory for obtaining instances of `DOMImplementation`.

  [org.w3c.dom.events](../events/package-summary.md)

  Provides interfaces for DOM Level 2 Events.

  [org.w3c.dom.ranges](../ranges/package-summary.md)

  Provides interfaces for DOM Level 2 Range.

  [org.w3c.dom.traversal](../traversal/package-summary.md)

  Provides interfaces for DOM Level 2 Traversal.

  [org.w3c.dom.views](../views/package-summary.md)

  Provides interfaces for DOM Level 2 Views.
* All Classes and InterfacesInterfacesException Classes

  Class

  Description

  [DOMImplementationLS](DOMImplementationLS.md "interface in org.w3c.dom.ls")

  `DOMImplementationLS` contains the factory methods for creating
  Load and Save objects.

  [LSException](LSException.md "class in org.w3c.dom.ls")

  Parser or write operations may throw an `LSException` if the
  processing is stopped.

  [LSInput](LSInput.md "interface in org.w3c.dom.ls")

  This interface represents an input source for data.

  [LSLoadEvent](LSLoadEvent.md "interface in org.w3c.dom.ls")

  This interface represents a load event object that signals the completion
  of a document load.

  [LSOutput](LSOutput.md "interface in org.w3c.dom.ls")

  This interface represents an output destination for data.

  [LSParser](LSParser.md "interface in org.w3c.dom.ls")

  An interface to an object that is able to build, or augment, a DOM tree
  from various input sources.

  [LSParserFilter](LSParserFilter.md "interface in org.w3c.dom.ls")

  `LSParserFilter`s provide applications the ability to examine
  nodes as they are being constructed while parsing.

  [LSProgressEvent](LSProgressEvent.md "interface in org.w3c.dom.ls")

  This interface represents a progress event object that notifies the
  application about progress as a document is parsed.

  [LSResourceResolver](LSResourceResolver.md "interface in org.w3c.dom.ls")

  `LSResourceResolver` provides a way for applications to
  redirect references to external resources.

  [LSSerializer](LSSerializer.md "interface in org.w3c.dom.ls")

  A `LSSerializer` provides an API for serializing (writing) a
  DOM document out into XML.

  [LSSerializerFilter](LSSerializerFilter.md "interface in org.w3c.dom.ls")

  `LSSerializerFilter`s provide applications the ability to
  examine nodes as they are being serialized and decide what nodes should
  be serialized or not.