Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class URLEncoder

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.URLEncoder

---

public class URLEncoder
extends [Object](../lang/Object.md "class in java.lang")

Utility class for HTML form encoding. This class contains static methods
for converting a String to the `application/x-www-form-urlencoded` MIME
format. For more information about HTML form encoding, consult the HTML
[specification](http://www.w3.org/TR/html4/).

When encoding a String, the following rules apply:

* The alphanumeric characters "`a`" through
  "`z`", "`A`" through
  "`Z`" and "`0`"
  through "`9`" remain the same.* The special characters "`.`",
    "`-`", "`*`", and
    "`_`" remain the same.* The space character "   " is
      converted into a plus sign "`+`".* All other characters are unsafe and are first converted into
        one or more bytes using some encoding scheme. Then each byte is
        represented by the 3-character string
        "*`%xy`*", where *xy* is the
        two-digit hexadecimal representation of the byte.
        The recommended encoding scheme to use is UTF-8. However,
        for compatibility reasons, if an encoding is not specified,
        then the default charset is used.

For example using UTF-8 as the encoding scheme the string "The
string ü@foo-bar" would get converted to
"The+string+%C3%BC%40foo-bar" because in UTF-8 the character
ü is encoded as two bytes C3 (hex) and BC (hex), and the
character @ is encoded as one byte 40 (hex).

Since:
:   1.0

See Also:
:   * [`Charset.defaultCharset()`](../nio/charset/Charset.md#defaultCharset())

External Specifications
:   * [HTML 4.01 Specification](https://www.w3.org/TR/html4)

* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static String`

  `encode(String s)`

  Deprecated.

  The resulting string may vary depending on the
  default charset.

  `static String`

  `encode(String s,
  String enc)`

  Translates a string into `application/x-www-form-urlencoded`
  format using a specific encoding scheme.

  `static String`

  `encode(String s,
  Charset charset)`

  Translates a string into `application/x-www-form-urlencoded`
  format using a specific [Charset](../nio/charset/Charset.md "class in java.nio.charset").

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### encode

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    public static [String](../lang/String.md "class in java.lang") encode([String](../lang/String.md "class in java.lang") s)

    Deprecated.

    The resulting string may vary depending on the
    default charset. Instead, use the encode(String,String)
    method to specify the encoding.

    Translates a string into `x-www-form-urlencoded`
    format. This method uses the default charset
    as the encoding scheme to obtain the bytes for unsafe characters.

    Parameters:
    :   `s` - `String` to be translated.

    Returns:
    :   the translated `String`.
  + ### encode

    public static [String](../lang/String.md "class in java.lang") encode([String](../lang/String.md "class in java.lang") s,
    [String](../lang/String.md "class in java.lang") enc)
    throws [UnsupportedEncodingException](../io/UnsupportedEncodingException.md "class in java.io")

    Translates a string into `application/x-www-form-urlencoded`
    format using a specific encoding scheme.

    This method behaves the same as [encode(String s, Charset charset)](#encode(java.lang.String,java.nio.charset.Charset))
    except that it will [look up the charset](../nio/charset/Charset.md#forName(java.lang.String))
    using the given encoding name.

    Parameters:
    :   `s` - `String` to be translated.
    :   `enc` - The name of a supported
        [character
        encoding](../lang/package-summary.md#charenc).

    Returns:
    :   the translated `String`.

    Throws:
    :   `UnsupportedEncodingException` - If the named encoding is not supported

    Since:
    :   1.4

    See Also:
    :   - [`URLDecoder.decode(java.lang.String, java.lang.String)`](URLDecoder.md#decode(java.lang.String,java.lang.String))
  + ### encode

    public static [String](../lang/String.md "class in java.lang") encode([String](../lang/String.md "class in java.lang") s,
    [Charset](../nio/charset/Charset.md "class in java.nio.charset") charset)

    Translates a string into `application/x-www-form-urlencoded`
    format using a specific [Charset](../nio/charset/Charset.md "class in java.nio.charset").
    This method uses the supplied charset to obtain the bytes for unsafe
    characters.

    ***Note:** The [World Wide Web Consortium Recommendation](http://www.w3.org/TR/html40/appendix/notes.html#non-ascii-chars) states that
    UTF-8 should be used. Not doing so may introduce incompatibilities.*

    Parameters:
    :   `s` - `String` to be translated.
    :   `charset` - the given charset

    Returns:
    :   the translated `String`.

    Throws:
    :   `NullPointerException` - if `s` or `charset` is `null`.

    Since:
    :   10

    See Also:
    :   - [`URLDecoder.decode(java.lang.String, Charset)`](URLDecoder.md#decode(java.lang.String,java.nio.charset.Charset))

    External Specifications
    :   - [HTML 4.01 Specification](https://www.w3.org/TR/html4)