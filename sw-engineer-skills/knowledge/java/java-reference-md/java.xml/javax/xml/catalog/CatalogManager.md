Module [java.xml](../../../module-summary.md)

Package [javax.xml.catalog](package-summary.md)

# Class CatalogManager

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.catalog.CatalogManager

---

public final class CatalogManager
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The Catalog Manager manages the creation of XML Catalogs and Catalog Resolvers.

Since:
:   9

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Catalog`

  `catalog(CatalogFeatures features,
  URI... uris)`

  Creates a `Catalog` object using the specified feature settings and
  uri(s) to one or more catalog files.

  `static CatalogResolver`

  `catalogResolver(Catalog catalog)`

  Creates an instance of a `CatalogResolver` using the specified catalog.

  `static CatalogResolver`

  `catalogResolver(CatalogFeatures features,
  URI... uris)`

  Creates an instance of a `CatalogResolver` using the specified feature
  settings and uri(s) to one or more catalog files.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### catalog

    public static [Catalog](Catalog.md "interface in javax.xml.catalog") catalog([CatalogFeatures](CatalogFeatures.md "class in javax.xml.catalog") features,
    [URI](../../../../java.base/java/net/URI.md "class in java.net")... uris)

    Creates a `Catalog` object using the specified feature settings and
    uri(s) to one or more catalog files.

    If `uris` is empty, system property `javax.xml.catalog.files`,
    as defined in [`CatalogFeatures`](CatalogFeatures.md "class in javax.xml.catalog"), will be read to locate the initial
    list of catalog files.

    If multiple catalog files are specified through the `uris` argument or
    `javax.xml.catalog.files` property, the first entry is considered
    the main catalog, while others are treated as alternative catalogs after
    those referenced by the `nextCatalog` elements in the main catalog.

    As specified in
    [XML Catalogs, OASIS Standard V1.1](https://www.oasis-open.org/committees/download.php/14809/xml-catalogs.html#s.res.fail), if a catalog entry is invalid, it
    is ignored. In case all entries are invalid, the resulting Catalog object
    will contain no Catalog elements. Any matching operation using the Catalog
    will return null.

    Parameters:
    :   `features` - the catalog features
    :   `uris` - uri(s) to one or more catalogs.

    Returns:
    :   an instance of a `Catalog`

    Throws:
    :   `IllegalArgumentException` - if either the URIs are not absolute
        or do not have a URL protocol handler for the URI scheme
    :   `CatalogException` - If an error occurs while parsing the catalog
    :   `SecurityException` - if access to the resource is denied by the security manager
  + ### catalogResolver

    public static [CatalogResolver](CatalogResolver.md "interface in javax.xml.catalog") catalogResolver([Catalog](Catalog.md "interface in javax.xml.catalog") catalog)

    Creates an instance of a `CatalogResolver` using the specified catalog.

    Parameters:
    :   `catalog` - the catalog instance

    Returns:
    :   an instance of a `CatalogResolver`
  + ### catalogResolver

    public static [CatalogResolver](CatalogResolver.md "interface in javax.xml.catalog") catalogResolver([CatalogFeatures](CatalogFeatures.md "class in javax.xml.catalog") features,
    [URI](../../../../java.base/java/net/URI.md "class in java.net")... uris)

    Creates an instance of a `CatalogResolver` using the specified feature
    settings and uri(s) to one or more catalog files.

    If `uris` is empty, system property `javax.xml.catalog.files`,
    as defined in [`CatalogFeatures`](CatalogFeatures.md "class in javax.xml.catalog"), will be read to locate the initial
    list of catalog files.

    If multiple catalog files are specified through the `uris` argument or
    `javax.xml.catalog.files` property, the first entry is considered
    the main catalog, while others are treated as alternative catalogs after
    those referenced by the `nextCatalog` elements in the main catalog.

    As specified in
    [XML Catalogs, OASIS Standard V1.1](https://www.oasis-open.org/committees/download.php/14809/xml-catalogs.html#s.res.fail), if a catalog entry is invalid, it
    is ignored. In case all entries are invalid, the resulting CatalogResolver
    object will contain no valid catalog. Any resolution operation using the
    resolver therefore will return as no mapping is found. See [`CatalogResolver`](CatalogResolver.md "interface in javax.xml.catalog")
    for the behavior when no mapping is found.

    Parameters:
    :   `features` - the catalog features
    :   `uris` - the uri(s) to one or more catalogs

    Returns:
    :   an instance of a `CatalogResolver`

    Throws:
    :   `IllegalArgumentException` - if either the URIs are not absolute
        or do not have a URL protocol handler for the URI scheme
    :   `CatalogException` - If an error occurs while parsing the catalog
    :   `SecurityException` - if access to the resource is denied by the security manager