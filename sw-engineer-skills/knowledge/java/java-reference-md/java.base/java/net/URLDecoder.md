Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class URLDecoder

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.URLDecoder

---

public class URLDecoder
extends [Object](../lang/Object.md "class in java.lang")

Utility class for HTML form decoding. This class contains static methods
for decoding a String from the `application/x-www-form-urlencoded`
MIME format.

The conversion process is the reverse of that used by the URLEncoder class. It is assumed
that all characters in the encoded string are one of the following:
"`a`" through "`z`",
"`A`" through "`Z`",
"`0`" through "`9`", and
"`-`", "`_`",
"`.`", and "`*`". The
character "`%`" is allowed but is interpreted
as the start of a special escaped sequence.

The following rules are applied in the conversion:

* The alphanumeric characters "`a`" through
  "`z`", "`A`" through
  "`Z`" and "`0`"
  through "`9`" remain the same.* The special characters "`.`",
    "`-`", "`*`", and
    "`_`" remain the same.* The plus sign "`+`" is converted into a
      space character "   " .* A sequence of the form "*`%xy`*" will be
        treated as representing a byte where *xy* is the two-digit
        hexadecimal representation of the 8 bits. Then, all substrings
        that contain one or more of these byte sequences consecutively
        will be replaced by the character(s) whose encoding would result
        in those consecutive bytes.
        The encoding scheme used to decode these characters may be specified,
        or if unspecified, the default charset will be used.

There are two possible ways in which this decoder could deal with
illegal strings. It could either leave illegal characters alone or
it could throw an [`IllegalArgumentException`](../lang/IllegalArgumentException.md "class in java.lang").
Which approach the decoder takes is left to the
implementation.

Since:
:   1.2

See Also:
:   * [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())

* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static String`

  `decode(String s)`

  Deprecated.

  The resulting string may vary depending on the
  default charset.

  `static String`

  `decode(String s,
  String enc)`

  Decodes an `application/x-www-form-urlencoded` string using
  a specific encoding scheme.

  `static String`

  `decode(String s,
  Charset charset)`

  Decodes an `application/x-www-form-urlencoded` string using
  a specific [Charset](../nio/charset/Charset.md "class in java.nio.charset").

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### decode

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    public static [String](../lang/String.md "class in java.lang") decode([String](../lang/String.md "class in java.lang") s)

    Deprecated.

    The resulting string may vary depending on the
    default charset. Instead, use the decode(String,String) method
    to specify the encoding.

    Decodes a `x-www-form-urlencoded` string.
    The default charset is used to determine what characters
    are represented by any consecutive sequences of the form
    "*`%xy`*".

    Parameters:
    :   `s` - the `String` to decode

    Returns:
    :   the newly decoded `String`
  + ### decode

    public static [String](../lang/String.md "class in java.lang") decode([String](../lang/String.md "class in java.lang") s,
    [String](../lang/String.md "class in java.lang") enc)
    throws [UnsupportedEncodingException](../io/UnsupportedEncodingException.md "class in java.io")

    Decodes an `application/x-www-form-urlencoded` string using
    a specific encoding scheme.

    This method behaves the same as [decode(java.lang.String,java.nio.charset.Charset)](#decode(java.lang.String,java.nio.charset.Charset))
    except that it will [look up the charset](../nio/charset/Charset.md#forName(java.lang.String))
    using the given encoding name.

    Parameters:
    :   `s` - the `String` to decode
    :   `enc` - The name of a supported
        [character
        encoding](../lang/package-summary.md#charenc).

    Returns:
    :   the newly decoded `String`

    Throws:
    :   `UnsupportedEncodingException` - If character encoding needs to be consulted, but
        named character encoding is not supported

    Since:
    :   1.4

    See Also:
    :   - [`URLEncoder.encode(java.lang.String, java.lang.String)`](URLEncoder.md#encode(java.lang.String,java.lang.String))
  + ### decode

    public static [String](../lang/String.md "class in java.lang") decode([String](../lang/String.md "class in java.lang") s,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") charset)

    Decodes an `application/x-www-form-urlencoded` string using
    a specific [Charset](../nio/charset/Charset.md "class in java.nio.charset").
    The supplied charset is used to determine
    what characters are represented by any consecutive sequences of the
    form "*`%xy`*".

    ***Note:** The [World Wide Web Consortium Recommendation](http://www.w3.org/TR/html40/appendix/notes.html#non-ascii-chars) states that
    UTF-8 should be used. Not doing so may introduce
    incompatibilities.*

    Parameters:
    :   `s` - the `String` to decode
    :   `charset` - the given charset

    Returns:
    :   the newly decoded `String`

    Throws:
    :   `NullPointerException` - if `s` or `charset` is `null`
    :   `IllegalArgumentException` - if the implementation encounters illegal
        characters

    Since:
    :   10

    See Also:
    :   - [`URLEncoder.encode(java.lang.String, Charset)`](URLEncoder.md#encode(java.lang.String,java.nio.charset.Charset))

    External Specifications
    :   - [HTML 4.01 Specification](https://www.w3.org/TR/html4)