Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Interface Certificate

---

[@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="1.2",
[forRemoval](../lang/Deprecated.md#forRemoval())=true)
public interface Certificate

Deprecated, for removal: This API element is subject to removal in a future version.

This class is deprecated and subject to removal in a future
version of Java SE. It has been replaced by
`java.security.cert.Certificate` and related classes.

This is an interface of abstract methods for managing a
variety of identity certificates.
An identity certificate is a guarantee by a principal that
a public key is that of another principal. (A principal represents
an entity such as an individual user, a group, or a corporation.)

In particular, this interface is intended to be a common
abstraction for constructs that have different formats but
important common uses. For example, different types of
certificates, such as X.509 certificates and PGP certificates,
share general certificate functionality (the need to encode and
decode certificates) and some types of information, such as a
public key, the principal whose key it is, and the guarantor
guaranteeing that the public key is that of the specified
principal. So an implementation of X.509 certificates and an
implementation of PGP certificates can both utilize the `Certificate`
interface, even though their formats and additional types and
amounts of information stored are different.

**Important**: This interface is useful for cataloging and
grouping objects sharing certain common uses. It does not have any
semantics of its own. In particular, a `Certificate` object does not
make any statement as to the *validity* of the binding. It is
the duty of the application implementing this interface to verify
the certificate and satisfy itself of its validity.

Since:
:   1.1

See Also:
:   * [`Certificate`](cert/Certificate.md "class in java.security.cert")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `decode(InputStream stream)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Decodes a certificate from an input stream.

  `void`

  `encode(OutputStream stream)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Encodes the certificate to an output stream in a format that can
  be decoded by the `decode` method.

  `String`

  `getFormat()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the name of the coding format.

  `Principal`

  `getGuarantor()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the guarantor of the certificate, that is, the principal
  guaranteeing that the public key associated with this certificate
  is that of the principal associated with this certificate.

  `Principal`

  `getPrincipal()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the principal of the principal-key pair being guaranteed by
  the guarantor.

  `PublicKey`

  `getPublicKey()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns the key of the principal-key pair being guaranteed by
  the guarantor.

  `String`

  `toString(boolean detailed)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Returns a string that represents the contents of the certificate.

* ## Method Details

  + ### getGuarantor

    [Principal](Principal.md "interface in java.security") getGuarantor()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the guarantor of the certificate, that is, the principal
    guaranteeing that the public key associated with this certificate
    is that of the principal associated with this certificate. For X.509
    certificates, the guarantor will typically be a Certificate Authority
    (such as the United States Postal Service or Verisign, Inc.).

    Returns:
    :   the guarantor which guaranteed the principal-key
        binding.
  + ### getPrincipal

    [Principal](Principal.md "interface in java.security") getPrincipal()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the principal of the principal-key pair being guaranteed by
    the guarantor.

    Returns:
    :   the principal to which this certificate is bound.
  + ### getPublicKey

    [PublicKey](PublicKey.md "interface in java.security") getPublicKey()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the key of the principal-key pair being guaranteed by
    the guarantor.

    Returns:
    :   the public key that this certificate certifies belongs
        to a particular principal.
  + ### encode

    void encode([OutputStream](../io/OutputStream.md "class in java.io") stream)
    throws [KeyException](KeyException.md "class in java.security"),
    [IOException](../io/IOException.md "class in java.io")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Encodes the certificate to an output stream in a format that can
    be decoded by the `decode` method.

    Parameters:
    :   `stream` - the output stream to which to encode the
        certificate.

    Throws:
    :   `KeyException` - if the certificate is not
        properly initialized, or data is missing, etc.
    :   `IOException` - if a stream exception occurs while
        trying to output the encoded certificate to the output stream.

    See Also:
    :   - [`decode(java.io.InputStream)`](#decode(java.io.InputStream))
        - [`getFormat()`](#getFormat())
  + ### decode

    void decode([InputStream](../io/InputStream.md "class in java.io") stream)
    throws [KeyException](KeyException.md "class in java.security"),
    [IOException](../io/IOException.md "class in java.io")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Decodes a certificate from an input stream. The format should be
    that returned by `getFormat` and produced by
    `encode`.

    Parameters:
    :   `stream` - the input stream from which to fetch the data
        being decoded.

    Throws:
    :   `KeyException` - if the certificate is not properly initialized,
        or data is missing, etc.
    :   `IOException` - if an exception occurs while trying to input
        the encoded certificate from the input stream.

    See Also:
    :   - [`encode(java.io.OutputStream)`](#encode(java.io.OutputStream))
        - [`getFormat()`](#getFormat())
  + ### getFormat

    [String](../lang/String.md "class in java.lang") getFormat()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns the name of the coding format. This is used as a hint to find
    an appropriate parser. It could be "X.509", "PGP", etc. This is
    the format produced and understood by the `encode`
    and `decode` methods.

    Returns:
    :   the name of the coding format.
  + ### toString

    [String](../lang/String.md "class in java.lang") toString(boolean detailed)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Returns a string that represents the contents of the certificate.

    Parameters:
    :   `detailed` - whether or not to give detailed information
        about the certificate

    Returns:
    :   a string representing the contents of the certificate