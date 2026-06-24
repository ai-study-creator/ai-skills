Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Interface URIDereferencer

---

public interface URIDereferencer

A dereferencer of [`URIReference`](URIReference.md "interface in javax.xml.crypto")s.

The result of dereferencing a `URIReference` is either an
instance of [`OctetStreamData`](OctetStreamData.md "class in javax.xml.crypto") or [`NodeSetData`](NodeSetData.md "interface in javax.xml.crypto"). Unless the
`URIReference` is a *same-document reference* as defined
in section 4.2 of the W3C Recommendation for XML-Signature Syntax and
Processing, the result of dereferencing the `URIReference`
MUST be an `OctetStreamData`.

Since:
:   1.6

See Also:
:   * [`XMLCryptoContext.setURIDereferencer(URIDereferencer)`](XMLCryptoContext.md#setURIDereferencer(javax.xml.crypto.URIDereferencer))
    * [`XMLCryptoContext.getURIDereferencer()`](XMLCryptoContext.md#getURIDereferencer())

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Data`

  `dereference(URIReference uriReference,
  XMLCryptoContext context)`

  Dereferences the specified `URIReference` and returns the
  dereferenced data.

* ## Method Details

  + ### dereference

    [Data](Data.md "interface in javax.xml.crypto") dereference([URIReference](URIReference.md "interface in javax.xml.crypto") uriReference,
    [XMLCryptoContext](XMLCryptoContext.md "interface in javax.xml.crypto") context)
    throws [URIReferenceException](URIReferenceException.md "class in javax.xml.crypto")

    Dereferences the specified `URIReference` and returns the
    dereferenced data.

    Parameters:
    :   `uriReference` - the `URIReference`
    :   `context` - an `XMLCryptoContext` that may
        contain additional useful information for dereferencing the URI. This
        implementation should dereference the specified
        `URIReference` against the context's `baseURI`
        parameter, if specified.

    Returns:
    :   the dereferenced data

    Throws:
    :   `NullPointerException` - if `uriReference` or
        `context` are `null`
    :   `URIReferenceException` - if an exception occurs while
        dereferencing the specified `uriReference`