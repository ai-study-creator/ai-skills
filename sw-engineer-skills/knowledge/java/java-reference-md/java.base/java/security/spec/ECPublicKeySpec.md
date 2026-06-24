Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class ECPublicKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.ECPublicKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class ECPublicKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

This immutable class specifies an elliptic curve public key with
its associated parameters.

Since:
:   1.5

See Also:
:   * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`ECPoint`](ECPoint.md "class in java.security.spec")
    * [`ECParameterSpec`](ECParameterSpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ECPublicKeySpec(ECPoint w,
  ECParameterSpec params)`

  Creates a new ECPublicKeySpec with the specified
  parameter values.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ECParameterSpec`

  `getParams()`

  Returns the associated elliptic curve domain
  parameters.

  `ECPoint`

  `getW()`

  Returns the public point W.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ECPublicKeySpec

    public ECPublicKeySpec([ECPoint](ECPoint.md "class in java.security.spec") w,
    [ECParameterSpec](ECParameterSpec.md "class in java.security.spec") params)

    Creates a new ECPublicKeySpec with the specified
    parameter values.

    Parameters:
    :   `w` - the public point.
    :   `params` - the associated elliptic curve domain
        parameters.

    Throws:
    :   `NullPointerException` - if `w`
        or `params` is null.
    :   `IllegalArgumentException` - if `w`
        is point at infinity, i.e. ECPoint.POINT\_INFINITY
* ## Method Details

  + ### getW

    public [ECPoint](ECPoint.md "class in java.security.spec") getW()

    Returns the public point W.

    Returns:
    :   the public point W.
  + ### getParams

    public [ECParameterSpec](ECParameterSpec.md "class in java.security.spec") getParams()

    Returns the associated elliptic curve domain
    parameters.

    Returns:
    :   the EC domain parameters.