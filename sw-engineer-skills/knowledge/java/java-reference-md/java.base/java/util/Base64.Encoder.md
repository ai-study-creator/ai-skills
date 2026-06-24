Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class Base64.Encoder

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.Base64.Encoder

Enclosing class:
:   `Base64`

---

public static class Base64.Encoder
extends [Object](../lang/Object.md "class in java.lang")

This class implements an encoder for encoding byte data using
the Base64 encoding scheme as specified in RFC 4648 and RFC 2045.

Instances of [`Base64.Encoder`](Base64.Encoder.md "class in java.util") class are safe for use by
multiple concurrent threads.

Unless otherwise noted, passing a `null` argument to
a method of this class will cause a
[`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to
be thrown.

If the encoded byte output of the needed size can not
be allocated, the encode methods of this class will
cause an [`OutOfMemoryError`](../lang/OutOfMemoryError.md "class in java.lang")
to be thrown.

Since:
:   1.8

See Also:
:   * [`Base64.Decoder`](Base64.Decoder.md "class in java.util")

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `byte[]`

  `encode(byte[] src)`

  Encodes all bytes from the specified byte array into a newly-allocated
  byte array using the [`Base64`](Base64.md "class in java.util") encoding scheme.

  `int`

  `encode(byte[] src,
  byte[] dst)`

  Encodes all bytes from the specified byte array using the
  [`Base64`](Base64.md "class in java.util") encoding scheme, writing the resulting bytes to the
  given output byte array, starting at offset 0.

  `ByteBuffer`

  `encode(ByteBuffer buffer)`

  Encodes all remaining bytes from the specified byte buffer into
  a newly-allocated ByteBuffer using the [`Base64`](Base64.md "class in java.util") encoding
  scheme.

  `String`

  `encodeToString(byte[] src)`

  Encodes the specified byte array into a String using the [`Base64`](Base64.md "class in java.util")
  encoding scheme.

  `Base64.Encoder`

  `withoutPadding()`

  Returns an encoder instance that encodes equivalently to this one,
  but without adding any padding character at the end of the encoded
  byte data.

  `OutputStream`

  `wrap(OutputStream os)`

  Wraps an output stream for encoding byte data using the [`Base64`](Base64.md "class in java.util")
  encoding scheme.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### encode

    public byte[] encode(byte[] src)

    Encodes all bytes from the specified byte array into a newly-allocated
    byte array using the [`Base64`](Base64.md "class in java.util") encoding scheme. The returned byte
    array is of the length of the resulting bytes.

    Parameters:
    :   `src` - the byte array to encode

    Returns:
    :   A newly-allocated byte array containing the resulting
        encoded bytes.
  + ### encode

    public int encode(byte[] src,
    byte[] dst)

    Encodes all bytes from the specified byte array using the
    [`Base64`](Base64.md "class in java.util") encoding scheme, writing the resulting bytes to the
    given output byte array, starting at offset 0.

    It is the responsibility of the invoker of this method to make
    sure the output byte array `dst` has enough space for encoding
    all bytes from the input byte array. No bytes will be written to the
    output byte array if the output byte array is not big enough.

    Parameters:
    :   `src` - the byte array to encode
    :   `dst` - the output byte array

    Returns:
    :   The number of bytes written to the output byte array

    Throws:
    :   `IllegalArgumentException` - if `dst` does not have enough
        space for encoding all input bytes.
  + ### encodeToString

    public [String](../lang/String.md "class in java.lang") encodeToString(byte[] src)

    Encodes the specified byte array into a String using the [`Base64`](Base64.md "class in java.util")
    encoding scheme.

    This method first encodes all input bytes into a base64 encoded
    byte array and then constructs a new String by using the encoded byte
    array and the [`ISO-8859-1`](../nio/charset/StandardCharsets.md#ISO_8859_1) charset.

    In other words, an invocation of this method has exactly the same
    effect as invoking
    `new String(encode(src), StandardCharsets.ISO_8859_1)`.

    Parameters:
    :   `src` - the byte array to encode

    Returns:
    :   A String containing the resulting Base64 encoded characters
  + ### encode

    public [ByteBuffer](../nio/ByteBuffer.md "class in java.nio") encode([ByteBuffer](../nio/ByteBuffer.md "class in java.nio") buffer)

    Encodes all remaining bytes from the specified byte buffer into
    a newly-allocated ByteBuffer using the [`Base64`](Base64.md "class in java.util") encoding
    scheme.
    Upon return, the source buffer's position will be updated to
    its limit; its limit will not have been changed. The returned
    output buffer's position will be zero and its limit will be the
    number of resulting encoded bytes.

    Parameters:
    :   `buffer` - the source ByteBuffer to encode

    Returns:
    :   A newly-allocated byte buffer containing the encoded bytes.
  + ### wrap

    public [OutputStream](../io/OutputStream.md "class in java.io") wrap([OutputStream](../io/OutputStream.md "class in java.io") os)

    Wraps an output stream for encoding byte data using the [`Base64`](Base64.md "class in java.util")
    encoding scheme.

    It is recommended to promptly close the returned output stream after
    use, during which it will flush all possible leftover bytes to the underlying
    output stream. Closing the returned output stream will close the underlying
    output stream.

    Parameters:
    :   `os` - the output stream.

    Returns:
    :   the output stream for encoding the byte data into the
        specified Base64 encoded format
  + ### withoutPadding

    public [Base64.Encoder](Base64.Encoder.md "class in java.util") withoutPadding()

    Returns an encoder instance that encodes equivalently to this one,
    but without adding any padding character at the end of the encoded
    byte data.

    The encoding scheme of this encoder instance is unaffected by
    this invocation. The returned encoder instance should be used for
    non-padding encoding operation.

    Returns:
    :   an equivalent encoder that encodes without adding any
        padding character at the end