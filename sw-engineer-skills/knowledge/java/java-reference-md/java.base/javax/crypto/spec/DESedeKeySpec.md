Module [java.base](../../../module-summary.md)

Package [javax.crypto.spec](package-summary.md)

# Class DESedeKeySpec

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.crypto.spec.DESedeKeySpec

All Implemented Interfaces:
:   `KeySpec`

---

public class DESedeKeySpec
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [KeySpec](../../../java/security/spec/KeySpec.md "interface in java.security.spec")

This class specifies a DES-EDE ("triple-DES") key.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `DES_EDE_KEY_LEN`

  The constant which defines the length of a DESede key in bytes.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DESedeKeySpec(byte[] key)`

  Creates a DESedeKeySpec object using the first 24 bytes in
  `key` as the key material for the DES-EDE key.

  `DESedeKeySpec(byte[] key,
  int offset)`

  Creates a DESedeKeySpec object using the first 24 bytes in
  `key`, beginning at `offset` inclusive,
  as the key material for the DES-EDE key.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getKey()`

  Returns the DES-EDE key.

  `static boolean`

  `isParityAdjusted(byte[] key,
  int offset)`

  Checks if the given DES-EDE key, starting at `offset`
  inclusive, is parity-adjusted.

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DES\_EDE\_KEY\_LEN

    public static final int DES\_EDE\_KEY\_LEN

    The constant which defines the length of a DESede key in bytes.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.crypto.spec.DESedeKeySpec.DES_EDE_KEY_LEN)
* ## Constructor Details

  + ### DESedeKeySpec

    public DESedeKeySpec(byte[] key)
    throws [InvalidKeyException](../../../java/security/InvalidKeyException.md "class in java.security")

    Creates a DESedeKeySpec object using the first 24 bytes in
    `key` as the key material for the DES-EDE key.

    The bytes that constitute the DES-EDE key are those between
    `key[0]` and `key[23]` inclusive

    Parameters:
    :   `key` - the buffer with the DES-EDE key material. The first
        24 bytes of the buffer are copied to protect against subsequent
        modification.

    Throws:
    :   `NullPointerException` - if `key` is null.
    :   `InvalidKeyException` - if the given key material is shorter
        than 24 bytes.
  + ### DESedeKeySpec

    public DESedeKeySpec(byte[] key,
    int offset)
    throws [InvalidKeyException](../../../java/security/InvalidKeyException.md "class in java.security")

    Creates a DESedeKeySpec object using the first 24 bytes in
    `key`, beginning at `offset` inclusive,
    as the key material for the DES-EDE key.

    The bytes that constitute the DES-EDE key are those between
    `key[offset]` and `key[offset+23]` inclusive.

    Parameters:
    :   `key` - the buffer with the DES-EDE key material. The first
        24 bytes of the buffer beginning at `offset` inclusive
        are copied to protect against subsequent modification.
    :   `offset` - the offset in `key`, where the DES-EDE key
        material starts.

    Throws:
    :   `NullPointerException` - if `key` is null.
    :   `InvalidKeyException` - if the given key material, starting at
        `offset` inclusive, is shorter than 24 bytes
* ## Method Details

  + ### getKey

    public byte[] getKey()

    Returns the DES-EDE key.

    Returns:
    :   the DES-EDE key. Returns a new array
        each time this method is called.
  + ### isParityAdjusted

    public static boolean isParityAdjusted(byte[] key,
    int offset)
    throws [InvalidKeyException](../../../java/security/InvalidKeyException.md "class in java.security")

    Checks if the given DES-EDE key, starting at `offset`
    inclusive, is parity-adjusted.

    Parameters:
    :   `key` - a byte array which holds the key value
    :   `offset` - the offset into the byte array

    Returns:
    :   true if the given DES-EDE key is parity-adjusted, false
        otherwise

    Throws:
    :   `NullPointerException` - if `key` is null.
    :   `InvalidKeyException` - if the given key material, starting at
        `offset` inclusive, is shorter than 24 bytes