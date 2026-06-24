Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Interface ObjectInput

All Superinterfaces:
:   `AutoCloseable`, `DataInput`

All Known Implementing Classes:
:   `ObjectInputStream`

---

public interface ObjectInput
extends [DataInput](DataInput.md "interface in java.io"), [AutoCloseable](../lang/AutoCloseable.md "interface in java.lang")

ObjectInput extends the DataInput interface to include the reading of
objects. DataInput includes methods for the input of primitive types,
ObjectInput extends that interface to include objects, arrays, and Strings.

Since:
:   1.1

See Also:
:   * [`InputStream`](InputStream.md "class in java.io")
    * [`ObjectOutputStream`](ObjectOutputStream.md "class in java.io")
    * [`ObjectInputStream`](ObjectInputStream.md "class in java.io")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `available()`

  Returns the number of bytes that can be read
  without blocking.

  `void`

  `close()`

  Closes the input stream.

  `int`

  `read()`

  Reads a byte of data.

  `int`

  `read(byte[] b)`

  Reads into an array of bytes.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads into an array of bytes.

  `Object`

  `readObject()`

  Read and return an object.

  `long`

  `skip(long n)`

  Skips n bytes of input.

  ### Methods inherited from interface java.io.[DataInput](DataInput.md "interface in java.io")

  `readBoolean, readByte, readChar, readDouble, readFloat, readFully, readFully, readInt, readLine, readLong, readShort, readUnsignedByte, readUnsignedShort, readUTF, skipBytes`

* ## Method Details

  + ### readObject

    [Object](../lang/Object.md "class in java.lang") readObject()
    throws [ClassNotFoundException](../lang/ClassNotFoundException.md "class in java.lang"),
    [IOException](IOException.md "class in java.io")

    Read and return an object. The class that implements this interface
    defines where the object is "read" from.

    Returns:
    :   the object read from the stream

    Throws:
    :   `ClassNotFoundException` - If the class of a serialized
        object cannot be found.
    :   `IOException` - If any of the usual Input/Output
        related exceptions occur.
  + ### read

    int read()
    throws [IOException](IOException.md "class in java.io")

    Reads a byte of data. This method will block if no input is
    available.

    Returns:
    :   the byte read, or -1 if the end of the
        stream is reached.

    Throws:
    :   `IOException` - If an I/O error has occurred.
  + ### read

    int read(byte[] b)
    throws [IOException](IOException.md "class in java.io")

    Reads into an array of bytes. This method will
    block until some input is available.

    Parameters:
    :   `b` - the buffer into which the data is read

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` if there is no more data because the end of
        the stream has been reached.

    Throws:
    :   `IOException` - If an I/O error has occurred.
  + ### read

    int read(byte[] b,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Reads into an array of bytes. This method will
    block until some input is available.

    Parameters:
    :   `b` - the buffer into which the data is read
    :   `off` - the start offset of the data
    :   `len` - the maximum number of bytes read

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` if there is no more data because the end of
        the stream has been reached.

    Throws:
    :   `IOException` - If an I/O error has occurred.
    :   `IndexOutOfBoundsException` - If `off` is negative,
        `len` is negative, or `len` is greater than
        `b.length - off`
  + ### skip

    long skip(long n)
    throws [IOException](IOException.md "class in java.io")

    Skips n bytes of input.

    Parameters:
    :   `n` - the number of bytes to be skipped

    Returns:
    :   the actual number of bytes skipped.

    Throws:
    :   `IOException` - If an I/O error has occurred.
  + ### available

    int available()
    throws [IOException](IOException.md "class in java.io")

    Returns the number of bytes that can be read
    without blocking.

    Returns:
    :   the number of available bytes.

    Throws:
    :   `IOException` - If an I/O error has occurred.
  + ### close

    void close()
    throws [IOException](IOException.md "class in java.io")

    Closes the input stream. Must be called
    to release any resources associated with
    the stream.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Throws:
    :   `IOException` - If an I/O error has occurred.