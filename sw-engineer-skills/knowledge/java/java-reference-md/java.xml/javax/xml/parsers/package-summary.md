Module [java.xml](../../../module-summary.md)

# Package javax.xml.parsers

---

package javax.xml.parsers

Provides the classes for processing XML documents with a SAX (Simple API for XML)
parser or a DOM (Document Object Model) Document builder. The JAXP Plugability
layer allows an application programmer to specify an implementation and
configure where to locate it.

Since:
:   1.4

* Related Packages

  Package

  Description

  [javax.xml](../package-summary.md)

  Defines constants for XML processing.
* All Classes and InterfacesClassesException Classes

  Class

  Description

  [DocumentBuilder](DocumentBuilder.md "class in javax.xml.parsers")

  Defines the API to obtain DOM Document instances from an XML
  document.

  [DocumentBuilderFactory](DocumentBuilderFactory.md "class in javax.xml.parsers")

  Defines a factory API that enables applications to obtain a
  parser that produces DOM object trees from XML documents.

  [FactoryConfigurationError](FactoryConfigurationError.md "class in javax.xml.parsers")

  Thrown when a problem with configuration with the Parser Factories
  exists.

  [ParserConfigurationException](ParserConfigurationException.md "class in javax.xml.parsers")

  Indicates a serious configuration error.

  [SAXParser](SAXParser.md "class in javax.xml.parsers")

  Defines the API that wraps an [`XMLReader`](../../../org/xml/sax/XMLReader.md "interface in org.xml.sax")
  implementation class.

  [SAXParserFactory](SAXParserFactory.md "class in javax.xml.parsers")

  Defines a factory API that enables applications to configure and
  obtain a SAX based parser to parse XML documents.