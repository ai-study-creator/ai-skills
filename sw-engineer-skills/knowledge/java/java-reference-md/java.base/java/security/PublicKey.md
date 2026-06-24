Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface PublicKey

All Superinterfaces:
:   `Key`, `Serializable`

All Known Subinterfaces:
:   `DHPublicKey`, `DSAPublicKey`, `ECPublicKey`, `EdECPublicKey`, `RSAPublicKey`, `XECPublicKey`

---

public interface PublicKey
extends [Key](Key.md "interface in java.security")

A public key. This interface contains no methods or constants.
It merely serves to group (and provide type safety for) all public key
interfaces.
Note: The specialized public key interfaces extend this interface.
See, for example, the DSAPublicKey interface in
`java.security.interfaces`.

Since:
:   1.1

See Also:
:   * [`Key`](Key.md "interface in java.security")
    * [`PrivateKey`](PrivateKey.md "interface in java.security")
    * [`Certificate`](cert/Certificate.md "class in java.security.cert")
    * [`Signature.initVerify(java.security.PublicKey)`](Signature.md#initVerify(java.security.PublicKey))
    * [`DSAPublicKey`](interfaces/DSAPublicKey.md "interface in java.security.interfaces")
    * [`RSAPublicKey`](interfaces/RSAPublicKey.md "interface in java.security.interfaces")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final long`

  `serialVersionUID`

  Deprecated.

  A `serialVersionUID` field in an interface is
  ineffectual.
* ## Method Summary

  ### Methods inherited from interface java.security.[Key](Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

* ## Field Details

  + ### serialVersionUID

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    static final long serialVersionUID

    Deprecated.

    A `serialVersionUID` field in an interface is
    ineffectual. Do not use; no replacement.

    The class fingerprint that is set to indicate serialization
    compatibility with a previous version of the class.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.security.PublicKey.serialVersionUID)