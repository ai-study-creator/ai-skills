Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class Base64

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.Base64

---

public class Base64
extends [Object](../lang/Object.md "class in java.lang")

This class consists exclusively of static methods for obtaining
encoders and decoders for the Base64 encoding scheme. The
implementation of this class supports the following types of Base64
as specified in
[RFC 4648](http://www.ietf.org/rfc/rfc4648.txt) and
[RFC 2045](http://www.ietf.org/rfc/rfc2045.txt).

* **Basic**

  Uses "The Base64 Alphabet" as specified in Table 1 of
  RFC 4648 and RFC 2045 for encoding and decoding operation.
  The encoder does not add any line feed (line separator)
  character. The decoder rejects data that contains characters
  outside the base64 alphabet.
* **URL and Filename safe**

  Uses the "URL and Filename safe Base64 Alphabet" as specified
  in Table 2 of RFC 4648 for encoding and decoding. The
  encoder does not add any line feed (line separator) character.
  The decoder rejects data that contains characters outside the
  base64 alphabet.
* **MIME**

  Uses "The Base64 Alphabet" as specified in Table 1 of
  RFC 2045 for encoding and decoding operation. The encoded output
  must be represented in lines of no more than 76 characters each
  and uses a carriage return `'\r'` followed immediately by
  a linefeed `'\n'` as the line separator. No line separator
  is added to the end of the encoded output. All line separators
  or other characters not found in the base64 alphabet table are
  ignored in decoding operation.

Unless otherwise noted, passing a `null` argument to a
method of this class will cause a [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") to be thrown.

Since:
:   1.8

External Specifications
:   * [RFC 2045: Multipurpose Internet Mail Extensions (MIME) Part One: Format of Internet Message Bodies](https://www.rfc-editor.org/info/rfc2045)
    * [RFC 4648: The Base16, Base32, and Base64 Data Encodings](https://www.rfc-editor.org/info/rfc4648)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `Base64.Decoder`

  This class implements a decoder for decoding byte data using the
  Base64 encoding scheme as specified in RFC 4648 and RFC 2045.

  `static class`

  `Base64.Encoder`

  This class implements an encoder for encoding byte data using
  the Base64 encoding scheme as specified in RFC 4648 and RFC 2045.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Base64.Decoder`

  `getDecoder()`

  Returns a [`Base64.Decoder`](Base64.Decoder.md "class in java.util") that decodes using the
  [Basic](#basic) type base64 encoding scheme.

  `static Base64.Encoder`

  `getEncoder()`

  Returns a [`Base64.Encoder`](Base64.Encoder.md "class in java.util") that encodes using the
  [Basic](#basic) type base64 encoding scheme.

  `static Base64.Decoder`

  `getMimeDecoder()`

  Returns a [`Base64.Decoder`](Base64.Decoder.md "class in java.util") that decodes using the
  [MIME](#mime) type base64 decoding scheme.

  `static Base64.Encoder`

  `getMimeEncoder()`

  Returns a [`Base64.Encoder`](Base64.Encoder.md "class in java.util") that encodes using the
  [MIME](#mime) type base64 encoding scheme.

  `static Base64.Encoder`

  `getMimeEncoder(int lineLength,
  byte[] lineSeparator)`

  Returns a [`Base64.Encoder`](Base64.Encoder.md "class in java.util") that encodes using the
  [MIME](#mime) type base64 encoding scheme
  with specified line length and line separators.

  `static Base64.Decoder`

  `getUrlDecoder()`

  Returns a [`Base64.Decoder`](Base64.Decoder.md "class in java.util") that decodes using the
  [URL and Filename safe](#url) type base64
  encoding scheme.

  `static Base64.Encoder`

  `getUrlEncoder()`

  Returns a [`Base64.Encoder`](Base64.Encoder.md "class in java.util") that encodes using the
  [URL and Filename safe](#url) type base64
  encoding scheme.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getEncoder

    public static [Base64.Encoder](Base64.Encoder.md "class in java.util") getEncoder()

    Returns a [`Base64.Encoder`](Base64.Encoder.md "class in java.util") that encodes using the
    [Basic](#basic) type base64 encoding scheme.

    Returns:
    :   A Base64 encoder.
  + ### getUrlEncoder

    public static [Base64.Encoder](Base64.Encoder.md "class in java.util") getUrlEncoder()

    Returns a [`Base64.Encoder`](Base64.Encoder.md "class in java.util") that encodes using the
    [URL and Filename safe](#url) type base64
    encoding scheme.

    Returns:
    :   A Base64 encoder.
  + ### getMimeEncoder

    public static [Base64.Encoder](Base64.Encoder.md "class in java.util") getMimeEncoder()

    Returns a [`Base64.Encoder`](Base64.Encoder.md "class in java.util") that encodes using the
    [MIME](#mime) type base64 encoding scheme.

    Returns:
    :   A Base64 encoder.
  + ### getMimeEncoder

    public static [Base64.Encoder](Base64.Encoder.md "class in java.util") getMimeEncoder(int lineLength,
    byte[] lineSeparator)

    Returns a [`Base64.Encoder`](Base64.Encoder.md "class in java.util") that encodes using the
    [MIME](#mime) type base64 encoding scheme
    with specified line length and line separators.

    Parameters:
    :   `lineLength` - the length of each output line (rounded down to nearest multiple
        of 4). If the rounded down line length is not a positive value,
        the output will not be separated in lines
    :   `lineSeparator` - the line separator for each output line

    Returns:
    :   A Base64 encoder.

    Throws:
    :   `IllegalArgumentException` - if `lineSeparator` includes any
        character of "The Base64 Alphabet" as specified in Table 1 of
        RFC 2045.
  + ### getDecoder

    public static [Base64.Decoder](Base64.Decoder.md "class in java.util") getDecoder()

    Returns a [`Base64.Decoder`](Base64.Decoder.md "class in java.util") that decodes using the
    [Basic](#basic) type base64 encoding scheme.

    Returns:
    :   A Base64 decoder.
  + ### getUrlDecoder

    public static [Base64.Decoder](Base64.Decoder.md "class in java.util") getUrlDecoder()

    Returns a [`Base64.Decoder`](Base64.Decoder.md "class in java.util") that decodes using the
    [URL and Filename safe](#url) type base64
    encoding scheme.

    Returns:
    :   A Base64 decoder.
  + ### getMimeDecoder

    public static [Base64.Decoder](Base64.Decoder.md "class in java.util") getMimeDecoder()

    Returns a [`Base64.Decoder`](Base64.Decoder.md "class in java.util") that decodes using the
    [MIME](#mime) type base64 decoding scheme.

    Returns:
    :   A Base64 decoder.