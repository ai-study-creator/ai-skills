Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class ECPrivateKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.ECPrivateKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class ECPrivateKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

This immutable class specifies an elliptic curve private key with
its associated parameters.

Since:
:   1.5

See Also:
:   * [`KeySpec`](KeySpec.md "interface in java.security.spec")
    * [`ECParameterSpec`](ECParameterSpec.md "class in java.security.spec")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ECPrivateKeySpec(BigInteger s,
  ECParameterSpec params)`

  Creates a new ECPrivateKeySpec with the specified
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

  `BigInteger`

  `getS()`

  Returns the private value S.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ECPrivateKeySpec

    public ECPrivateKeySpec([BigInteger](../../math/BigInteger.md "class in java.math") s,
    [ECParameterSpec](ECParameterSpec.md "class in java.security.spec") params)

    Creates a new ECPrivateKeySpec with the specified
    parameter values.

    Parameters:
    :   `s` - the private value.
    :   `params` - the associated elliptic curve domain
        parameters.

    Throws:
    :   `NullPointerException` - if `s`
        or `params` is null.
* ## Method Details

  + ### getS

    public [BigInteger](../../math/BigInteger.md "class in java.math") getS()

    Returns the private value S.

    Returns:
    :   the private value S.
  + ### getParams

    public [ECParameterSpec](ECParameterSpec.md "class in java.security.spec") getParams()

    Returns the associated elliptic curve domain
    parameters.

    Returns:
    :   the EC domain parameters.