Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class DESKeySpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.DESKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class DESKeySpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [KeySpec](../../../java/security/spec/KeySpec.md "interface in java.security.spec")

This class specifies a DES key.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `DES_KEY_LEN`

  The constant which defines the length of a DES key in bytes.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DESKeySpec(byte[] key)`

  Creates a DESKeySpec object using the first 8 bytes in
  `key` as the key material for the DES key.

  `DESKeySpec(byte[] key,
  int offset)`

  Creates a DESKeySpec object using the first 8 bytes in
  `key`, beginning at `offset` inclusive,
  as the key material for the DES key.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getKey()`

  Returns the DES key material.

  `static boolean`

  `isParityAdjusted(byte[] key,
  int offset)`

  Checks if the given DES key material, starting at `offset`
  inclusive, is parity-adjusted.

  `static boolean`

  `isWeak(byte[] key,
  int offset)`

  Checks if the given DES key material is weak or semi-weak.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DES\_KEY\_LEN

    public static final int DES\_KEY\_LEN

    The constant which defines the length of a DES key in bytes.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.crypto.spec.DESKeySpec.DES_KEY_LEN)
* ## Constructor Details

  + ### DESKeySpec

    public DESKeySpec(byte[] key)
    throws [InvalidKeyException](../../../java/security/InvalidKeyException.md "class in java.security")

    Creates a DESKeySpec object using the first 8 bytes in
    `key` as the key material for the DES key.

    The bytes that constitute the DES key are those between
    `key[0]` and `key[7]` inclusive.

    Parameters:
    :   `key` - the buffer with the DES key material. The first 8 bytes
        of the buffer are copied to protect against subsequent modification.

    Throws:
    :   `NullPointerException` - if the given key material is
        `null`
    :   `InvalidKeyException` - if the given key material is shorter
        than 8 bytes.
  + ### DESKeySpec

    public DESKeySpec(byte[] key,
    int offset)
    throws [InvalidKeyException](../../../java/security/InvalidKeyException.md "class in java.security")

    Creates a DESKeySpec object using the first 8 bytes in
    `key`, beginning at `offset` inclusive,
    as the key material for the DES key.

    The bytes that constitute the DES key are those between
    `key[offset]` and `key[offset+7]` inclusive.

    Parameters:
    :   `key` - the buffer with the DES key material. The first 8 bytes
        of the buffer beginning at `offset` inclusive are copied
        to protect against subsequent modification.
    :   `offset` - the offset in `key`, where the DES key
        material starts.

    Throws:
    :   `NullPointerException` - if the given key material is
        `null`
    :   `InvalidKeyException` - if the given key material, starting at
        `offset` inclusive, is shorter than 8 bytes.
* ## Method Details

  + ### getKey

    public byte[] getKey()

    Returns the DES key material.

    Returns:
    :   the DES key material. Returns a new array
        each time this method is called.
  + ### isParityAdjusted

    public static boolean isParityAdjusted(byte[] key,
    int offset)
    throws [InvalidKeyException](../../../java/security/InvalidKeyException.md "class in java.security")

    Checks if the given DES key material, starting at `offset`
    inclusive, is parity-adjusted.

    Parameters:
    :   `key` - the buffer with the DES key material.
    :   `offset` - the offset in `key`, where the DES key
        material starts.

    Returns:
    :   true if the given DES key material is parity-adjusted, false
        otherwise.

    Throws:
    :   `InvalidKeyException` - if the given key material is
        `null`, or starting at `offset` inclusive, is
        shorter than 8 bytes.
  + ### isWeak

    public static boolean isWeak(byte[] key,
    int offset)
    throws [InvalidKeyException](../../../java/security/InvalidKeyException.md "class in java.security")

    Checks if the given DES key material is weak or semi-weak.

    Parameters:
    :   `key` - the buffer with the DES key material.
    :   `offset` - the offset in `key`, where the DES key
        material starts.

    Returns:
    :   true if the given DES key material is weak or semi-weak, false
        otherwise.

    Throws:
    :   `InvalidKeyException` - if the given key material is
        `null`, or starting at `offset` inclusive, is
        shorter than 8 bytes.