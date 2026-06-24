Module [java.xml](../../../../module-summary.md)

# Package org.w3c.dom.traversal

---

package org.w3c.dom.traversal

Provides interfaces for DOM Level 2 Traversal. Refer to the
[Document Object Model (DOM) Level 2 Traversal and Range Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Traversal-Range-20001113),
the Traversal module contains specialized interfaces dedicated to
traversing the document structure.

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

  [org.w3c.dom.ls](../ls/package-summary.md)

  Provides interfaces for DOM Level 3 Load and Save.

  [org.w3c.dom.ranges](../ranges/package-summary.md)

  Provides interfaces for DOM Level 2 Range.

  [org.w3c.dom.views](../views/package-summary.md)

  Provides interfaces for DOM Level 2 Views.
* Interfaces

  Class

  Description

  [DocumentTraversal](DocumentTraversal.md "interface in org.w3c.dom.traversal")

  `DocumentTraversal` contains methods that create
  `NodeIterators` and `TreeWalkers` to traverse a
  node and its children in document order (depth first, pre-order
  traversal, which is equivalent to the order in which the start tags occur
  in the text representation of the document).

  [NodeFilter](NodeFilter.md "interface in org.w3c.dom.traversal")

  Filters are objects that know how to "filter out" nodes.

  [NodeIterator](NodeIterator.md "interface in org.w3c.dom.traversal")

  `NodeIterators` are used to step through a set of nodes, e.g.

  [TreeWalker](TreeWalker.md "interface in org.w3c.dom.traversal")

  `TreeWalker` objects are used to navigate a document tree or
  subtree using the view of the document defined by their
  `whatToShow` flags and filter (if any).