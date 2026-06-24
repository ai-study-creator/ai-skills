Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Interface Checksum

All Known Implementing Classes:
:   `Adler32`, `CRC32`, `CRC32C`

---

public interface Checksum

An interface representing a data checksum.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `long`

  `getValue()`

  Returns the current checksum value.

  `void`

  `reset()`

  Resets the checksum to its initial value.

  `default void`

  `update(byte[] b)`

  Updates the current checksum with the specified array of bytes.

  `void`

  `update(byte[] b,
  int off,
  int len)`

  Updates the current checksum with the specified array of bytes.

  `void`

  `update(int b)`

  Updates the current checksum with the specified byte.

  `default void`

  `update(ByteBuffer buffer)`

  Updates the current checksum with the bytes from the specified buffer.

* ## Method Details

  + ### update

    void update(int b)

    Updates the current checksum with the specified byte.

    Parameters:
    :   `b` - the byte to update the checksum with
  + ### update

    default void update(byte[] b)

    Updates the current checksum with the specified array of bytes.

    Parameters:
    :   `b` - the array of bytes to update the checksum with

    Throws:
    :   `NullPointerException` - if `b` is `null`

    Since:
    :   9
  + ### update

    void update(byte[] b,
    int off,
    int len)

    Updates the current checksum with the specified array of bytes.

    Parameters:
    :   `b` - the byte array to update the checksum with
    :   `off` - the start offset of the data
    :   `len` - the number of bytes to use for the update
  + ### update

    default void update([ByteBuffer](../../nio/ByteBuffer.md "class in java.nio") buffer)

    Updates the current checksum with the bytes from the specified buffer.
    The checksum is updated with the remaining bytes in the buffer, starting
    at the buffer's position. Upon return, the buffer's position will be
    updated to its limit; its limit will not have been changed.

    Parameters:
    :   `buffer` - the ByteBuffer to update the checksum with

    Throws:
    :   `NullPointerException` - if `buffer` is `null`

    Since:
    :   9
  + ### getValue

    long getValue()

    Returns the current checksum value.

    Returns:
    :   the current checksum value
  + ### reset

    void reset()

    Resets the checksum to its initial value.