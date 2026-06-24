Module [java.xml](../../../../module-summary.md)

# Package org.xml.sax.ext

---

package org.xml.sax.ext

Provides interfaces to SAX2 facilities that
conformant SAX drivers won't necessarily support.

This package is independent of the SAX2 core, though the functionality
exposed generally needs to be implemented within a parser core.
That independence has several consequences:

* SAX2 drivers are *not* required to recognize these handlers.
* You cannot assume that the class files will be present in every SAX2
  installation.
* This package may be updated independently of SAX2 (i.e. new
  handlers and classes may be added without updating SAX2 itself).
* The new handlers are not implemented by the SAX2
  `org.xml.sax.helpers.DefaultHandler` or
  `org.xml.sax.helpers.XMLFilterImpl` classes.
  You can subclass these if you need such behavior, or
  use the helper classes found here.
* The handlers need to be registered differently than core SAX2
  handlers.

This package, SAX2-ext, is a standardized extension to SAX2. It is
designed both to allow SAX parsers to pass certain types of information
to applications, and to serve as a simple model for other SAX2 parser
extension packages. Not all such extension packages should need to
be recognized directly by parsers, however.
As an example, most validation systems can be cleanly layered on top
of parsers supporting the standardized SAX2 interfaces.

Since:
:   1.4

* Related Packages

  Package

  Description

  [org.xml.sax](../package-summary.md)

  Provides the interfaces for the Simple API for XML (SAX).

  [org.xml.sax.helpers](../helpers/package-summary.md)

  Provides helper classes, including
  support for bootstrapping SAX-based applications.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [Attributes2](Attributes2.md "interface in org.xml.sax.ext")

  SAX2 extension to augment the per-attribute information
  provided through [`Attributes`](../Attributes.md "interface in org.xml.sax").

  [Attributes2Impl](Attributes2Impl.md "class in org.xml.sax.ext")

  SAX2 extension helper for additional Attributes information,
  implementing the [`Attributes2`](Attributes2.md "interface in org.xml.sax.ext") interface.

  [DeclHandler](DeclHandler.md "interface in org.xml.sax.ext")

  SAX2 extension handler for DTD declaration events.

  [DefaultHandler2](DefaultHandler2.md "class in org.xml.sax.ext")

  This class extends the SAX2 base handler class to support the
  SAX2 [`LexicalHandler`](LexicalHandler.md "interface in org.xml.sax.ext"), [`DeclHandler`](DeclHandler.md "interface in org.xml.sax.ext"), and
  [`EntityResolver2`](EntityResolver2.md "interface in org.xml.sax.ext") extensions.

  [EntityResolver2](EntityResolver2.md "interface in org.xml.sax.ext")

  Extended interface for mapping external entity references to input
  sources, or providing a missing external subset.

  [LexicalHandler](LexicalHandler.md "interface in org.xml.sax.ext")

  SAX2 extension handler for lexical events.

  [Locator2](Locator2.md "interface in org.xml.sax.ext")

  SAX2 extension to augment the entity information provided
  through a [`Locator`](../Locator.md "interface in org.xml.sax").

  [Locator2Impl](Locator2Impl.md "class in org.xml.sax.ext")

  SAX2 extension helper for holding additional Entity information,
  implementing the [`Locator2`](Locator2.md "interface in org.xml.sax.ext") interface.