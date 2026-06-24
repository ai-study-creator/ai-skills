Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class IDN

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.IDN

---

public final class IDN
extends [Object](../lang/Object.md "class in java.lang")

Provides methods to convert internationalized domain names (IDNs) between
a normal Unicode representation and an ASCII Compatible Encoding (ACE) representation.
Internationalized domain names can use characters from the entire range of
Unicode, while traditional domain names are restricted to ASCII characters.
ACE is an encoding of Unicode strings that uses only ASCII characters and
can be used with software (such as the Domain Name System) that only
understands traditional domain names.

Internationalized domain names are defined in [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt).
RFC 3490 defines two operations: ToASCII and ToUnicode. These 2 operations employ
[Nameprep](http://www.ietf.org/rfc/rfc3491.txt) algorithm, which is a
profile of [Stringprep](http://www.ietf.org/rfc/rfc3454.txt), and
[Punycode](http://www.ietf.org/rfc/rfc3492.txt) algorithm to convert
domain name string back and forth.

The behavior of aforementioned conversion process can be adjusted by various flags:

* If the ALLOW\_UNASSIGNED flag is used, the domain name string to be converted
  can contain code points that are unassigned in Unicode 3.2, which is the
  Unicode version on which IDN conversion is based. If the flag is not used,
  the presence of such unassigned code points is treated as an error.* If the USE\_STD3\_ASCII\_RULES flag is used, ASCII strings are checked against [RFC 1122](http://www.ietf.org/rfc/rfc1122.txt) and [RFC 1123](http://www.ietf.org/rfc/rfc1123.txt).
    It is an error if they don't meet the requirements.

These flags can be logically OR'ed together.

The security consideration is important with respect to internationalization
domain name support. For example, English domain names may be *homographed*
- maliciously misspelled by substitution of non-Latin letters.
[Unicode Technical Report #36](http://www.unicode.org/reports/tr36/)
discusses security issues of IDN support as well as possible solutions.
Applications are responsible for taking adequate security measures when using
international domain names.

Since:
:   1.6

External Specifications
:   * [RFC 1122: Requirements for Internet Hosts - Communication Layers](https://www.rfc-editor.org/info/rfc1122)
    * [RFC 1123: Requirements for Internet Hosts - Application and Support](https://www.rfc-editor.org/info/rfc1123)
    * [RFC 3454: Preparation of Internationalized Strings ("stringprep")](https://www.rfc-editor.org/info/rfc3454)
    * [RFC 3490: Internationalizing Domain Names in Applications (IDNA)](https://www.rfc-editor.org/info/rfc3490)
    * [RFC 3491: Nameprep: A Stringprep Profile for Internationalized Domain Names (IDN)](https://www.rfc-editor.org/info/rfc3491)
    * [RFC 3492: Punycode: A Bootstring encoding of Unicode for Internationalized Domain Names in Applications (IDNA)](https://www.rfc-editor.org/info/rfc3492)
    * [Unicode Security Considerations](https://www.unicode.org/reports/tr36)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ALLOW_UNASSIGNED`

  Flag to allow processing of unassigned code points

  `static final int`

  `USE_STD3_ASCII_RULES`

  Flag to turn on the check against STD-3 ASCII rules
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static String`

  `toASCII(String input)`

  Translates a string from Unicode to ASCII Compatible Encoding (ACE),
  as defined by the ToASCII operation of [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt).

  `static String`

  `toASCII(String input,
  int flag)`

  Translates a string from Unicode to ASCII Compatible Encoding (ACE),
  as defined by the ToASCII operation of [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt).

  `static String`

  `toUnicode(String input)`

  Translates a string from ASCII Compatible Encoding (ACE) to Unicode,
  as defined by the ToUnicode operation of [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt).

  `static String`

  `toUnicode(String input,
  int flag)`

  Translates a string from ASCII Compatible Encoding (ACE) to Unicode,
  as defined by the ToUnicode operation of [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt).

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### ALLOW\_UNASSIGNED

    public static final int ALLOW\_UNASSIGNED

    Flag to allow processing of unassigned code points

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.IDN.ALLOW_UNASSIGNED)
  + ### USE\_STD3\_ASCII\_RULES

    public static final int USE\_STD3\_ASCII\_RULES

    Flag to turn on the check against STD-3 ASCII rules

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.IDN.USE_STD3_ASCII_RULES)
* ## Method Details

  + ### toASCII

    public static [String](../lang/String.md "class in java.lang") toASCII([String](../lang/String.md "class in java.lang") input,
    int flag)

    Translates a string from Unicode to ASCII Compatible Encoding (ACE),
    as defined by the ToASCII operation of [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt).

    ToASCII operation can fail. ToASCII fails if any step of it fails.
    If ToASCII operation fails, an IllegalArgumentException will be thrown.
    In this case, the input string should not be used in an internationalized domain name.

    A label is an individual part of a domain name. The original ToASCII operation,
    as defined in RFC 3490, only operates on a single label. This method can handle
    both label and entire domain name, by assuming that labels in a domain name are
    always separated by dots. The following characters are recognized as dots:
    \u002E (full stop), \u3002 (ideographic full stop), \uFF0E (fullwidth full stop),
    and \uFF61 (halfwidth ideographic full stop). if dots are
    used as label separators, this method also changes all of them to \u002E (full stop)
    in output translated string.

    Parameters:
    :   `input` - the string to be processed
    :   `flag` - process flag; can be 0 or any logical OR of possible flags

    Returns:
    :   the translated `String`

    Throws:
    :   `IllegalArgumentException` - if the input string doesn't conform to RFC 3490 specification

    External Specifications
    :   - [RFC 3490: Internationalizing Domain Names in Applications (IDNA)](https://www.rfc-editor.org/info/rfc3490)
  + ### toASCII

    public static [String](../lang/String.md "class in java.lang") toASCII([String](../lang/String.md "class in java.lang") input)

    Translates a string from Unicode to ASCII Compatible Encoding (ACE),
    as defined by the ToASCII operation of [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt).

    This convenience method works as if by invoking the
    two-argument counterpart as follows:
    > [`toASCII`](#toASCII(java.lang.String,int))(input, 0);

    Parameters:
    :   `input` - the string to be processed

    Returns:
    :   the translated `String`

    Throws:
    :   `IllegalArgumentException` - if the input string doesn't conform to RFC 3490 specification

    External Specifications
    :   - [RFC 3490: Internationalizing Domain Names in Applications (IDNA)](https://www.rfc-editor.org/info/rfc3490)
  + ### toUnicode

    public static [String](../lang/String.md "class in java.lang") toUnicode([String](../lang/String.md "class in java.lang") input,
    int flag)

    Translates a string from ASCII Compatible Encoding (ACE) to Unicode,
    as defined by the ToUnicode operation of [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt).

    ToUnicode never fails. In case of any error, the input string is returned unmodified.

    A label is an individual part of a domain name. The original ToUnicode operation,
    as defined in RFC 3490, only operates on a single label. This method can handle
    both label and entire domain name, by assuming that labels in a domain name are
    always separated by dots. The following characters are recognized as dots:
    \u002E (full stop), \u3002 (ideographic full stop), \uFF0E (fullwidth full stop),
    and \uFF61 (halfwidth ideographic full stop).

    Parameters:
    :   `input` - the string to be processed
    :   `flag` - process flag; can be 0 or any logical OR of possible flags

    Returns:
    :   the translated `String`

    External Specifications
    :   - [RFC 3490: Internationalizing Domain Names in Applications (IDNA)](https://www.rfc-editor.org/info/rfc3490)
  + ### toUnicode

    public static [String](../lang/String.md "class in java.lang") toUnicode([String](../lang/String.md "class in java.lang") input)

    Translates a string from ASCII Compatible Encoding (ACE) to Unicode,
    as defined by the ToUnicode operation of [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt).

    This convenience method works as if by invoking the
    two-argument counterpart as follows:
    > [`toUnicode`](#toUnicode(java.lang.String,int))(input, 0);

    Parameters:
    :   `input` - the string to be processed

    Returns:
    :   the translated `String`

    External Specifications
    :   - [RFC 3490: Internationalizing Domain Names in Applications (IDNA)](https://www.rfc-editor.org/info/rfc3490)