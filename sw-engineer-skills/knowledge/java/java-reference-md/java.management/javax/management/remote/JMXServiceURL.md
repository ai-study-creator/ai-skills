Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Class JMXServiceURL

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.remote.JMXServiceURL

All Implemented Interfaces:
:   `Serializable`

---

public class JMXServiceURL
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The address of a JMX API connector server. Instances of this class
are immutable.

The address is an *Abstract Service URL* for SLP, as
defined in RFC 2609 and amended by RFC 3111. It must look like
this:

> `service:jmx:protocol:sap`

Here, `protocol` is the transport
protocol to be used to connect to the connector server. It is
a string of one or more ASCII characters, each of which is a
letter, a digit, or one of the characters `+` or
`-`. The first character must be a letter.
Uppercase letters are converted into lowercase ones.

`sap` is the address at which the connector
server is found. This address uses a subset of the syntax defined
by RFC 2609 for IP-based protocols. It is a subset because the
`user@host` syntax is not supported.

The other syntaxes defined by RFC 2609 are not currently
supported by this class.

The supported syntax is:

> `//[host[:port]][url-path]`

Square brackets `[]` indicate optional parts of
the address. Not all protocols will recognize all optional
parts.

The `host` is a host name, an IPv4 numeric
host address, or an IPv6 numeric address enclosed in square
brackets.

The `port` is a decimal port number. 0
means a default or anonymous port, depending on the protocol.

The `host` and `port`
can be omitted. The `port` cannot be supplied
without a `host`.

The `url-path`, if any, begins with a slash
(`/`) or a semicolon (`;`) and continues to
the end of the address. It can contain attributes using the
semicolon syntax specified in RFC 2609. Those attributes are not
parsed by this class and incorrect attribute syntax is not
detected.

Although it is legal according to RFC 2609 to have a
`url-path` that begins with a semicolon, not
all implementations of SLP allow it, so it is recommended to avoid
that syntax.

Case is not significant in the initial
`service:jmx:protocol` string or in the host
part of the address. Depending on the protocol, case can be
significant in the `url-path`.

Since:
:   1.5

See Also:
:   * [RFC 2609,
      "Service Templates and `Service:` Schemes"](http://www.ietf.org/rfc/rfc2609.txt)
    * [RFC 3111,
      "Service Location Protocol Modifications for IPv6"](http://www.ietf.org/rfc/rfc3111.txt)
    * [Serialized Form](../../../../serialized-form.md#javax.management.remote.JMXServiceURL)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JMXServiceURL(String serviceURL)`

  Constructs a `JMXServiceURL` by parsing a Service URL
  string.

  `JMXServiceURL(String protocol,
  String host,
  int port)`

  Constructs a `JMXServiceURL` with the given protocol,
  host, and port.

  `JMXServiceURL(String protocol,
  String host,
  int port,
  String urlPath)`

  Constructs a `JMXServiceURL` with the given parts.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Indicates whether some other object is equal to this one.

  `String`

  `getHost()`

  The host part of the Service URL.

  `int`

  `getPort()`

  The port of the Service URL.

  `String`

  `getProtocol()`

  The protocol part of the Service URL.

  `String`

  `getURLPath()`

  The URL Path part of the Service URL.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `String`

  `toString()`

  The string representation of this Service URL.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JMXServiceURL

    public JMXServiceURL([String](../../../../java.base/java/lang/String.md "class in java.lang") serviceURL)
    throws [MalformedURLException](../../../../java.base/java/net/MalformedURLException.md "class in java.net")

    Constructs a `JMXServiceURL` by parsing a Service URL
    string.

    Parameters:
    :   `serviceURL` - the URL string to be parsed.

    Throws:
    :   `NullPointerException` - if `serviceURL` is
        null.
    :   `MalformedURLException` - if `serviceURL`
        does not conform to the syntax for an Abstract Service URL or
        if it is not a valid name for a JMX Remote API service. A
        `JMXServiceURL` must begin with the string
        `"service:jmx:"` (case-insensitive). It must not
        contain any characters that are not printable ASCII characters.
  + ### JMXServiceURL

    public JMXServiceURL([String](../../../../java.base/java/lang/String.md "class in java.lang") protocol,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") host,
    int port)
    throws [MalformedURLException](../../../../java.base/java/net/MalformedURLException.md "class in java.net")

    Constructs a `JMXServiceURL` with the given protocol,
    host, and port. This constructor is equivalent to
    [`JMXServiceURL(protocol, host, port, null)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String)).

    Parameters:
    :   `protocol` - the protocol part of the URL. If null, defaults
        to `jmxmp`.
    :   `host` - the host part of the URL. If host is null and if
        local host name can be resolved to an IP, then host defaults
        to local host name as determined by
        `InetAddress.getLocalHost().getHostName()`. If host is null
        and if local host name cannot be resolved to an IP, then host
        defaults to numeric IP address of one of the active network interfaces.
        If host is a numeric IPv6 address, it can optionally be enclosed in
        square brackets `[]`.
    :   `port` - the port part of the URL.

    Throws:
    :   `MalformedURLException` - if one of the parts is
        syntactically incorrect, or if `host` is null and it
        is not possible to find the local host name, or if
        `port` is negative.
  + ### JMXServiceURL

    public JMXServiceURL([String](../../../../java.base/java/lang/String.md "class in java.lang") protocol,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") host,
    int port,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") urlPath)
    throws [MalformedURLException](../../../../java.base/java/net/MalformedURLException.md "class in java.net")

    Constructs a `JMXServiceURL` with the given parts.

    Parameters:
    :   `protocol` - the protocol part of the URL. If null, defaults
        to `jmxmp`.
    :   `host` - the host part of the URL. If host is null and if
        local host name can be resolved to an IP, then host defaults
        to local host name as determined by
        `InetAddress.getLocalHost().getHostName()`. If host is null
        and if local host name cannot be resolved to an IP, then host
        defaults to numeric IP address of one of the active network interfaces.
        If host is a numeric IPv6 address, it can optionally be enclosed in
        square brackets `[]`.
    :   `port` - the port part of the URL.
    :   `urlPath` - the URL path part of the URL. If null, defaults to
        the empty string.

    Throws:
    :   `MalformedURLException` - if one of the parts is
        syntactically incorrect, or if `host` is null and it
        is not possible to find the local host name, or if
        `port` is negative.
* ## Method Details

  + ### getProtocol

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getProtocol()

    The protocol part of the Service URL.

    Returns:
    :   the protocol part of the Service URL. This is never null.
  + ### getHost

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getHost()

    The host part of the Service URL. If the Service URL was
    constructed with the constructor that takes a URL string
    parameter, the result is the substring specifying the host in
    that URL. If the Service URL was constructed with a
    constructor that takes a separate host parameter, the result is
    the string that was specified. If that string was null, the
    result is
    `InetAddress.getLocalHost().getHostName()` if local host name
    can be resolved to an IP. Else numeric IP address of an active
    network interface will be used.

    In either case, if the host was specified using the
    `[...]` syntax for numeric IPv6 addresses, the
    square brackets are not included in the return value here.

    Returns:
    :   the host part of the Service URL. This is never null.
  + ### getPort

    public int getPort()

    The port of the Service URL. If no port was
    specified, the returned value is 0.

    Returns:
    :   the port of the Service URL, or 0 if none.
  + ### getURLPath

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getURLPath()

    The URL Path part of the Service URL. This is an empty
    string, or a string beginning with a slash (`/`), or
    a string beginning with a semicolon (`;`).

    Returns:
    :   the URL Path part of the Service URL. This is never
        null.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    The string representation of this Service URL. If the value
    returned by this method is supplied to the
    `JMXServiceURL` constructor, the resultant object is
    equal to this one.

    The `host` part of the returned string
    is the value returned by [`getHost()`](#getHost()). If that value
    specifies a numeric IPv6 address, it is surrounded by square
    brackets `[]`.

    The `port` part of the returned string
    is the value returned by [`getPort()`](#getPort()) in its shortest
    decimal form. If the value is zero, it is omitted.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation of this Service URL.
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Indicates whether some other object is equal to this one.
    This method returns true if and only if `obj` is an
    instance of `JMXServiceURL` whose [`getProtocol()`](#getProtocol()), [`getHost()`](#getHost()), [`getPort()`](#getPort()), and
    [`getURLPath()`](#getURLPath()) methods return the same values as for
    this object. The values for [`getProtocol()`](#getProtocol()) and [`getHost()`](#getHost()) can differ in case without affecting equality.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the
        `obj` argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))