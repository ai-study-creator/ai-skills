Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Interface KeySelectorResult

---

public interface KeySelectorResult

The result returned by the [`KeySelector.select`](KeySelector.md#select(javax.xml.crypto.dsig.keyinfo.KeyInfo,javax.xml.crypto.KeySelector.Purpose,javax.xml.crypto.AlgorithmMethod,javax.xml.crypto.XMLCryptoContext))
method.

At a minimum, a `KeySelectorResult` contains the `Key`
selected by the `KeySelector`. Implementations of this interface
may add methods to return implementation or algorithm specific information,
such as a chain of certificates or debugging information.

Since:
:   1.6

See Also:
:   * [`KeySelector`](KeySelector.md "class in javax.xml.crypto")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Key`

  `getKey()`

  Returns the selected key.

* ## Method Details

  + ### getKey

    [Key](../../../../java.base/java/security/Key.md "interface in java.security") getKey()

    Returns the selected key.

    Returns:
    :   the selected key, or `null` if none can be found