Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Interface KeySpec

All Known Implementing Classes:
:   `DESedeKeySpec`, `DESKeySpec`, `DHPrivateKeySpec`, `DHPublicKeySpec`, `DSAPrivateKeySpec`, `DSAPublicKeySpec`, `ECPrivateKeySpec`, `ECPublicKeySpec`, `EdECPrivateKeySpec`, `EdECPublicKeySpec`, `EncodedKeySpec`, `PBEKeySpec`, `PKCS8EncodedKeySpec`, `RSAMultiPrimePrivateCrtKeySpec`, `RSAPrivateCrtKeySpec`, `RSAPrivateKeySpec`, `RSAPublicKeySpec`, `SecretKeySpec`, `X509EncodedKeySpec`, `XECPrivateKeySpec`, `XECPublicKeySpec`

---

public interface KeySpec

A (transparent) specification of the key material
that constitutes a cryptographic key.

If the key is stored on a hardware device, its
specification may contain information that helps identify the key on the
device.

A key may be specified in an algorithm-specific way, or in an
algorithm-independent encoding format (such as ASN.1).
For example, a DSA private key may be specified by its components
`x`, `p`, `q`, and `g`
(see [`DSAPrivateKeySpec`](DSAPrivateKeySpec.md "class in java.security.spec")), or it may be
specified using its DER encoding
(see [`PKCS8EncodedKeySpec`](PKCS8EncodedKeySpec.md "class in java.security.spec")).

This interface contains no methods or constants. Its only purpose
is to group (and provide type safety for) all key specifications.
All key specifications must implement this interface.

Since:
:   1.2

See Also:
:   * [`Key`](../Key.md "interface in java.security")
    * [`KeyFactory`](../KeyFactory.md "class in java.security")
    * [`EncodedKeySpec`](EncodedKeySpec.md "class in java.security.spec")
    * [`X509EncodedKeySpec`](X509EncodedKeySpec.md "class in java.security.spec")
    * [`PKCS8EncodedKeySpec`](PKCS8EncodedKeySpec.md "class in java.security.spec")
    * [`DSAPrivateKeySpec`](DSAPrivateKeySpec.md "class in java.security.spec")
    * [`DSAPublicKeySpec`](DSAPublicKeySpec.md "class in java.security.spec")