Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.stream](package-summary.md)

# Class IIOByteBuffer

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.imageio.stream.IIOByteBuffer

---

public class IIOByteBuffer
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A class representing a mutable reference to an array of bytes and
an offset and length within that array. `IIOByteBuffer`
is used by `ImageInputStream` to supply a sequence of bytes
to the caller, possibly with fewer copies than using the conventional
`read` methods that take a user-supplied byte array.

The byte array referenced by an `IIOByteBuffer` will
generally be part of an internal data structure belonging to an
`ImageReader` implementation; its contents should be
considered read-only and must not be modified.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IIOByteBuffer(byte[] data,
  int offset,
  int length)`

  Constructs an `IIOByteBuffer` that references a
  given byte array, offset, and length.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `getData()`

  Returns a reference to the byte array.

  `int`

  `getLength()`

  Returns the length of the data of interest within the byte
  array returned by `getData`.

  `int`

  `getOffset()`

  Returns the offset within the byte array returned by
  `getData` at which the data of interest start.

  `void`

  `setData(byte[] data)`

  Updates the array reference that will be returned by subsequent calls
  to the `getData` method.

  `void`

  `setLength(int length)`

  Updates the value that will be returned by subsequent calls
  to the `getLength` method.

  `void`

  `setOffset(int offset)`

  Updates the value that will be returned by subsequent calls
  to the `getOffset` method.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### IIOByteBuffer

    public IIOByteBuffer(byte[] data,
    int offset,
    int length)

    Constructs an `IIOByteBuffer` that references a
    given byte array, offset, and length.

    Parameters:
    :   `data` - a byte array.
    :   `offset` - an int offset within the array.
    :   `length` - an int specifying the length of the data of
        interest within byte array, in bytes.
* ## Method Details

  + ### getData

    public byte[] getData()

    Returns a reference to the byte array. The returned value should
    be treated as read-only, and only the portion specified by the
    values of `getOffset` and `getLength` should
    be used.

    Returns:
    :   a byte array reference.

    See Also:
    :   - [`getOffset()`](#getOffset())
        - [`getLength()`](#getLength())
        - [`setData(byte[])`](#setData(byte%5B%5D))
  + ### setData

    public void setData(byte[] data)

    Updates the array reference that will be returned by subsequent calls
    to the `getData` method.

    Parameters:
    :   `data` - a byte array reference containing the new data value.

    See Also:
    :   - [`getData()`](#getData())
  + ### getOffset

    public int getOffset()

    Returns the offset within the byte array returned by
    `getData` at which the data of interest start.

    Returns:
    :   an int offset.

    See Also:
    :   - [`getData()`](#getData())
        - [`getLength()`](#getLength())
        - [`setOffset(int)`](#setOffset(int))
  + ### setOffset

    public void setOffset(int offset)

    Updates the value that will be returned by subsequent calls
    to the `getOffset` method.

    Parameters:
    :   `offset` - an int containing the new offset value.

    See Also:
    :   - [`getOffset()`](#getOffset())
  + ### getLength

    public int getLength()

    Returns the length of the data of interest within the byte
    array returned by `getData`.

    Returns:
    :   an int length.

    See Also:
    :   - [`getData()`](#getData())
        - [`getOffset()`](#getOffset())
        - [`setLength(int)`](#setLength(int))
  + ### setLength

    public void setLength(int length)

    Updates the value that will be returned by subsequent calls
    to the `getLength` method.

    Parameters:
    :   `length` - an int containing the new length value.

    See Also:
    :   - [`getLength()`](#getLength())