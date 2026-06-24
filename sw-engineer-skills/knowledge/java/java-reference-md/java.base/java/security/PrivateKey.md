Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface PrivateKey

All Superinterfaces:
:   `Destroyable`, `Key`, `Serializable`

All Known Subinterfaces:
:   `DHPrivateKey`, `DSAPrivateKey`, `ECPrivateKey`, `EdECPrivateKey`, `RSAMultiPrimePrivateCrtKey`, `RSAPrivateCrtKey`, `RSAPrivateKey`, `XECPrivateKey`

---

public interface PrivateKey
extends [Key](Key.md "interface in java.security"), [Destroyable](../../javax/security/auth/Destroyable.md "interface in javax.security.auth")

A private key.
The purpose of this interface is to group (and provide type safety
for) all private key interfaces.

Note: The specialized private key interfaces extend this interface.
See, for example, the `DSAPrivateKey` interface in
[`java.security.interfaces`](interfaces/package-summary.md).

Implementations should override the default `destroy` and
`isDestroyed` methods from the
[`Destroyable`](../../javax/security/auth/Destroyable.md "interface in javax.security.auth") interface to enable
sensitive key information to be destroyed, cleared, or in the case
where such information is immutable, unreferenced.
Finally, since `PrivateKey` is `Serializable`, implementations
should also override
[`ObjectOutputStream.writeObject(java.lang.Object)`](../io/ObjectOutputStream.md#writeObject(java.lang.Object))
to prevent keys that have been destroyed from being serialized.

Since:
:   1.1

See Also:
:   * [`Key`](Key.md "interface in java.security")
    * [`PublicKey`](PublicKey.md "interface in java.security")
    * [`Certificate`](cert/Certificate.md "class in java.security.cert")
    * [`Signature.initVerify(java.security.PublicKey)`](Signature.md#initVerify(java.security.PublicKey))
    * [`DSAPrivateKey`](interfaces/DSAPrivateKey.md "interface in java.security.interfaces")
    * [`RSAPrivateKey`](interfaces/RSAPrivateKey.md "interface in java.security.interfaces")
    * [`RSAPrivateCrtKey`](interfaces/RSAPrivateCrtKey.md "interface in java.security.interfaces")

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

  ### Methods inherited from interface javax.security.auth.[Destroyable](../../javax/security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

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
    :   - [Constant Field Values](../../../constant-values.md#java.security.PrivateKey.serialVersionUID)