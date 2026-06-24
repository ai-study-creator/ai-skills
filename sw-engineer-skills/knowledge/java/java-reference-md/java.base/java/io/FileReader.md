Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class FileReader

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Reader](Reader.md "class in java.io")

[java.io.InputStreamReader](InputStreamReader.md "class in java.io")

java.io.FileReader

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`, `Readable`

---

public class FileReader
extends [InputStreamReader](InputStreamReader.md "class in java.io")

Reads text from character files using a default buffer size. Decoding from bytes
to characters uses either a specified [charset](../nio/charset/Charset.md "class in java.nio.charset")
or the [default charset](../nio/charset/Charset.md#defaultCharset()).

The `FileReader` is meant for reading streams of characters. For reading
streams of raw bytes, consider using a `FileInputStream`.

Since:
:   1.1

See Also:
:   * [`InputStreamReader`](InputStreamReader.md "class in java.io")
    * [`FileInputStream`](FileInputStream.md "class in java.io")
    * [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())

* ## Field Summary

  ### Fields inherited from class java.io.[Reader](Reader.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileReader(File file)`

  Creates a new `FileReader`, given the `File` to read,
  using the [default charset](../nio/charset/Charset.md#defaultCharset()).

  `FileReader(FileDescriptor fd)`

  Creates a new `FileReader`, given the `FileDescriptor` to read,
  using the [default charset](../nio/charset/Charset.md#defaultCharset()).

  `FileReader(File file,
  Charset charset)`

  Creates a new `FileReader`, given the `File` to read and
  the [charset](../nio/charset/Charset.md "class in java.nio.charset").

  `FileReader(String fileName)`

  Creates a new `FileReader`, given the name of the file to read,
  using the [default charset](../nio/charset/Charset.md#defaultCharset()).

  `FileReader(String fileName,
  Charset charset)`

  Creates a new `FileReader`, given the name of the file to read
  and the [charset](../nio/charset/Charset.md "class in java.nio.charset").
* ## Method Summary

  ### Methods inherited from class java.io.[InputStreamReader](InputStreamReader.md "class in java.io")

  `close, getEncoding, read, read, read, ready`

  ### Methods inherited from class java.io.[Reader](Reader.md "class in java.io")

  `mark, markSupported, nullReader, read, reset, skip, transferTo`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FileReader

    public FileReader([String](../lang/String.md "class in java.lang") fileName)
    throws [FileNotFoundException](FileNotFoundException.md "class in java.io")

    Creates a new `FileReader`, given the name of the file to read,
    using the [default charset](../nio/charset/Charset.md#defaultCharset()).

    Parameters:
    :   `fileName` - the name of the file to read

    Throws:
    :   `FileNotFoundException` - if the named file does not exist,
        is a directory rather than a regular file,
        or for some other reason cannot be opened for
        reading.

    See Also:
    :   - [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())
  + ### FileReader

    public FileReader([File](File.md "class in java.io") file)
    throws [FileNotFoundException](FileNotFoundException.md "class in java.io")

    Creates a new `FileReader`, given the `File` to read,
    using the [default charset](../nio/charset/Charset.md#defaultCharset()).

    Parameters:
    :   `file` - the `File` to read

    Throws:
    :   `FileNotFoundException` - if the file does not exist,
        is a directory rather than a regular file,
        or for some other reason cannot be opened for
        reading.

    See Also:
    :   - [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())
  + ### FileReader

    public FileReader([FileDescriptor](FileDescriptor.md "class in java.io") fd)

    Creates a new `FileReader`, given the `FileDescriptor` to read,
    using the [default charset](../nio/charset/Charset.md#defaultCharset()).

    Parameters:
    :   `fd` - the `FileDescriptor` to read

    See Also:
    :   - [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())
  + ### FileReader

    public FileReader([String](../lang/String.md "class in java.lang") fileName,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") charset)
    throws [IOException](IOException.md "class in java.io")

    Creates a new `FileReader`, given the name of the file to read
    and the [charset](../nio/charset/Charset.md "class in java.nio.charset").

    Parameters:
    :   `fileName` - the name of the file to read
    :   `charset` - the [charset](../nio/charset/Charset.md "class in java.nio.charset")

    Throws:
    :   `IOException` - if the named file does not exist,
        is a directory rather than a regular file,
        or for some other reason cannot be opened for
        reading.

    Since:
    :   11
  + ### FileReader

    public FileReader([File](File.md "class in java.io") file,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") charset)
    throws [IOException](IOException.md "class in java.io")

    Creates a new `FileReader`, given the `File` to read and
    the [charset](../nio/charset/Charset.md "class in java.nio.charset").

    Parameters:
    :   `file` - the `File` to read
    :   `charset` - the [charset](../nio/charset/Charset.md "class in java.nio.charset")

    Throws:
    :   `IOException` - if the file does not exist,
        is a directory rather than a regular file,
        or for some other reason cannot be opened for
        reading.

    Since:
    :   11