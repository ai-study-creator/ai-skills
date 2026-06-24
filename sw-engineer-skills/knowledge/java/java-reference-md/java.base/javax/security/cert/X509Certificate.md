Module [java.base](../../../module-summary.md)

Package [javax.security.cert](package-summary.md)

# Class X509Certificate

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[javax.security.cert.Certificate](Certificate.md "class in javax.security.cert")

javax.security.cert.X509Certificate

---

[@Deprecated](../../../java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java/lang/Deprecated.md#since())="9",
[forRemoval](../../../java/lang/Deprecated.md#forRemoval())=true)
public abstract class X509Certificate
extends [Certificate](Certificate.md "class in javax.security.cert")

Deprecated, for removal: This API element is subject to removal in a future version.

Use the classes in `java.security.cert` instead.

Abstract class for X.509 v1 certificates. This provides a standard
way to access all the version 1 attributes of an X.509 certificate.
Attributes that are specific to X.509 v2 or v3 are not available
through this interface. Future API evolution will provide full access to
complete X.509 v3 attributes.

The basic X.509 format was defined by
ISO/IEC and ANSI X9 and is described below in ASN.1:

```
 Certificate  ::=  SEQUENCE  {
     tbsCertificate       TBSCertificate,
     signatureAlgorithm   AlgorithmIdentifier,
     signature            BIT STRING  }
```

These certificates are widely used to support authentication and
other functionality in Internet security systems. Common applications
include Privacy Enhanced Mail (PEM), Transport Layer Security (SSL),
code signing for trusted software distribution, and Secure Electronic
Transactions (SET).

These certificates are managed and vouched for by *Certificate
Authorities* (CAs). CAs are services which create certificates by
placing data in the X.509 standard format and then digitally signing
that data. CAs act as trusted third parties, making introductions
between principals who have no direct knowledge of each other.
CA certificates are either signed by themselves, or by some other
CA such as a "root" CA.

The ASN.1 definition of `tbsCertificate` is:

```
 TBSCertificate  ::=  SEQUENCE  {
     version         [0]  EXPLICIT Version DEFAULT v1,
     serialNumber         CertificateSerialNumber,
     signature            AlgorithmIdentifier,
     issuer               Name,
     validity             Validity,
     subject              Name,
     subjectPublicKeyInfo SubjectPublicKeyInfo,
     }
```

Here is sample code to instantiate an X.509 certificate:

```
 InputStream inStream = new FileInputStream("fileName-of-cert");
 X509Certificate cert = X509Certificate.getInstance(inStream);
 inStream.close();
```

OR

```
 byte[] certData = <certificate read from a file, say>
 X509Certificate cert = X509Certificate.getInstance(certData);
```

In either case, the code that instantiates an X.509 certificate
consults the value of the `cert.provider.x509v1` security property
to locate the actual implementation or instantiates a default implementation.

The `cert.provider.x509v1` property is set to a default
implementation for X.509 such as:

```
 cert.provider.x509v1=com.sun.security.cert.internal.x509.X509V1CertImpl
```

The value of this `cert.provider.x509v1` property has to be
changed to instantiate another implementation. If this security
property is not set, a default implementation will be used.
Currently, due to possible security restrictions on access to
Security properties, this value is looked up and cached at class
initialization time and will fallback on a default implementation if
the Security property is not accessible.

*Note: The classes in the package `javax.security.cert`
exist for compatibility with earlier versions of the
Java Secure Sockets Extension (JSSE). New applications should instead
use the standard Java SE certificate classes located in
`java.security.cert`.*

Since:
:   1.4

See Also:
:   * [`Certificate`](Certificate.md "class in javax.security.cert")
    * [`X509Extension`](../../../java/security/cert/X509Extension.md "interface in java.security.cert")
    * [`security properties`](../../../java/security/Security.md "class in java.security")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `X509Certificate()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `checkValidity()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Checks that the certificate is currently valid.

  `abstract void`

  `checkValidity(Date date)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Checks that the specified date is within the certificate's
  validity period.

  `static final X509Certificate`

  `getInstance(byte[] certData)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Instantiates an X509Certificate object, and initializes it with
  the specified byte array.

  `static final X509Certificate`

  `getInstance(InputStream inStream)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Instantiates an X509Certificate object, and initializes it with
  the data read from the input stream `inStream`.

  `abstract Principal`

  `getIssuerDN()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the `issuer` (issuer distinguished name) value from
  the certificate.

  `abstract Date`

  `getNotAfter()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the `notAfter` date from the validity period of
  the certificate.

  `abstract Date`

  `getNotBefore()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the `notBefore` date from the validity period of
  the certificate.

  `abstract BigInteger`

  `getSerialNumber()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the `serialNumber` value from the certificate.

  `abstract String`

  `getSigAlgName()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the signature algorithm name for the certificate
  signature algorithm.

  `abstract String`

  `getSigAlgOID()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the signature algorithm OID string from the certificate.

  `abstract byte[]`

  `getSigAlgParams()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the DER-encoded signature algorithm parameters from this
  certificate's signature algorithm.

  `abstract Principal`

  `getSubjectDN()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the `subject` (subject distinguished name) value
  from the certificate.

  `abstract int`

  `getVersion()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Gets the `version` (version number) value from the
  certificate.

  ### Methods inherited from class javax.security.cert.[Certificate](Certificate.md "class in javax.security.cert")

  `equals, getEncoded, getPublicKey, hashCode, toString, verify, verify`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### X509Certificate

    public X509Certificate()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructor for subclasses to call.
* ## Method Details

  + ### getInstance

    public static final [X509Certificate](X509Certificate.md "class in javax.security.cert") getInstance([InputStream](../../../java/io/InputStream.md "class in java.io") inStream)
    throws [CertificateException](CertificateException.md "class in javax.security.cert")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Instantiates an X509Certificate object, and initializes it with
    the data read from the input stream `inStream`.
    The implementation (X509Certificate is an abstract class) is
    provided by the class specified as the value of the
    `cert.provider.x509v1` security property.

    Note: Only one DER-encoded
    certificate is expected to be in the input stream.
    Also, all X509Certificate
    subclasses must provide a constructor of the form:

    ```
     public <subClass>(InputStream inStream) ...
    ```

    Parameters:
    :   `inStream` - an input stream with the data to be read to
        initialize the certificate.

    Returns:
    :   an X509Certificate object initialized with the data
        from the input stream.

    Throws:
    :   `CertificateException` - if a class initialization
        or certificate parsing error occurs.
  + ### getInstance

    public static final [X509Certificate](X509Certificate.md "class in javax.security.cert") getInstance(byte[] certData)
    throws [CertificateException](CertificateException.md "class in javax.security.cert")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Instantiates an X509Certificate object, and initializes it with
    the specified byte array.
    The implementation (X509Certificate is an abstract class) is
    provided by the class specified as the value of the
    `cert.provider.x509v1` security property.

    Note: All X509Certificate
    subclasses must provide a constructor of the form:

    ```
     public <subClass>(InputStream inStream) ...
    ```

    Parameters:
    :   `certData` - a byte array containing the DER-encoded
        certificate.

    Returns:
    :   an X509Certificate object initialized with the data
        from `certData`.

    Throws:
    :   `CertificateException` - if a class initialization
        or certificate parsing error occurs.
  + ### checkValidity

    public abstract void checkValidity()
    throws [CertificateExpiredException](CertificateExpiredException.md "class in javax.security.cert"),
    [CertificateNotYetValidException](CertificateNotYetValidException.md "class in javax.security.cert")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Checks that the certificate is currently valid. It is if
    the current date and time are within the validity period given in the
    certificate.

    The validity period consists of two date/time values:
    the first and last dates (and times) on which the certificate
    is valid. It is defined in
    ASN.1 as:

    ```
     validity             Validity

     Validity ::= SEQUENCE {
         notBefore      CertificateValidityDate,
         notAfter       CertificateValidityDate }

     CertificateValidityDate ::= CHOICE {
         utcTime        UTCTime,
         generalTime    GeneralizedTime }
    ```

    Throws:
    :   `CertificateExpiredException` - if the certificate has expired.
    :   `CertificateNotYetValidException` - if the certificate is not
        yet valid.
  + ### checkValidity

    public abstract void checkValidity([Date](../../../java/util/Date.md "class in java.util") date)
    throws [CertificateExpiredException](CertificateExpiredException.md "class in javax.security.cert"),
    [CertificateNotYetValidException](CertificateNotYetValidException.md "class in javax.security.cert")

    Deprecated, for removal: This API element is subject to removal in a future version.

    Checks that the specified date is within the certificate's
    validity period. In other words, this determines whether the
    certificate would be valid at the specified date/time.

    Parameters:
    :   `date` - the Date to check against to see if this certificate
        is valid at that date/time.

    Throws:
    :   `CertificateExpiredException` - if the certificate has expired
        with respect to the `date` supplied.
    :   `CertificateNotYetValidException` - if the certificate is not
        yet valid with respect to the `date` supplied.

    See Also:
    :   - [`checkValidity()`](#checkValidity())
  + ### getVersion

    public abstract int getVersion()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the `version` (version number) value from the
    certificate. The ASN.1 definition for this is:

    ```
     version         [0]  EXPLICIT Version DEFAULT v1

     Version  ::=  INTEGER  {  v1(0), v2(1), v3(2)  }
    ```

    Returns:
    :   the version number from the ASN.1 encoding, i.e. 0, 1 or 2.
  + ### getSerialNumber

    public abstract [BigInteger](../../../java/math/BigInteger.md "class in java.math") getSerialNumber()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the `serialNumber` value from the certificate.
    The serial number is an integer assigned by the certification
    authority to each certificate. It must be unique for each
    certificate issued by a given CA (i.e., the issuer name and
    serial number identify a unique certificate).
    The ASN.1 definition for this is:

    ```
     serialNumber     CertificateSerialNumber

     CertificateSerialNumber  ::=  INTEGER
    ```

    Returns:
    :   the serial number.
  + ### getIssuerDN

    public abstract [Principal](../../../java/security/Principal.md "interface in java.security") getIssuerDN()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the `issuer` (issuer distinguished name) value from
    the certificate. The issuer name identifies the entity that signed (and
    issued) the certificate.

    The issuer name field contains an
    X.500 distinguished name (DN).
    The ASN.1 definition for this is:

    ```
     issuer    Name

     Name ::= CHOICE { RDNSequence }
     RDNSequence ::= SEQUENCE OF RelativeDistinguishedName
     RelativeDistinguishedName ::=
         SET OF AttributeValueAssertion

     AttributeValueAssertion ::= SEQUENCE {
                                   AttributeType,
                                   AttributeValue }
     AttributeType ::= OBJECT IDENTIFIER
     AttributeValue ::= ANY
    ```

    The `Name` describes a hierarchical name composed of
    attributes, such as country name, and corresponding values, such as US.
    The type of the `AttributeValue` component is determined by
    the `AttributeType`; in general it will be a
    `directoryString`. A `directoryString` is usually
    one of `PrintableString`,
    `TeletexString` or `UniversalString`.

    Returns:
    :   a Principal whose name is the issuer distinguished name.
  + ### getSubjectDN

    public abstract [Principal](../../../java/security/Principal.md "interface in java.security") getSubjectDN()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the `subject` (subject distinguished name) value
    from the certificate.
    The ASN.1 definition for this is:

    ```
     subject    Name
    ```

    See [`getIssuerDN`](#getIssuerDN()) for `Name`
    and other relevant definitions.

    Returns:
    :   a Principal whose name is the subject name.

    See Also:
    :   - [`getIssuerDN()`](#getIssuerDN())
  + ### getNotBefore

    public abstract [Date](../../../java/util/Date.md "class in java.util") getNotBefore()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the `notBefore` date from the validity period of
    the certificate.
    The relevant ASN.1 definitions are:

    ```
     validity             Validity

     Validity ::= SEQUENCE {
         notBefore      CertificateValidityDate,
         notAfter       CertificateValidityDate }

     CertificateValidityDate ::= CHOICE {
         utcTime        UTCTime,
         generalTime    GeneralizedTime }
    ```

    Returns:
    :   the start date of the validity period.

    See Also:
    :   - [`checkValidity()`](#checkValidity())
  + ### getNotAfter

    public abstract [Date](../../../java/util/Date.md "class in java.util") getNotAfter()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the `notAfter` date from the validity period of
    the certificate. See [`getNotBefore`](#getNotBefore())
    for relevant ASN.1 definitions.

    Returns:
    :   the end date of the validity period.

    See Also:
    :   - [`checkValidity()`](#checkValidity())
  + ### getSigAlgName

    public abstract [String](../../../java/lang/String.md "class in java.lang") getSigAlgName()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the signature algorithm name for the certificate
    signature algorithm. An example is the string "SHA-1/DSA".
    The ASN.1 definition for this is:

    ```
     signatureAlgorithm   AlgorithmIdentifier

     AlgorithmIdentifier  ::=  SEQUENCE  {
         algorithm               OBJECT IDENTIFIER,
         parameters              ANY DEFINED BY algorithm OPTIONAL  }
                                 -- contains a value of the type
                                 -- registered for use with the
                                 -- algorithm object identifier value
    ```

    The algorithm name is determined from the `algorithm`
    OID string.

    Returns:
    :   the signature algorithm name.
  + ### getSigAlgOID

    public abstract [String](../../../java/lang/String.md "class in java.lang") getSigAlgOID()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the signature algorithm OID string from the certificate.
    An OID is represented by a set of positive whole numbers separated
    by periods.
    For example, the string "1.2.840.10040.4.3" identifies the SHA-1
    with DSA signature algorithm, as per the PKIX part I.

    See [`getSigAlgName`](#getSigAlgName()) for
    relevant ASN.1 definitions.

    Returns:
    :   the signature algorithm OID string.
  + ### getSigAlgParams

    public abstract byte[] getSigAlgParams()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Gets the DER-encoded signature algorithm parameters from this
    certificate's signature algorithm. In most cases, the signature
    algorithm parameters are null; the parameters are usually
    supplied with the certificate's public key.

    See [`getSigAlgName`](#getSigAlgName()) for
    relevant ASN.1 definitions.

    Returns:
    :   the DER-encoded signature algorithm parameters, or
        null if no parameters are present.