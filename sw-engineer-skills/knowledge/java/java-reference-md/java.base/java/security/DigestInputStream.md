Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class DigestInputStream

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.InputStream](../io/InputStream.md "class in java.io")

[java.io.FilterInputStream](../io/FilterInputStream.md "class in java.io")

java.security.DigestInputStream

All Implemented Interfaces:
:   `Closeable`, `AutoCloseable`

---

public class DigestInputStream
extends [FilterInputStream](../io/FilterInputStream.md "class in java.io")

A transparent stream that updates the associated message digest using
the bits going through the stream.

To complete the message digest computation, call one of the
`digest` methods on the associated message
digest after your calls to one of this digest input stream's
[`read`](#read()) methods.

It is possible to turn this stream on or off (see
[`on`](#on(boolean))). When it is on, a call to one of the
`read` methods
results in an update on the message digest. But when it is off,
the message digest is not updated. The default is for the stream
to be on.

Note that digest objects can compute only one digest (see
[`MessageDigest`](MessageDigest.md "class in java.security")),
so that in order to compute intermediate digests, a caller should
retain a handle onto the digest object, and clone it for each
digest to be computed, leaving the original digest untouched.

Since:
:   1.2

See Also:
:   * [`MessageDigest`](MessageDigest.md "class in java.security")
    * [`DigestOutputStream`](DigestOutputStream.md "class in java.security")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected MessageDigest`

  `digest`

  The message digest associated with this stream.

  ### Fields inherited from class java.io.[FilterInputStream](../io/FilterInputStream.md "class in java.io")

  `in`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DigestInputStream(InputStream stream,
  MessageDigest digest)`

  Creates a digest input stream, using the specified input stream
  and message digest.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `MessageDigest`

  `getMessageDigest()`

  Returns the message digest associated with this stream.

  `void`

  `on(boolean on)`

  Turns the digest function on or off.

  `int`

  `read()`

  Reads a byte, and updates the message digest (if the digest
  function is on).

  `int`

  `read(byte[] b,
  int off,
  int len)`

  Reads into a byte array, and updates the message digest (if the
  digest function is on).

  `void`

  `setMessageDigest(MessageDigest digest)`

  Associates the specified message digest with this stream.

  `String`

  `toString()`

  Prints a string representation of this digest input stream and
  its associated message digest object.

  ### Methods inherited from class java.io.[FilterInputStream](../io/FilterInputStream.md "class in java.io")

  `available, close, mark, markSupported, read, reset, skip`

  ### Methods inherited from class java.io.[InputStream](../io/InputStream.md "class in java.io")

  `nullInputStream, readAllBytes, readNBytes, readNBytes, skipNBytes, transferTo`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### digest

    protected [MessageDigest](MessageDigest.md "class in java.security") digest

    The message digest associated with this stream.
* ## Constructor Details

  + ### DigestInputStream

    public DigestInputStream([InputStream](../io/InputStream.md "class in java.io") stream,
    [MessageDigest](MessageDigest.md "class in java.security") digest)

    Creates a digest input stream, using the specified input stream
    and message digest.

    Parameters:
    :   `stream` - the input stream.
    :   `digest` - the message digest to associate with this stream.
* ## Method Details

  + ### getMessageDigest

    public [MessageDigest](MessageDigest.md "class in java.security") getMessageDigest()

    Returns the message digest associated with this stream.

    Returns:
    :   the message digest associated with this stream.

    See Also:
    :   - [`setMessageDigest(java.security.MessageDigest)`](#setMessageDigest(java.security.MessageDigest))
  + ### setMessageDigest

    public void setMessageDigest([MessageDigest](MessageDigest.md "class in java.security") digest)

    Associates the specified message digest with this stream.

    Parameters:
    :   `digest` - the message digest to be associated with this stream.

    See Also:
    :   - [`getMessageDigest()`](#getMessageDigest())
  + ### read

    public int read()
    throws [IOException](../io/IOException.md "class in java.io")

    Reads a byte, and updates the message digest (if the digest
    function is on). That is, this method reads a byte from the
    input stream, blocking until the byte is actually read. If the
    digest function is on (see [`on`](#on(boolean))), this method
    will then call `update` on the message digest associated
    with this stream, passing it the byte read.

    Overrides:
    :   `read` in class `FilterInputStream`

    Returns:
    :   the byte read.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`MessageDigest.update(byte)`](MessageDigest.md#update(byte))
  + ### read

    public int read(byte[] b,
    int off,
    int len)
    throws [IOException](../io/IOException.md "class in java.io")

    Reads into a byte array, and updates the message digest (if the
    digest function is on). That is, this method reads up to
    `len` bytes from the input stream into the array
    `b`, starting at offset `off`. This method
    blocks until the data is actually
    read. If the digest function is on (see
    [`on`](#on(boolean))), this method will then call `update`
    on the message digest associated with this stream, passing it
    the data.

    Overrides:
    :   `read` in class `FilterInputStream`

    Parameters:
    :   `b` - the array into which the data is read.
    :   `off` - the starting offset into `b` of where the
        data should be placed.
    :   `len` - the maximum number of bytes to be read from the input
        stream into b, starting at offset `off`.

    Returns:
    :   the actual number of bytes read. This is less than
        `len` if the end of the stream is reached prior to
        reading `len` bytes. -1 is returned if no bytes were
        read because the end of the stream had already been reached when
        the call was made.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`MessageDigest.update(byte[], int, int)`](MessageDigest.md#update(byte%5B%5D,int,int))
  + ### on

    public void on(boolean on)

    Turns the digest function on or off. The default is on. When
    it is on, a call to one of the `read` methods results in an
    update on the message digest. But when it is off, the message
    digest is not updated.

    Parameters:
    :   `on` - `true` to turn the digest function on,
        `false` to turn it off.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Prints a string representation of this digest input stream and
    its associated message digest object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.