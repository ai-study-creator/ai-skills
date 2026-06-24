Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class CipherInputStream

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

[java.io.InputStream](../../java/io/InputStream.md "class in java.io")

[java.io.FilterInputStream](../../java/io/FilterInputStream.md "class in java.io")

javax.crypto.CipherInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class CipherInputStream
extends [FilterInputStream](../../java/io/FilterInputStream.md "class in java.io")

A `CipherInputStream` is composed of an `InputStream`
and a `Cipher` object so that read() methods return data that are
read in from the underlying `InputStream` but have been
additionally processed by the `Cipher` object. The `Cipher`
object must be fully initialized before being used by a
`CipherInputStream`.

For example, if the `Cipher` object is initialized for decryption,
the `CipherInputStream` will attempt to read in data and decrypt
them, before returning the decrypted data.

This class adheres strictly to the semantics, especially the
failure semantics, of its ancestor classes
`java.io.FilterInputStream` and `java.io.InputStream`.
This class has exactly those methods specified in its ancestor classes, and
overrides them all. Moreover, this class catches all exceptions
that are not thrown by its ancestor classes. In particular, the
`skip` method skips, and the `available`
method counts only data that have been processed by the encapsulated
`Cipher` object.
This class may catch `BadPaddingException` and other exceptions
thrown by failed integrity checks during decryption. These exceptions are not
re-thrown, so the client may not be informed that integrity checks
failed. Because of this behavior, this class may not be suitable
for use with decryption in an authenticated mode of operation (e.g. GCM).
Applications that require authenticated encryption can use the
`Cipher` API directly as an alternative to using this class.

It is crucial for a programmer using this class not to use
methods that are not defined or overridden in this class (such as a
new method or constructor that is later added to one of the super
classes), because the design and implementation of those methods
are unlikely to have considered security impact with regard to
`CipherInputStream`.

Since:
:   1.4

See Also:
:   * [`InputStream`](../../java/io/InputStream.md "class in java.io")
    * [`FilterInputStream`](../../java/io/FilterInputStream.md "class in java.io")
    * [`Cipher`](Cipher.md "class in javax.crypto")
    * [`CipherOutputStream`](CipherOutputStream.md "class in javax.crypto")

* ## Field Summary

  ### Fields inherited from class java.io.[FilterInputStream](../../java/io/FilterInputStream.md "class in java.io")

  `in`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CipherInputStream(InputStream is)`

  Constructs a `CipherInputStream` from an
  `InputStream` without specifying a `Cipher` object.

  `CipherInputStream(InputStream is,
  Cipher c)`

  Constructs a `CipherInputStream` from an
  `InputStream` and a `Cipher` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `available()`

  Returns the number of bytes that can be read from this input
  stream without blocking.

  `void`

  `close()`

  Closes this input stream and releases any system resources
  associated with the stream.

  `boolean`

  `markSupported()`

  Tests if this input stream supports the `mark`
  and `reset` methods, which it does not.

  `int`

  `read()`

  Reads the next byte of data from this input stream.

  `int`

  `read(byte[] b)`

  Reads up to `b.length` bytes of data from this input
  stream into an array of bytes.

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads up to `len` bytes of data from this input stream
  into an array of bytes.

  `long`

  `skip(long n)`

  Skips `n` bytes of input from the bytes that can be read
  from this input stream without blocking.

  ### Methods inherited from class java.io.[FilterInputStream](../../java/io/FilterInputStream.md "class in java.io")

  `mark, reset`

  ### Methods inherited from class java.io.[InputStream](../../java/io/InputStream.md "class in java.io")

  `nullInputStream, readAllBytes, readNBytes, readNBytes, skipNBytes, transferTo`

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CipherInputStream

    public CipherInputStream([InputStream](../../java/io/InputStream.md "class in java.io") is,
    [Cipher](Cipher.md "class in javax.crypto") c)

    Constructs a `CipherInputStream` from an
    `InputStream` and a `Cipher` object.
      
    Note: if the specified input stream or cipher is
    `null`, a `NullPointerException` may be thrown later when
    they are used.

    Parameters:
    :   `is` - the to-be-processed input stream
    :   `c` - an initialized `Cipher` object
  + ### CipherInputStream

    protected CipherInputStream([InputStream](../../java/io/InputStream.md "class in java.io") is)

    Constructs a `CipherInputStream` from an
    `InputStream` without specifying a `Cipher` object.
    This has the effect of constructing a `CipherInputStream`
    using a `NullCipher`.
      
    Note: if the specified input stream is `null`, a
    `NullPointerException` may be thrown later when it is used.

    Parameters:
    :   `is` - the to-be-processed input stream
* ## Method Details

  + ### read

    public int read()
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Reads the next byte of data from this input stream. The value
    byte is returned as an `int` in the range
    `0` to `255`. If no byte is available
    because the end of the stream has been reached, the value
    `-1` is returned. This method blocks until input data
    is available, the end of the stream is detected, or an exception
    is thrown.

    Overrides:
    :   `read` in class `FilterInputStream`

    Returns:
    :   the next byte of data, or `-1` if the end of the
        stream is reached.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterInputStream.in`](../../java/io/FilterInputStream.md#in)
  + ### read

    public int read(byte[] b)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Reads up to `b.length` bytes of data from this input
    stream into an array of bytes.

    The `read` method of `InputStream` calls
    the `read` method of three arguments with the arguments
    `b`, `0`, and `b.length`.

    Overrides:
    :   `read` in class `FilterInputStream`

    Parameters:
    :   `b` - the buffer into which the data is read.

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` is there is no more data because the end of
        the stream has been reached.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`InputStream.read(byte[], int, int)`](../../java/io/InputStream.md#read(byte%5B%5D,int,int))
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Reads up to `len` bytes of data from this input stream
    into an array of bytes. This method blocks until some input is
    available. If the first argument is `null`, up to
    `len` bytes are read and discarded.

    Overrides:
    :   `read` in class `FilterInputStream`

    Parameters:
    :   `b` - the buffer into which the data is read.
    :   `off` - the start offset in the destination array
        `buf`
    :   `len` - the maximum number of bytes read.

    Returns:
    :   the total number of bytes read into the buffer, or
        `-1` if there is no more data because the end of
        the stream has been reached.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`InputStream.read()`](../../java/io/InputStream.md#read())
  + ### skip

    public long skip(long n)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Skips `n` bytes of input from the bytes that can be read
    from this input stream without blocking.

    Fewer bytes than requested might be skipped.
    The actual number of bytes skipped is equal to `n` or
    the result of a call to
    [`available`](#available()),
    whichever is smaller.
    If `n` is less than zero, no bytes are skipped.

    The actual number of bytes skipped is returned.

    Overrides:
    :   `skip` in class `FilterInputStream`

    Parameters:
    :   `n` - the number of bytes to be skipped.

    Returns:
    :   the actual number of bytes skipped.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`InputStream.skipNBytes(long)`](../../java/io/InputStream.md#skipNBytes(long))
  + ### available

    public int available()
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Returns the number of bytes that can be read from this input
    stream without blocking. The `available` method of
    `InputStream` returns `0`. This method
    **should** be overridden by subclasses.

    Overrides:
    :   `available` in class `FilterInputStream`

    Returns:
    :   the number of bytes that can be read from this input stream
        without blocking.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### close

    public void close()
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Closes this input stream and releases any system resources
    associated with the stream.

    The `close` method of `CipherInputStream`
    calls the `close` method of its underlying input
    stream.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `FilterInputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterInputStream.in`](../../java/io/FilterInputStream.md#in)
  + ### markSupported

    public boolean markSupported()

    Tests if this input stream supports the `mark`
    and `reset` methods, which it does not.

    Overrides:
    :   `markSupported` in class `FilterInputStream`

    Returns:
    :   `false`, since this class does not support the
        `mark` and `reset` methods.

    See Also:
    :   - [`InputStream.mark(int)`](../../java/io/InputStream.md#mark(int))
        - [`InputStream.reset()`](../../java/io/InputStream.md#reset())