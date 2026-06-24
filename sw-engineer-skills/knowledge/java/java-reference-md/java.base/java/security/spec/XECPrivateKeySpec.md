Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class XECPrivateKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.XECPrivateKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class XECPrivateKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

A class representing elliptic curve private keys as defined in RFC 7748,
including the curve and other algorithm parameters. The private key is
represented as an encoded scalar value. The decoding procedure defined in
the RFC includes an operation that forces certain bits of the key to either
1 or 0. This operation is known as "pruning" or "clamping" the private key.
All arrays in this spec are unpruned, and implementations will need to prune
the array before using it in any numerical operations.

Since:
:   11

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XECPrivateKeySpec(AlgorithmParameterSpec params,
  byte[] scalar)`

  Construct a private key spec using the supplied parameters and
  encoded scalar value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AlgorithmParameterSpec`

  `getParams()`

  Get the algorithm parameters that define the curve and other settings.

  `byte[]`

  `getScalar()`

  Get the scalar value encoded as an unpruned byte array.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### XECPrivateKeySpec

    public XECPrivateKeySpec([AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") params,
    byte[] scalar)

    Construct a private key spec using the supplied parameters and
    encoded scalar value.

    Parameters:
    :   `params` - the algorithm parameters
    :   `scalar` - the unpruned encoded scalar value. This array is copied
        to protect against subsequent modification.

    Throws:
    :   `NullPointerException` - if `params` or `scalar`
        is null.
* ## Method Details

  + ### getParams

    public [AlgorithmParameterSpec](AlgorithmParameterSpec.md "interface in java.security.spec") getParams()

    Get the algorithm parameters that define the curve and other settings.

    Returns:
    :   the algorithm parameters
  + ### getScalar

    public byte[] getScalar()

    Get the scalar value encoded as an unpruned byte array. A new copy of
    the array is returned each time this method is called.

    Returns:
    :   the unpruned encoded scalar value