Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertificateFactorySpi

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CertificateFactorySpi

---

public abstract class CertificateFactorySpi
extends [Object](../../lang/Object.md "class in java.lang")

This class defines the *Service Provider Interface* (**SPI**)
for the `CertificateFactory` class.
All the abstract methods in this class must be implemented by each
cryptographic service provider who wishes to supply the implementation
of a certificate factory for a particular certificate type, e.g., X.509.

Certificate factories are used to generate certificate, certification path
(`CertPath`) and certificate revocation list (CRL) objects from
their encodings.

A certificate factory for X.509 must return certificates that are an
instance of `java.security.cert.X509Certificate`, and CRLs
that are an instance of `java.security.cert.X509CRL`.

Since:
:   1.2

See Also:
:   * [`CertificateFactory`](CertificateFactory.md "class in java.security.cert")
    * [`Certificate`](Certificate.md "class in java.security.cert")
    * [`X509Certificate`](X509Certificate.md "class in java.security.cert")
    * [`CertPath`](CertPath.md "class in java.security.cert")
    * [`CRL`](CRL.md "class in java.security.cert")
    * [`X509CRL`](X509CRL.md "class in java.security.cert")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CertificateFactorySpi()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Certificate`

  `engineGenerateCertificate(InputStream inStream)`

  Generates a certificate object and initializes it with
  the data read from the input stream `inStream`.

  `abstract Collection<? extends Certificate>`

  `engineGenerateCertificates(InputStream inStream)`

  Returns a (possibly empty) collection view of the certificates read
  from the given input stream `inStream`.

  `CertPath`

  `engineGenerateCertPath(InputStream inStream)`

  Generates a `CertPath` object and initializes it with
  the data read from the `InputStream` inStream.

  `CertPath`

  `engineGenerateCertPath(InputStream inStream,
  String encoding)`

  Generates a `CertPath` object and initializes it with
  the data read from the `InputStream` inStream.

  `CertPath`

  `engineGenerateCertPath(List<? extends Certificate> certificates)`

  Generates a `CertPath` object and initializes it with
  a `List` of `Certificate`s.

  `abstract CRL`

  `engineGenerateCRL(InputStream inStream)`

  Generates a certificate revocation list (CRL) object and initializes it
  with the data read from the input stream `inStream`.

  `abstract Collection<? extends CRL>`

  `engineGenerateCRLs(InputStream inStream)`

  Returns a (possibly empty) collection view of the CRLs read
  from the given input stream `inStream`.

  `Iterator<String>`

  `engineGetCertPathEncodings()`

  Returns an iteration of the `CertPath` encodings supported
  by this certificate factory, with the default encoding first.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CertificateFactorySpi

    public CertificateFactorySpi()

    Constructor for subclasses to call.
* ## Method Details

  + ### engineGenerateCertificate

    public abstract [Certificate](Certificate.md "class in java.security.cert") engineGenerateCertificate([InputStream](../../io/InputStream.md "class in java.io") inStream)
    throws [CertificateException](CertificateException.md "class in java.security.cert")

    Generates a certificate object and initializes it with
    the data read from the input stream `inStream`.

    In order to take advantage of the specialized certificate format
    supported by this certificate factory,
    the returned certificate object can be typecast to the corresponding
    certificate class. For example, if this certificate
    factory implements X.509 certificates, the returned certificate object
    can be typecast to the `X509Certificate` class.

    In the case of a certificate factory for X.509 certificates, the
    certificate provided in `inStream` must be DER-encoded and
    may be supplied in binary or printable (Base64) encoding. If the
    certificate is provided in Base64 encoding, it must be bounded at
    the beginning by -----BEGIN CERTIFICATE-----, and must be bounded at
    the end by -----END CERTIFICATE-----.

    Note that if the given input stream does not support
    [`mark`](../../io/InputStream.md#mark(int)) and
    [`reset`](../../io/InputStream.md#reset()), this method will
    consume the entire input stream. Otherwise, each call to this
    method consumes one certificate and the read position of the input stream
    is positioned to the next available byte after the inherent
    end-of-certificate marker. If the data in the
    input stream does not contain an inherent end-of-certificate marker (other
    than EOF) and there is trailing data after the certificate is parsed, a
    `CertificateException` is thrown.

    Parameters:
    :   `inStream` - an input stream with the certificate data.

    Returns:
    :   a certificate object initialized with the data
        from the input stream.

    Throws:
    :   `CertificateException` - on parsing errors.
  + ### engineGenerateCertPath

    public [CertPath](CertPath.md "class in java.security.cert") engineGenerateCertPath([InputStream](../../io/InputStream.md "class in java.io") inStream)
    throws [CertificateException](CertificateException.md "class in java.security.cert")

    Generates a `CertPath` object and initializes it with
    the data read from the `InputStream` inStream. The data
    is assumed to be in the default encoding.

    This method was added to version 1.4 of the Java 2 Platform
    Standard Edition. In order to maintain backwards compatibility with
    existing service providers, this method cannot be `abstract`
    and by default throws an `UnsupportedOperationException`.

    Parameters:
    :   `inStream` - an `InputStream` containing the data

    Returns:
    :   a `CertPath` initialized with the data from the
        `InputStream`

    Throws:
    :   `CertificateException` - if an exception occurs while decoding
    :   `UnsupportedOperationException` - if the method is not supported

    Since:
    :   1.4
  + ### engineGenerateCertPath

    public [CertPath](CertPath.md "class in java.security.cert") engineGenerateCertPath([InputStream](../../io/InputStream.md "class in java.io") inStream,
    [String](../../lang/String.md "class in java.lang") encoding)
    throws [CertificateException](CertificateException.md "class in java.security.cert")

    Generates a `CertPath` object and initializes it with
    the data read from the `InputStream` inStream. The data
    is assumed to be in the specified encoding.

    This method was added to version 1.4 of the Java 2 Platform
    Standard Edition. In order to maintain backwards compatibility with
    existing service providers, this method cannot be `abstract`
    and by default throws an `UnsupportedOperationException`.

    Parameters:
    :   `inStream` - an `InputStream` containing the data
    :   `encoding` - the encoding used for the data

    Returns:
    :   a `CertPath` initialized with the data from the
        `InputStream`

    Throws:
    :   `CertificateException` - if an exception occurs while decoding or
        the encoding requested is not supported
    :   `UnsupportedOperationException` - if the method is not supported

    Since:
    :   1.4
  + ### engineGenerateCertPath

    public [CertPath](CertPath.md "class in java.security.cert") engineGenerateCertPath([List](../../util/List.md "interface in java.util")<? extends [Certificate](Certificate.md "class in java.security.cert")> certificates)
    throws [CertificateException](CertificateException.md "class in java.security.cert")

    Generates a `CertPath` object and initializes it with
    a `List` of `Certificate`s.

    The certificates supplied must be of a type supported by the
    `CertificateFactory`. They will be copied out of the supplied
    `List` object.

    This method was added to version 1.4 of the Java 2 Platform
    Standard Edition. In order to maintain backwards compatibility with
    existing service providers, this method cannot be `abstract`
    and by default throws an `UnsupportedOperationException`.

    Parameters:
    :   `certificates` - a `List` of `Certificate`s

    Returns:
    :   a `CertPath` initialized with the supplied list of
        certificates

    Throws:
    :   `CertificateException` - if an exception occurs
    :   `UnsupportedOperationException` - if the method is not supported

    Since:
    :   1.4
  + ### engineGetCertPathEncodings

    public [Iterator](../../util/Iterator.md "interface in java.util")<[String](../../lang/String.md "class in java.lang")> engineGetCertPathEncodings()

    Returns an iteration of the `CertPath` encodings supported
    by this certificate factory, with the default encoding first. See
    the CertPath Encodings section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certpath-encodings)
    for information about standard encoding names.

    Attempts to modify the returned `Iterator` via its
    `remove` method result in an
    `UnsupportedOperationException`.

    This method was added to version 1.4 of the Java 2 Platform
    Standard Edition. In order to maintain backwards compatibility with
    existing service providers, this method cannot be `abstract`
    and by default throws an `UnsupportedOperationException`.

    Returns:
    :   an `Iterator` over the names of the supported
        `CertPath` encodings (as `String`s)

    Throws:
    :   `UnsupportedOperationException` - if the method is not supported

    Since:
    :   1.4
  + ### engineGenerateCertificates

    public abstract [Collection](../../util/Collection.md "interface in java.util")<? extends [Certificate](Certificate.md "class in java.security.cert")> engineGenerateCertificates([InputStream](../../io/InputStream.md "class in java.io") inStream)
    throws [CertificateException](CertificateException.md "class in java.security.cert")

    Returns a (possibly empty) collection view of the certificates read
    from the given input stream `inStream`.

    In order to take advantage of the specialized certificate format
    supported by this certificate factory, each element in
    the returned collection view can be typecast to the corresponding
    certificate class. For example, if this certificate
    factory implements X.509 certificates, the elements in the returned
    collection can be typecast to the `X509Certificate` class.

    In the case of a certificate factory for X.509 certificates,
    `inStream` may contain a single DER-encoded certificate
    in the formats described for
    [`generateCertificate`](CertificateFactory.md#generateCertificate(java.io.InputStream)).
    In addition, `inStream` may contain a PKCS#7 certificate
    chain. This is a PKCS#7 *SignedData* object, with the only
    significant field being *certificates*. In particular, the
    signature and the contents are ignored. This format allows multiple
    certificates to be downloaded at once. If no certificates are present,
    an empty collection is returned.

    Note that if the given input stream does not support
    [`mark`](../../io/InputStream.md#mark(int)) and
    [`reset`](../../io/InputStream.md#reset()), this method will
    consume the entire input stream.

    Parameters:
    :   `inStream` - the input stream with the certificates.

    Returns:
    :   a (possibly empty) collection view of
        java.security.cert.Certificate objects
        initialized with the data from the input stream.

    Throws:
    :   `CertificateException` - on parsing errors.
  + ### engineGenerateCRL

    public abstract [CRL](CRL.md "class in java.security.cert") engineGenerateCRL([InputStream](../../io/InputStream.md "class in java.io") inStream)
    throws [CRLException](CRLException.md "class in java.security.cert")

    Generates a certificate revocation list (CRL) object and initializes it
    with the data read from the input stream `inStream`.

    In order to take advantage of the specialized CRL format
    supported by this certificate factory,
    the returned CRL object can be typecast to the corresponding
    CRL class. For example, if this certificate
    factory implements X.509 CRLs, the returned CRL object
    can be typecast to the `X509CRL` class.

    Note that if the given input stream does not support
    [`mark`](../../io/InputStream.md#mark(int)) and
    [`reset`](../../io/InputStream.md#reset()), this method will
    consume the entire input stream. Otherwise, each call to this
    method consumes one CRL and the read position of the input stream
    is positioned to the next available byte after the inherent
    end-of-CRL marker. If the data in the
    input stream does not contain an inherent end-of-CRL marker (other
    than EOF) and there is trailing data after the CRL is parsed, a
    `CRLException` is thrown.

    Parameters:
    :   `inStream` - an input stream with the CRL data.

    Returns:
    :   a CRL object initialized with the data
        from the input stream.

    Throws:
    :   `CRLException` - on parsing errors.
  + ### engineGenerateCRLs

    public abstract [Collection](../../util/Collection.md "interface in java.util")<? extends [CRL](CRL.md "class in java.security.cert")> engineGenerateCRLs([InputStream](../../io/InputStream.md "class in java.io") inStream)
    throws [CRLException](CRLException.md "class in java.security.cert")

    Returns a (possibly empty) collection view of the CRLs read
    from the given input stream `inStream`.

    In order to take advantage of the specialized CRL format
    supported by this certificate factory, each element in
    the returned collection view can be typecast to the corresponding
    CRL class. For example, if this certificate
    factory implements X.509 CRLs, the elements in the returned
    collection can be typecast to the `X509CRL` class.

    In the case of a certificate factory for X.509 CRLs,
    `inStream` may contain a single DER-encoded CRL.
    In addition, `inStream` may contain a PKCS#7 CRL
    set. This is a PKCS#7 *SignedData* object, with the only
    significant field being *crls*. In particular, the
    signature and the contents are ignored. This format allows multiple
    CRLs to be downloaded at once. If no CRLs are present,
    an empty collection is returned.

    Note that if the given input stream does not support
    [`mark`](../../io/InputStream.md#mark(int)) and
    [`reset`](../../io/InputStream.md#reset()), this method will
    consume the entire input stream.

    Parameters:
    :   `inStream` - the input stream with the CRLs.

    Returns:
    :   a (possibly empty) collection view of
        java.security.cert.CRL objects initialized with the data from the input
        stream.

    Throws:
    :   `CRLException` - on parsing errors.