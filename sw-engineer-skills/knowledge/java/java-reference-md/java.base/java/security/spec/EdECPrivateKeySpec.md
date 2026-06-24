Module [java.base](../../../module-summary.md)

Package [java.security.spec](package-summary.md)

# Class EdECPrivateKeySpec

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.security.spec.EdECPrivateKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public final class EdECPrivateKeySpec
extends [Object](../../lang/Object.md "class in java.lang")
implements [KeySpec](KeySpec.md "interface in java.security.spec")

A class representing elliptic curve private keys as defined in
[RFC 8032: Edwards-Curve
Digital Signature Algorithm (EdDSA)](https://tools.ietf.org/html/rfc8032), including the curve and other
algorithm parameters. The private key is a bit string represented using
a byte array. This class only supports bit string lengths that are a
multiple of 8.

Since:
:   15

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `EdECPrivateKeySpec(NamedParameterSpec params,
  byte[] bytes)`

  Construct a private key spec using the supplied parameters and
  bit string.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getBytes()`

  Get the byte array representing the private key.

  `NamedParameterSpec`

  `getParams()`

  Get the algorithm parameters that define the curve and other settings.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### EdECPrivateKeySpec

    public EdECPrivateKeySpec([NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec") params,
    byte[] bytes)

    Construct a private key spec using the supplied parameters and
    bit string.

    Parameters:
    :   `params` - the algorithm parameters.
    :   `bytes` - the key as a byte array. This array is copied
        to protect against subsequent modification.

    Throws:
    :   `NullPointerException` - if `params` or `bytes`
        is null.
* ## Method Details

  + ### getParams

    public [NamedParameterSpec](NamedParameterSpec.md "class in java.security.spec") getParams()

    Get the algorithm parameters that define the curve and other settings.

    Returns:
    :   the algorithm parameters.
  + ### getBytes

    public byte[] getBytes()

    Get the byte array representing the private key. A new copy of the array
    is returned each time this method is called.

    Returns:
    :   the private key as a byte array.