Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class Certificate

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.Certificate

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `X509Certificate`

---

public abstract class Certificate
extends [Object](../../lang/Object.md "class in java.lang")
implements [Serializable](../../io/Serializable.md "interface in java.io")

Abstract class for managing a variety of identity certificates.
An identity certificate is a binding of a principal to a public key which
is vouched for by another principal. (A principal represents
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

Since:
:   1.2

See Also:
:   * [`X509Certificate`](X509Certificate.md "class in java.security.cert")
    * [`CertificateFactory`](CertificateFactory.md "class in java.security.cert")
    * [Serialized Form](../../../../serialized-form.md#java.security.cert.Certificate)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `protected static class`

  `Certificate.CertificateRep`

  Alternate `Certificate` class for serialization.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Certificate(String type)`

  Creates a certificate of the specified type.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object other)`

  Compares this certificate for equality with the specified
  object.

  `abstract byte[]`

  `getEncoded()`

  Returns the encoded form of this certificate.

  `abstract PublicKey`

  `getPublicKey()`

  Gets the public key from this certificate.

  `final String`

  `getType()`

  Returns the type of this certificate.

  `int`

  `hashCode()`

  Returns a hashcode value for this certificate from its
  encoded form.

  `abstract String`

  `toString()`

  Returns a string representation of this certificate.

  `abstract void`

  `verify(PublicKey key)`

  Verifies that this certificate was signed using the
  private key that corresponds to the specified public key.

  `abstract void`

  `verify(PublicKey key,
  String sigProvider)`

  Verifies that this certificate was signed using the
  private key that corresponds to the specified public key.

  `void`

  `verify(PublicKey key,
  Provider sigProvider)`

  Verifies that this certificate was signed using the
  private key that corresponds to the specified public key.

  `protected Object`

  `writeReplace()`

  Replace the `Certificate` to be serialized with a
  [`CertificateRep`](Certificate.CertificateRep.md "class in java.security.cert") object containing the type and
  encoded bytes of the `Certificate`.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Certificate

    protected Certificate([String](../../lang/String.md "class in java.lang") type)

    Creates a certificate of the specified type.

    Parameters:
    :   `type` - the standard name of the certificate type.
        See the CertificateFactory section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certificatefactory-types)
        for information about standard certificate types.
* ## Method Details

  + ### getType

    public final [String](../../lang/String.md "class in java.lang") getType()

    Returns the type of this certificate.

    Returns:
    :   the type of this certificate.
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") other)

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
    :   true iff the encoded forms of the two certificates
        match, false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hashcode value for this certificate from its
    encoded form.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hashcode value.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### getEncoded

    public abstract byte[] getEncoded()
    throws [CertificateEncodingException](CertificateEncodingException.md "class in java.security.cert")

    Returns the encoded form of this certificate. It is
    assumed that each certificate type would have only a single
    form of encoding; for example, X.509 certificates would
    be encoded as ASN.1 DER.

    Returns:
    :   the encoded form of this certificate

    Throws:
    :   `CertificateEncodingException` - if an encoding error occurs.
  + ### verify

    public abstract void verify([PublicKey](../PublicKey.md "interface in java.security") key)
    throws [CertificateException](CertificateException.md "class in java.security.cert"),
    [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../InvalidKeyException.md "class in java.security"),
    [NoSuchProviderException](../NoSuchProviderException.md "class in java.security"),
    [SignatureException](../SignatureException.md "class in java.security")

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

    public abstract void verify([PublicKey](../PublicKey.md "interface in java.security") key,
    [String](../../lang/String.md "class in java.lang") sigProvider)
    throws [CertificateException](CertificateException.md "class in java.security.cert"),
    [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../InvalidKeyException.md "class in java.security"),
    [NoSuchProviderException](../NoSuchProviderException.md "class in java.security"),
    [SignatureException](../SignatureException.md "class in java.security")

    Verifies that this certificate was signed using the
    private key that corresponds to the specified public key.
    This method uses the signature verification engine
    supplied by the specified provider.

    Parameters:
    :   `key` - the PublicKey used to carry out the verification.
    :   `sigProvider` - the name of the signature provider.

    Throws:
    :   `NoSuchAlgorithmException` - on unsupported signature
        algorithms.
    :   `InvalidKeyException` - on incorrect key.
    :   `NoSuchProviderException` - on incorrect provider.
    :   `SignatureException` - on signature errors.
    :   `CertificateException` - on encoding errors.
  + ### verify

    public void verify([PublicKey](../PublicKey.md "interface in java.security") key,
    [Provider](../Provider.md "class in java.security") sigProvider)
    throws [CertificateException](CertificateException.md "class in java.security.cert"),
    [NoSuchAlgorithmException](../NoSuchAlgorithmException.md "class in java.security"),
    [InvalidKeyException](../InvalidKeyException.md "class in java.security"),
    [SignatureException](../SignatureException.md "class in java.security")

    Verifies that this certificate was signed using the
    private key that corresponds to the specified public key.
    This method uses the signature verification engine
    supplied by the specified provider. Note that the specified
    Provider object does not have to be registered in the provider list.

    This method was added to version 1.8 of the Java Platform
    Standard Edition. In order to maintain backwards compatibility with
    existing service providers, this method cannot be `abstract`
    and by default throws an `UnsupportedOperationException`.

    Parameters:
    :   `key` - the PublicKey used to carry out the verification.
    :   `sigProvider` - the signature provider.

    Throws:
    :   `NoSuchAlgorithmException` - on unsupported signature
        algorithms.
    :   `InvalidKeyException` - on incorrect key.
    :   `SignatureException` - on signature errors.
    :   `CertificateException` - on encoding errors.
    :   `UnsupportedOperationException` - if the method is not supported

    Since:
    :   1.8
  + ### toString

    public abstract [String](../../lang/String.md "class in java.lang") toString()

    Returns a string representation of this certificate.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this certificate.
  + ### getPublicKey

    public abstract [PublicKey](../PublicKey.md "interface in java.security") getPublicKey()

    Gets the public key from this certificate.

    Returns:
    :   the public key.
  + ### writeReplace

    protected [Object](../../lang/Object.md "class in java.lang") writeReplace()
    throws [ObjectStreamException](../../io/ObjectStreamException.md "class in java.io")

    Replace the `Certificate` to be serialized with a
    [`CertificateRep`](Certificate.CertificateRep.md "class in java.security.cert") object containing the type and
    encoded bytes of the `Certificate`.

    Returns:
    :   a `CertificateRep` object containing the type and encoded
        bytes of the `Certificate`

    Throws:
    :   `ObjectStreamException` - if a `CertificateRep` object
        representing this `Certificate` could not be created

    Since:
    :   1.3