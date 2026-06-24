Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Interface SecretKey

All Superinterfaces:
:   `Destroyable`, `Key`, `Serializable`

All Known Subinterfaces:
:   `PBEKey`

All Known Implementing Classes:
:   `EncryptionKey`, `KerberosKey`, `SecretKeySpec`

---

public interface SecretKey
extends [Key](../../java/security/Key.md "interface in java.security"), [Destroyable](../security/auth/Destroyable.md "interface in javax.security.auth")

A secret (symmetric) key.
The purpose of this interface is to group (and provide type safety
for) all secret key interfaces.

Provider implementations of this interface must overwrite the
`equals` and `hashCode` methods inherited from
[`Object`](../../java/lang/Object.md "class in java.lang"), so that secret keys are compared based on
their underlying key material and not based on reference.
Implementations should override the default `destroy` and
`isDestroyed` methods from the
[`Destroyable`](../security/auth/Destroyable.md "interface in javax.security.auth") interface to enable
sensitive key information to be destroyed, cleared, or in the case
where such information is immutable, unreferenced.
Finally, since `SecretKey` is `Serializable`, implementations
should also override
[`ObjectOutputStream.writeObject(java.lang.Object)`](../../java/io/ObjectOutputStream.md#writeObject(java.lang.Object))
to prevent keys that have been destroyed from being serialized.

Keys that implement this interface return the string `RAW`
as their encoding format (see `getFormat`), and return the
raw key bytes as the result of a `getEncoded` method call. (The
`getFormat` and `getEncoded` methods are inherited
from the [`Key`](../../java/security/Key.md "interface in java.security") parent interface.)

Since:
:   1.4

See Also:
:   * [`SecretKeyFactory`](SecretKeyFactory.md "class in javax.crypto")
    * [`Cipher`](Cipher.md "class in javax.crypto")

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

  ### Methods inherited from interface javax.security.auth.[Destroyable](../security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

  ### Methods inherited from interface java.security.[Key](../../java/security/Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

* ## Field Details

  + ### serialVersionUID

    [@Deprecated](../../java/lang/Deprecated.md "annotation interface in java.lang")
    static final long serialVersionUID

    Deprecated.

    A `serialVersionUID` field in an interface is
    ineffectual. Do not use; no replacement.

    The class fingerprint that is set to indicate serialization
    compatibility since J2SE 1.4.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.crypto.SecretKey.serialVersionUID)