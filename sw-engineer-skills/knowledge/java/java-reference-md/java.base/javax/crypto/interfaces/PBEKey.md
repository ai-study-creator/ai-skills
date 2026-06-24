Module [java.base](../../../module-summary.md)

Package [javax.crypto.interfaces](package-summary.md)

# Interface PBEKey

All Superinterfaces:
:   `Destroyable`, `Key`, `SecretKey`, `Serializable`

---

public interface PBEKey
extends [SecretKey](../SecretKey.md "interface in javax.crypto")

The interface to a PBE key.

Since:
:   1.4

See Also:
:   * [`PBEKeySpec`](../spec/PBEKeySpec.md "class in javax.crypto.spec")
    * [`SecretKey`](../SecretKey.md "interface in javax.crypto")

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

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getIterationCount()`

  Returns the iteration count or 0 if not specified.

  `char[]`

  `getPassword()`

  Returns the password.

  `byte[]`

  `getSalt()`

  Returns the salt or null if not specified.

  ### Methods inherited from interface javax.security.auth.[Destroyable](../../security/auth/Destroyable.md "interface in javax.security.auth")

  `destroy, isDestroyed`

  ### Methods inherited from interface java.security.[Key](../../../java/security/Key.md "interface in java.security")

  `getAlgorithm, getEncoded, getFormat`

* ## Field Details

  + ### serialVersionUID

    [@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")
    static final long serialVersionUID

    Deprecated.

    A `serialVersionUID` field in an interface is
    ineffectual. Do not use; no replacement.

    The class fingerprint that is set to indicate serialization
    compatibility since J2SE 1.4.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.crypto.interfaces.PBEKey.serialVersionUID)
* ## Method Details

  + ### getPassword

    char[] getPassword()

    Returns the password.

    Note: this method should return a copy of the password. It is
    the caller's responsibility to zero out the password information after
    it is no longer needed.

    Returns:
    :   the password.
  + ### getSalt

    byte[] getSalt()

    Returns the salt or null if not specified.

    Note: this method should return a copy of the salt. It is
    the caller's responsibility to zero out the salt information after
    it is no longer needed.

    Returns:
    :   the salt.
  + ### getIterationCount

    int getIterationCount()

    Returns the iteration count or 0 if not specified.

    Returns:
    :   the iteration count.