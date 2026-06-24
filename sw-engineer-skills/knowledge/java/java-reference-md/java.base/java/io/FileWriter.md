Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class FileWriter

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.Writer](Writer.md "class in java.io")

[java.io.OutputStreamWriter](OutputStreamWriter.md "class in java.io")

java.io.FileWriter

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `Appendable`, `AutoCloseable`

---

public class FileWriter
extends [OutputStreamWriter](OutputStreamWriter.md "class in java.io")

Writes text to character files using a default buffer size. Encoding from characters
to bytes uses either a specified [charset](../nio/charset/Charset.md "class in java.nio.charset")
or the [default charset](../nio/charset/Charset.md#defaultCharset()).

Whether or not a file is available or may be created depends upon the
underlying platform. Some platforms, in particular, allow a file to be
opened for writing by only one `FileWriter` (or other file-writing
object) at a time. In such situations the constructors in this class
will fail if the file involved is already open.

The `FileWriter` is meant for writing streams of characters. For writing
streams of raw bytes, consider using a `FileOutputStream`.

Since:
:   1.1

See Also:
:   * [`OutputStreamWriter`](OutputStreamWriter.md "class in java.io")
    * [`FileOutputStream`](FileOutputStream.md "class in java.io")
    * [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())

* ## Field Summary

  ### Fields inherited from class java.io.[Writer](Writer.md "class in java.io")

  `lock`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileWriter(File file)`

  Constructs a `FileWriter` given the `File` to write,
  using the [default charset](../nio/charset/Charset.md#defaultCharset())

  `FileWriter(FileDescriptor fd)`

  Constructs a `FileWriter` given a file descriptor,
  using the [default charset](../nio/charset/Charset.md#defaultCharset()).

  `FileWriter(File file,
  boolean append)`

  Constructs a `FileWriter` given the `File` to write and
  a boolean indicating whether to append the data written, using the
  [default charset](../nio/charset/Charset.md#defaultCharset()).

  `FileWriter(File file,
  Charset charset)`

  Constructs a `FileWriter` given the `File` to write and
  [charset](../nio/charset/Charset.md "class in java.nio.charset").

  `FileWriter(File file,
  Charset charset,
  boolean append)`

  Constructs a `FileWriter` given the `File` to write,
  [charset](../nio/charset/Charset.md "class in java.nio.charset") and a boolean indicating
  whether to append the data written.

  `FileWriter(String fileName)`

  Constructs a `FileWriter` given a file name, using the
  [default charset](../nio/charset/Charset.md#defaultCharset())

  `FileWriter(String fileName,
  boolean append)`

  Constructs a `FileWriter` given a file name and a boolean indicating
  whether to append the data written, using the
  [default charset](../nio/charset/Charset.md#defaultCharset()).

  `FileWriter(String fileName,
  Charset charset)`

  Constructs a `FileWriter` given a file name and
  [charset](../nio/charset/Charset.md "class in java.nio.charset").

  `FileWriter(String fileName,
  Charset charset,
  boolean append)`

  Constructs a `FileWriter` given a file name,
  [charset](../nio/charset/Charset.md "class in java.nio.charset") and a boolean indicating
  whether to append the data written.
* ## Method Summary

  ### Methods inherited from class java.io.[OutputStreamWriter](OutputStreamWriter.md "class in java.io")

  `append, append, close, flush, getEncoding, write, write, write`

  ### Methods inherited from class java.io.[Writer](Writer.md "class in java.io")

  `append, nullWriter, write, write`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FileWriter

    public FileWriter([String](../lang/String.md "class in java.lang") fileName)
    throws [IOException](IOException.md "class in java.io")

    Constructs a `FileWriter` given a file name, using the
    [default charset](../nio/charset/Charset.md#defaultCharset())

    Parameters:
    :   `fileName` - String The system-dependent filename.

    Throws:
    :   `IOException` - if the named file exists but is a directory rather
        than a regular file, does not exist but cannot be
        created, or cannot be opened for any other reason

    See Also:
    :   - [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())
  + ### FileWriter

    public FileWriter([String](../lang/String.md "class in java.lang") fileName,
    boolean append)
    throws [IOException](IOException.md "class in java.io")

    Constructs a `FileWriter` given a file name and a boolean indicating
    whether to append the data written, using the
    [default charset](../nio/charset/Charset.md#defaultCharset()).

    Parameters:
    :   `fileName` - String The system-dependent filename.
    :   `append` - boolean if `true`, then data will be written
        to the end of the file rather than the beginning.

    Throws:
    :   `IOException` - if the named file exists but is a directory rather
        than a regular file, does not exist but cannot be
        created, or cannot be opened for any other reason

    See Also:
    :   - [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())
  + ### FileWriter

    public FileWriter([File](File.md "class in java.io") file)
    throws [IOException](IOException.md "class in java.io")

    Constructs a `FileWriter` given the `File` to write,
    using the [default charset](../nio/charset/Charset.md#defaultCharset())

    Parameters:
    :   `file` - the `File` to write.

    Throws:
    :   `IOException` - if the file exists but is a directory rather than
        a regular file, does not exist but cannot be created,
        or cannot be opened for any other reason

    See Also:
    :   - [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())
  + ### FileWriter

    public FileWriter([File](File.md "class in java.io") file,
    boolean append)
    throws [IOException](IOException.md "class in java.io")

    Constructs a `FileWriter` given the `File` to write and
    a boolean indicating whether to append the data written, using the
    [default charset](../nio/charset/Charset.md#defaultCharset()).

    Parameters:
    :   `file` - the `File` to write
    :   `append` - if `true`, then bytes will be written
        to the end of the file rather than the beginning

    Throws:
    :   `IOException` - if the file exists but is a directory rather than
        a regular file, does not exist but cannot be created,
        or cannot be opened for any other reason

    Since:
    :   1.4

    See Also:
    :   - [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())
  + ### FileWriter

    public FileWriter([FileDescriptor](FileDescriptor.md "class in java.io") fd)

    Constructs a `FileWriter` given a file descriptor,
    using the [default charset](../nio/charset/Charset.md#defaultCharset()).

    Parameters:
    :   `fd` - the `FileDescriptor` to write.

    See Also:
    :   - [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())
  + ### FileWriter

    public FileWriter([String](../lang/String.md "class in java.lang") fileName,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") charset)
    throws [IOException](IOException.md "class in java.io")

    Constructs a `FileWriter` given a file name and
    [charset](../nio/charset/Charset.md "class in java.nio.charset").

    Parameters:
    :   `fileName` - the name of the file to write
    :   `charset` - the [charset](../nio/charset/Charset.md "class in java.nio.charset")

    Throws:
    :   `IOException` - if the named file exists but is a directory rather
        than a regular file, does not exist but cannot be
        created, or cannot be opened for any other reason

    Since:
    :   11
  + ### FileWriter

    public FileWriter([String](../lang/String.md "class in java.lang") fileName,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") charset,
    boolean append)
    throws [IOException](IOException.md "class in java.io")

    Constructs a `FileWriter` given a file name,
    [charset](../nio/charset/Charset.md "class in java.nio.charset") and a boolean indicating
    whether to append the data written.

    Parameters:
    :   `fileName` - the name of the file to write
    :   `charset` - the [charset](../nio/charset/Charset.md "class in java.nio.charset")
    :   `append` - a boolean. If `true`, the writer will write the data
        to the end of the file rather than the beginning.

    Throws:
    :   `IOException` - if the named file exists but is a directory rather
        than a regular file, does not exist but cannot be
        created, or cannot be opened for any other reason

    Since:
    :   11
  + ### FileWriter

    public FileWriter([File](File.md "class in java.io") file,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") charset)
    throws [IOException](IOException.md "class in java.io")

    Constructs a `FileWriter` given the `File` to write and
    [charset](../nio/charset/Charset.md "class in java.nio.charset").

    Parameters:
    :   `file` - the `File` to write
    :   `charset` - the [charset](../nio/charset/Charset.md "class in java.nio.charset")

    Throws:
    :   `IOException` - if the file exists but is a directory rather than
        a regular file, does not exist but cannot be created,
        or cannot be opened for any other reason

    Since:
    :   11
  + ### FileWriter

    public FileWriter([File](File.md "class in java.io") file,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") charset,
    boolean append)
    throws [IOException](IOException.md "class in java.io")

    Constructs a `FileWriter` given the `File` to write,
    [charset](../nio/charset/Charset.md "class in java.nio.charset") and a boolean indicating
    whether to append the data written.

    Parameters:
    :   `file` - the `File` to write
    :   `charset` - the [charset](../nio/charset/Charset.md "class in java.nio.charset")
    :   `append` - a boolean. If `true`, the writer will write the data
        to the end of the file rather than the beginning.

    Throws:
    :   `IOException` - if the file exists but is a directory rather than
        a regular file, does not exist but cannot be created,
        or cannot be opened for any other reason

    Since:
    :   11