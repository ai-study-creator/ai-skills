Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Interface TransformParameterSpec

All Superinterfaces:
:   `AlgorithmParameterSpec`

All Known Subinterfaces:
:   `C14NMethodParameterSpec`

All Known Implementing Classes:
:   `ExcC14NParameterSpec`, `XPathFilter2ParameterSpec`, `XPathFilterParameterSpec`, `XSLTTransformParameterSpec`

---

public interface TransformParameterSpec
extends [AlgorithmParameterSpec](../../../../../../java.base/java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

A specification of algorithm parameters for a [`Transform`](../Transform.md "interface in javax.xml.crypto.dsig")
algorithm. The purpose of this interface is to group (and provide type
safety for) all transform parameter specifications. All transform parameter
specifications must implement this interface.

Since:
:   1.6

See Also:
:   * [`Transform`](../Transform.md "interface in javax.xml.crypto.dsig")