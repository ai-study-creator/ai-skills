Module [java.base](../../../module-summary.md)

# Package java.security.cert

---

package java.security.cert

Provides classes and interfaces for parsing and managing
certificates, certificate revocation lists (CRLs), and
certification paths. It contains support for X.509 v3
certificates and X.509 v2 CRLs.

## Package Specification

* * RFC 5280: Internet X.509 Public Key Infrastructure Certificate and
    Certificate Revocation List (CRL) Profile* RFC 2560: X.509 Internet Public Key Infrastructure Online Certificate
      Status Protocol - OCSP* [**Java Security Standard Algorithm Names Specification**](../../../../../specs/security/standard-names.md)

## Related Documentation

For information about X.509 certificates and CRLs, please see:

* <http://www.ietf.org/rfc/rfc5280.txt>

Since:
:   1.2

* Related Packages

  Package

  Description

  [java.security](../package-summary.md)

  Provides the classes and interfaces for the security framework.

  [java.security.interfaces](../interfaces/package-summary.md)

  Provides interfaces for generating RSA (Rivest, Shamir and
  Adleman AsymmetricCipher algorithm)
  keys as defined in the RSA Laboratory Technical Note
  PKCS#1, and DSA (Digital Signature
  Algorithm) keys as defined in NIST's FIPS-186.

  [java.security.spec](../spec/package-summary.md)

  Provides classes and interfaces for key specifications and algorithm
  parameter specifications.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [Certificate](Certificate.md "class in java.security.cert")

  Abstract class for managing a variety of identity certificates.

  [Certificate.CertificateRep](Certificate.CertificateRep.md "class in java.security.cert")

  Alternate `Certificate` class for serialization.

  [CertificateEncodingException](CertificateEncodingException.md "class in java.security.cert")

  Certificate Encoding Exception.

  [CertificateException](CertificateException.md "class in java.security.cert")

  This exception indicates one of a variety of certificate problems.

  [CertificateExpiredException](CertificateExpiredException.md "class in java.security.cert")

  Certificate Expired Exception.

  [CertificateFactory](CertificateFactory.md "class in java.security.cert")

  This class defines the functionality of a certificate factory, which is
  used to generate certificate, certification path (`CertPath`)
  and certificate revocation list (CRL) objects from their encodings.

  [CertificateFactorySpi](CertificateFactorySpi.md "class in java.security.cert")

  This class defines the *Service Provider Interface* (**SPI**)
  for the `CertificateFactory` class.

  [CertificateNotYetValidException](CertificateNotYetValidException.md "class in java.security.cert")

  Certificate is not yet valid exception.

  [CertificateParsingException](CertificateParsingException.md "class in java.security.cert")

  Certificate Parsing Exception.

  [CertificateRevokedException](CertificateRevokedException.md "class in java.security.cert")

  An exception that indicates an X.509 certificate is revoked.

  [CertPath](CertPath.md "class in java.security.cert")

  An immutable sequence of certificates (a certification path).

  [CertPath.CertPathRep](CertPath.CertPathRep.md "class in java.security.cert")

  Alternate `CertPath` class for serialization.

  [CertPathBuilder](CertPathBuilder.md "class in java.security.cert")

  A class for building certification paths (also known as certificate chains).

  [CertPathBuilderException](CertPathBuilderException.md "class in java.security.cert")

  An exception indicating one of a variety of problems encountered when
  building a certification path with a `CertPathBuilder`.

  [CertPathBuilderResult](CertPathBuilderResult.md "interface in java.security.cert")

  A specification of the result of a certification path builder algorithm.

  [CertPathBuilderSpi](CertPathBuilderSpi.md "class in java.security.cert")

  The *Service Provider Interface* (**SPI**)
  for the [`CertPathBuilder`](CertPathBuilder.md "class in java.security.cert") class.

  [CertPathChecker](CertPathChecker.md "interface in java.security.cert")

  Performs one or more checks on each `Certificate` of a
  `CertPath`.

  [CertPathParameters](CertPathParameters.md "interface in java.security.cert")

  A specification of certification path algorithm parameters.

  [CertPathValidator](CertPathValidator.md "class in java.security.cert")

  A class for validating certification paths (also known as certificate
  chains).

  [CertPathValidatorException](CertPathValidatorException.md "class in java.security.cert")

  An exception indicating one of a variety of problems encountered when
  validating a certification path.

  [CertPathValidatorException.BasicReason](CertPathValidatorException.BasicReason.md "enum class in java.security.cert")

  The BasicReason enumerates the potential reasons that a certification
  path of any type may be invalid.

  [CertPathValidatorException.Reason](CertPathValidatorException.Reason.md "interface in java.security.cert")

  The reason the validation algorithm failed.

  [CertPathValidatorResult](CertPathValidatorResult.md "interface in java.security.cert")

  A specification of the result of a certification path validator algorithm.

  [CertPathValidatorSpi](CertPathValidatorSpi.md "class in java.security.cert")

  The *Service Provider Interface* (**SPI**)
  for the [`CertPathValidator`](CertPathValidator.md "class in java.security.cert") class.

  [CertSelector](CertSelector.md "interface in java.security.cert")

  A selector that defines a set of criteria for selecting
  `Certificate`s.

  [CertStore](CertStore.md "class in java.security.cert")

  A class for retrieving `Certificate`s and `CRL`s
  from a repository.

  [CertStoreException](CertStoreException.md "class in java.security.cert")

  An exception indicating one of a variety of problems retrieving
  certificates and CRLs from a `CertStore`.

  [CertStoreParameters](CertStoreParameters.md "interface in java.security.cert")

  A specification of `CertStore` parameters.

  [CertStoreSpi](CertStoreSpi.md "class in java.security.cert")

  The *Service Provider Interface* (**SPI**)
  for the [`CertStore`](CertStore.md "class in java.security.cert") class.

  [CollectionCertStoreParameters](CollectionCertStoreParameters.md "class in java.security.cert")

  Parameters used as input for the Collection `CertStore`
  algorithm.

  [CRL](CRL.md "class in java.security.cert")

  This class is an abstraction of certificate revocation lists (CRLs) that
  have different formats but important common uses.

  [CRLException](CRLException.md "class in java.security.cert")

  CRL (Certificate Revocation List) Exception.

  [CRLReason](CRLReason.md "enum class in java.security.cert")

  The CRLReason enumeration specifies the reason that a certificate
  is revoked, as defined in [RFC 5280: Internet X.509 Public Key Infrastructure Certificate and CRL
  Profile](https://tools.ietf.org/html/rfc5280).

  [CRLSelector](CRLSelector.md "interface in java.security.cert")

  A selector that defines a set of criteria for selecting `CRL`s.

  [Extension](Extension.md "interface in java.security.cert")

  This interface represents an X.509 extension.

  [LDAPCertStoreParameters](LDAPCertStoreParameters.md "class in java.security.cert")

  Parameters used as input for the LDAP `CertStore` algorithm.

  [PKIXBuilderParameters](PKIXBuilderParameters.md "class in java.security.cert")

  Parameters used as input for the PKIX `CertPathBuilder`
  algorithm.

  [PKIXCertPathBuilderResult](PKIXCertPathBuilderResult.md "class in java.security.cert")

  This class represents the successful result of the PKIX certification
  path builder algorithm.

  [PKIXCertPathChecker](PKIXCertPathChecker.md "class in java.security.cert")

  An abstract class that performs one or more checks on an
  `X509Certificate`.

  [PKIXCertPathValidatorResult](PKIXCertPathValidatorResult.md "class in java.security.cert")

  This class represents the successful result of the PKIX certification
  path validation algorithm.

  [PKIXParameters](PKIXParameters.md "class in java.security.cert")

  Parameters used as input for the PKIX `CertPathValidator`
  algorithm.

  [PKIXReason](PKIXReason.md "enum class in java.security.cert")

  The `PKIXReason` enumerates the potential PKIX-specific reasons
  that an X.509 certification path may be invalid according to the PKIX
  (RFC 5280) standard.

  [PKIXRevocationChecker](PKIXRevocationChecker.md "class in java.security.cert")

  A `PKIXCertPathChecker` for checking the revocation status of
  certificates with the PKIX algorithm.

  [PKIXRevocationChecker.Option](PKIXRevocationChecker.Option.md "enum class in java.security.cert")

  Various revocation options that can be specified for the revocation
  checking mechanism.

  [PolicyNode](PolicyNode.md "interface in java.security.cert")

  An immutable valid policy tree node as defined by the PKIX certification
  path validation algorithm.

  [PolicyQualifierInfo](PolicyQualifierInfo.md "class in java.security.cert")

  An immutable policy qualifier represented by the ASN.1 PolicyQualifierInfo
  structure.

  [TrustAnchor](TrustAnchor.md "class in java.security.cert")

  A trust anchor or most-trusted Certification Authority (CA).

  [URICertStoreParameters](URICertStoreParameters.md "class in java.security.cert")

  Parameters used as input for `CertStore` algorithms which use
  information contained in a URI to retrieve certificates and CRLs.

  [X509Certificate](X509Certificate.md "class in java.security.cert")

  Abstract class for X.509 certificates.

  [X509CertSelector](X509CertSelector.md "class in java.security.cert")

  A `CertSelector` that selects `X509Certificates` that
  match all specified criteria.

  [X509CRL](X509CRL.md "class in java.security.cert")

  Abstract class for an X.509 Certificate Revocation List (CRL).

  [X509CRLEntry](X509CRLEntry.md "class in java.security.cert")

  Abstract class for a revoked certificate in a CRL (Certificate
  Revocation List).

  [X509CRLSelector](X509CRLSelector.md "class in java.security.cert")

  A `CRLSelector` that selects `X509CRLs` that
  match all specified criteria.

  [X509Extension](X509Extension.md "interface in java.security.cert")

  Interface for an X.509 extension.