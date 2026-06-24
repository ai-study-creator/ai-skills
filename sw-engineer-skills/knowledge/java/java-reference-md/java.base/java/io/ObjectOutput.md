Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Interface ObjectOutput

All Superinterfaces:
:   `AutoCloseable`, `DataOutput`

All Known Implementing Classes:
:   `ObjectOutputStream`

---

public interface ObjectOutput
extends [DataOutput](DataOutput.md "interface in java.io"), [AutoCloseable](../lang/AutoCloseable.md "interface in java.lang")

ObjectOutput extends the DataOutput interface to include writing of objects.
DataOutput includes methods for output of primitive types, ObjectOutput
extends that interface to include objects, arrays, and Strings.

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

  `void`

  `close()`

  Closes the stream.

  `void`

  `flush()`

  Flushes the stream.

  `void`

  `write(byte[] b)`

  Writes an array of bytes.

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Writes a sub array of bytes.

  `void`

  `write(int b)`

  Writes a byte.

  `void`

  `writeObject(Object obj)`

  Write an object to the underlying storage or stream.

  ### Methods inherited from interface java.io.[DataOutput](DataOutput.md "interface in java.io")

  `writeBoolean, writeByte, writeBytes, writeChar, writeChars, writeDouble, writeFloat, writeInt, writeLong, writeShort, writeUTF`

* ## Method Details

  + ### writeObject

    void writeObject([Object](../lang/Object.md "class in java.lang") obj)
    throws [IOException](IOException.md "class in java.io")

    Write an object to the underlying storage or stream. The
    class that implements this interface defines how the object is
    written.

    Parameters:
    :   `obj` - the object to be written

    Throws:
    :   `IOException` - Any of the usual Input/Output related exceptions.
  + ### write

    void write(int b)
    throws [IOException](IOException.md "class in java.io")

    Writes a byte. This method will block until the byte is actually
    written.

    Specified by:
    :   `write` in interface `DataOutput`

    Parameters:
    :   `b` - the byte

    Throws:
    :   `IOException` - If an I/O error has occurred.
  + ### write

    void write(byte[] b)
    throws [IOException](IOException.md "class in java.io")

    Writes an array of bytes. This method will block until the bytes
    are actually written.

    Specified by:
    :   `write` in interface `DataOutput`

    Parameters:
    :   `b` - the data to be written

    Throws:
    :   `IOException` - If an I/O error has occurred.
  + ### write

    void write(byte[] b,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Writes a sub array of bytes.

    Specified by:
    :   `write` in interface `DataOutput`

    Parameters:
    :   `b` - the data to be written
    :   `off` - the start offset in the data
    :   `len` - the number of bytes that are written

    Throws:
    :   `IOException` - If an I/O error has occurred.
    :   `IndexOutOfBoundsException` - If `off` is negative,
        `len` is negative, or `len` is greater than
        `b.length - off`
  + ### flush

    void flush()
    throws [IOException](IOException.md "class in java.io")

    Flushes the stream. This will write any buffered
    output bytes.

    Throws:
    :   `IOException` - If an I/O error has occurred.
  + ### close

    void close()
    throws [IOException](IOException.md "class in java.io")

    Closes the stream. This method must be called
    to release any resources associated with the
    stream.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Throws:
    :   `IOException` - If an I/O error has occurred.