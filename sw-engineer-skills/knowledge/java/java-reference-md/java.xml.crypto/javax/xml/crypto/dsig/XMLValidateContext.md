Module [java.xml.crypto](../../../../module-summary.md)

Package [javax.xml.crypto.dsig](package-summary.md)

# Interface XMLValidateContext

All Superinterfaces:
:   `XMLCryptoContext`

All Known Implementing Classes:
:   `DOMValidateContext`

---

public interface XMLValidateContext
extends [XMLCryptoContext](../XMLCryptoContext.md "interface in javax.xml.crypto")

Contains context information for validating XML Signatures. This interface
is primarily intended for type-safety.

Note that `XMLValidateContext` instances can contain
information and state specific to the XML signature structure it is
used with. The results are unpredictable if an
`XMLValidateContext` is used with different signature structures
(for example, you should not use the same `XMLValidateContext`
instance to validate two different [`XMLSignature`](XMLSignature.md "interface in javax.xml.crypto.dsig") objects).

**Supported Properties**

The following properties can be set by an application using the
[`setProperty`](../XMLCryptoContext.md#setProperty(java.lang.String,java.lang.Object)) method.

* `javax.xml.crypto.dsig.cacheReference`: value must be a
  [`Boolean`](../../../../../java.base/java/lang/Boolean.md "class in java.lang"). This property controls whether or not the
  [`Reference.validate`](Reference.md#validate(javax.xml.crypto.dsig.XMLValidateContext)) method will cache the
  dereferenced content and pre-digested input for subsequent retrieval via
  the [`Reference.getDereferencedData`](Reference.md#getDereferencedData())
  and [`Reference.getDigestInputStream`](Reference.md#getDigestInputStream()) methods. The default value if not
  specified is `Boolean.FALSE`.

Since:
:   1.6

See Also:
:   * [`XMLSignature.validate(XMLValidateContext)`](XMLSignature.md#validate(javax.xml.crypto.dsig.XMLValidateContext))
    * [`Reference.validate(XMLValidateContext)`](Reference.md#validate(javax.xml.crypto.dsig.XMLValidateContext))

* ## Method Summary

  ### Methods inherited from interface javax.xml.crypto.[XMLCryptoContext](../XMLCryptoContext.md "interface in javax.xml.crypto")

  `get, getBaseURI, getDefaultNamespacePrefix, getKeySelector, getNamespacePrefix, getProperty, getURIDereferencer, put, putNamespacePrefix, setBaseURI, setDefaultNamespacePrefix, setKeySelector, setProperty, setURIDereferencer`