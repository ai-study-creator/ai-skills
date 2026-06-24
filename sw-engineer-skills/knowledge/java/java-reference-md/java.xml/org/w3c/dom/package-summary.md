Module [java.xml](../../../module-summary.md)

# Package org.w3c.dom

---

package org.w3c.dom

Provides the interfaces for the Document Object Model (DOM). Supports the
[Document Object Model (DOM) Level 2 Core Specification](http://www.w3.org/TR/DOM-Level-2-Core/),
[Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/DOM-Level-3-Core),
and [Document Object Model (DOM) Level 3 Load and Save Specification](http://www.w3.org/TR/DOM-Level-3-LS).

Since:
:   1.4

* Related Packages

  Package

  Description

  [org.w3c.dom.bootstrap](bootstrap/package-summary.md)

  Provides a factory for obtaining instances of `DOMImplementation`.

  [org.w3c.dom.events](events/package-summary.md)

  Provides interfaces for DOM Level 2 Events.

  [org.w3c.dom.ls](ls/package-summary.md)

  Provides interfaces for DOM Level 3 Load and Save.

  [org.w3c.dom.ranges](ranges/package-summary.md)

  Provides interfaces for DOM Level 2 Range.

  [org.w3c.dom.traversal](traversal/package-summary.md)

  Provides interfaces for DOM Level 2 Traversal.

  [org.w3c.dom.views](views/package-summary.md)

  Provides interfaces for DOM Level 2 Views.
* All Classes and InterfacesInterfacesException Classes

  Class

  Description

  [Attr](Attr.md "interface in org.w3c.dom")

  The `Attr` interface represents an attribute in an
  `Element` object.

  [CDATASection](CDATASection.md "interface in org.w3c.dom")

  CDATA sections are used to escape blocks of text containing characters that
  would otherwise be regarded as markup.

  [CharacterData](CharacterData.md "interface in org.w3c.dom")

  The `CharacterData` interface extends Node with a set of
  attributes and methods for accessing character data in the DOM.

  [Comment](Comment.md "interface in org.w3c.dom")

  This interface inherits from `CharacterData` and represents the
  content of a comment, i.e., all the characters between the starting
  '`<!--`' and ending '`-->`'.

  [Document](Document.md "interface in org.w3c.dom")

  The `Document` interface represents the entire HTML or XML
  document.

  [DocumentFragment](DocumentFragment.md "interface in org.w3c.dom")

  `DocumentFragment` is a "lightweight" or "minimal"
  `Document` object.

  [DocumentType](DocumentType.md "interface in org.w3c.dom")

  Each `Document` has a `doctype` attribute whose value
  is either `null` or a `DocumentType` object.

  [DOMConfiguration](DOMConfiguration.md "interface in org.w3c.dom")

  The `DOMConfiguration` interface represents the configuration
  of a document and maintains a table of recognized parameters.

  [DOMError](DOMError.md "interface in org.w3c.dom")

  `DOMError` is an interface that describes an error.

  [DOMErrorHandler](DOMErrorHandler.md "interface in org.w3c.dom")

  `DOMErrorHandler` is a callback interface that the DOM
  implementation can call when reporting errors that happens while
  processing XML data, or when doing some other processing (e.g.

  [DOMException](DOMException.md "class in org.w3c.dom")

  DOM operations only raise exceptions in "exceptional" circumstances, i.e.,
  when an operation is impossible to perform (either for logical reasons,
  because data is lost, or because the implementation has become unstable).

  [DOMImplementation](DOMImplementation.md "interface in org.w3c.dom")

  The `DOMImplementation` interface provides a number of methods
  for performing operations that are independent of any particular instance
  of the document object model.

  [DOMImplementationList](DOMImplementationList.md "interface in org.w3c.dom")

  The `DOMImplementationList` interface provides the abstraction
  of an ordered collection of DOM implementations, without defining or
  constraining how this collection is implemented.

  [DOMImplementationSource](DOMImplementationSource.md "interface in org.w3c.dom")

  This interface permits a DOM implementer to supply one or more
  implementations, based upon requested features and versions, as specified
  in [DOM
  Features](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407/core.html#DOMFeatures).

  [DOMLocator](DOMLocator.md "interface in org.w3c.dom")

  `DOMLocator` is an interface that describes a location (e.g.

  [DOMStringList](DOMStringList.md "interface in org.w3c.dom")

  The `DOMStringList` interface provides the abstraction of an
  ordered collection of `DOMString` values, without defining or
  constraining how this collection is implemented.

  [Element](Element.md "interface in org.w3c.dom")

  The `Element` interface represents an element in an HTML or XML
  document.

  [ElementTraversal](ElementTraversal.md "interface in org.w3c.dom")

  The `ElementTraversal` interface is a set of read-only attributes
  which allow an author to easily navigate between elements in a document.

  [Entity](Entity.md "interface in org.w3c.dom")

  This interface represents a known entity, either parsed or unparsed, in an
  XML document.

  [EntityReference](EntityReference.md "interface in org.w3c.dom")

  `EntityReference` nodes may be used to represent an entity
  reference in the tree.

  [NamedNodeMap](NamedNodeMap.md "interface in org.w3c.dom")

  Objects implementing the `NamedNodeMap` interface are used to
  represent collections of nodes that can be accessed by name.

  [NameList](NameList.md "interface in org.w3c.dom")

  The `NameList` interface provides the abstraction of an ordered
  collection of parallel pairs of name and namespace values (which could be
  null values), without defining or constraining how this collection is
  implemented.

  [Node](Node.md "interface in org.w3c.dom")

  The `Node` interface is the primary datatype for the entire
  Document Object Model.

  [NodeList](NodeList.md "interface in org.w3c.dom")

  The `NodeList` interface provides the abstraction of an ordered
  collection of nodes, without defining or constraining how this collection
  is implemented.

  [Notation](Notation.md "interface in org.w3c.dom")

  This interface represents a notation declared in the DTD.

  [ProcessingInstruction](ProcessingInstruction.md "interface in org.w3c.dom")

  The `ProcessingInstruction` interface represents a "processing
  instruction", used in XML as a way to keep processor-specific information
  in the text of the document.

  [Text](Text.md "interface in org.w3c.dom")

  The `Text` interface inherits from `CharacterData`
  and represents the textual content (termed [character data](http://www.w3.org/TR/2004/REC-xml-20040204#syntax) in XML) of an `Element` or `Attr`.

  [TypeInfo](TypeInfo.md "interface in org.w3c.dom")

  The `TypeInfo` interface represents a type referenced from
  `Element` or `Attr` nodes, specified in the schemas
  associated with the document.

  [UserDataHandler](UserDataHandler.md "interface in org.w3c.dom")

  When associating an object to a key on a node using
  `Node.setUserData()` the application can provide a handler
  that gets called when the node the object is associated to is being
  cloned, imported, or renamed.