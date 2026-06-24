Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Interface AlgorithmMethod

All Known Subinterfaces:
:   `CanonicalizationMethod`, `DigestMethod`, `SignatureMethod`, `Transform`

All Known Implementing Classes:
:   `TransformService`

---

public interface AlgorithmMethod

An abstract representation of an algorithm defined in the XML Security
specifications. Subclasses represent specific types of XML security
algorithms, such as a [`Transform`](dsig/Transform.md "interface in javax.xml.crypto.dsig").

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getAlgorithm()`

  Returns the algorithm URI of this `AlgorithmMethod`.

  `AlgorithmParameterSpec`

  `getParameterSpec()`

  Returns the algorithm parameters of this `AlgorithmMethod`.

* ## Method Details

  + ### getAlgorithm

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getAlgorithm()

    Returns the algorithm URI of this `AlgorithmMethod`.

    Returns:
    :   the algorithm URI of this `AlgorithmMethod`
  + ### getParameterSpec

    [AlgorithmParameterSpec](../../../../java.base/java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec") getParameterSpec()

    Returns the algorithm parameters of this `AlgorithmMethod`.

    Returns:
    :   the algorithm parameters of this `AlgorithmMethod`.
        Returns `null` if this `AlgorithmMethod` does
        not require parameters and they are not specified.