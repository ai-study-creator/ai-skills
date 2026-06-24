Module [java.xml](../../../module-summary.md)

Package [javax.xml.transform](package-summary.md)

# Interface URIResolver

All Known Subinterfaces:
:   `CatalogResolver`

---

public interface URIResolver

An object that implements this interface that can be called by the processor
to turn a URI used in document(), xsl:import, or xsl:include into a Source object.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Source`

  `resolve(String href,
  String base)`

  Called by the processor when it encounters
  an xsl:include, xsl:import, or document() function.

* ## Method Details

  + ### resolve

    [Source](Source.md "interface in javax.xml.transform") resolve([String](../../../../java.base/java/lang/String.md "class in java.lang") href,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") base)
    throws [TransformerException](TransformerException.md "class in javax.xml.transform")

    Called by the processor when it encounters
    an xsl:include, xsl:import, or document() function.

    Parameters:
    :   `href` - An href attribute, which may be relative or absolute.
    :   `base` - The base URI against which the first argument will be made
        absolute if the absolute URI is required.

    Returns:
    :   A Source object, or null if the href cannot be resolved,
        and the processor should try to resolve the URI itself.

    Throws:
    :   `TransformerException` - if an error occurs when trying to
        resolve the URI.