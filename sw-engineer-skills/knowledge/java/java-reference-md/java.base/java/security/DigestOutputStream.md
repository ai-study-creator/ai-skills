Module [java.base](../../module-summary.md)

Package [java.security](package-summary.md)

# Class DigestOutputStream

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.io.OutputStream](../io/OutputStream.md "class in java.io")

[java.io.FilterOutputStream](../io/FilterOutputStream.md "class in java.io")

java.security.DigestOutputStream

All Implemented Interfaces:
:   `Closeable`, `Flushable`, `AutoCloseable`

---

public class DigestOutputStream
extends [FilterOutputStream](../io/FilterOutputStream.md "class in java.io")

A transparent stream that updates the associated message digest using
the bits going through the stream.

To complete the message digest computation, call one of the
`digest` methods on the associated message
digest after your calls to one of this digest output stream's
[`write`](#write(int)) methods.

It is possible to turn this stream on or off (see
[`on`](#on(boolean))). When it is on, a call to one of the
`write` methods results in
an update on the message digest. But when it is off, the message
digest is not updated. The default is for the stream to be on.

Since:
:   1.2

See Also:
:   * [`MessageDigest`](MessageDigest.md "class in java.security")
    * [`DigestInputStream`](DigestInputStream.md "class in java.security")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected MessageDigest`

  `digest`

  The message digest associated with this stream.

  ### Fields inherited from class java.io.[FilterOutputStream](../io/FilterOutputStream.md "class in java.io")

  `out`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DigestOutputStream(OutputStream stream,
  MessageDigest digest)`

  Creates a digest output stream, using the specified output stream
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

  `void`

  `setMessageDigest(MessageDigest digest)`

  Associates the specified message digest with this stream.

  `String`

  `toString()`

  Prints a string representation of this digest output stream and
  its associated message digest object.

  `void`

  `write(byte[] b,
  int off,
  int len)`

  Updates the message digest (if the digest function is on) using
  the specified subarray, and in any case writes the subarray to
  the output stream.

  `void`

  `write(int b)`

  Updates the message digest (if the digest function is on) using
  the specified byte, and in any case writes the byte
  to the output stream.

  ### Methods inherited from class java.io.[FilterOutputStream](../io/FilterOutputStream.md "class in java.io")

  `close, flush, write`

  ### Methods inherited from class java.io.[OutputStream](../io/OutputStream.md "class in java.io")

  `nullOutputStream`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### digest

    protected [MessageDigest](MessageDigest.md "class in java.security") digest

    The message digest associated with this stream.
* ## Constructor Details

  + ### DigestOutputStream

    public DigestOutputStream([OutputStream](../io/OutputStream.md "class in java.io") stream,
    [MessageDigest](MessageDigest.md "class in java.security") digest)

    Creates a digest output stream, using the specified output stream
    and message digest.

    Parameters:
    :   `stream` - the output stream.
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
  + ### write

    public void write(int b)
    throws [IOException](../io/IOException.md "class in java.io")

    Updates the message digest (if the digest function is on) using
    the specified byte, and in any case writes the byte
    to the output stream. That is, if the digest function is on
    (see [`on`](#on(boolean))), this method calls
    `update` on the message digest associated with this
    stream, passing it the byte `b`. This method then
    writes the byte to the output stream, blocking until the byte
    is actually written.

    Overrides:
    :   `write` in class `FilterOutputStream`

    Parameters:
    :   `b` - the byte to be used for updating and writing to the
        output stream.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`MessageDigest.update(byte)`](MessageDigest.md#update(byte))
  + ### write

    public void write(byte[] b,
    int off,
    int len)
    throws [IOException](../io/IOException.md "class in java.io")

    Updates the message digest (if the digest function is on) using
    the specified subarray, and in any case writes the subarray to
    the output stream. That is, if the digest function is on (see
    [`on`](#on(boolean))), this method calls `update`
    on the message digest associated with this stream, passing it
    the subarray specifications. This method then writes the subarray
    bytes to the output stream, blocking until the bytes are actually
    written.

    Overrides:
    :   `write` in class `FilterOutputStream`

    Parameters:
    :   `b` - the array containing the subarray to be used for updating
        and writing to the output stream.
    :   `off` - the offset into `b` of the first byte to
        be updated and written.
    :   `len` - the number of bytes of data to be updated and written
        from `b`, starting at offset `off`.

    Throws:
    :   `IOException` - if an I/O error occurs.

    See Also:
    :   - [`MessageDigest.update(byte[], int, int)`](MessageDigest.md#update(byte%5B%5D,int,int))
  + ### on

    public void on(boolean on)

    Turns the digest function on or off. The default is on. When
    it is on, a call to one of the `write` methods results in an
    update on the message digest. But when it is off, the message
    digest is not updated.

    Parameters:
    :   `on` - `true` to turn the digest function on,
        `false` to turn it off.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Prints a string representation of this digest output stream and
    its associated message digest object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.