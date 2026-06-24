Module [java.base](../../../module-summary.md)

# Package java.security.spec

---

package java.security.spec

Provides classes and interfaces for key specifications and algorithm
parameter specifications.

A key specification is a transparent representation of the key material
that constitutes a key. A key may be specified in an algorithm-specific
way, or in an algorithm-independent encoding format (such as ASN.1).
This package contains key specifications for DSA public and private keys,
RSA public and private keys, PKCS #8 private keys in DER-encoded format,
and X.509 public and private keys in DER-encoded format.

An algorithm parameter specification is a transparent representation
of the sets of parameters used with an algorithm. This package contains
an algorithm parameter specification for parameters used with the
DSA algorithm.

## Package Specification

* PKCS #1: RSA Cryptography Specifications, Version 2.2 (RFC 8017)
* PKCS #8: Private-Key Information Syntax Standard,
  Version 1.2, November 1993
* Federal Information Processing Standards Publication (FIPS PUB) 186:
  Digital Signature Standard (DSS)

## Related Documentation

For documentation that includes information about algorithm parameter
and key specifications, please see:

Since:
:   1.2

* Related Packages

  Package

  Description

  [java.security](../package-summary.md)

  Provides the classes and interfaces for the security framework.

  [java.security.cert](../cert/package-summary.md)

  Provides classes and interfaces for parsing and managing
  certificates, certificate revocation lists (CRLs), and
  certification paths.

  [java.security.interfaces](../interfaces/package-summary.md)

  Provides interfaces for generating RSA (Rivest, Shamir and
  Adleman AsymmetricCipher algorithm)
  keys as defined in the RSA Laboratory Technical Note
  PKCS#1, and DSA (Digital Signature
  Algorithm) keys as defined in NIST's FIPS-186.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec")

  A (transparent) specification of cryptographic parameters.

  [DSAGenParameterSpec](DSAGenParameterSpec.md "class in java.security.spec")

  This immutable class specifies the set of parameters used for
  generating DSA parameters as specified in
  [FIPS 186-3 Digital Signature Standard (DSS)](http://csrc.nist.gov/publications/fips/fips186-3/fips_186-3.pdf).

  [DSAParameterSpec](DSAParameterSpec.md "class in java.security.spec")

  This class specifies the set of parameters used with the DSA algorithm.

  [DSAPrivateKeySpec](DSAPrivateKeySpec.md "class in java.security.spec")

  This class specifies a DSA private key with its associated parameters.

  [DSAPublicKeySpec](DSAPublicKeySpec.md "class in java.security.spec")

  This class specifies a DSA public key with its associated parameters.

  [ECField](ECField.md "interface in java.security.spec")

  This interface represents an elliptic curve (EC) finite field.

  [ECFieldF2m](ECFieldF2m.md "class in java.security.spec")

  This immutable class defines an elliptic curve (EC)
  characteristic 2 finite field.

  [ECFieldFp](ECFieldFp.md "class in java.security.spec")

  This immutable class defines an elliptic curve (EC) prime
  finite field.

  [ECGenParameterSpec](ECGenParameterSpec.md "class in java.security.spec")

  This immutable class specifies the set of parameters used for
  generating elliptic curve (EC) domain parameters.

  [ECParameterSpec](ECParameterSpec.md "class in java.security.spec")

  This immutable class specifies the set of domain parameters
  used with elliptic curve cryptography (ECC).

  [ECPoint](ECPoint.md "class in java.security.spec")

  This immutable class represents a point on an elliptic curve (EC)
  in affine coordinates.

  [ECPrivateKeySpec](ECPrivateKeySpec.md "class in java.security.spec")

  This immutable class specifies an elliptic curve private key with
  its associated parameters.

  [ECPublicKeySpec](ECPublicKeySpec.md "class in java.security.spec")

  This immutable class specifies an elliptic curve public key with
  its associated parameters.

  [EdDSAParameterSpec](EdDSAParameterSpec.md "class in java.security.spec")

  A class used to specify EdDSA signature and verification parameters.

  [EdECPoint](EdECPoint.md "class in java.security.spec")

  An elliptic curve point used to specify keys as defined by
  [RFC 8032: Edwards-Curve
  Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032).

  [EdECPrivateKeySpec](EdECPrivateKeySpec.md "class in java.security.spec")

  A class representing elliptic curve private keys as defined in
  [RFC 8032: Edwards-Curve
  Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032), including the curve and other
  algorithm parameters.

  [EdECPublicKeySpec](EdECPublicKeySpec.md "class in java.security.spec")

  A class representing elliptic curve public keys as defined in
  [RFC 8032: Edwards-Curve
  Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032), including the curve and other
  algorithm parameters.

  [EllipticCurve](EllipticCurve.md "class in java.security.spec")

  This immutable class holds the necessary values needed to represent
  an elliptic curve.

  [EncodedKeySpec](EncodedKeySpec.md "class in java.security.spec")

  This class represents a public or private key in encoded format.

  [InvalidKeySpecException](InvalidKeySpecException.md "class in java.security.spec")

  This is the exception for invalid key specifications.

  [InvalidParameterSpecException](InvalidParameterSpecException.md "class in java.security.spec")

  This is the exception for invalid parameter specifications.

  [KeySpec](KeySpec.md "interface in java.security.spec")

  A (transparent) specification of the key material
  that constitutes a cryptographic key.

  [MGF1ParameterSpec](MGF1ParameterSpec.md "class in java.security.spec")

  This class specifies the set of parameters used with mask generation
  function MGF1 in OAEP Padding and RSASSA-PSS signature scheme, as
  defined in the
  [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard.

  [NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec")

  This class is used to specify any algorithm parameters that are determined
  by a standard name.

  [PKCS8EncodedKeySpec](PKCS8EncodedKeySpec.md "class in java.security.spec")

  This class represents the ASN.1 encoding of a private key,
  encoded according to the ASN.1 type `PrivateKeyInfo`.

  [PSSParameterSpec](PSSParameterSpec.md "class in java.security.spec")

  This class specifies a parameter spec for the RSASSA-PSS signature scheme,
  as defined in the
  [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard.

  [RSAKeyGenParameterSpec](RSAKeyGenParameterSpec.md "class in java.security.spec")

  This class specifies the set of parameters used to generate an RSA
  key pair.

  [RSAMultiPrimePrivateCrtKeySpec](RSAMultiPrimePrivateCrtKeySpec.md "class in java.security.spec")

  This class specifies an RSA multi-prime private key, as defined in the
  [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard
  using the Chinese Remainder Theorem (CRT) information values
  for efficiency.

  [RSAOtherPrimeInfo](RSAOtherPrimeInfo.md "class in java.security.spec")

  This class represents the triplet (prime, exponent, and coefficient)
  inside RSA's OtherPrimeInfo structure, as defined in the
  [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard.

  [RSAPrivateCrtKeySpec](RSAPrivateCrtKeySpec.md "class in java.security.spec")

  This class specifies an RSA private key, as defined in the
  [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard,
  using the Chinese Remainder Theorem (CRT) information values for efficiency.

  [RSAPrivateKeySpec](RSAPrivateKeySpec.md "class in java.security.spec")

  This class specifies an RSA private key.

  [RSAPublicKeySpec](RSAPublicKeySpec.md "class in java.security.spec")

  This class specifies an RSA public key.

  [X509EncodedKeySpec](X509EncodedKeySpec.md "class in java.security.spec")

  This class represents the ASN.1 encoding of a public key,
  encoded according to the ASN.1 type `SubjectPublicKeyInfo`.

  [XECPrivateKeySpec](XECPrivateKeySpec.md "class in java.security.spec")

  A class representing elliptic curve private keys as defined in RFC 7748,
  including the curve and other algorithm parameters.

  [XECPublicKeySpec](XECPublicKeySpec.md "class in java.security.spec")

  A class representing elliptic curve public keys as defined in RFC 7748,
  including the curve and other algorithm parameters.