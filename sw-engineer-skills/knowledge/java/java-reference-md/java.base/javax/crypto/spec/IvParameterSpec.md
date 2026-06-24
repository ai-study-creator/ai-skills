Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class IvParameterSpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.IvParameterSpec

All Implemented Interfaces:
:   `AlgorithmParameterSpec`

---

public class IvParameterSpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [AlgorithmParameterSpec](../../../java/security/spec/AlgorithmParameterSpec.md "interface in java.security.spec")

This class specifies an *initialization vector* (IV).
Examples which use IVs are ciphers in feedback mode,
e.g., DES in CBC mode and RSA ciphers with OAEP encoding
operation.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IvParameterSpec(byte[] iv)`

  Creates an IvParameterSpec object using the bytes in `iv`
  as the IV.

  `IvParameterSpec(byte[] iv,
  int offset,
  int len)`

  Creates an IvParameterSpec object using the first `len`
  bytes in `iv`, beginning at `offset`
  inclusive, as the IV.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getIV()`

  Returns the initialization vector (IV).

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### IvParameterSpec

    public IvParameterSpec(byte[] iv)

    Creates an IvParameterSpec object using the bytes in `iv`
    as the IV.

    Parameters:
    :   `iv` - the buffer with the IV. The contents of the
        buffer are copied to protect against subsequent modification.

    Throws:
    :   `NullPointerException` - if `iv` is `null`
  + ### IvParameterSpec

    public IvParameterSpec(byte[] iv,
    int offset,
    int len)

    Creates an IvParameterSpec object using the first `len`
    bytes in `iv`, beginning at `offset`
    inclusive, as the IV.

    The bytes that constitute the IV are those between
    `iv[offset]` and `iv[offset+len-1]` inclusive.

    Parameters:
    :   `iv` - the buffer with the IV. The first `len`
        bytes of the buffer beginning at `offset` inclusive
        are copied to protect against subsequent modification.
    :   `offset` - the offset in `iv` where the IV
        starts.
    :   `len` - the number of IV bytes.

    Throws:
    :   `IllegalArgumentException` - if `iv` is `null`
        or `(iv.length - offset < len)`
    :   `ArrayIndexOutOfBoundsException` - is thrown if `offset`
        or `len` index bytes outside the `iv`.
* ## Method Details

  + ### getIV

    public byte[] getIV()

    Returns the initialization vector (IV).

    Returns:
    :   the initialization vector (IV). Returns a new array
        each time this method is called.