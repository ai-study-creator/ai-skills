Module [java.xml](../../../module-summary.md)

# Package javax.xml.catalog

---

package javax.xml.catalog

Provides the classes for implementing
[XML Catalogs OASIS Standard V1.1, 7 October 2005](https://www.oasis-open.org/committees/download.php/14809/xml-catalogs.html).

The Catalog API defines a standard solution for resolving external resources
referenced by XML documents. It is fully supported by the XML Processors
allowing application developers to configure a catalog through an XML processor
or system property or the configuration file to take advantage of the feature.

The XML Catalog API defines the following interfaces:

* [`Catalog`](Catalog.md "interface in javax.xml.catalog") -- The [`Catalog`](Catalog.md "interface in javax.xml.catalog") interface represents an entity
  catalog as defined by the Catalog standard. A [`Catalog`](Catalog.md "interface in javax.xml.catalog") object
  is immutable. Once created, it can be used to find matches in a
  `system`, `public` or `uri` entry.
  A custom resolver implementation may find it useful for locating local
  resources through a catalog.
* [`CatalogFeatures`](CatalogFeatures.md "class in javax.xml.catalog") -- The [`CatalogFeatures`](CatalogFeatures.md "class in javax.xml.catalog") class holds all
  of the features and properties the Catalog API supports, including
  `javax.xml.catalog.files`, `javax.xml.catalog.defer`,
  `javax.xml.catalog.prefer`, and `javax.xml.catalog.resolve`.
* [`CatalogManager`](CatalogManager.md "class in javax.xml.catalog") -- The [`CatalogManager`](CatalogManager.md "class in javax.xml.catalog") class manages the
  creation of XML catalogs and catalog resolvers.
* [`CatalogResolver`](CatalogResolver.md "interface in javax.xml.catalog") -- The [`CatalogResolver`](CatalogResolver.md "interface in javax.xml.catalog") class is a
  `Catalog` resolver that implements [`EntityResolver`](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax"),
  [`XMLResolver`](../stream/XMLResolver.md "interface in javax.xml.stream"), [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls"),
  and [`URIResolver`](../transform/URIResolver.md "interface in javax.xml.transform"), and resolves external
  references using catalogs.

Unless otherwise noted, passing a null argument to
a constructor or method in any class or interface in this package will
cause a `NullPointerException` to be thrown.

Since:
:   9

* Related Packages

  Package

  Description

  [javax.xml](../package-summary.md)

  Defines constants for XML processing.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [Catalog](Catalog.md "interface in javax.xml.catalog")

  The Catalog class represents an entity Catalog as defined by
  [XML Catalogs, OASIS Standard V1.1, 7 October 2005](https://www.oasis-open.org/committees/download.php/14809/xml-catalogs.html).

  [CatalogException](CatalogException.md "class in javax.xml.catalog")

  The exception class handles errors that may happen while processing or using
  a catalog.

  [CatalogFeatures](CatalogFeatures.md "class in javax.xml.catalog")

  The CatalogFeatures holds a collection of features and properties.

  [CatalogFeatures.Builder](CatalogFeatures.Builder.md "class in javax.xml.catalog")

  The Builder class for building the CatalogFeatures object.

  [CatalogFeatures.Feature](CatalogFeatures.Feature.md "enum class in javax.xml.catalog")

  A Feature type as defined in the
  [Catalog Features table](CatalogFeatures.md#CatalogFeatures).

  [CatalogManager](CatalogManager.md "class in javax.xml.catalog")

  The Catalog Manager manages the creation of XML Catalogs and Catalog Resolvers.

  [CatalogResolver](CatalogResolver.md "interface in javax.xml.catalog")

  A Catalog Resolver that implements SAX [`EntityResolver`](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax"),
  StAX [`XMLResolver`](../stream/XMLResolver.md "interface in javax.xml.stream"),
  DOM LS [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") used by Schema Validation, and
  Transform [`URIResolver`](../transform/URIResolver.md "interface in javax.xml.transform"), and resolves
  external references using catalogs.