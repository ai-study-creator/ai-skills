Module [java.base](../../module-summary.md)

Package [javax.crypto](package-summary.md)

# Class CipherOutputStream

[java.lang.Object](../../java/lang/Object.md "class in java.lang")

[java.io.OutputStream](../../java/io/OutputStream.md "class in java.io")

[java.io.FilterOutputStream](../../java/io/FilterOutputStream.md "class in java.io")

javax.crypto.CipherOutputStream

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `AutoCloseable`

---

public class CipherOutputStream
extends [FilterOutputStream](../../java/io/FilterOutputStream.md "class in java.io")

A `CipherOutputStream` is composed of an `OutputStream`
and a `Cipher` object so that write() methods first process the data
before writing them out to the underlying `OutputStream`.
The `Cipher` object must be fully initialized before being used by a
`CipherOutputStream`.

For example, if the `Cipher` object is initialized for encryption,
the `CipherOutputStream` will attempt to encrypt data before
writing out the encrypted data.

This class adheres strictly to the semantics, especially the
failure semantics, of its ancestor classes
`java.io.OutputStream` and
`java.io.FilterOutputStream`.
This class has exactly those methods specified in its ancestor classes, and
overrides them all. Moreover, this class catches all exceptions
that are not thrown by its ancestor classes. In particular, this
class catches `BadPaddingException` and other exceptions thrown by
failed integrity checks during decryption. These exceptions are not
re-thrown, so the client will not be informed that integrity checks
failed. Because of this behavior, this class may not be suitable
for use with decryption in an authenticated mode of operation (e.g. GCM)
if the application requires explicit notification when authentication
fails. Such an application can use the `Cipher` API directly as
an alternative to using this class.

It is crucial for a programmer using this class not to use
methods that are not defined or overridden in this class (such as a
new method or constructor that is later added to one of the super
classes), because the design and implementation of those methods
are unlikely to have considered security impact with regard to
`CipherOutputStream`.

Since:
:   1.4

See Also:
:   * [`OutputStream`](../../java/io/OutputStream.md "class in java.io")
    * [`FilterOutputStream`](../../java/io/FilterOutputStream.md "class in java.io")
    * [`Cipher`](Cipher.md "class in javax.crypto")
    * [`CipherInputStream`](CipherInputStream.md "class in javax.crypto")

* ## Field Summary

  ### Fields inherited from class java.io.[FilterOutputStream](../../java/io/FilterOutputStream.md "class in java.io")

  `out`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CipherOutputStream(OutputStream os)`

  Constructs a `CipherOutputStream` from an
  `OutputStream` without specifying a `Cipher` object.

  `CipherOutputStream(OutputStream os,
  Cipher c)`

  Constructs a `CipherOutputStream` from an
  `OutputStream` and a `Cipher` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this output stream and releases any system resources
  associated with this stream.

  `void`

  `flush()`

  Flushes this output stream by forcing any buffered output bytes
  that have already been processed by the encapsulated `Cipher`
  object to be written out.

  `void`

  `write(byte[] b)`

  Writes `b.length` bytes from the specified byte array
  to this output stream.

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Writes `len` bytes from the specified byte array
  starting at offset `off` to this output stream.

  `void`

  `write(int b)`

  Writes the specified byte to this output stream.

  ### Methods inherited from class java.io.[OutputStream](../../java/io/OutputStream.md "class in java.io")

  `nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CipherOutputStream

    public CipherOutputStream([OutputStream](../../java/io/OutputStream.md "class in java.io") os,
    [Cipher](Cipher.md "class in javax.crypto") c)

    Constructs a `CipherOutputStream` from an
    `OutputStream` and a `Cipher` object.
      
    Note: if the specified output stream or cipher is
    `null`, `a NullPointerException` may be thrown later when
    they are used.

    Parameters:
    :   `os` - the `OutputStream` object
    :   `c` - an initialized `Cipher` object
  + ### CipherOutputStream

    protected CipherOutputStream([OutputStream](../../java/io/OutputStream.md "class in java.io") os)

    Constructs a `CipherOutputStream` from an
    `OutputStream` without specifying a `Cipher` object.
    This has the effect of constructing a `CipherOutputStream`
    using a `NullCipher`.
      
    Note: if the specified output stream is `null`, a
    `NullPointerException` may be thrown later when it is used.

    Parameters:
    :   `os` - the `OutputStream` object
* ## Method Details

  + ### write

    public void write(int b)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Writes the specified byte to this output stream.

    Overrides:
    :   `write` in class `FilterOutputStream`

    Parameters:
    :   `b` - the `byte`.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### write

    public void write(byte[] b)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Writes `b.length` bytes from the specified byte array
    to this output stream.

    The `write` method of
    `CipherOutputStream` calls the `write`
    method of three arguments with the three arguments
    `b`, `0`, and `b.length`.

    Overrides:
    :   `write` in class `FilterOutputStream`

    Parameters:
    :   `b` - the data.

    Throws:
    :   `NullPointerException` - if `b` is `null`.
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`write(byte[], int, int)`](#write(byte%5B%5D,int,int))
  + ### write

    public void write(byte[] b,
    int off,
    int len)
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Writes `len` bytes from the specified byte array
    starting at offset `off` to this output stream.

    Overrides:
    :   `write` in class `FilterOutputStream`

    Parameters:
    :   `b` - the data.
    :   `off` - the start offset in the data.
    :   `len` - the number of bytes to write.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.write(int)`](../../java/io/FilterOutputStream.md#write(int))
  + ### flush

    public void flush()
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Flushes this output stream by forcing any buffered output bytes
    that have already been processed by the encapsulated `Cipher`
    object to be written out.

    Any bytes buffered by the encapsulated `Cipher` object
    and waiting to be processed by it will not be written out. For example,
    if the encapsulated `Cipher` object is a block cipher, and the
    total number of bytes written using one of the `write`
    methods is less than the cipher's block size, no bytes will be written
    out.

    Specified by:
    :   `flush` in interface `Flushable`

    Overrides:
    :   `flush` in class `FilterOutputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.out`](../../java/io/FilterOutputStream.md#out)
  + ### close

    public void close()
    throws [IOException](../../java/io/IOException.md "class in java.io")

    Closes this output stream and releases any system resources
    associated with this stream.

    This method invokes the `doFinal` method of the encapsulated
    `Cipher` object, which causes any bytes buffered by the
    encapsulated `Cipher` object to be processed. The result is written
    out by calling the `flush` method of this output stream.

    This method resets the encapsulated `Cipher` object to its
    initial state and calls the `close` method of the underlying
    output stream.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `FilterOutputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FilterOutputStream.flush()`](../../java/io/FilterOutputStream.md#flush())
        - [`FilterOutputStream.out`](../../java/io/FilterOutputStream.md#out)