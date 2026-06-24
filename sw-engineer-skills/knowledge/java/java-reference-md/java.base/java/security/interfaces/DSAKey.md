Module [java.base](../../../module-summary.md)

Package [java.security.interfaces](package-summary.md)

# Interface DSAKey

All Known Subinterfaces:
:   `DSAPrivateKey`, `DSAPublicKey`

---

public interface DSAKey

The interface to a DSA public or private key. DSA (Digital Signature
Algorithm) is defined in NIST's FIPS-186.

Since:
:   1.1

See Also:
:   * [`DSAParams`](DSAParams.md "interface in java.security.interfaces")
    * [`Key`](../Key.md "interface in java.security")
    * [`Signature`](../Signature.md "class in java.security")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `DSAParams`

  `getParams()`

  Returns the DSA-specific key parameters.

* ## Method Details

  + ### getParams

    [DSAParams](DSAParams.md "interface in java.security.interfaces") getParams()

    Returns the DSA-specific key parameters. These parameters are
    never secret.

    Returns:
    :   the DSA-specific key parameters.

    See Also:
    :   - [`DSAParams`](DSAParams.md "interface in java.security.interfaces")