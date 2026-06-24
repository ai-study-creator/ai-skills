# Hierarchy For Package org.xml.sax.ext

Package Hierarchies:

* [All Packages](../../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
  + org.xml.sax.helpers.[AttributesImpl](../helpers/AttributesImpl.md "class in org.xml.sax.helpers") (implements org.xml.sax.[Attributes](../Attributes.md "interface in org.xml.sax"))
    - org.xml.sax.ext.[Attributes2Impl](Attributes2Impl.md "class in org.xml.sax.ext") (implements org.xml.sax.ext.[Attributes2](Attributes2.md "interface in org.xml.sax.ext"))
  + org.xml.sax.helpers.[DefaultHandler](../helpers/DefaultHandler.md "class in org.xml.sax.helpers") (implements org.xml.sax.[ContentHandler](../ContentHandler.md "interface in org.xml.sax"), org.xml.sax.[DTDHandler](../DTDHandler.md "interface in org.xml.sax"), org.xml.sax.[EntityResolver](../EntityResolver.md "interface in org.xml.sax"), org.xml.sax.[ErrorHandler](../ErrorHandler.md "interface in org.xml.sax"))
    - org.xml.sax.ext.[DefaultHandler2](DefaultHandler2.md "class in org.xml.sax.ext") (implements org.xml.sax.ext.[DeclHandler](DeclHandler.md "interface in org.xml.sax.ext"), org.xml.sax.ext.[EntityResolver2](EntityResolver2.md "interface in org.xml.sax.ext"), org.xml.sax.ext.[LexicalHandler](LexicalHandler.md "interface in org.xml.sax.ext"))
  + org.xml.sax.helpers.[LocatorImpl](../helpers/LocatorImpl.md "class in org.xml.sax.helpers") (implements org.xml.sax.[Locator](../Locator.md "interface in org.xml.sax"))
    - org.xml.sax.ext.[Locator2Impl](Locator2Impl.md "class in org.xml.sax.ext") (implements org.xml.sax.ext.[Locator2](Locator2.md "interface in org.xml.sax.ext"))

## Interface Hierarchy

* org.xml.sax.[Attributes](../Attributes.md "interface in org.xml.sax")
  + org.xml.sax.ext.[Attributes2](Attributes2.md "interface in org.xml.sax.ext")
* org.xml.sax.ext.[DeclHandler](DeclHandler.md "interface in org.xml.sax.ext")
* org.xml.sax.[EntityResolver](../EntityResolver.md "interface in org.xml.sax")
  + org.xml.sax.ext.[EntityResolver2](EntityResolver2.md "interface in org.xml.sax.ext")
* org.xml.sax.ext.[LexicalHandler](LexicalHandler.md "interface in org.xml.sax.ext")
* org.xml.sax.[Locator](../Locator.md "interface in org.xml.sax")
  + org.xml.sax.ext.[Locator2](Locator2.md "interface in org.xml.sax.ext")