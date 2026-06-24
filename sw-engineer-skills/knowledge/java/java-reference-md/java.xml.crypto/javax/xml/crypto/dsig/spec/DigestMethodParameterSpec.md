Module [java.xml.crypto](../../../../../module-summary.md)

Package [javax.xml.crypto.dsig.spec](package-summary.md)

# Interface DigestMethodParameterSpec

All Superinterfaces:
:   `AlgorithmParameterSpec`

---

public interface DigestMethodParameterSpec
extends [AlgorithmParameterSpec](../../../../../../java.base/java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

A specification of algorithm parameters for a [`DigestMethod`](../DigestMethod.md "interface in javax.xml.crypto.dsig")
algorithm. The purpose of this interface is to group (and provide type
safety for) all digest method parameter specifications. All digest method
parameter specifications must implement this interface.

Since:
:   1.6

See Also:
:   * [`DigestMethod`](../DigestMethod.md "interface in javax.xml.crypto.dsig")