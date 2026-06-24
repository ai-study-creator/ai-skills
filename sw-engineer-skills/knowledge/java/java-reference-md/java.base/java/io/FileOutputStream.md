Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class FileOutputStream

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.OutputStream](OutputStream.md "class in java.io")

java.io.FileOutputStream

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `AutoCloseable`

---

public class FileOutputStream
extends [OutputStream](OutputStream.md "class in java.io")

A file output stream is an output stream for writing data to a
`File` or to a `FileDescriptor`. Whether or not
a file is available or may be created depends upon the underlying
platform. Some platforms, in particular, allow a file to be opened
for writing by only one `FileOutputStream` (or other
file-writing object) at a time. In such situations the constructors in
this class will fail if the file involved is already open.

`FileOutputStream` is meant for writing streams of raw bytes
such as image data. For writing streams of characters, consider using
`FileWriter`.

Since:
:   1.0

See Also:
:   * [`File`](File.md "class in java.io")
    * [`FileDescriptor`](FileDescriptor.md "class in java.io")
    * [`FileInputStream`](FileInputStream.md "class in java.io")
    * [`Files.newOutputStream(java.nio.file.Path, java.nio.file.OpenOption...)`](../nio/file/Files.md#newOutputStream(java.nio.file.Path,java.nio.file.OpenOption...))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FileOutputStream(File file)`

  Creates a file output stream to write to the file represented by
  the specified `File` object.

  `FileOutputStream(FileDescriptor fdObj)`

  Creates a file output stream to write to the specified file
  descriptor, which represents an existing connection to an actual
  file in the file system.

  `FileOutputStream(File file,
  boolean append)`

  Creates a file output stream to write to the file represented by
  the specified `File` object.

  `FileOutputStream(String name)`

  Creates a file output stream to write to the file with the
  specified name.

  `FileOutputStream(String name,
  boolean append)`

  Creates a file output stream to write to the file with the specified
  name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `close()`

  Closes this file output stream and releases any system resources
  associated with this stream.

  `FileChannel`

  `getChannel()`

  Returns the unique [`FileChannel`](../nio/channels/FileChannel.md "class in java.nio.channels")
  object associated with this file output stream.

  `final FileDescriptor`

  `getFD()`

  Returns the file descriptor associated with this stream.

  `void`

  `write(byte[] b)`

  Writes `b.length` bytes from the specified byte array
  to this file output stream.

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Writes `len` bytes from the specified byte array
  starting at offset `off` to this file output stream.

  `void`

  `write(int b)`

  Writes the specified byte to this file output stream.

  ### Methods inherited from class java.io.[OutputStream](OutputStream.md "class in java.io")

  `flush, nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FileOutputStream

    public FileOutputStream([String](../lang/String.md "class in java.lang") name)
    throws [FileNotFoundException](FileNotFoundException.md "class in java.io")

    Creates a file output stream to write to the file with the
    specified name. A new `FileDescriptor` object is
    created to represent this file connection.

    First, if there is a security manager, its `checkWrite`
    method is called with `name` as its argument.

    If the file exists but is a directory rather than a regular file, does
    not exist but cannot be created, or cannot be opened for any other
    reason then a `FileNotFoundException` is thrown.

    Parameters:
    :   `name` - the system-dependent filename

    Throws:
    :   `FileNotFoundException` - if the file exists but is a directory
        rather than a regular file, does not exist but cannot
        be created, or cannot be opened for any other reason
    :   `SecurityException` - if a security manager exists and its
        `checkWrite` method denies write access
        to the file.

    See Also:
    :   - [`SecurityManager.checkWrite(java.lang.String)`](../lang/SecurityManager.md#checkWrite(java.lang.String))
  + ### FileOutputStream

    public FileOutputStream([String](../lang/String.md "class in java.lang") name,
    boolean append)
    throws [FileNotFoundException](FileNotFoundException.md "class in java.io")

    Creates a file output stream to write to the file with the specified
    name. If the second argument is `true`, then
    bytes will be written to the end of the file rather than the beginning.
    A new `FileDescriptor` object is created to represent this
    file connection.

    First, if there is a security manager, its `checkWrite`
    method is called with `name` as its argument.

    If the file exists but is a directory rather than a regular file, does
    not exist but cannot be created, or cannot be opened for any other
    reason then a `FileNotFoundException` is thrown.

    Parameters:
    :   `name` - the system-dependent file name
    :   `append` - if `true`, then bytes will be written
        to the end of the file rather than the beginning

    Throws:
    :   `FileNotFoundException` - if the file exists but is a directory
        rather than a regular file, does not exist but cannot
        be created, or cannot be opened for any other reason.
    :   `SecurityException` - if a security manager exists and its
        `checkWrite` method denies write access
        to the file.

    Since:
    :   1.1

    See Also:
    :   - [`SecurityManager.checkWrite(java.lang.String)`](../lang/SecurityManager.md#checkWrite(java.lang.String))
  + ### FileOutputStream

    public FileOutputStream([File](File.md "class in java.io") file)
    throws [FileNotFoundException](FileNotFoundException.md "class in java.io")

    Creates a file output stream to write to the file represented by
    the specified `File` object. A new
    `FileDescriptor` object is created to represent this
    file connection.

    First, if there is a security manager, its `checkWrite`
    method is called with the path represented by the `file`
    argument as its argument.

    If the file exists but is a directory rather than a regular file, does
    not exist but cannot be created, or cannot be opened for any other
    reason then a `FileNotFoundException` is thrown.

    Parameters:
    :   `file` - the file to be opened for writing.

    Throws:
    :   `FileNotFoundException` - if the file exists but is a directory
        rather than a regular file, does not exist but cannot
        be created, or cannot be opened for any other reason
    :   `SecurityException` - if a security manager exists and its
        `checkWrite` method denies write access
        to the file.

    See Also:
    :   - [`File.getPath()`](File.md#getPath())
        - [`SecurityException`](../lang/SecurityException.md "class in java.lang")
        - [`SecurityManager.checkWrite(java.lang.String)`](../lang/SecurityManager.md#checkWrite(java.lang.String))
  + ### FileOutputStream

    public FileOutputStream([File](File.md "class in java.io") file,
    boolean append)
    throws [FileNotFoundException](FileNotFoundException.md "class in java.io")

    Creates a file output stream to write to the file represented by
    the specified `File` object. If the second argument is
    `true`, then bytes will be written to the end of the file
    rather than the beginning. A new `FileDescriptor` object is
    created to represent this file connection.

    First, if there is a security manager, its `checkWrite`
    method is called with the path represented by the `file`
    argument as its argument.

    If the file exists but is a directory rather than a regular file, does
    not exist but cannot be created, or cannot be opened for any other
    reason then a `FileNotFoundException` is thrown.

    Parameters:
    :   `file` - the file to be opened for writing.
    :   `append` - if `true`, then bytes will be written
        to the end of the file rather than the beginning

    Throws:
    :   `FileNotFoundException` - if the file exists but is a directory
        rather than a regular file, does not exist but cannot
        be created, or cannot be opened for any other reason
    :   `SecurityException` - if a security manager exists and its
        `checkWrite` method denies write access
        to the file.

    Since:
    :   1.4

    See Also:
    :   - [`File.getPath()`](File.md#getPath())
        - [`SecurityException`](../lang/SecurityException.md "class in java.lang")
        - [`SecurityManager.checkWrite(java.lang.String)`](../lang/SecurityManager.md#checkWrite(java.lang.String))
  + ### FileOutputStream

    public FileOutputStream([FileDescriptor](FileDescriptor.md "class in java.io") fdObj)

    Creates a file output stream to write to the specified file
    descriptor, which represents an existing connection to an actual
    file in the file system.

    First, if there is a security manager, its `checkWrite`
    method is called with the file descriptor `fdObj`
    argument as its argument.

    If `fdObj` is null then a `NullPointerException`
    is thrown.

    This constructor does not throw an exception if `fdObj`
    is [`invalid`](FileDescriptor.md#valid()).
    However, if the methods are invoked on the resulting stream to attempt
    I/O on the stream, an `IOException` is thrown.

    Parameters:
    :   `fdObj` - the file descriptor to be opened for writing

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkWrite` method denies
        write access to the file descriptor

    See Also:
    :   - [`SecurityManager.checkWrite(java.io.FileDescriptor)`](../lang/SecurityManager.md#checkWrite(java.io.FileDescriptor))
* ## Method Details

  + ### write

    public void write(int b)
    throws [IOException](IOException.md "class in java.io")

    Writes the specified byte to this file output stream. Implements
    the `write` method of `OutputStream`.

    Specified by:
    :   `write` in class `OutputStream`

    Parameters:
    :   `b` - the byte to be written.

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### write

    public void write(byte[] b)
    throws [IOException](IOException.md "class in java.io")

    Writes `b.length` bytes from the specified byte array
    to this file output stream.

    Overrides:
    :   `write` in class `OutputStream`

    Parameters:
    :   `b` - the data.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`OutputStream.write(byte[], int, int)`](OutputStream.md#write(byte%5B%5D,int,int))
  + ### write

    public void write(byte[] b,
    int off,
    int len)
    throws [IOException](IOException.md "class in java.io")

    Writes `len` bytes from the specified byte array
    starting at offset `off` to this file output stream.

    Overrides:
    :   `write` in class `OutputStream`

    Parameters:
    :   `b` - the data.
    :   `off` - the start offset in the data.
    :   `len` - the number of bytes to write.

    Throws:
    :   `IOException` - if an I/O error occurs.
    :   `IndexOutOfBoundsException` - If `off` is negative,
        `len` is negative, or `len` is greater than
        `b.length - off`
  + ### close

    public void close()
    throws [IOException](IOException.md "class in java.io")

    Closes this file output stream and releases any system resources
    associated with this stream. This file output stream may no longer
    be used for writing bytes.

    If this stream has an associated channel then the channel is closed
    as well.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Overrides:
    :   `close` in class `OutputStream`

    Throws:
    :   `IOException` - if an I/O error occurs.
  + ### getFD

    public final [FileDescriptor](FileDescriptor.md "class in java.io") getFD()
    throws [IOException](IOException.md "class in java.io")

    Returns the file descriptor associated with this stream.

    Returns:
    :   the `FileDescriptor` object that represents
        the connection to the file in the file system being used
        by this `FileOutputStream` object.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`FileDescriptor`](FileDescriptor.md "class in java.io")
  + ### getChannel

    public [FileChannel](../nio/channels/FileChannel.md "class in java.nio.channels") getChannel()

    Returns the unique [`FileChannel`](../nio/channels/FileChannel.md "class in java.nio.channels")
    object associated with this file output stream.

    The initial [`position`](../nio/channels/FileChannel.md#position()) of the returned channel will be equal to the
    number of bytes written to the file so far unless this stream is in
    append mode, in which case it will be equal to the size of the file.
    Writing bytes to this stream will increment the channel's position
    accordingly. Changing the channel's position, either explicitly or by
    writing, will change this stream's file position.

    Returns:
    :   the file channel associated with this file output stream

    Since:
    :   1.4