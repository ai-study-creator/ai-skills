Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class EdECPublicKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.EdECPublicKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public final class EdECPublicKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

A class representing elliptic curve public keys as defined in
[RFC 8032: Edwards-Curve
Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032), including the curve and other
algorithm parameters. The public key is a point on the curve, which is
represented using an `EdECPoint`.

Since:
:   15

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EdECPublicKeySpec(NamedParameterSpec params,
  EdECPoint point)`

  Construct a public key spec using the supplied parameters and
  point.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `NamedParameterSpec`

  `getParams()`

  Get the algorithm parameters that define the curve and other settings.

  `EdECPoint`

  `getPoint()`

  Get the point representing the public key.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EdECPublicKeySpec

    public EdECPublicKeySpec([NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec") params,
    [EdECPoint](EdECPoint.md "class in java.security.spec") point)

    Construct a public key spec using the supplied parameters and
    point.

    Parameters:
    :   `params` - the algorithm parameters.
    :   `point` - the point representing the public key.

    Throws:
    :   `NullPointerException` - if `params` or `point`
        is null.
* ## Method Details

  + ### getParams

    public [NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec") getParams()

    Get the algorithm parameters that define the curve and other settings.

    Returns:
    :   the parameters.
  + ### getPoint

    public [EdECPoint](EdECPoint.md "class in java.security.spec") getPoint()

    Get the point representing the public key.

    Returns:
    :   the `EdECPoint` representing the public key.