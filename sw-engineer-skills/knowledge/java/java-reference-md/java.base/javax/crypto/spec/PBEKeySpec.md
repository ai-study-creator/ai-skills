Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class PBEKeySpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.PBEKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class PBEKeySpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [KeySpec](../../../java/security/spec/KeySpec.md "interface in java.security.spec")

A user-chosen password that can be used with password-based encryption
(*PBE*).

The password can be viewed as some kind of raw key material, from which
the encryption mechanism that uses it derives a cryptographic key.

Different PBE mechanisms may consume different bits of each password
character. For example, the PBE mechanism defined in
[PKCS #5](http://www.ietf.org/rfc/rfc2898.txt) looks at only the low order 8 bits of each character, whereas
PKCS #12 looks at all 16 bits of each character.

You convert the password characters to a PBE key by creating an
instance of the appropriate secret-key factory. For example, a secret-key
factory for PKCS #5 will construct a PBE key from only the low order 8 bits
of each password character, whereas a secret-key factory for PKCS #12 will
take all 16 bits of each character.

Also note that this class stores passwords as char arrays instead of
`String` objects (which would seem more logical), because the
String class is immutable and there is no way to overwrite its
internal value when the password stored in it is no longer needed. Hence,
this class requests the password as a char array, so it can be overwritten
when done.

Since:
:   1.4

See Also:
:   * [`SecretKeyFactory`](../SecretKeyFactory.md "class in javax.crypto")
    * [`PBEParameterSpec`](PBEParameterSpec.md "class in javax.crypto.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PBEKeySpec(char[] password)`

  Constructor that takes a password.

  `PBEKeySpec(char[] password,
  byte[] salt,
  int iterationCount)`

  Constructor that takes a password, salt, iteration count for
  generating PBEKey of fixed-key-size PBE ciphers.

  `PBEKeySpec(char[] password,
  byte[] salt,
  int iterationCount,
  int keyLength)`

  Constructor that takes a password, salt, iteration count, and
  to-be-derived key length for generating PBEKey of variable-key-size
  PBE ciphers.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final void`

  `clearPassword()`

  Clears the internal copy of the password.

  `final int`

  `getIterationCount()`

  Returns the iteration count or 0 if not specified.

  `final int`

  `getKeyLength()`

  Returns the to-be-derived key length or 0 if not specified.

  `final char[]`

  `getPassword()`

  Returns a copy of the password.

  `final byte[]`

  `getSalt()`

  Returns a copy of the salt or null if not specified.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PBEKeySpec

    public PBEKeySpec(char[] password)

    Constructor that takes a password. An empty char[] is used if
    null is specified.

    Note: `password` is cloned before it is stored in
    the new `PBEKeySpec` object.

    Parameters:
    :   `password` - the password.
  + ### PBEKeySpec

    public PBEKeySpec(char[] password,
    byte[] salt,
    int iterationCount,
    int keyLength)

    Constructor that takes a password, salt, iteration count, and
    to-be-derived key length for generating PBEKey of variable-key-size
    PBE ciphers. An empty char[] is used if null is specified for
    `password`.

    Note: the `password` and `salt`
    are cloned before they are stored in
    the new `PBEKeySpec` object.

    Parameters:
    :   `password` - the password.
    :   `salt` - the salt.
    :   `iterationCount` - the iteration count.
    :   `keyLength` - the to-be-derived key length.

    Throws:
    :   `NullPointerException` - if `salt` is null.
    :   `IllegalArgumentException` - if `salt` is empty,
        i.e. 0-length, `iterationCount` or
        `keyLength` is not positive.
  + ### PBEKeySpec

    public PBEKeySpec(char[] password,
    byte[] salt,
    int iterationCount)

    Constructor that takes a password, salt, iteration count for
    generating PBEKey of fixed-key-size PBE ciphers. An empty
    char[] is used if null is specified for `password`.

    Note: the `password` and `salt`
    are cloned before they are stored in the new
    `PBEKeySpec` object.

    Parameters:
    :   `password` - the password.
    :   `salt` - the salt.
    :   `iterationCount` - the iteration count.

    Throws:
    :   `NullPointerException` - if `salt` is null.
    :   `IllegalArgumentException` - if `salt` is empty,
        i.e. 0-length, or `iterationCount` is not positive.
* ## Method Details

  + ### clearPassword

    public final void clearPassword()

    Clears the internal copy of the password.
  + ### getPassword

    public final char[] getPassword()

    Returns a copy of the password.

    Note: this method returns a copy of the password. It is
    the caller's responsibility to zero out the password information after
    it is no longer needed.

    Returns:
    :   the password.

    Throws:
    :   `IllegalStateException` - if password has been cleared by
        calling `clearPassword` method.
  + ### getSalt

    public final byte[] getSalt()

    Returns a copy of the salt or null if not specified.

    Note: this method should return a copy of the salt. It is
    the caller's responsibility to zero out the salt information after
    it is no longer needed.

    Returns:
    :   the salt.
  + ### getIterationCount

    public final int getIterationCount()

    Returns the iteration count or 0 if not specified.

    Returns:
    :   the iteration count.
  + ### getKeyLength

    public final int getKeyLength()

    Returns the to-be-derived key length or 0 if not specified.

    Note: this is used to indicate the preference on key length
    for variable-key-size ciphers. The actual key size depends on
    each provider's implementation.

    Returns:
    :   the to-be-derived key length.