# Hierarchy For Package javax.xml.catalog

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.xml.catalog.[CatalogFeatures](CatalogFeatures.md "class in javax.xml.catalog")
  + javax.xml.catalog.[CatalogFeatures.Builder](CatalogFeatures.Builder.md "class in javax.xml.catalog")
  + javax.xml.catalog.[CatalogManager](CatalogManager.md "class in javax.xml.catalog")
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.lang.[RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
        + javax.xml.catalog.[CatalogException](CatalogException.md "class in javax.xml.catalog")

## Interface Hierarchy

* javax.xml.catalog.[Catalog](Catalog.md "interface in javax.xml.catalog")
* org.xml.sax.[EntityResolver](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax")
  + javax.xml.catalog.[CatalogResolver](CatalogResolver.md "interface in javax.xml.catalog") (also extends org.w3c.dom.ls.[LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls"), javax.xml.transform.[URIResolver](../transform/URIResolver.md "interface in javax.xml.transform"), javax.xml.stream.[XMLResolver](../stream/XMLResolver.md "interface in javax.xml.stream"))
* org.w3c.dom.ls.[LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls")
  + javax.xml.catalog.[CatalogResolver](CatalogResolver.md "interface in javax.xml.catalog") (also extends org.xml.sax.[EntityResolver](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax"), javax.xml.transform.[URIResolver](../transform/URIResolver.md "interface in javax.xml.transform"), javax.xml.stream.[XMLResolver](../stream/XMLResolver.md "interface in javax.xml.stream"))
* javax.xml.transform.[URIResolver](../transform/URIResolver.md "interface in javax.xml.transform")
  + javax.xml.catalog.[CatalogResolver](CatalogResolver.md "interface in javax.xml.catalog") (also extends org.xml.sax.[EntityResolver](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax"), org.w3c.dom.ls.[LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls"), javax.xml.stream.[XMLResolver](../stream/XMLResolver.md "interface in javax.xml.stream"))
* javax.xml.stream.[XMLResolver](../stream/XMLResolver.md "interface in javax.xml.stream")
  + javax.xml.catalog.[CatalogResolver](CatalogResolver.md "interface in javax.xml.catalog") (also extends org.xml.sax.[EntityResolver](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax"), org.w3c.dom.ls.[LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls"), javax.xml.transform.[URIResolver](../transform/URIResolver.md "interface in javax.xml.transform"))

## Enum Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../../../java.base/java/lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.xml.catalog.[CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog")