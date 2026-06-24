Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Interface C14NMethodParameterSpec

All Superinterfaces:
:   `AlgorithmParameterSpec`, `TransformParameterSpec`

All Known Implementing Classes:
:   `ExcC14NParameterSpec`

---

public interface C14NMethodParameterSpec
extends [TransformParameterSpec](TransformParameterSpec.md "interface in javax.xml.crypto.dsig.spec")

A specification of algorithm parameters for a [`CanonicalizationMethod`](../CanonicalizationMethod.md "interface in javax.xml.crypto.dsig")
Algorithm. The purpose of this interface is to group (and provide type
safety for) all canonicalization (C14N) parameter specifications. All
canonicalization parameter specifications must implement this interface.

Since:
:   1.6

See Also:
:   * [`CanonicalizationMethod`](../CanonicalizationMethod.md "interface in javax.xml.crypto.dsig")