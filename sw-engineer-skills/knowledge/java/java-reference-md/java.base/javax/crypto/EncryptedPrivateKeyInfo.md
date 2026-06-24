Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class EncryptedPrivateKeyInfo

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

javax.crypto.EncryptedPrivateKeyInfo

---

public class EncryptedPrivateKeyInfo
extends [Object](../../java/lang/Object.md "class in java.lang")

This class implements the `EncryptedPrivateKeyInfo` type
as defined in PKCS #8.

Its ASN.1 definition is as follows:

```
 EncryptedPrivateKeyInfo ::=  SEQUENCE {
     encryptionAlgorithm   AlgorithmIdentifier,
     encryptedData   OCTET STRING }

 AlgorithmIdentifier  ::=  SEQUENCE  {
     algorithm              OBJECT IDENTIFIER,
     parameters             ANY DEFINED BY algorithm OPTIONAL  }
```

Since:
:   1.4

See Also:
:   * [`PKCS8EncodedKeySpec`](../../java/security/spec/PKCS8EncodedKeySpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EncryptedPrivateKeyInfo(byte[] encoded)`

  Constructs (i.e., parses) an `EncryptedPrivateKeyInfo` from
  its ASN.1 encoding.

  `EncryptedPrivateKeyInfo(String algName,
  byte[] encryptedData)`

  Constructs an `EncryptedPrivateKeyInfo` from the
  encryption algorithm name and the encrypted data.

  `EncryptedPrivateKeyInfo(AlgorithmParameters algParams,
  byte[] encryptedData)`

  Constructs an `EncryptedPrivateKeyInfo` from the
  encryption algorithm parameters and the encrypted data.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAlgName()`

  Returns the encryption algorithm.

  `AlgorithmParameters`

  `getAlgParameters()`

  Returns the algorithm parameters used by the encryption algorithm.

  `byte[]`

  `getEncoded()`

  Returns the ASN.1 encoding of this object.

  `byte[]`

  `getEncryptedData()`

  Returns the encrypted data.

  `PKCS8EncodedKeySpec`

  `getKeySpec(Key decryptKey)`

  Extract the enclosed PKCS8EncodedKeySpec object from the
  encrypted data and return it.

  `PKCS8EncodedKeySpec`

  `getKeySpec(Key decryptKey,
  String providerName)`

  Extract the enclosed PKCS8EncodedKeySpec object from the
  encrypted data and return it.

  `PKCS8EncodedKeySpec`

  `getKeySpec(Key decryptKey,
  Provider provider)`

  Extract the enclosed PKCS8EncodedKeySpec object from the
  encrypted data and return it.

  `PKCS8EncodedKeySpec`

  `getKeySpec(Cipher cipher)`

  Extract the enclosed PKCS8EncodedKeySpec object from the
  encrypted data and return it.

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EncryptedPrivateKeyInfo

    public EncryptedPrivateKeyInfo(byte[] encoded)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Constructs (i.e., parses) an `EncryptedPrivateKeyInfo` from
    its ASN.1 encoding.

    Parameters:
    :   `encoded` - the ASN.1 encoding of this object. The contents of
        the array are copied to protect against subsequent modification.

    Throws:
    :   `NullPointerException` - if the `encoded` is
        `null`.
    :   `IOException` - if error occurs when parsing the ASN.1 encoding.
  + ### EncryptedPrivateKeyInfo

    public EncryptedPrivateKeyInfo([String](../../java/lang/String.md "class in java.lang") algName,
    byte[] encryptedData)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Constructs an `EncryptedPrivateKeyInfo` from the
    encryption algorithm name and the encrypted data.

    Note: This constructor will use `null` as the value of the
    algorithm parameters. If the encryption algorithm has
    parameters whose value is not `null`, a different constructor,
    e.g. EncryptedPrivateKeyInfo(AlgorithmParameters, byte[]),
    should be used.

    Parameters:
    :   `algName` - encryption algorithm name. See the
        [Java Security Standard Algorithm Names](../../../../specs/security/standard-names.md) document
        for information about standard Cipher algorithm names.
    :   `encryptedData` - encrypted data. The contents of
        `encryptedData` are copied to protect against subsequent
        modification when constructing this object.

    Throws:
    :   `NullPointerException` - if `algName` or
        `encryptedData` is `null`.
    :   `IllegalArgumentException` - if `encryptedData`
        is empty, i.e. 0-length.
    :   `NoSuchAlgorithmException` - if the specified algName is
        not supported.
  + ### EncryptedPrivateKeyInfo

    public EncryptedPrivateKeyInfo([AlgorithmParameters](../../java/security/AlgorithmParameters.md "class in java.security") algParams,
    byte[] encryptedData)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security")

    Constructs an `EncryptedPrivateKeyInfo` from the
    encryption algorithm parameters and the encrypted data.

    Parameters:
    :   `algParams` - the algorithm parameters for the encryption
        algorithm. `algParams.getEncoded()` should return
        the ASN.1 encoded bytes of the `parameters` field
        of the `AlgorithmIdentifier` component of the
        `EncryptedPrivateKeyInfo` type.
    :   `encryptedData` - encrypted data. The contents of
        `encryptedData` are copied to protect against
        subsequent modification when constructing this object.

    Throws:
    :   `NullPointerException` - if `algParams` or
        `encryptedData` is `null`.
    :   `IllegalArgumentException` - if `encryptedData`
        is empty, i.e. 0-length.
    :   `NoSuchAlgorithmException` - if the specified algName of
        the specified `algParams` parameter is not supported.
* ## Method Details

  + ### getAlgName

    public [String](../../java/lang/String.md "class in java.lang") getAlgName()

    Returns the encryption algorithm.

    Note: Standard name is returned instead of the specified one
    in the constructor when such mapping is available.
    See the [Java Security Standard Algorithm Names](../../../../specs/security/standard-names.md) document
    for information about standard Cipher algorithm names.

    Returns:
    :   the encryption algorithm name.
  + ### getAlgParameters

    public [AlgorithmParameters](../../java/security/AlgorithmParameters.md "class in java.security") getAlgParameters()

    Returns the algorithm parameters used by the encryption algorithm.

    Returns:
    :   the algorithm parameters.
  + ### getEncryptedData

    public byte[] getEncryptedData()

    Returns the encrypted data.

    Returns:
    :   the encrypted data. Returns a new array
        each time this method is called.
  + ### getKeySpec

    public [PKCS8EncodedKeySpec](../../java/security/spec/PKCS8EncodedKeySpec.md "class in java.security.spec") getKeySpec([Cipher](Cipher.md "class in javax.crypto") cipher)
    throws [InvalidKeySpecException](../../java/security/spec/InvalidKeySpecException.md "class in java.security.spec")

    Extract the enclosed PKCS8EncodedKeySpec object from the
    encrypted data and return it.
      
    Note: In order to successfully retrieve the enclosed
    PKCS8EncodedKeySpec object, `cipher` needs
    to be initialized to either Cipher.DECRYPT\_MODE or
    Cipher.UNWRAP\_MODE, with the same key and parameters used
    for generating the encrypted data.

    Parameters:
    :   `cipher` - the initialized `Cipher` object which will be
        used for decrypting the encrypted data.

    Returns:
    :   the PKCS8EncodedKeySpec object.

    Throws:
    :   `NullPointerException` - if `cipher`
        is `null`.
    :   `InvalidKeySpecException` - if the given cipher is
        inappropriate for the encrypted data or the encrypted
        data is corrupted and cannot be decrypted.
  + ### getKeySpec

    public [PKCS8EncodedKeySpec](../../java/security/spec/PKCS8EncodedKeySpec.md "class in java.security.spec") getKeySpec([Key](../../java/security/Key.md "interface in java.security") decryptKey)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security")

    Extract the enclosed PKCS8EncodedKeySpec object from the
    encrypted data and return it.

    Parameters:
    :   `decryptKey` - key used for decrypting the encrypted data.

    Returns:
    :   the PKCS8EncodedKeySpec object.

    Throws:
    :   `NullPointerException` - if `decryptKey`
        is `null`.
    :   `NoSuchAlgorithmException` - if cannot find appropriate
        cipher to decrypt the encrypted data.
    :   `InvalidKeyException` - if `decryptKey`
        cannot be used to decrypt the encrypted data or the decryption
        result is not a valid PKCS8KeySpec.

    Since:
    :   1.5
  + ### getKeySpec

    public [PKCS8EncodedKeySpec](../../java/security/spec/PKCS8EncodedKeySpec.md "class in java.security.spec") getKeySpec([Key](../../java/security/Key.md "interface in java.security") decryptKey,
    [String](../../java/lang/String.md "class in java.lang") providerName)
    throws [NoSuchProviderException](../../java/security/NoSuchProviderException.md "class in java.security"),
    [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security")

    Extract the enclosed PKCS8EncodedKeySpec object from the
    encrypted data and return it.

    Parameters:
    :   `decryptKey` - key used for decrypting the encrypted data.
    :   `providerName` - the name of provider whose cipher
        implementation will be used.

    Returns:
    :   the PKCS8EncodedKeySpec object.

    Throws:
    :   `NullPointerException` - if `decryptKey`
        or `providerName` is `null`.
    :   `NoSuchProviderException` - if no provider
        `providerName` is registered.
    :   `NoSuchAlgorithmException` - if cannot find appropriate
        cipher to decrypt the encrypted data.
    :   `InvalidKeyException` - if `decryptKey`
        cannot be used to decrypt the encrypted data or the decryption
        result is not a valid PKCS8KeySpec.

    Since:
    :   1.5
  + ### getKeySpec

    public [PKCS8EncodedKeySpec](../../java/security/spec/PKCS8EncodedKeySpec.md "class in java.security.spec") getKeySpec([Key](../../java/security/Key.md "interface in java.security") decryptKey,
    [Provider](../../java/security/Provider.md "class in java.security") provider)
    throws [NoSuchAlgorithmException](../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../../java/security/InvalidKeyException.md "class in java.security")

    Extract the enclosed PKCS8EncodedKeySpec object from the
    encrypted data and return it.

    Parameters:
    :   `decryptKey` - key used for decrypting the encrypted data.
    :   `provider` - the name of provider whose cipher implementation
        will be used.

    Returns:
    :   the PKCS8EncodedKeySpec object.

    Throws:
    :   `NullPointerException` - if `decryptKey`
        or `provider` is `null`.
    :   `NoSuchAlgorithmException` - if cannot find appropriate
        cipher to decrypt the encrypted data in `provider`.
    :   `InvalidKeyException` - if `decryptKey`
        cannot be used to decrypt the encrypted data or the decryption
        result is not a valid PKCS8KeySpec.

    Since:
    :   1.5
  + ### getEncoded

    public byte[] getEncoded()
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Returns the ASN.1 encoding of this object.

    Returns:
    :   the ASN.1 encoding. Returns a new array
        each time this method is called.

    Throws:
    :   `IOException` - if error occurs when constructing its
        ASN.1 encoding.