Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Interface SignatureMethodParameterSpec

All Superinterfaces:
:   `AlgorithmParameterSpec`

All Known Implementing Classes:
:   `HMACParameterSpec`, `RSAPSSParameterSpec`

---

public interface SignatureMethodParameterSpec
extends [AlgorithmParameterSpec](../../../../../../java.base/java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

A specification of algorithm parameters for an XML [`SignatureMethod`](../SignatureMethod.md "interface in javax.xml.crypto.dsig")
algorithm. The purpose of this interface is to group (and provide type
safety for) all signature method parameter specifications. All signature
method parameter specifications must implement this interface.

Since:
:   1.6

See Also:
:   * [`SignatureMethod`](../SignatureMethod.md "interface in javax.xml.crypto.dsig")