Module [java.security.jgss](../../../../module-summary.md)

Package [javax.security.auth.kerberos](package-summary.md)

# Class KerberosKey

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.security.auth.kerberos.KerberosKey

All Implemented Interfaces:
:   `Serializable`, `Key`, `SecretKey`, `Destroyable`

---

public class KerberosKey
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [SecretKey](../../../../../java.base/javax/crypto/SecretKey.md "interface in javax.crypto")

This class encapsulates a long term secret key for a Kerberos
principal.

A `KerberosKey` object includes an EncryptionKey, a
[`KerberosPrincipal`](KerberosPrincipal.md "class in javax.security.auth.kerberos") as its owner, and the version number
of the key.

An EncryptionKey is defined in Section 4.2.9 of the Kerberos Protocol
Specification ([RFC 4120](http://www.ietf.org/rfc/rfc4120.txt)) as:

```
     EncryptionKey   ::= SEQUENCE {
             keytype         [0] Int32 -- actually encryption type --,
             keyvalue        [1] OCTET STRING
     }
```

The key material of a `KerberosKey` is defined as the value
of the `keyValue` above.

All Kerberos JAAS login modules that obtain a principal's password and
generate the secret key from it should use this class.
Sometimes, such as when authenticating a server in
the absence of user-to-user authentication, the login module will store
an instance of this class in the private credential set of a
[`Subject`](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") during the commit phase of the
authentication process.

A Kerberos service using a keytab to read secret keys should use
the [`KeyTab`](KeyTab.md "class in javax.security.auth.kerberos") class, where latest keys can be read when needed.

It might be necessary for the application to be granted a
[`PrivateCredentialPermission`](../../../../../java.base/javax/security/auth/PrivateCredentialPermission.md "class in javax.security.auth") if it needs to access the `KerberosKey`
instance from a Subject. This permission is not needed when the
application depends on the default JGSS Kerberos mechanism to access the
`KerberosKey`. In that case, however, the application will need an
appropriate
[`ServicePermission`](ServicePermission.md "class in javax.security.auth.kerberos").

When creating a `KerberosKey` using the
[`KerberosKey(KerberosPrincipal, char[], String)`](#%3Cinit%3E(javax.security.auth.kerberos.KerberosPrincipal,char%5B%5D,java.lang.String)) constructor,
an implementation may accept non-IANA algorithm names (For example,
"ArcFourMac" for "rc4-hmac"), but the [`getAlgorithm()`](#getAlgorithm()) method
must always return the IANA algorithm name.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.security.auth.kerberos.KerberosKey)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `KerberosKey(KerberosPrincipal principal,
  byte[] keyBytes,
  int keyType,
  int versionNum)`

  Constructs a `KerberosKey` from the given bytes when the key type
  and key version number are known.

  `KerberosKey(KerberosPrincipal principal,
  char[] password,
  String algorithm)`

  Constructs a `KerberosKey` from a principal's password using the
  specified algorithm name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `destroy()`

  Destroys this key by clearing out the key material of this secret key.

  `boolean`

  `equals(Object other)`

  Compares the specified object with this `KerberosKey` for
  equality.

  `final String`

  `getAlgorithm()`

  Returns the standard algorithm name for this key.

  `final byte[]`

  `getEncoded()`

  Returns the key material of this secret key.

  `final String`

  `getFormat()`

  Returns the name of the encoding format for this secret key.

  `final int`

  `getKeyType()`

  Returns the key type for this long-term key.

  `final KerberosPrincipal`

  `getPrincipal()`

  Returns the principal that this key belongs to.

  `final int`

  `getVersionNumber()`

  Returns the key version number.

  `int`

  `hashCode()`

  Returns a hash code for this `KerberosKey`.

  `boolean`

  `isDestroyed()`

  Determines if this key has been destroyed.

  `String`

  `toString()`

  Returns an informative textual representation of this `KerberosKey`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### KerberosKey

    public KerberosKey([KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") principal,
    byte[] keyBytes,
    int keyType,
    int versionNum)

    Constructs a `KerberosKey` from the given bytes when the key type
    and key version number are known. This can be used when reading the
    secret key information from a Kerberos "keytab".

    Parameters:
    :   `principal` - the principal that this secret key belongs to
    :   `keyBytes` - the key material for the secret key
    :   `keyType` - the key type for the secret key as defined by the
        Kerberos protocol specification.
    :   `versionNum` - the version number of this secret key
  + ### KerberosKey

    public KerberosKey([KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") principal,
    char[] password,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") algorithm)

    Constructs a `KerberosKey` from a principal's password using the
    specified algorithm name. The algorithm name (case insensitive) should
    be provided as the encryption type string defined on the IANA
    [Kerberos Encryption Type Numbers](https://www.iana.org/assignments/kerberos-parameters/kerberos-parameters.xhtml#kerberos-parameters-1)
    page. The version number of the key generated will be 0.

    Parameters:
    :   `principal` - the principal that this password belongs to
    :   `password` - the password that should be used to compute the key
    :   `algorithm` - the name for the algorithm that this key will be
        used for

    Throws:
    :   `IllegalArgumentException` - if the name of the
        algorithm passed is unsupported.
* ## Method Details

  + ### getPrincipal

    public final [KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") getPrincipal()

    Returns the principal that this key belongs to.

    Returns:
    :   the principal this key belongs to.

    Throws:
    :   `IllegalStateException` - if the key is destroyed
  + ### getVersionNumber

    public final int getVersionNumber()

    Returns the key version number.

    Returns:
    :   the key version number.

    Throws:
    :   `IllegalStateException` - if the key is destroyed
  + ### getKeyType

    public final int getKeyType()

    Returns the key type for this long-term key.

    Returns:
    :   the key type.

    Throws:
    :   `IllegalStateException` - if the key is destroyed
  + ### getAlgorithm

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getAlgorithm()

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

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getFormat()

    Returns the name of the encoding format for this secret key.

    Specified by:
    :   `getFormat` in interface `Key`

    Returns:
    :   the String "RAW"

    Throws:
    :   `IllegalStateException` - if the key is destroyed
  + ### getEncoded

    public final byte[] getEncoded()

    Returns the key material of this secret key.

    Specified by:
    :   `getEncoded` in interface `Key`

    Returns:
    :   the key material

    Throws:
    :   `IllegalStateException` - if the key is destroyed
  + ### destroy

    public void destroy()
    throws [DestroyFailedException](../../../../../java.base/javax/security/auth/DestroyFailedException.md "class in javax.security.auth")

    Destroys this key by clearing out the key material of this secret key.

    Specified by:
    :   `destroy` in interface `Destroyable`

    Throws:
    :   `DestroyFailedException` - if some error occurs while destroying
        this key.
  + ### isDestroyed

    public boolean isDestroyed()

    Determines if this key has been destroyed.

    Specified by:
    :   `isDestroyed` in interface `Destroyable`

    Returns:
    :   true if this `Object` has been destroyed,
        false otherwise.
  + ### toString

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns an informative textual representation of this `KerberosKey`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   an informative textual representation of this `KerberosKey`.
  + ### hashCode

    public int hashCode()

    Returns a hash code for this `KerberosKey`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this `KerberosKey`.

    Since:
    :   1.6

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") other)

    Compares the specified object with this `KerberosKey` for
    equality. Returns true if the given object is also a
    `KerberosKey` and the two
    `KerberosKey` instances are equivalent.
    A destroyed `KerberosKey` object is only equal to itself.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to compare to

    Returns:
    :   true if the specified object is equal to this `KerberosKey`,
        false otherwise.

    Since:
    :   1.6

    See Also:
    :   - [`Object.hashCode()`](../../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util")