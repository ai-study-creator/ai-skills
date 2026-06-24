Module [java.xml](../../../../module-summary.md)

# Package org.w3c.dom.views

---

package org.w3c.dom.views

Provides interfaces for DOM Level 2 Views. Refer to the
[Document Object Model (DOM) Level 2 Views Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Views-20001113),
the Views module allows programs and scripts to dynamically access and update
the content of a representation of a document.

Since:
:   1.8

* Related Packages

  Package

  Description

  [org.w3c.dom](../package-summary.md)

  Provides the interfaces for the Document Object Model (DOM).

  [org.w3c.dom.bootstrap](../bootstrap/package-summary.md)

  Provides a factory for obtaining instances of `DOMImplementation`.

  [org.w3c.dom.events](../events/package-summary.md)

  Provides interfaces for DOM Level 2 Events.

  [org.w3c.dom.ls](../ls/package-summary.md)

  Provides interfaces for DOM Level 3 Load and Save.

  [org.w3c.dom.ranges](../ranges/package-summary.md)

  Provides interfaces for DOM Level 2 Range.

  [org.w3c.dom.traversal](../traversal/package-summary.md)

  Provides interfaces for DOM Level 2 Traversal.
* Interfaces

  Class

  Description

  [AbstractView](AbstractView.md "interface in org.w3c.dom.views")

  A base interface that all views shall derive from.

  [DocumentView](DocumentView.md "interface in org.w3c.dom.views")

  The `DocumentView` interface is implemented by
  `Document` objects in DOM implementations supporting DOM
  Views.