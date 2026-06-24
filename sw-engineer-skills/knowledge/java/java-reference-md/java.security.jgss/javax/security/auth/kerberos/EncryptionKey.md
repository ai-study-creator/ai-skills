Module [java.security.jgss](../../../../module-summary.md)

Package [javax.security.auth.kerberos](package-summary.md)

# Class EncryptionKey

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.security.auth.kerberos.EncryptionKey

All Implemented Interfaces:
:   `Serializable`, `Key`, `SecretKey`, `Destroyable`

---

public final class EncryptionKey
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [SecretKey](../../../../../java.base/javax/crypto/SecretKey.md "interface in javax.crypto")

This class encapsulates an EncryptionKey used in Kerberos.

An EncryptionKey is defined in Section 4.2.9 of the Kerberos Protocol
Specification ([RFC 4120](http://www.ietf.org/rfc/rfc4120.txt)) as:

```
     EncryptionKey   ::= SEQUENCE {
             keytype         [0] Int32 -- actually encryption type --,
             keyvalue        [1] OCTET STRING
     }
```

The key material of an `EncryptionKey` is defined as the value
of the `keyValue` above.

Since:
:   9

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.kerberos.EncryptionKey)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EncryptionKey(byte[] keyBytes,
  int keyType)`

  Constructs an `EncryptionKey` from the given bytes and
  the key type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `destroy()`

  Destroys this key by clearing out the key material of this key.

  `boolean`

  `equals(Object other)`

  Compares the specified object with this key for equality.

  `String`

  `getAlgorithm()`

  Returns the standard algorithm name for this key.

  `byte[]`

  `getEncoded()`

  Returns the key material of this key.

  `String`

  `getFormat()`

  Returns the name of the encoding format for this key.

  `int`

  `getKeyType()`

  Returns the key type for this key.

  `int`

  `hashCode()`

  Returns a hash code for this `EncryptionKey`.

  `boolean`

  `isDestroyed()`

  Determine if this `Object` has been destroyed.

  `String`

  `toString()`

  Returns an informative textual representation of this `EncryptionKey`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### EncryptionKey

    public EncryptionKey(byte[] keyBytes,
    int keyType)

    Constructs an `EncryptionKey` from the given bytes and
    the key type.

    The contents of the byte array are copied; subsequent modification of
    the byte array does not affect the newly created key.

    Parameters:
    :   `keyBytes` - the key material for the key
    :   `keyType` - the key type for the key as defined by the
        Kerberos protocol specification.

    Throws:
    :   `NullPointerException` - if keyBytes is null
* ## Method Details

  + ### getKeyType

    public int getKeyType()

    Returns the key type for this key.

    Returns:
    :   the key type.

    Throws:
    :   `IllegalStateException` - if the key is destroyed
  + ### getAlgorithm

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the standard algorithm name for this key. The algorithm names
    are the encryption type string defined on the IANA
    [Kerberos Encryption Type Numbers](https://www.iana.org/assignments/kerberos-parameters/kerberos-parameters.xhtml#kerberos-parameters-1)
    page.

    This method can return the following value not defined on the IANA page:
    1. none: for etype equal to 0
    2. unknown: for etype greater than 0 but unsupported by
       the implementation
    3. private: for etype smaller than 0

    Specified by:
    :   `getAlgorithm` in interface `Key`

    Returns:
    :   the name of the algorithm associated with this key.

    Throws:
    :   `IllegalStateException` - if the key is destroyed
  + ### getFormat

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getFormat()

    Returns the name of the encoding format for this key.

    Specified by:
    :   `getFormat` in interface `Key`

    Returns:
    :   the String "RAW"

    Throws:
    :   `IllegalStateException` - if the key is destroyed
  + ### getEncoded

    public byte[] getEncoded()

    Returns the key material of this key.

    Specified by:
    :   `getEncoded` in interface `Key`

    Returns:
    :   a newly allocated byte array that contains the key material

    Throws:
    :   `IllegalStateException` - if the key is destroyed
  + ### destroy

    public void destroy()
    throws [DestroyFailedException](../../../../../java.base/javax/security/auth/DestroyFailedException.md "class in javax.security.auth")

    Destroys this key by clearing out the key material of this key.

    Specified by:
    :   `destroy` in interface `Destroyable`

    Throws:
    :   `DestroyFailedException` - if some error occurs while destroying
        this key.
  + ### isDestroyed

    public boolean isDestroyed()

    Description copied from interface: `Destroyable`

    Determine if this `Object` has been destroyed.

    Specified by:
    :   `isDestroyed` in interface `Destroyable`

    Returns:
    :   true if this `Object` has been destroyed,
        false otherwise.
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns an informative textual representation of this `EncryptionKey`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   an informative textual representation of this `EncryptionKey`.
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `EncryptionKey`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this `EncryptionKey`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") other)

    Compares the specified object with this key for equality.
    Returns true if the given object is also an
    `EncryptionKey` and the two
    `EncryptionKey` instances are equivalent. More formally two
    `EncryptionKey` instances are equal if they have equal key types
    and key material.
    A destroyed `EncryptionKey` object is only equal to itself.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to compare to

    Returns:
    :   true if the specified object is equal to this
        `EncryptionKey`, false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")