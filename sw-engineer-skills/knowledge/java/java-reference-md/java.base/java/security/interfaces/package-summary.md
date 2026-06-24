Module [java.base](../../../module-summary.md)

# Package java.security.interfaces

---

package java.security.interfaces

Provides interfaces for generating RSA (Rivest, Shamir and
Adleman AsymmetricCipher algorithm)
keys as defined in the RSA Laboratory Technical Note
PKCS#1, and DSA (Digital Signature
Algorithm) keys as defined in NIST's FIPS-186.

Note that these interfaces are intended only for key
implementations whose key material is accessible and
available. These interfaces are not intended for key
implementations whose key material resides in
inaccessible, protected storage (such as in a
hardware device).

For more developer information on how to use these
interfaces, including information on how to design
`Key` classes for hardware devices, please refer
to these cryptographic provider developer guides:





## Package Specification

* PKCS #1: RSA Cryptography Specifications, Version 2.2 (RFC 8017)
* Federal Information Processing Standards Publication (FIPS PUB) 186:
  Digital Signature Standard (DSS)

## Related Documentation

For further documentation, please see:

Since:
:   1.1

* Related Packages

  Package

  Description

  [java.security](../package-summary.md)

  Provides the classes and interfaces for the security framework.

  [java.security.cert](../cert/package-summary.md)

  Provides classes and interfaces for parsing and managing
  certificates, certificate revocation lists (CRLs), and
  certification paths.

  [java.security.spec](../spec/package-summary.md)

  Provides classes and interfaces for key specifications and algorithm
  parameter specifications.
* Interfaces

  Class

  Description

  [DSAKey](DSAKey.md "interface in java.security.interfaces")

  The interface to a DSA public or private key.

  [DSAKeyPairGenerator](DSAKeyPairGenerator.md "interface in java.security.interfaces")

  An interface to an object capable of generating DSA key pairs.

  [DSAParams](DSAParams.md "interface in java.security.interfaces")

  Interface to a DSA-specific set of key parameters, which defines a
  DSA *key family*.

  [DSAPrivateKey](DSAPrivateKey.md "interface in java.security.interfaces")

  The standard interface to a DSA private key.

  [DSAPublicKey](DSAPublicKey.md "interface in java.security.interfaces")

  The interface to a DSA public key.

  [ECKey](ECKey.md "interface in java.security.interfaces")

  The interface to an elliptic curve (EC) key.

  [ECPrivateKey](ECPrivateKey.md "interface in java.security.interfaces")

  The interface to an elliptic curve (EC) private key.

  [ECPublicKey](ECPublicKey.md "interface in java.security.interfaces")

  The interface to an elliptic curve (EC) public key.

  [EdECKey](EdECKey.md "interface in java.security.interfaces")

  An interface for an elliptic curve public/private key as defined by
  [RFC 8032: Edwards-Curve
  Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032).

  [EdECPrivateKey](EdECPrivateKey.md "interface in java.security.interfaces")

  An interface for an elliptic curve private key as defined by
  [RFC 8032: Edwards-Curve
  Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032).

  [EdECPublicKey](EdECPublicKey.md "interface in java.security.interfaces")

  An interface for an elliptic curve public key as defined by
  [RFC 8032: Edwards-Curve
  Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032).

  [RSAKey](RSAKey.md "interface in java.security.interfaces")

  The interface to a public or private key in
  [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard,
  such as those for RSA, or RSASSA-PSS algorithms.

  [RSAMultiPrimePrivateCrtKey](RSAMultiPrimePrivateCrtKey.md "interface in java.security.interfaces")

  The interface to an RSA multi-prime private key, as defined in the
  [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard,
  using the *Chinese Remainder Theorem* (CRT) information values.

  [RSAPrivateCrtKey](RSAPrivateCrtKey.md "interface in java.security.interfaces")

  The interface to an RSA private key, as defined in the
  [PKCS#1 v2.2](https://tools.ietf.org/rfc/rfc8017.txt) standard,
  using the *Chinese Remainder Theorem* (CRT) information values.

  [RSAPrivateKey](RSAPrivateKey.md "interface in java.security.interfaces")

  The interface to an RSA private key.

  [RSAPublicKey](RSAPublicKey.md "interface in java.security.interfaces")

  The interface to an RSA public key.

  [XECKey](XECKey.md "interface in java.security.interfaces")

  An interface for an elliptic curve public/private key as defined by
  RFC 7748.

  [XECPrivateKey](XECPrivateKey.md "interface in java.security.interfaces")

  An interface for an elliptic curve private key as defined by RFC 7748.

  [XECPublicKey](XECPublicKey.md "interface in java.security.interfaces")

  An interface for an elliptic curve public key as defined by RFC 7748.