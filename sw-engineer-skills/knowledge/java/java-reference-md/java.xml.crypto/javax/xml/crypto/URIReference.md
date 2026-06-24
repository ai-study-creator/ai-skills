Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Interface URIReference

All Known Subinterfaces:
:   `DOMURIReference`, `Reference`, `RetrievalMethod`

---

public interface URIReference

Identifies a data object via a URI-Reference, as specified by
[RFC 2396](http://www.ietf.org/rfc/rfc2396.txt).

Note that some subclasses may not have a `type` attribute
and for objects of those types, the [`getType()`](#getType()) method always returns
`null`.

Since:
:   1.6

See Also:
:   * [`URIDereferencer`](URIDereferencer.md "interface in javax.xml.crypto")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getType()`

  Returns the type of data referenced by this URI.

  `String`

  `getURI()`

  Returns the URI of the referenced data object.

* ## Method Details

  + ### getURI

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getURI()

    Returns the URI of the referenced data object.

    Returns:
    :   the URI of the data object in RFC 2396 format (may be
        `null` if not specified)
  + ### getType

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getType()

    Returns the type of data referenced by this URI.

    Returns:
    :   the type (a URI) of the data object (may be `null`
        if not specified)