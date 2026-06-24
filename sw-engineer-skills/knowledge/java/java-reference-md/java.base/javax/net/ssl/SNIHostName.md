Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SNIHostName

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

[javax.net.ssl.SNIServerName](SNIServerName.md "class in javax.net.ssl")

javax.net.ssl.SNIHostName

---

public final class SNIHostName
extends [SNIServerName](SNIServerName.md "class in javax.net.ssl")

Instances of this class represent a server name of type
[`host_name`](StandardConstants.md#SNI_HOST_NAME) in a Server Name
Indication (SNI) extension.

As described in section 3, "Server Name Indication", of
[TLS Extensions (RFC 6066)](http://www.ietf.org/rfc/rfc6066.txt),
"HostName" contains the fully qualified DNS hostname of the server, as
understood by the client. The encoded server name value of a hostname is
represented as a byte string using ASCII encoding without a trailing dot.
This allows the support of Internationalized Domain Names (IDN) through
the use of A-labels (the ASCII-Compatible Encoding (ACE) form of a valid
string of Internationalized Domain Names for Applications (IDNA)) defined
in [RFC 5890](http://www.ietf.org/rfc/rfc5890.txt).

Note that `SNIHostName` objects are immutable.

Since:
:   1.8

See Also:
:   * [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")
    * [`StandardConstants.SNI_HOST_NAME`](StandardConstants.md#SNI_HOST_NAME)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SNIHostName(byte[] encoded)`

  Creates an `SNIHostName` using the specified encoded value.

  `SNIHostName(String hostname)`

  Creates an `SNIHostName` using the specified hostname.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static SNIMatcher`

  `createSNIMatcher(String regex)`

  Creates an [`SNIMatcher`](SNIMatcher.md "class in javax.net.ssl") object for `SNIHostName`s.

  `boolean`

  `equals(Object other)`

  Compares this server name to the specified object.

  `String`

  `getAsciiName()`

  Returns the [`StandardCharsets.US_ASCII`](../../../java/nio/charset/StandardCharsets.md#US_ASCII)-compliant hostname of
  this `SNIHostName` object.

  `int`

  `hashCode()`

  Returns a hash code value for this `SNIHostName`.

  `String`

  `toString()`

  Returns a string representation of the object, including the DNS
  hostname in this `SNIHostName` object.

  ### Methods inherited from class javax.net.ssl.[SNIServerName](SNIServerName.md "class in javax.net.ssl")

  `getEncoded, getType`

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SNIHostName

    public SNIHostName([String](../../../java/lang/String.md "class in java.lang") hostname)

    Creates an `SNIHostName` using the specified hostname.

    Note that per [RFC 6066](http://www.ietf.org/rfc/rfc6066.txt),
    the encoded server name value of a hostname is
    [`StandardCharsets.US_ASCII`](../../../java/nio/charset/StandardCharsets.md#US_ASCII)-compliant. In this method,
    `hostname` can be a user-friendly Internationalized Domain Name
    (IDN). [`IDN.toASCII(String, int)`](../../../java/net/IDN.md#toASCII(java.lang.String,int)) is used to enforce the
    restrictions on ASCII characters in hostnames (see
    [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt),
    [RFC 1122](http://www.ietf.org/rfc/rfc1122.txt),
    [RFC 1123](http://www.ietf.org/rfc/rfc1123.txt)) and
    translate the `hostname` into ASCII Compatible Encoding (ACE), as:

    ```
         IDN.toASCII(hostname, IDN.USE_STD3_ASCII_RULES);
    ```

    The `hostname` argument is illegal if it:
    - `hostname` is empty,
    - `hostname` ends with a trailing dot,
    - `hostname` is not a valid Internationalized
      Domain Name (IDN) compliant with the RFC 3490 specification.

    Parameters:
    :   `hostname` - the hostname of this server name

    Throws:
    :   `NullPointerException` - if `hostname` is `null`
    :   `IllegalArgumentException` - if `hostname` is illegal
  + ### SNIHostName

    public SNIHostName(byte[] encoded)

    Creates an `SNIHostName` using the specified encoded value.

    This method is normally used to parse the encoded name value in a
    requested SNI extension.

    Per [RFC 6066](http://www.ietf.org/rfc/rfc6066.txt),
    the encoded name value of a hostname is
    [`StandardCharsets.US_ASCII`](../../../java/nio/charset/StandardCharsets.md#US_ASCII)-compliant. However, in the previous
    version of the SNI extension (
    [RFC 4366](http://www.ietf.org/rfc/rfc4366.txt)),
    the encoded hostname is represented as a byte string using UTF-8
    encoding. For the purpose of version tolerance, this method allows
    that the charset of `encoded` argument can be
    [`StandardCharsets.UTF_8`](../../../java/nio/charset/StandardCharsets.md#UTF_8), as well as
    [`StandardCharsets.US_ASCII`](../../../java/nio/charset/StandardCharsets.md#US_ASCII). [`IDN.toASCII(String)`](../../../java/net/IDN.md#toASCII(java.lang.String)) is used
    to translate the `encoded` argument into ASCII Compatible
    Encoding (ACE) hostname.

    It is strongly recommended that this constructor is only used to parse
    the encoded name value in a requested SNI extension. Otherwise, to
    comply with [RFC 6066](http://www.ietf.org/rfc/rfc6066.txt),
    please always use [`StandardCharsets.US_ASCII`](../../../java/nio/charset/StandardCharsets.md#US_ASCII)-compliant charset
    and enforce the restrictions on ASCII characters in hostnames (see
    [RFC 3490](http://www.ietf.org/rfc/rfc3490.txt),
    [RFC 1122](http://www.ietf.org/rfc/rfc1122.txt),
    [RFC 1123](http://www.ietf.org/rfc/rfc1123.txt))
    for `encoded` argument, or use
    [`SNIHostName(String)`](#%3Cinit%3E(java.lang.String)) instead.

    The `encoded` argument is illegal if it:
    - `encoded` is empty,
    - `encoded` ends with a trailing dot,
    - `encoded` is not encoded in
      [`StandardCharsets.US_ASCII`](../../../java/nio/charset/StandardCharsets.md#US_ASCII) or
      [`StandardCharsets.UTF_8`](../../../java/nio/charset/StandardCharsets.md#UTF_8)-compliant charset,
    - `encoded` is not a valid Internationalized
      Domain Name (IDN) compliant with the RFC 3490 specification.

    Note that the `encoded` byte array is cloned
    to protect against subsequent modification.

    Parameters:
    :   `encoded` - the encoded hostname of this server name

    Throws:
    :   `NullPointerException` - if `encoded` is `null`
    :   `IllegalArgumentException` - if `encoded` is illegal
* ## Method Details

  + ### getAsciiName

    public [String](../../../java/lang/String.md "class in java.lang") getAsciiName()

    Returns the [`StandardCharsets.US_ASCII`](../../../java/nio/charset/StandardCharsets.md#US_ASCII)-compliant hostname of
    this `SNIHostName` object.

    Note that, per
    [RFC 6066](http://www.ietf.org/rfc/rfc6066.txt), the
    returned hostname may be an internationalized domain name that
    contains A-labels. See
    [RFC 5890](http://www.ietf.org/rfc/rfc5890.txt)
    for more information about the detailed A-label specification.

    Returns:
    :   the [`StandardCharsets.US_ASCII`](../../../java/nio/charset/StandardCharsets.md#US_ASCII)-compliant hostname
        of this `SNIHostName` object
  + ### equals

    public boolean equals([Object](../../../java/lang/Object.md "class in java.lang") other)

    Compares this server name to the specified object.

    Per [RFC 6066](http://www.ietf.org/rfc/rfc6066.txt), DNS
    hostnames are case-insensitive. Two server hostnames are equal if,
    and only if, they have the same name type, and the hostnames are
    equal in a case-independent comparison.

    Overrides:
    :   `equals` in class `SNIServerName`

    Parameters:
    :   `other` - the other server name object to compare with.

    Returns:
    :   true if, and only if, the `other` is considered
        equal to this instance

    See Also:
    :   - [`Object.hashCode()`](../../../java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this `SNIHostName`.

    The hash code value is generated using the case-insensitive hostname
    of this `SNIHostName`.

    Overrides:
    :   `hashCode` in class `SNIServerName`

    Returns:
    :   a hash code value for this `SNIHostName`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the object, including the DNS
    hostname in this `SNIHostName` object.

    The exact details of the representation are unspecified and subject
    to change, but the following may be regarded as typical:

    ```
         "type=host_name (0), value=<hostname>"
    ```

    The "<hostname>" is an ASCII representation of the hostname,
    which may contain A-labels. For example, a returned value of a pseudo
    hostname may look like:

    ```
         "type=host_name (0), value=www.example.com"
    ```

    or

    ```
         "type=host_name (0), value=xn--fsqu00a.xn--0zwm56d"
    ```

    Please NOTE that the exact details of the representation are unspecified
    and subject to change.

    Overrides:
    :   `toString` in class `SNIServerName`

    Returns:
    :   a string representation of the object.
  + ### createSNIMatcher

    public static [SNIMatcher](SNIMatcher.md "class in javax.net.ssl") createSNIMatcher([String](../../../java/lang/String.md "class in java.lang") regex)

    Creates an [`SNIMatcher`](SNIMatcher.md "class in javax.net.ssl") object for `SNIHostName`s.

    This method can be used by a server to verify the acceptable
    `SNIHostName`s. For example,

    ```
         SNIMatcher matcher =
             SNIHostName.createSNIMatcher("www\\.example\\.com");
    ```

    will accept the hostname "www.example.com".

    ```
         SNIMatcher matcher =
             SNIHostName.createSNIMatcher("www\\.example\\.(com|org)");
    ```

    will accept hostnames "www.example.com" and "www.example.org".

    Parameters:
    :   `regex` - the [regular expression pattern](../../../java/util/regex/Pattern.md#sum)
        representing the hostname(s) to match

    Returns:
    :   a `SNIMatcher` object for `SNIHostName`s

    Throws:
    :   `NullPointerException` - if `regex` is
        `null`
    :   `PatternSyntaxException` - if the regular expression's
        syntax is invalid