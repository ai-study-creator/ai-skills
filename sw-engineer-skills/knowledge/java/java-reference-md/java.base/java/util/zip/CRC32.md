Module [java.base](../../../module-summary.md)

Package [java.util.zip](package-summary.md)

# Class CRC32

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.zip.CRC32

All Implemented Interfaces:
:   `Checksum`

---

public class CRC32
extends [Object](../../lang/Object.md "class in java.lang")
implements [Checksum](Checksum.md "interface in java.util.zip")

A class that can be used to compute the CRC-32 of a data stream.

Passing a `null` argument to a method in this class will cause
a [`NullPointerException`](../../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.1

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CRC32()`

  Creates a new CRC32 object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `long`

  `getValue()`

  Returns CRC-32 value.

  `void`

  `reset()`

  Resets CRC-32 to initial value.

  `void`

  `update(byte[] b,
  int off,
  int len)`

  Updates the CRC-32 checksum with the specified array of bytes.

  `void`

  `update(int b)`

  Updates the CRC-32 checksum with the specified byte (the low
  eight bits of the argument b).

  `void`

  `update(ByteBuffer buffer)`

  Updates the CRC-32 checksum with the bytes from the specified buffer.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.util.zip.[Checksum](Checksum.md "interface in java.util.zip")

  `update`

* ## Constructor Details

  + ### CRC32

    public CRC32()

    Creates a new CRC32 object.
* ## Method Details

  + ### update

    public void update(int b)

    Updates the CRC-32 checksum with the specified byte (the low
    eight bits of the argument b).

    Specified by:
    :   `update` in interface `Checksum`

    Parameters:
    :   `b` - the byte to update the checksum with
  + ### update

    public void update(byte[] b,
    int off,
    int len)

    Updates the CRC-32 checksum with the specified array of bytes.

    Specified by:
    :   `update` in interface `Checksum`

    Parameters:
    :   `b` - the byte array to update the checksum with
    :   `off` - the start offset of the data
    :   `len` - the number of bytes to use for the update

    Throws:
    :   `ArrayIndexOutOfBoundsException` - if `off` is negative, or `len` is negative, or
        `off+len` is negative or greater than the length of
        the array `b`.
  + ### update

    public void update([ByteBuffer](../../nio/ByteBuffer.md "class in java.nio") buffer)

    Updates the CRC-32 checksum with the bytes from the specified buffer.
    The checksum is updated with the remaining bytes in the buffer, starting
    at the buffer's position. Upon return, the buffer's position will be
    updated to its limit; its limit will not have been changed.

    Specified by:
    :   `update` in interface `Checksum`

    Parameters:
    :   `buffer` - the ByteBuffer to update the checksum with

    Since:
    :   1.8
  + ### reset

    public void reset()

    Resets CRC-32 to initial value.

    Specified by:
    :   `reset` in interface `Checksum`
  + ### getValue

    public long getValue()

    Returns CRC-32 value.

    Specified by:
    :   `getValue` in interface `Checksum`

    Returns:
    :   the current checksum value