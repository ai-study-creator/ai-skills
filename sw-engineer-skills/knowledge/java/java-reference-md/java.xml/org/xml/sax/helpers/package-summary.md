Module [java.xml](../../../../module-summary.md)

# Package org.xml.sax.helpers

---

package org.xml.sax.helpers

Provides helper classes, including
support for bootstrapping SAX-based applications.

Since:
:   1.4

* Related Packages

  Package

  Description

  [org.xml.sax](../package-summary.md)

  Provides the interfaces for the Simple API for XML (SAX).

  [org.xml.sax.ext](../ext/package-summary.md)

  Provides interfaces to SAX2 facilities that
  conformant SAX drivers won't necessarily support.
* Classes

  Class

  Description

  [AttributeListImpl](AttributeListImpl.md "class in org.xml.sax.helpers")

  Deprecated.

  This class implements a deprecated interface,
  [`AttributeList`](../AttributeList.md "interface in org.xml.sax");
  that interface has been replaced by
  [`Attributes`](../Attributes.md "interface in org.xml.sax"),
  which is implemented in the
  [`AttributesImpl`](AttributesImpl.md "class in org.xml.sax.helpers") helper class.

  [AttributesImpl](AttributesImpl.md "class in org.xml.sax.helpers")

  Default implementation of the Attributes interface.

  [DefaultHandler](DefaultHandler.md "class in org.xml.sax.helpers")

  Default base class for SAX2 event handlers.

  [LocatorImpl](LocatorImpl.md "class in org.xml.sax.helpers")

  Provide an optional convenience implementation of Locator.

  [NamespaceSupport](NamespaceSupport.md "class in org.xml.sax.helpers")

  Encapsulate Namespace logic for use by applications using SAX,
  or internally by SAX drivers.

  [ParserAdapter](ParserAdapter.md "class in org.xml.sax.helpers")

  Adapt a SAX1 Parser as a SAX2 XMLReader.

  [ParserFactory](ParserFactory.md "class in org.xml.sax.helpers")

  Deprecated.

  This class works with the deprecated
  [`Parser`](../Parser.md "interface in org.xml.sax")
  interface.

  [XMLFilterImpl](XMLFilterImpl.md "class in org.xml.sax.helpers")

  Base class for deriving an XML filter.

  [XMLReaderAdapter](XMLReaderAdapter.md "class in org.xml.sax.helpers")

  Adapt a SAX2 XMLReader as a SAX1 Parser.

  [XMLReaderFactory](XMLReaderFactory.md "class in org.xml.sax.helpers")

  Deprecated.

  It is recommended to use [`SAXParserFactory`](../../../../javax/xml/parsers/SAXParserFactory.md "class in javax.xml.parsers")
  instead.