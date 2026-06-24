Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Interface AlgorithmParameterSpec

All Known Subinterfaces:
:   `C14NMethodParameterSpec`, `DigestMethodParameterSpec`, `SignatureMethodParameterSpec`, `TransformParameterSpec`

All Known Implementing Classes:
:   `ChaCha20ParameterSpec`, `DHGenParameterSpec`, `DHParameterSpec`, `DSAGenParameterSpec`, `DSAParameterSpec`, `ECGenParameterSpec`, `ECParameterSpec`, `EdDSAParameterSpec`, `ExcC14NParameterSpec`, `GCMParameterSpec`, `HMACParameterSpec`, `IvParameterSpec`, `MGF1ParameterSpec`, `NamedParameterSpec`, `OAEPParameterSpec`, `PBEParameterSpec`, `PSSParameterSpec`, `RC2ParameterSpec`, `RC5ParameterSpec`, `RSAKeyGenParameterSpec`, `RSAPSSParameterSpec`, `XPathFilter2ParameterSpec`, `XPathFilterParameterSpec`, `XSLTTransformParameterSpec`

---

public interface AlgorithmParameterSpec

A (transparent) specification of cryptographic parameters.

This interface contains no methods or constants. Its only purpose
is to group (and provide type safety for) all parameter specifications.
All parameter specifications must implement this interface.

Since:
:   1.2

See Also:
:   * [`AlgorithmParameters`](../AlgorithmParameters.md "class in java.security")
    * [`DSAParameterSpec`](DSAParameterSpec.md "class in java.security.spec")