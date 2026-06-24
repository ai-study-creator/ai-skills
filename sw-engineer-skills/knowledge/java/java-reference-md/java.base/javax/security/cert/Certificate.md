Module [java.base](../../../module-summary.md)

Package [javax.security.cert](package-summary.md)

# Class Certificate

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.security.cert.Certificate

Direct Known Subclasses:
:   `X509Certificate`

---

[@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java/lang/Deprecated.md#since())="9",
[forRemoval](../../../java/lang/Deprecated.md#forRemoval())=true)
public abstract class Certificate
extends [Object](../../../java/lang/Object.md "class in java.lang")

Deprecated, for removal: This API element is subject to removal in a future version.

Use the classes in `java.security.cert` instead.

Abstract class for managing a variety of identity certificates.
An identity certificate is a guarantee by a principal that
a public key is that of another principal. (A principal represents
an entity such as an individual user, a group, or a corporation.)

This class is an abstraction for certificates that have different
formats but important common uses. For example, different types of
certificates, such as X.509 and PGP, share general certificate
functionality (like encoding and verifying) and
some types of information (like a public key).

X.509, PGP, and SDSI certificates can all be implemented by
subclassing the Certificate class, even though they contain different
sets of information, and they store and retrieve the information in
different ways.

*Note: The classes in the package `javax.security.cert`
exist for compatibility with earlier versions of the
Java Secure Sockets Extension (JSSE). New applications should instead
use the standard Java SE certificate classes located in
`java.security.cert`.*

Since:
:   1.4

See Also:
:   * [`X509Certificate`](X509Certificate.md "class in javax.security.cert")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Certificate()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object other)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Compares this certificate for equality with the specified
  object.

  `abstract byte[]`

  `getEncoded()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the encoded form of this certificate.

  `abstract PublicKey`

  `getPublicKey()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the public key from this certificate.

  `int`

  `hashCode()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a hashcode value for this certificate from its
  encoded form.

  `abstract String`

  `toString()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a string representation of this certificate.

  `abstract void`

  `verify(PublicKey key)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Verifies that this certificate was signed using the
  private key that corresponds to the specified public key.

  `abstract void`

  `verify(PublicKey key,
  String sigProvider)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Verifies that this certificate was signed using the
  private key that corresponds to the specified public key.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Certificate

    public Certificate()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructor for subclasses to call.
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../java/lang/Object.md "class in java.lang") other)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Compares this certificate for equality with the specified
    object. If the `other` object is an
    `instanceof` `Certificate`, then
    its encoded form is retrieved and compared with the
    encoded form of this certificate.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `other` - the object to test for equality with this certificate.

    Returns:
    :   true if the encoded forms of the two certificates
        match, false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a hashcode value for this certificate from its
    encoded form.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hashcode value.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java/lang/System.md#identityHashCode(java.lang.Object))
  + ### getEncoded

    public abstract byte[] getEncoded()
    throws [CertificateEncodingException](CertificateEncodingException.md "class in javax.security.cert")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the encoded form of this certificate. It is
    assumed that each certificate type would have only a single
    form of encoding; for example, X.509 certificates would
    be encoded as ASN.1 DER.

    Returns:
    :   encoded form of this certificate

    Throws:
    :   `CertificateEncodingException` - on internal certificate
        encoding failure
  + ### verify

    public abstract void verify([PublicKey](../../../java/security/PublicKey.md "interface in java.security") key)
    throws [CertificateException](CertificateException.md "class in javax.security.cert"),
    [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../../../java/security/InvalidKeyException.md "class in java.security"),
    [NoSuchProviderException](../../../java/security/NoSuchProviderException.md "class in java.security"),
    [SignatureException](../../../java/security/SignatureException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Verifies that this certificate was signed using the
    private key that corresponds to the specified public key.

    Parameters:
    :   `key` - the PublicKey used to carry out the verification.

    Throws:
    :   `NoSuchAlgorithmException` - on unsupported signature
        algorithms.
    :   `InvalidKeyException` - on incorrect key.
    :   `NoSuchProviderException` - if there's no default provider.
    :   `SignatureException` - on signature errors.
    :   `CertificateException` - on encoding errors.
  + ### verify

    public abstract void verify([PublicKey](../../../java/security/PublicKey.md "interface in java.security") key,
    [String](../../../java/lang/String.md "class in java.lang") sigProvider)
    throws [CertificateException](CertificateException.md "class in javax.security.cert"),
    [NoSuchAlgorithmException](../../../java/security/NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../../../java/security/InvalidKeyException.md "class in java.security"),
    [NoSuchProviderException](../../../java/security/NoSuchProviderException.md "class in java.security"),
    [SignatureException](../../../java/security/SignatureException.md "class in java.security")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Verifies that this certificate was signed using the
    private key that corresponds to the specified public key.
    This method uses the signature verification engine
    supplied by the specified provider.

    Parameters:
    :   `key` - the PublicKey used to carry out the verification.
    :   `sigProvider` - the name of the signature provider.

    Throws:
    :   `NoSuchAlgorithmException` - on unsupported signature algorithms.
    :   `InvalidKeyException` - on incorrect key.
    :   `NoSuchProviderException` - on incorrect provider.
    :   `SignatureException` - on signature errors.
    :   `CertificateException` - on encoding errors.
  + ### toString

    public abstract [String](../../../java/lang/String.md "class in java.lang") toString()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a string representation of this certificate.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this certificate.
  + ### getPublicKey

    public abstract [PublicKey](../../../java/security/PublicKey.md "interface in java.security") getPublicKey()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the public key from this certificate.

    Returns:
    :   the public key.