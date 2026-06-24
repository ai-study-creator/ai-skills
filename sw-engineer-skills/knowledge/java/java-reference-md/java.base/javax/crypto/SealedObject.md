Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class SealedObject

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.crypto.SealedObject

All Implemented Interfaces:
:   `Serializable`

---

public class SealedObject
extends [Object](../../java/lang/Object.md "class in java.lang")
implements [Serializable](../../java/io/Serializable.md "interface in java.io")

This class enables a programmer to create an object and protect its
confidentiality with a cryptographic algorithm.

Given any `Serializable` object, one can create a
`SealedObject` that encapsulates the original object, in serialized
format (i.e., a "deep copy"), and seals (encrypts) its serialized contents,
using a cryptographic algorithm such as AES, to protect its
confidentiality. The encrypted content can later be decrypted (with
the corresponding algorithm using the correct decryption key) and
de-serialized, yielding the original object.

Note that the `Cipher` object must be fully initialized with
the correct algorithm, key, padding scheme, etc., before being applied
to a `SealedObject`.

The original object that was sealed can be recovered in two different
ways:

* by using the [`getObject`](#getObject(javax.crypto.Cipher))
  method that takes a `Cipher` object.

  This method requires a fully initialized `Cipher` object,
  initialized with the
  exact same algorithm, key, padding scheme, etc., that were used to seal the
  object.

  This approach has the advantage that the party who unseals the
  sealed object does not require knowledge of the decryption key. For example,
  after one party has initialized the cipher object with the required
  decryption key, it could hand over the cipher object to
  another party who then unseals the sealed object.* by using one of the
    [`getObject`](#getObject(java.security.Key)) methods
    that take a `Key` object.

    In this approach, the `getObject` method creates a cipher
    object for the appropriate decryption algorithm and initializes it with the
    given decryption key and the algorithm parameters (if any) that were stored
    in the sealed object.

    This approach has the advantage that the party who
    unseals the object does not need to keep track of the parameters (e.g., an
    IV) that were used to seal the object.

Since:
:   1.4

See Also:
:   * [`Cipher`](Cipher.md "class in javax.crypto")
    * [Serialized Form](../../../serialized-form.md#javax.crypto.SealedObject)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected byte[]`

  `encodedParams`

  The cryptographic parameters used by the sealing `Cipher` object,
  encoded in the default format.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `SealedObject(Serializable object,
  Cipher c)`

  Constructs a `SealedObject` from any `Serializable` object.

  `protected`

  `SealedObject(SealedObject so)`

  Constructs a `SealedObject` object from the passed-in
  `SealedObject`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final String`

  `getAlgorithm()`

  Returns the algorithm that was used to seal this object.

  `final Object`

  `getObject(Key key)`

  Retrieves the original (encapsulated) object.

  `final Object`

  `getObject(Key key,
  String provider)`

  Retrieves the original (encapsulated) object.

  `final Object`

  `getObject(Cipher c)`

  Retrieves the original (encapsulated) object.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### encodedParams

    protected byte[] encodedParams

    The cryptographic parameters used by the sealing `Cipher` object,
    encoded in the default format.

    That is, `Cipher.getParameters().getEncoded()`.
* ## Constructor Details

  + ### SealedObject

    public SealedObject([Serializable](../../java/io/Serializable.md "interface in java.io") object,
    [Cipher](Cipher.md "class in javax.crypto") c)
    throws [IOException](../../java/io/IOException.md "class in java.io"),
    [IllegalBlockSizeException](IllegalBlockSizeException.md "class in javax.crypto")

    Constructs a `SealedObject` from any `Serializable` object.

    The given object is serialized, and its serialized contents are
    encrypted using the given `Cipher` object, which must be fully
    initialized.

    Any algorithm parameters that may be used in the encryption
    operation are stored inside the new `SealedObject`.

    Parameters:
    :   `object` - the object to be sealed; can be `null`.
    :   `c` - the cipher used to seal the object.

    Throws:
    :   `NullPointerException` - if the given cipher is `null`.
    :   `IOException` - if an error occurs during serialization
    :   `IllegalBlockSizeException` - if the given cipher is a block
        cipher, no padding has been requested, and the total input length
        (i.e., the length of the serialized object contents) is not a multiple
        of the cipher's block size
  + ### SealedObject

    protected SealedObject([SealedObject](SealedObject.md "class in javax.crypto") so)

    Constructs a `SealedObject` object from the passed-in
    `SealedObject`.

    Parameters:
    :   `so` - a `SealedObject` object

    Throws:
    :   `NullPointerException` - if the given sealed object
        is `null`.
* ## Method Details

  + ### getAlgorithm

    public final [String](../../java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the algorithm that was used to seal this object.

    Returns:
    :   the algorithm that was used to seal this object.
  + ### getObject

    public final [Object](../../java/lang/Object.md "class in java.lang") getObject([Key](../../java/security/Key.md "interface in java.security") key)
    throws [IOException](../../java/io/IOException.md "class in java.io"),
    [ClassNotFoundException](../../java/lang/ClassNotFoundException.md "class in java.lang"),
    [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security")

    Retrieves the original (encapsulated) object.

    This method creates a cipher for the algorithm that had been used in
    the sealing operation.
    If the default provider package provides an implementation of that
    algorithm, a `Cipher` object containing that
    implementation is used.
    If the algorithm is not available in the default package, other
    packages are searched.
    The `Cipher` object is initialized for decryption,
    using the given
    `key` and the parameters (if any) that had been used in the
    sealing operation.

    The encapsulated object is unsealed and de-serialized, before it is
    returned.

    Parameters:
    :   `key` - the key used to unseal the object.

    Returns:
    :   the original object.

    Throws:
    :   `IOException` - if an error occurs during de-serialization.
    :   `ClassNotFoundException` - if an error occurs during
        de-serialization.
    :   `NoSuchAlgorithmException` - if the algorithm to unseal the
        object is not available.
    :   `InvalidKeyException` - if the given key cannot be used to unseal
        the object (e.g., it has the wrong algorithm).
    :   `NullPointerException` - if `key` is null.
  + ### getObject

    public final [Object](../../java/lang/Object.md "class in java.lang") getObject([Cipher](Cipher.md "class in javax.crypto") c)
    throws [IOException](../../java/io/IOException.md "class in java.io"),
    [ClassNotFoundException](../../java/lang/ClassNotFoundException.md "class in java.lang"),
    [IllegalBlockSizeException](IllegalBlockSizeException.md "class in javax.crypto"),
    [BadPaddingException](BadPaddingException.md "class in javax.crypto")

    Retrieves the original (encapsulated) object.

    The encapsulated object is unsealed (using the given
    `Cipher` object,
    assuming that the `Cipher` object is already properly initialized)
    and de-serialized, before it is returned.

    Parameters:
    :   `c` - the cipher used to unseal the object

    Returns:
    :   the original object.

    Throws:
    :   `NullPointerException` - if the given cipher is `null`.
    :   `IOException` - if an error occurs during de-serialization
    :   `ClassNotFoundException` - if an error occurs during
        de-serialization
    :   `IllegalBlockSizeException` - if the given cipher is a block
        cipher, no padding has been requested, and the total input length is
        not a multiple of the cipher's block size
    :   `BadPaddingException` - if the given cipher has been
        initialized for decryption, and padding has been specified, but
        the input data does not have proper expected padding bytes
  + ### getObject

    public final [Object](../../java/lang/Object.md "class in java.lang") getObject([Key](../../java/security/Key.md "interface in java.security") key,
    [String](../../java/lang/String.md "class in java.lang") provider)
    throws [IOException](../../java/io/IOException.md "class in java.io"),
    [ClassNotFoundException](../../java/lang/ClassNotFoundException.md "class in java.lang"),
    [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [NoSuchProviderException](../../java/security/NoSuchProviderException.md "class in java.security"),
    [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security")

    Retrieves the original (encapsulated) object.

    This method creates a cipher for the algorithm that had been used in
    the sealing operation, using an implementation of that algorithm from
    the given `provider`.
    The `Cipher` object is initialized for decryption,
    using the given
    `key` and the parameters (if any) that had been used in the
    sealing operation.

    The encapsulated object is unsealed and de-serialized, before it is
    returned.

    Parameters:
    :   `key` - the key used to unseal the object.
    :   `provider` - the name of the provider of the algorithm to unseal
        the object.

    Returns:
    :   the original object.

    Throws:
    :   `IllegalArgumentException` - if the given provider is `null`
        or empty.
    :   `IOException` - if an error occurs during de-serialization.
    :   `ClassNotFoundException` - if an error occurs during
        de-serialization.
    :   `NoSuchAlgorithmException` - if the algorithm to unseal the
        object is not available.
    :   `NoSuchProviderException` - if the given provider is not
        configured.
    :   `InvalidKeyException` - if the given key cannot be used to unseal
        the object (e.g., it has the wrong algorithm).
    :   `NullPointerException` - if `key` is null.