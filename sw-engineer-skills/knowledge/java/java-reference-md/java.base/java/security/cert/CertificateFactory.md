Module [java.base](../../../module-summary.md)

Package [java.security.cert](package-summary.md)

# Class CertificateFactory

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.cert.CertificateFactory

---

public class CertificateFactory
extends [Object](../../lang/Object.md "class in java.lang")

This class defines the functionality of a certificate factory, which is
used to generate certificate, certification path (`CertPath`)
and certificate revocation list (CRL) objects from their encodings.

For encodings consisting of multiple certificates, use
`generateCertificates` when you want to
parse a collection of possibly unrelated certificates. Otherwise,
use `generateCertPath` when you want to generate
a `CertPath` (a certificate chain) and subsequently
validate it with a `CertPathValidator`.

A certificate factory for X.509 must return certificates that are an
instance of `java.security.cert.X509Certificate`, and CRLs
that are an instance of `java.security.cert.X509CRL`.

The following example reads a file with Base64 encoded certificates,
which are each bounded at the beginning by -----BEGIN CERTIFICATE-----, and
bounded at the end by -----END CERTIFICATE-----. We convert the
`FileInputStream` (which does not support `mark`
and `reset`) to a `BufferedInputStream` (which
supports those methods), so that each call to
`generateCertificate` consumes only one certificate, and the
read position of the input stream is positioned to the next certificate in
the file:

```
 FileInputStream fis = new FileInputStream(filename);
 BufferedInputStream bis = new BufferedInputStream(fis);

 CertificateFactory cf = CertificateFactory.getInstance("X.509");

 while (bis.available() > 0) {
    Certificate cert = cf.generateCertificate(bis);
    System.out.println(cert.toString());
 }
```

The following example parses a PKCS#7-formatted certificate reply stored
in a file and extracts all the certificates from it:

```
 FileInputStream fis = new FileInputStream(filename);
 CertificateFactory cf = CertificateFactory.getInstance("X.509");
 Collection c = cf.generateCertificates(fis);
 Iterator i = c.iterator();
 while (i.hasNext()) {
    Certificate cert = (Certificate)i.next();
    System.out.println(cert);
 }
```

Every implementation of the Java platform is required to support the
following standard `CertificateFactory` type:

* `X.509`

and the following standard `CertPath` encodings:

* `PKCS7`
* `PkiPath`

The type and encodings are described in the [CertificateFactory section](../../../../../specs/security/standard-names.md#certificatefactory-types) and the [CertPath Encodings section](../../../../../specs/security/standard-names.md#certpath-encodings) of the
Java Security Standard Algorithm Names Specification.
Consult the release documentation for your implementation to see if any
other types or encodings are supported.

Since:
:   1.2

See Also:
:   * [`Certificate`](Certificate.md "class in java.security.cert")
    * [`X509Certificate`](X509Certificate.md "class in java.security.cert")
    * [`CertPath`](CertPath.md "class in java.security.cert")
    * [`CRL`](CRL.md "class in java.security.cert")
    * [`X509CRL`](X509CRL.md "class in java.security.cert")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CertificateFactory(CertificateFactorySpi certFacSpi,
  Provider provider,
  String type)`

  Creates a CertificateFactory object of the given type, and encapsulates
  the given provider implementation (SPI object) in it.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Certificate`

  `generateCertificate(InputStream inStream)`

  Generates a certificate object and initializes it with
  the data read from the input stream `inStream`.

  `final Collection<? extends Certificate>`

  `generateCertificates(InputStream inStream)`

  Returns a (possibly empty) collection view of the certificates read
  from the given input stream `inStream`.

  `final CertPath`

  `generateCertPath(InputStream inStream)`

  Generates a `CertPath` object and initializes it with
  the data read from the `InputStream` inStream.

  `final CertPath`

  `generateCertPath(InputStream inStream,
  String encoding)`

  Generates a `CertPath` object and initializes it with
  the data read from the `InputStream` inStream.

  `final CertPath`

  `generateCertPath(List<? extends Certificate> certificates)`

  Generates a `CertPath` object and initializes it with
  a `List` of `Certificate`s.

  `final CRL`

  `generateCRL(InputStream inStream)`

  Generates a certificate revocation list (CRL) object and initializes it
  with the data read from the input stream `inStream`.

  `final Collection<? extends CRL>`

  `generateCRLs(InputStream inStream)`

  Returns a (possibly empty) collection view of the CRLs read
  from the given input stream `inStream`.

  `final Iterator<String>`

  `getCertPathEncodings()`

  Returns an iteration of the `CertPath` encodings supported
  by this certificate factory, with the default encoding first.

  `static final CertificateFactory`

  `getInstance(String type)`

  Returns a certificate factory object that implements the
  specified certificate type.

  `static final CertificateFactory`

  `getInstance(String type,
  String provider)`

  Returns a certificate factory object for the specified
  certificate type.

  `static final CertificateFactory`

  `getInstance(String type,
  Provider provider)`

  Returns a certificate factory object for the specified
  certificate type.

  `final Provider`

  `getProvider()`

  Returns the provider of this certificate factory.

  `final String`

  `getType()`

  Returns the name of the certificate type associated with this
  certificate factory.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CertificateFactory

    protected CertificateFactory([CertificateFactorySpi](CertificateFactorySpi.md "class in java.security.cert") certFacSpi,
    [Provider](../Provider.md "class in java.security") provider,
    [String](../../lang/String.md "class in java.lang") type)

    Creates a CertificateFactory object of the given type, and encapsulates
    the given provider implementation (SPI object) in it.

    Parameters:
    :   `certFacSpi` - the provider implementation.
    :   `provider` - the provider.
    :   `type` - the certificate type.
* ## Method Details

  + ### getInstance

    public static final [CertificateFactory](CertificateFactory.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") type)
    throws [CertificateException](CertificateException.md "class in java.security.cert")

    Returns a certificate factory object that implements the
    specified certificate type.

    This method traverses the list of registered security Providers,
    starting with the most preferred Provider.
    A new CertificateFactory object encapsulating the
    CertificateFactorySpi implementation from the first
    Provider that supports the specified type is returned.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../Security.md#getProviders()) method.

    Parameters:
    :   `type` - the name of the requested certificate type.
        See the CertificateFactory section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certificatefactory-types)
        for information about standard certificate types.

    Returns:
    :   a certificate factory object for the specified type

    Throws:
    :   `CertificateException` - if no `Provider` supports a
        `CertificateFactorySpi` implementation for the
        specified type
    :   `NullPointerException` - if `type` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getInstance

    public static final [CertificateFactory](CertificateFactory.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") type,
    [String](../../lang/String.md "class in java.lang") provider)
    throws [CertificateException](CertificateException.md "class in java.security.cert"),
    [NoSuchProviderException](../NoSuchProviderException.md "class in java.security")

    Returns a certificate factory object for the specified
    certificate type.

    A new CertificateFactory object encapsulating the
    CertificateFactorySpi implementation from the specified provider
    is returned. The specified provider must be registered
    in the security provider list.

    Note that the list of registered providers may be retrieved via
    the [`Security.getProviders()`](../Security.md#getProviders()) method.

    Parameters:
    :   `type` - the certificate type.
        See the CertificateFactory section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certificatefactory-types)
        for information about standard certificate types.
    :   `provider` - the name of the provider.

    Returns:
    :   a certificate factory object for the specified type

    Throws:
    :   `CertificateException` - if a `CertificateFactorySpi`
        implementation for the specified algorithm is not
        available from the specified provider
    :   `IllegalArgumentException` - if the provider name is `null`
        or empty
    :   `NoSuchProviderException` - if the specified provider is not
        registered in the security provider list
    :   `NullPointerException` - if `type` is `null`

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getInstance

    public static final [CertificateFactory](CertificateFactory.md "class in java.security.cert") getInstance([String](../../lang/String.md "class in java.lang") type,
    [Provider](../Provider.md "class in java.security") provider)
    throws [CertificateException](CertificateException.md "class in java.security.cert")

    Returns a certificate factory object for the specified
    certificate type.

    A new CertificateFactory object encapsulating the
    CertificateFactorySpi implementation from the specified Provider
    object is returned. Note that the specified Provider object
    does not have to be registered in the provider list.

    Parameters:
    :   `type` - the certificate type.
        See the CertificateFactory section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certificatefactory-types)
        for information about standard certificate types.
    :   `provider` - the provider.

    Returns:
    :   a certificate factory object for the specified type

    Throws:
    :   `CertificateException` - if a `CertificateFactorySpi`
        implementation for the specified algorithm is not available
        from the specified `Provider` object
    :   `IllegalArgumentException` - if the `provider` is
        `null`
    :   `NullPointerException` - if `type` is `null`

    Since:
    :   1.4

    See Also:
    :   - [`Provider`](../Provider.md "class in java.security")
  + ### getProvider

    public final [Provider](../Provider.md "class in java.security") getProvider()

    Returns the provider of this certificate factory.

    Returns:
    :   the provider of this certificate factory.
  + ### getType

    public final [String](../../lang/String.md "class in java.lang") getType()

    Returns the name of the certificate type associated with this
    certificate factory.

    Returns:
    :   the name of the certificate type associated with this
        certificate factory.
  + ### generateCertificate

    public final [Certificate](Certificate.md "class in java.security.cert") generateCertificate([InputStream](../../io/InputStream.md "class in java.io") inStream)
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
    method consumes one certificate and the read position of the
    input stream is positioned to the next available byte after
    the inherent end-of-certificate marker. If the data in the input stream
    does not contain an inherent end-of-certificate marker (other
    than EOF) and there is trailing data after the certificate is parsed, a
    `CertificateException` is thrown.

    Parameters:
    :   `inStream` - an input stream with the certificate data.

    Returns:
    :   a certificate object initialized with the data
        from the input stream.

    Throws:
    :   `CertificateException` - on parsing errors.
  + ### getCertPathEncodings

    public final [Iterator](../../util/Iterator.md "interface in java.util")<[String](../../lang/String.md "class in java.lang")> getCertPathEncodings()

    Returns an iteration of the `CertPath` encodings supported
    by this certificate factory, with the default encoding first. See
    the CertPath Encodings section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certpath-encodings)
    for information about standard encoding names and their formats.

    Attempts to modify the returned `Iterator` via its
    `remove` method result in an
    `UnsupportedOperationException`.

    Returns:
    :   an `Iterator` over the names of the supported
        `CertPath` encodings (as `String`s)

    Since:
    :   1.4
  + ### generateCertPath

    public final [CertPath](CertPath.md "class in java.security.cert") generateCertPath([InputStream](../../io/InputStream.md "class in java.io") inStream)
    throws [CertificateException](CertificateException.md "class in java.security.cert")

    Generates a `CertPath` object and initializes it with
    the data read from the `InputStream` inStream. The data
    is assumed to be in the default encoding. The name of the default
    encoding is the first element of the `Iterator` returned by
    the [`getCertPathEncodings`](#getCertPathEncodings()) method.

    Parameters:
    :   `inStream` - an `InputStream` containing the data

    Returns:
    :   a `CertPath` initialized with the data from the
        `InputStream`

    Throws:
    :   `CertificateException` - if an exception occurs while decoding

    Since:
    :   1.4
  + ### generateCertPath

    public final [CertPath](CertPath.md "class in java.security.cert") generateCertPath([InputStream](../../io/InputStream.md "class in java.io") inStream,
    [String](../../lang/String.md "class in java.lang") encoding)
    throws [CertificateException](CertificateException.md "class in java.security.cert")

    Generates a `CertPath` object and initializes it with
    the data read from the `InputStream` inStream. The data
    is assumed to be in the specified encoding. See
    the CertPath Encodings section in the [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#certpath-encodings)
    for information about standard encoding names and their formats.

    Parameters:
    :   `inStream` - an `InputStream` containing the data
    :   `encoding` - the encoding used for the data

    Returns:
    :   a `CertPath` initialized with the data from the
        `InputStream`

    Throws:
    :   `CertificateException` - if an exception occurs while decoding or
        the encoding requested is not supported

    Since:
    :   1.4
  + ### generateCertPath

    public final [CertPath](CertPath.md "class in java.security.cert") generateCertPath([List](../../util/List.md "interface in java.util")<? extends [Certificate](Certificate.md "class in java.security.cert")> certificates)
    throws [CertificateException](CertificateException.md "class in java.security.cert")

    Generates a `CertPath` object and initializes it with
    a `List` of `Certificate`s.

    The certificates supplied must be of a type supported by the
    `CertificateFactory`. They will be copied out of the supplied
    `List` object.

    Parameters:
    :   `certificates` - a `List` of `Certificate`s

    Returns:
    :   a `CertPath` initialized with the supplied list of
        certificates

    Throws:
    :   `CertificateException` - if an exception occurs

    Since:
    :   1.4
  + ### generateCertificates

    public final [Collection](../../util/Collection.md "interface in java.util")<? extends [Certificate](Certificate.md "class in java.security.cert")> generateCertificates([InputStream](../../io/InputStream.md "class in java.io") inStream)
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
    `inStream` may contain a sequence of DER-encoded certificates
    in the formats described for
    [`generateCertificate`](#generateCertificate(java.io.InputStream)).
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
  + ### generateCRL

    public final [CRL](CRL.md "class in java.security.cert") generateCRL([InputStream](../../io/InputStream.md "class in java.io") inStream)
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
  + ### generateCRLs

    public final [Collection](../../util/Collection.md "interface in java.util")<? extends [CRL](CRL.md "class in java.security.cert")> generateCRLs([InputStream](../../io/InputStream.md "class in java.io") inStream)
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
    `inStream` may contain a sequence of DER-encoded CRLs.
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