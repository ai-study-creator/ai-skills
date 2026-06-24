Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class ECGenParameterSpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.security.spec.NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec")

java.security.spec.ECGenParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class ECGenParameterSpec
extends [NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec")

This immutable class specifies the set of parameters used for
generating elliptic curve (EC) domain parameters.

Since:
:   1.5

See Also:
:   * [`AlgorithmParameterSpec`](AlgorithmParameterSpec.md "interface in java.security.spec")

* ## Field Summary

  ### Fields inherited from class java.security.spec.[NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec")

  `ED25519, ED448, X25519, X448`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ECGenParameterSpec(String stdName)`

  Creates a parameter specification for EC parameter
  generation using a standard (or predefined) name
  `stdName` in order to generate the corresponding
  (precomputed) elliptic curve domain parameters.
* ## Method Summary

  ### Methods inherited from class java.security.spec.[NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec")

  `getName`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ECGenParameterSpec

    public ECGenParameterSpec([String](../../lang/String.md "class in java.lang") stdName)

    Creates a parameter specification for EC parameter
    generation using a standard (or predefined) name
    `stdName` in order to generate the corresponding
    (precomputed) elliptic curve domain parameters. For the
    list of supported names, please consult the documentation
    of the provider whose implementation will be used.

    Parameters:
    :   `stdName` - the standard name of the to-be-generated EC
        domain parameters. See the ParameterSpec Names section in the
        [Java Security Standard Algorithm Names Specification](../../../../../specs/security/standard-names.md#parameterspec-names) for
        information about standard names.

    Throws:
    :   `NullPointerException` - if `stdName` is null.