Module [java.xml](../../../module-summary.md)

Package [javax.xml.catalog](package-summary.md)

# Interface CatalogResolver

All Superinterfaces:
:   `EntityResolver`, `LSResourceResolver`, `URIResolver`, `XMLResolver`

---

public interface CatalogResolver
extends [EntityResolver](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax"), [XMLResolver](../stream/XMLResolver.md "interface in javax.xml.stream"), [URIResolver](../transform/URIResolver.md "interface in javax.xml.transform"), [LSResourceResolver](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls")

A Catalog Resolver that implements SAX [`EntityResolver`](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax"),
StAX [`XMLResolver`](../stream/XMLResolver.md "interface in javax.xml.stream"),
DOM LS [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls") used by Schema Validation, and
Transform [`URIResolver`](../transform/URIResolver.md "interface in javax.xml.transform"), and resolves
external references using catalogs.

The [Catalog Standard](https://www.oasis-open.org/committees/download.php/14809/xml-catalogs.html) distinguished `external identifiers` from `uri entries`
as being used to solely identify DTDs, while `uri entries` for
other resources such as stylesheets and schema. The Java APIs, such as
[`XMLResolver`](../stream/XMLResolver.md "interface in javax.xml.stream") and [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls")
however, make no such distinction.
In consistent with the existing Java API, this CatalogResolver recognizes a
system identifier as a URI and will search both `system` and `uri`
entries in a catalog in order to find a matching entry.

The search is started in the current catalog. If a match is found,
no further attempt will be made. Only if there is no match in the current
catalog, will alternate catalogs including delegate and next catalogs be considered.

## Search Order

The resolver will first search the system-type of entries with the specified
`systemId`. The system entries include `system`,
`rewriteSystem` and `systemSuffix` entries.

If no match is found, `public` entries may be searched in accordance with
the `prefer` attribute.

**The `prefer` attribute**: if the `prefer` is public,
and there is no match found through the system entries, `public` entries
will be considered. If it is not specified, the `prefer` is public
by default (Note that by the OASIS standard, system entries will always
be considered before public entries. Prefer public means that public entries
will be matched when both system and public identifiers are specified.
In general therefore, prefer public is recommended.)

If no match is found with the `systemId` and `public` identifier,
the resolver will continue searching `uri` entries
with the specified `systemId` or `href`. The `uri` entries
include `uri`, `rewriteURI`, and `uriSuffix` entries.

## Error Handling

The interfaces that the CatalogResolver extend specified checked exceptions, including:

* [`SAXException`](../../../org/xml/sax/SAXException.md "class in org.xml.sax") and [`IOException`](../../../../java.base/java/io/IOException.md "class in java.io") by
  [`EntityResolver.resolveEntity(java.lang.String, java.lang.String)`](../../../org/xml/sax/EntityResolver.md#resolveEntity(java.lang.String,java.lang.String))
* [`XMLStreamException`](../stream/XMLStreamException.md "class in javax.xml.stream") by
  [`XMLResolver.resolveEntity(java.lang.String, java.lang.String, java.lang.String, java.lang.String)`](../stream/XMLResolver.md#resolveEntity(java.lang.String,java.lang.String,java.lang.String,java.lang.String))
* [`TransformerException`](../transform/TransformerException.md "class in javax.xml.transform") by
  [`URIResolver.resolve(java.lang.String, java.lang.String)`](../transform/URIResolver.md#resolve(java.lang.String,java.lang.String))

The CatalogResolver however, will throw [`CatalogException`](CatalogException.md "class in javax.xml.catalog")
only when `javax.xml.catalog.resolve` is specified as `strict`.
For applications that expect to handle the checked Exceptions, it may be
necessary to use a custom resolver to wrap the CatalogResolver or implement it
with a [`Catalog`](Catalog.md "interface in javax.xml.catalog") object.

Since:
:   9

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Source`

  `resolve(String href,
  String base)`

  Implements URIResolver.

  `InputSource`

  `resolveEntity(String publicId,
  String systemId)`

  Implements [`EntityResolver`](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax").

  `InputStream`

  `resolveEntity(String publicId,
  String systemId,
  String baseUri,
  String namespace)`

  Implements [`XMLResolver`](../stream/XMLResolver.md "interface in javax.xml.stream").

  `LSInput`

  `resolveResource(String type,
  String namespaceUri,
  String publicId,
  String systemId,
  String baseUri)`

  Implements [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls").

* ## Method Details

  + ### resolveEntity

    [InputSource](../../../org/xml/sax/InputSource.md "class in org.xml.sax") resolveEntity([String](../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId)

    Implements [`EntityResolver`](../../../org/xml/sax/EntityResolver.md "interface in org.xml.sax"). The method searches through
    the catalog entries in the main and alternative catalogs to attempt to find
    a match with the specified `publicId` or systemId.

    Specified by:
    :   `resolveEntity` in interface `EntityResolver`

    Parameters:
    :   `publicId` - the public identifier of the external entity being
        referenced, or null if none was supplied
    :   `systemId` - the system identifier of the external entity being
        referenced. A system identifier is required on all external entities. XML
        requires a system identifier on all external entities, so this value is
        always specified.

    Returns:
    :   a [`InputSource`](../../../org/xml/sax/InputSource.md "class in org.xml.sax") object if a mapping is found.
        If no mapping is found, returns a [`InputSource`](../../../org/xml/sax/InputSource.md "class in org.xml.sax") object
        containing an empty [`Reader`](../../../../java.base/java/io/Reader.md "class in java.io") if the
        `javax.xml.catalog.resolve` property is set to `ignore`;
        returns null if the
        `javax.xml.catalog.resolve` property is set to `continue`.

    Throws:
    :   `CatalogException` - if no mapping is found and
        `javax.xml.catalog.resolve` is specified as `strict`

    See Also:
    :   - [`InputSource`](../../../org/xml/sax/InputSource.md "class in org.xml.sax")
  + ### resolve

    [Source](../transform/Source.md "interface in javax.xml.transform") resolve([String](../../../../java.base/java/lang/String.md "class in java.lang") href,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") base)

    Implements URIResolver. The method searches through the catalog entries
    in the main and alternative catalogs to attempt to find a match
    with the specified `href` attribute. The `href` attribute will
    be used literally, with no attempt to be made absolute to the `base`.

    If the value is a URN, the `href` attribute is recognized as a
    `publicId`, and used to search `public` entries.
    If the value is a URI, it is taken as a `systemId`, and used to
    search both `system` and `uri` entries.

    Specified by:
    :   `resolve` in interface `URIResolver`

    Parameters:
    :   `href` - the href attribute that specifies the URI of a style sheet,
        which may be relative or absolute
    :   `base` - The base URI against which the href attribute will be made
        absolute if the absolute URI is required

    Returns:
    :   a [`Source`](../transform/Source.md "interface in javax.xml.transform") object if a mapping is found.
        If no mapping is found, returns an empty [`Source`](../transform/Source.md "interface in javax.xml.transform")
        object if the `javax.xml.catalog.resolve` property is set to
        `ignore`;
        returns a [`Source`](../transform/Source.md "interface in javax.xml.transform") object with the original URI
        (href, or href resolved with base if base is not null) if the
        `javax.xml.catalog.resolve` property is set to `continue`.

    Throws:
    :   `CatalogException` - if no mapping is found and
        `javax.xml.catalog.resolve` is specified as `strict`
  + ### resolveEntity

    [InputStream](../../../../java.base/java/io/InputStream.md "class in java.io") resolveEntity([String](../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") baseUri,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespace)

    Implements [`XMLResolver`](../stream/XMLResolver.md "interface in javax.xml.stream"). For the purpose of resolving
    `publicId` and `systemId`, this method is equivalent to
    [`resolveEntity(java.lang.String, java.lang.String)`](#resolveEntity(java.lang.String,java.lang.String)).

    The `systemId` will be used literally, with no attempt to be made
    absolute to the `baseUri`. The `baseUri` and `namespace`
    are not used in the search for a match in a catalog. However, a relative
    `systemId` in an xml source may have been made absolute by the parser
    with the `baseURI`, thus making it unable to find a `system` entry.
    In such a case, a `systemSuffix` entry is recommended over a
    `system` entry.

    Specified by:
    :   `resolveEntity` in interface `XMLResolver`

    Parameters:
    :   `publicId` - the public identifier of the external entity being
        referenced, or null if none was supplied
    :   `systemId` - the system identifier of the external entity being
        referenced. A system identifier is required on all external entities. XML
        requires a system identifier on all external entities, so this value is
        always specified.
    :   `baseUri` - the absolute base URI, not used by the CatalogResolver
    :   `namespace` - the namespace of the entity to resolve, not used by the
        CatalogResolver.

    Returns:
    :   an [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io") object if a mapping is found; null
        if no mapping is found and the `javax.xml.catalog.resolve` property
        is set to `continue` or `ignore`. Note that for XMLResolver,
        it is not possible to ignore a reference, `ignore` is therefore
        treated the same as `continue`.

    Throws:
    :   `CatalogException` - if no mapping is found and
        `javax.xml.catalog.resolve` is specified as `strict`
  + ### resolveResource

    [LSInput](../../../org/w3c/dom/ls/LSInput.md "interface in org.w3c.dom.ls") resolveResource([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceUri,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") publicId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") systemId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") baseUri)

    Implements [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls"). For the purpose of
    resolving `publicId` and `systemId`, this method is equivalent
    to [`resolveEntity(java.lang.String, java.lang.String)`](#resolveEntity(java.lang.String,java.lang.String)).

    The `systemId` will be used literally, with no attempt to be made
    absolute to the `baseUri`. The `baseUri`, `namespaceUri`
    and `type` are not used in the search for a match in a catalog.
    However, a relative `systemId` in a source may have been made absolute
    by the parser with the `baseURI`, thus making it unable to find a
    `system` entry. In such a case, a `systemSuffix` entry is
    recommended over a `system` entry.

    Specified by:
    :   `resolveResource` in interface `LSResourceResolver`

    Parameters:
    :   `type` - the type of the resource being resolved,
        not used by the CatalogResolver
    :   `namespaceUri` - the namespace of the resource being resolved,
        not used by the CatalogResolver
    :   `publicId` - the public identifier of the external entity being
        referenced, or `null` if no public identifier was
        supplied or if the resource is not an entity.
    :   `systemId` - the system identifier, a URI reference of the
        external resource being referenced
    :   `baseUri` - the absolute base URI, not used by the CatalogResolver

    Returns:
    :   a [`LSInput`](../../../org/w3c/dom/ls/LSInput.md "interface in org.w3c.dom.ls") object if a mapping is found; null
        if no mapping is found and the `javax.xml.catalog.resolve` property
        is set to `continue` or `ignore`. Note that for
        [`LSResourceResolver`](../../../org/w3c/dom/ls/LSResourceResolver.md "interface in org.w3c.dom.ls"), it is not possible to ignore a
        reference, `ignore` is therefore treated the same as `continue`.

    Throws:
    :   `CatalogException` - if no mapping is found and
        `javax.xml.catalog.resolve` is specified as `strict`