Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class URL

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.URL

All Implemented Interfaces:
:   `Serializable`

---

public final class URL
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

Class `URL` represents a Uniform Resource
Locator, a pointer to a "resource" on the World
Wide Web. A resource can be something as simple as a file or a
directory, or it can be a reference to a more complicated object,
such as a query to a database or to a search engine. More
information on the types of URLs and their formats can be found at:
[*Types of URL*](http://web.archive.org/web/20051219043731/http://archive.ncsa.uiuc.edu/SDG/Software/Mosaic/Demo/url-primer.html)

In general, a URL can be broken into several parts. Consider the
following example:
> ```
>      http://www.example.com/docs/resource1.html
> ```

The URL above indicates that the protocol to use is
`http` (HyperText Transfer Protocol) and that the
information resides on a host machine named
`www.example.com`. The information on that host
machine is named `/docs/resource1.html`. The exact
meaning of this name on the host machine is both protocol
dependent and host dependent. The information normally resides in
a file, but it could be generated on the fly. This component of
the URL is called the *path* component.

A URL can optionally specify a "port", which is the
port number to which the TCP connection is made on the remote host
machine. If the port is not specified, the default port for
the protocol is used instead. For example, the default port for
`http` is `80`. An alternative port could be
specified as:
> ```
>      http://www.example.com:1080/docs/resource1.html
> ```

The syntax of `URL` is defined by [*RFC 2396: Uniform
Resource Identifiers (URI): Generic Syntax*](http://www.ietf.org/rfc/rfc2396.txt), amended by [*RFC 2732: Format for
Literal IPv6 Addresses in URLs*](http://www.ietf.org/rfc/rfc2732.txt). The Literal IPv6 address format
also supports scope\_ids. The syntax and usage of scope\_ids is described
[here](Inet6Address.md#scoped).

A URL may have appended to it a "fragment", also known
as a "ref" or a "reference". The fragment is indicated by the sharp
sign character "#" followed by more characters. For example,
> ```
>      http://www.example.com/index.html#chapter1
> ```

This fragment is not technically part of the URL. Rather, it
indicates that after the specified resource is retrieved, the
application is specifically interested in that part of the
document that has the tag `chapter1` attached to it. The
meaning of a tag is resource specific.

An application can also specify a "relative URL",
which contains only enough information to reach the resource
relative to another URL. Relative URLs are frequently used within
HTML pages. For example, if the contents of the URL:
> ```
>      http://www.example.com/index.html
> ```

contained within it the relative URL:
> ```
>      FAQ.html
> ```

it would be a shorthand for:
> ```
>      http://www.example.com/FAQ.html
> ```

The relative URL need not specify all the components of a URL. If
the protocol, host name, or port number is missing, the value is
inherited from the fully specified URL. The file component must be
specified. The optional fragment is not inherited.

## Constructing instances of `URL`

The `java.net.URL` constructors are deprecated.
Developers are encouraged to use [`java.net.URI`](URI.md "class in java.net") to parse
or construct a `URL`. In cases where an instance of `java.net.URL` is needed to open a connection, [`URI`](URI.md "class in java.net") can be used
to construct or parse the URL string, possibly calling [`URI.parseServerAuthority()`](URI.md#parseServerAuthority()) to validate that the authority component
can be parsed as a server-based authority, and then calling
[`URI.toURL()`](URI.md#toURL()) to create the `URL` instance.

The URL constructors are specified to throw
[`MalformedURLException`](MalformedURLException.md "class in java.net") but the actual parsing/validation
that is performed is implementation dependent. Some parsing/validation
may be delayed until later, when the underlying [stream handler's implementation](URLStreamHandler.md "class in java.net") is called.
Being able to construct an instance of `URL` doesn't
provide any guarantee about its conformance to the URL
syntax specification.

The URL class does not itself encode or decode any URL components
according to the escaping mechanism defined in RFC2396. It is the
responsibility of the caller to encode any fields, which need to be
escaped prior to calling URL, and also to decode any escaped fields,
that are returned from URL. Furthermore, because URL has no knowledge
of URL escaping, it does not recognise equivalence between the encoded
or decoded form of the same URL. For example, the two URLs:  

```
    http://foo.com/hello world/ and http://foo.com/hello%20world
```

would be considered not equal to each other.

Note, the [`URI`](URI.md "class in java.net") class does perform escaping of its
component fields in certain circumstances. The recommended way
to manage the encoding and decoding of URLs is to use [`URI`](URI.md "class in java.net"),
and to convert between these two classes using [`toURI()`](#toURI()) and
[`URI.toURL()`](URI.md#toURL()).

The [`URLEncoder`](URLEncoder.md "class in java.net") and [`URLDecoder`](URLDecoder.md "class in java.net") classes can also be
used, but only for HTML form encoding, which is not the same
as the encoding scheme defined in RFC2396.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.URL)

External Specifications
:   * [RFC 2396: Uniform Resource Identifiers (URI): Generic Syntax](https://www.rfc-editor.org/info/rfc2396)
    * [RFC 2732: Format for Literal IPv6 Addresses in URL's](https://www.rfc-editor.org/info/rfc2732)
    * [RFC 3986: Uniform Resource Identifier (URI): Generic Syntax](https://www.rfc-editor.org/info/rfc3986)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `URL(String spec)`

  Deprecated.

  Use [`URI.toURL()`](URI.md#toURL()) to construct an instance of URL.

  `URL(String protocol,
  String host,
  int port,
  String file)`

  Deprecated.

  Use [`URI.toURL()`](URI.md#toURL()) to construct an instance of URL.

  `URL(String protocol,
  String host,
  int port,
  String file,
  URLStreamHandler handler)`

  Deprecated.

  Use [`of(URI, URLStreamHandler)`](#of(java.net.URI,java.net.URLStreamHandler)) to construct an instance of URL
  associated with a custom protocol handler.

  `URL(String protocol,
  String host,
  String file)`

  Deprecated.

  Use [`URI.toURL()`](URI.md#toURL()) to construct an instance of URL.

  `URL(URL context,
  String spec)`

  Deprecated.

  Use [`URI.toURL()`](URI.md#toURL()) to construct an instance of URL.

  `URL(URL context,
  String spec,
  URLStreamHandler handler)`

  Deprecated.

  Use [`of(URI, URLStreamHandler)`](#of(java.net.URI,java.net.URLStreamHandler)) to construct an instance of URL
  associated with a custom protocol handler.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares this URL for equality with another object.

  `String`

  `getAuthority()`

  Gets the authority part of this `URL`.

  `final Object`

  `getContent()`

  Gets the contents of this URL.

  `final Object`

  `getContent(Class<?>[] classes)`

  Gets the contents of this URL.

  `int`

  `getDefaultPort()`

  Gets the default port number of the protocol associated
  with this `URL`.

  `String`

  `getFile()`

  Gets the file name of this `URL`.

  `String`

  `getHost()`

  Gets the host name of this `URL`, if applicable.

  `String`

  `getPath()`

  Gets the path part of this `URL`.

  `int`

  `getPort()`

  Gets the port number of this `URL`.

  `String`

  `getProtocol()`

  Gets the protocol name of this `URL`.

  `String`

  `getQuery()`

  Gets the query part of this `URL`.

  `String`

  `getRef()`

  Gets the anchor (also known as the "reference") of this
  `URL`.

  `String`

  `getUserInfo()`

  Gets the userInfo part of this `URL`.

  `int`

  `hashCode()`

  Creates an integer suitable for hash table indexing.

  `static URL`

  `of(URI uri,
  URLStreamHandler handler)`

  Creates a URL from a URI, as if by invoking `uri.toURL()`, but
  associating it with the given `URLStreamHandler`, if allowed.

  `URLConnection`

  `openConnection()`

  Returns a [`URLConnection`](URLConnection.md "class in java.net") instance that
  represents a connection to the remote object referred to by the
  `URL`.

  `URLConnection`

  `openConnection(Proxy proxy)`

  Same as [`openConnection()`](#openConnection()), except that the connection will be
  made through the specified proxy; Protocol handlers that do not
  support proxying will ignore the proxy parameter and make a
  normal connection.

  `final InputStream`

  `openStream()`

  Opens a connection to this `URL` and returns an
  `InputStream` for reading from that connection.

  `boolean`

  `sameFile(URL other)`

  Compares two URLs, excluding the fragment component.

  `static void`

  `setURLStreamHandlerFactory(URLStreamHandlerFactory fac)`

  Sets an application's `URLStreamHandlerFactory`.

  `String`

  `toExternalForm()`

  Constructs a string representation of this `URL`.

  `String`

  `toString()`

  Constructs a string representation of this `URL`.

  `URI`

  `toURI()`

  Returns a [`URI`](URI.md "class in java.net") equivalent to this URL.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### URL

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="20")
    public URL([String](../lang/String.md "class in java.lang") protocol,
    [String](../lang/String.md "class in java.lang") host,
    int port,
    [String](../lang/String.md "class in java.lang") file)
    throws [MalformedURLException](MalformedURLException.md "class in java.net")

    Deprecated.

    Use [`URI.toURL()`](URI.md#toURL()) to construct an instance of URL. See the note on
    [constructor deprecation](#constructor-deprecation) for more
    details.

    Creates a `URL` object from the specified
    `protocol`, `host`, `port`
    number, and `file`.

    `host` can be expressed as a host name or a literal
    IP address. If IPv6 literal address is used, it should be
    enclosed in square brackets (`'['` and `']'`), as
    specified by [RFC 2732](http://www.ietf.org/rfc/rfc2732.txt);
    However, the literal IPv6 address format defined in [*RFC 2373: IP
    Version 6 Addressing Architecture*](http://www.ietf.org/rfc/rfc2373.txt) is also accepted.

    Specifying a `port` number of `-1`
    indicates that the URL should use the default port for the
    protocol.

    If this is the first URL object being created with the specified
    protocol, a *stream protocol handler* object, an instance of
    class `URLStreamHandler`, is created for that protocol:
    1. If the application has previously set up an instance of
       `URLStreamHandlerFactory` as the stream handler factory,
       then the `createURLStreamHandler` method of that instance
       is called with the protocol string as an argument to create the
       stream protocol handler.+ If no `URLStreamHandlerFactory` has yet been set up,
         or if the factory's `createURLStreamHandler` method
         returns `null`, then the [ServiceLoader](../util/ServiceLoader.md "class in java.util") mechanism is used to locate [URLStreamHandlerProvider](spi/URLStreamHandlerProvider.md "class in java.net.spi")
         implementations using the system class
         loader. The order that providers are located is implementation
         specific, and an implementation is free to cache the located
         providers. A [ServiceConfigurationError](../util/ServiceConfigurationError.md "class in java.util"), `Error` or `RuntimeException`
         thrown from the `createURLStreamHandler`, if encountered, will
         be propagated to the calling thread. The `createURLStreamHandler` method of each provider, if instantiated, is
         invoked, with the protocol string, until a provider returns non-null,
         or all providers have been exhausted.+ If the previous step fails to find a protocol handler, the
           constructor reads the value of the system property:
           > `java.protocol.handler.pkgs`

           If the value of that system property is not `null`,
           it is interpreted as a list of packages separated by a vertical
           slash character '`|`'. The constructor tries to load
           the class named:
           > `<package>.<protocol>.Handler`

           where `<package>` is replaced by the name of the package
           and `<protocol>` is replaced by the name of the protocol.
           If this class does not exist, or if the class exists but it is not
           a subclass of `URLStreamHandler`, then the next package
           in the list is tried.+ If the previous step fails to find a protocol handler, then the
             constructor tries to load a built-in protocol handler.
             If this class does not exist, or if the class exists but it is not a
             subclass of `URLStreamHandler`, then a
             `MalformedURLException` is thrown.

    Protocol handlers for the following protocols are guaranteed
    to exist on the search path:
    - `http`
    - `https`
    - `file`
    - `jar`Protocol handlers for additional protocols may also be available.
    Some protocol handlers, for example those used for loading platform
    classes or classes on the class path, may not be overridden. The details
    of such restrictions, and when those restrictions apply (during
    initialization of the runtime for example), are implementation specific
    and therefore not specified

    No validation of the inputs is performed by this constructor.

    Parameters:
    :   `protocol` - the name of the protocol to use.
    :   `host` - the name of the host.
    :   `port` - the port number on the host.
    :   `file` - the file on the host

    Throws:
    :   `MalformedURLException` - if an unknown protocol or the port
        is a negative number other than -1, or if the
        underlying stream handler implementation rejects,
        or is known to reject, the `URL`

    See Also:
    :   - [`System.getProperty(java.lang.String)`](../lang/System.md#getProperty(java.lang.String))
        - [`setURLStreamHandlerFactory(java.net.URLStreamHandlerFactory)`](#setURLStreamHandlerFactory(java.net.URLStreamHandlerFactory))
        - [`URLStreamHandler`](URLStreamHandler.md "class in java.net")
        - [`URLStreamHandlerFactory.createURLStreamHandler(java.lang.String)`](URLStreamHandlerFactory.md#createURLStreamHandler(java.lang.String))

    External Specifications
    :   - [RFC 2373: IP Version 6 Addressing Architecture](https://www.rfc-editor.org/info/rfc2373)
        - [RFC 2732: Format for Literal IPv6 Addresses in URL's](https://www.rfc-editor.org/info/rfc2732)
  + ### URL

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="20")
    public URL([String](../lang/String.md "class in java.lang") protocol,
    [String](../lang/String.md "class in java.lang") host,
    [String](../lang/String.md "class in java.lang") file)
    throws [MalformedURLException](MalformedURLException.md "class in java.net")

    Deprecated.

    Use [`URI.toURL()`](URI.md#toURL()) to construct an instance of URL. See the note on
    [constructor deprecation](#constructor-deprecation) for more
    details.

    Creates a URL from the specified `protocol`
    name, `host` name, and `file` name. The
    default port for the specified protocol is used.

    This constructor is equivalent to the four-argument
    constructor with the only difference of using the
    default port for the specified protocol.
    No validation of the inputs is performed by this constructor.

    Parameters:
    :   `protocol` - the name of the protocol to use.
    :   `host` - the name of the host.
    :   `file` - the file on the host.

    Throws:
    :   `MalformedURLException` - if an unknown protocol is specified,
        or if the underlying stream handler implementation
        rejects, or is known to reject, the `URL`

    See Also:
    :   - [`URL(java.lang.String, java.lang.String, int, java.lang.String)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String))
  + ### URL

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="20")
    public URL([String](../lang/String.md "class in java.lang") protocol,
    [String](../lang/String.md "class in java.lang") host,
    int port,
    [String](../lang/String.md "class in java.lang") file,
    [URLStreamHandler](URLStreamHandler.md "class in java.net") handler)
    throws [MalformedURLException](MalformedURLException.md "class in java.net")

    Deprecated.

    Use [`of(URI, URLStreamHandler)`](#of(java.net.URI,java.net.URLStreamHandler)) to construct an instance of URL
    associated with a custom protocol handler.
    See the note on [constructor deprecation](#constructor-deprecation)
    for more details.

    Creates a `URL` object from the specified
    `protocol`, `host`, `port`
    number, `file`, and `handler`. Specifying
    a `port` number of `-1` indicates that
    the URL should use the default port for the protocol. Specifying
    a `handler` of `null` indicates that the URL
    should use a default stream handler for the protocol, as outlined
    for:
    [`URL(java.lang.String, java.lang.String, int, java.lang.String)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String))

    If the handler is not null and there is a security manager,
    the security manager's `checkPermission`
    method is called with a
    `NetPermission("specifyStreamHandler")` permission.
    This may result in a SecurityException.
    No validation of the inputs is performed by this constructor.

    Parameters:
    :   `protocol` - the name of the protocol to use.
    :   `host` - the name of the host.
    :   `port` - the port number on the host.
    :   `file` - the file on the host
    :   `handler` - the stream handler for the URL.

    Throws:
    :   `MalformedURLException` - if an unknown protocol or the port
        is a negative number other than -1,
        or if the underlying stream handler implementation
        rejects, or is known to reject, the `URL`
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow
        specifying a stream handler explicitly.

    See Also:
    :   - [`System.getProperty(java.lang.String)`](../lang/System.md#getProperty(java.lang.String))
        - [`setURLStreamHandlerFactory(java.net.URLStreamHandlerFactory)`](#setURLStreamHandlerFactory(java.net.URLStreamHandlerFactory))
        - [`URLStreamHandler`](URLStreamHandler.md "class in java.net")
        - [`URLStreamHandlerFactory.createURLStreamHandler(java.lang.String)`](URLStreamHandlerFactory.md#createURLStreamHandler(java.lang.String))
        - [`SecurityManager.checkPermission(java.security.Permission)`](../lang/SecurityManager.md#checkPermission(java.security.Permission))
        - [`NetPermission`](NetPermission.md "class in java.net")
  + ### URL

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="20")
    public URL([String](../lang/String.md "class in java.lang") spec)
    throws [MalformedURLException](MalformedURLException.md "class in java.net")

    Deprecated.

    Use [`URI.toURL()`](URI.md#toURL()) to construct an instance of URL. See the note on
    [constructor deprecation](#constructor-deprecation) for more
    details.

    Creates a `URL` object from the `String`
    representation.

    This constructor is equivalent to a call to the two-argument
    constructor with a `null` first argument.

    Parameters:
    :   `spec` - the `String` to parse as a URL.

    Throws:
    :   `MalformedURLException` - if no protocol is specified, or an
        unknown protocol is found, or `spec` is `null`,
        or the parsed URL fails to comply with the specific syntax
        of the associated protocol, or the
        underlying stream handler's [parseURL method](URLStreamHandler.md#parseURL(java.net.URL,java.lang.String,int,int)) throws
        `IllegalArgumentException`

    See Also:
    :   - [`URL(java.net.URL, java.lang.String)`](#%3Cinit%3E(java.net.URL,java.lang.String))
  + ### URL

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="20")
    public URL([URL](URL.md "class in java.net") context,
    [String](../lang/String.md "class in java.lang") spec)
    throws [MalformedURLException](MalformedURLException.md "class in java.net")

    Deprecated.

    Use [`URI.toURL()`](URI.md#toURL()) to construct an instance of URL. See the note on
    [constructor deprecation](#constructor-deprecation) for more
    details.

    Creates a URL by parsing the given spec within a specified context.
    The new URL is created from the given context URL and the spec
    argument as described in
    RFC2396 "Uniform Resource Identifiers : Generic Syntax" :
    > ```
    >           <scheme>://<authority><path>?<query>#<fragment>
    > ```

    The reference is parsed into the scheme, authority, path, query and
    fragment parts. If the path component is empty and the scheme,
    authority, and query components are undefined, then the new URL is a
    reference to the current document. Otherwise, the fragment and query
    parts present in the spec are used in the new URL.

    If the scheme component is defined in the given spec and does not match
    the scheme of the context, then the new URL is created as an absolute
    URL based on the spec alone. Otherwise the scheme component is inherited
    from the context URL.

    If the authority component is present in the spec then the spec is
    treated as absolute and the spec authority and path will replace the
    context authority and path. If the authority component is absent in the
    spec then the authority of the new URL will be inherited from the
    context.

    If the spec's path component begins with a slash character
    "/" then the
    path is treated as absolute and the spec path replaces the context path.

    Otherwise, the path is treated as a relative path and is appended to the
    context path, as described in RFC2396. Also, in this case,
    the path is canonicalized through the removal of directory
    changes made by occurrences of ".." and ".".

    For a more detailed description of URL parsing, refer to RFC2396.

    Parameters:
    :   `context` - the context in which to parse the specification.
    :   `spec` - the `String` to parse as a URL.

    Throws:
    :   `MalformedURLException` - if no protocol is specified, or an
        unknown protocol is found, or `spec` is `null`,
        or the parsed URL fails to comply with the specific syntax
        of the associated protocol, or the
        underlying stream handler's [parseURL method](URLStreamHandler.md#parseURL(java.net.URL,java.lang.String,int,int)) throws
        `IllegalArgumentException`

    See Also:
    :   - [`URL(java.lang.String, java.lang.String, int, java.lang.String)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String))
        - [`URLStreamHandler`](URLStreamHandler.md "class in java.net")
        - [`URLStreamHandler.parseURL(java.net.URL, java.lang.String, int, int)`](URLStreamHandler.md#parseURL(java.net.URL,java.lang.String,int,int))
  + ### URL

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")([since](../lang/Deprecated.md#since())="20")
    public URL([URL](URL.md "class in java.net") context,
    [String](../lang/String.md "class in java.lang") spec,
    [URLStreamHandler](URLStreamHandler.md "class in java.net") handler)
    throws [MalformedURLException](MalformedURLException.md "class in java.net")

    Deprecated.

    Use [`of(URI, URLStreamHandler)`](#of(java.net.URI,java.net.URLStreamHandler)) to construct an instance of URL
    associated with a custom protocol handler.
    See the note on [constructor deprecation](#constructor-deprecation)
    for more details.

    Creates a URL by parsing the given spec with the specified handler
    within a specified context. If the handler is null, the parsing
    occurs as with the two argument constructor.

    Parameters:
    :   `context` - the context in which to parse the specification.
    :   `spec` - the `String` to parse as a URL.
    :   `handler` - the stream handler for the URL.

    Throws:
    :   `MalformedURLException` - if no protocol is specified, or an
        unknown protocol is found, or `spec` is `null`,
        or the parsed URL fails to comply with the specific syntax
        of the associated protocol, or the
        underlying stream handler's [parseURL method](URLStreamHandler.md#parseURL(java.net.URL,java.lang.String,int,int)) throws `IllegalArgumentException`
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow
        specifying a stream handler.

    See Also:
    :   - [`URL(java.lang.String, java.lang.String, int, java.lang.String)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String))
        - [`URLStreamHandler`](URLStreamHandler.md "class in java.net")
        - [`URLStreamHandler.parseURL(java.net.URL, java.lang.String, int, int)`](URLStreamHandler.md#parseURL(java.net.URL,java.lang.String,int,int))
* ## Method Details

  + ### of

    public static [URL](URL.md "class in java.net") of([URI](URI.md "class in java.net") uri,
    [URLStreamHandler](URLStreamHandler.md "class in java.net") handler)
    throws [MalformedURLException](MalformedURLException.md "class in java.net")

    Creates a URL from a URI, as if by invoking `uri.toURL()`, but
    associating it with the given `URLStreamHandler`, if allowed.

    Parameters:
    :   `uri` - the `URI` from which the returned `URL` should
        be built
    :   `handler` - a custom protocol stream handler for
        the returned `URL`. Can be `null`,
        in which case the default stream handler for
        the protocol if any, will be used.

    Returns:
    :   a new `URL` instance created from the given `URI`
        and associated with the given `URLStreamHandler`, if any

    Throws:
    :   `NullPointerException` - if `uri` is `null`
    :   `IllegalArgumentException` - if no protocol is specified
        (the [uri scheme](URI.md#getScheme()) is `null`), or
        if the `URLStreamHandler` is not `null` and can not be
        set for the given protocol
    :   `MalformedURLException` - if an unknown protocol is found,
        or the given URI fails to comply with the specific
        syntax of the associated protocol, or the
        underlying stream handler's [parseURL method](URLStreamHandler.md#parseURL(java.net.URL,java.lang.String,int,int)) throws `IllegalArgumentException`
    :   `SecurityException` - if a security manager exists and its
        `checkPermission` method doesn't allow
        specifying a stream handler

    Since:
    :   20

    See Also:
    :   - [`URI.toURL()`](URI.md#toURL())
  + ### getQuery

    public [String](../lang/String.md "class in java.lang") getQuery()

    Gets the query part of this `URL`.

    Returns:
    :   the query part of this `URL`,
        or `null` if one does not exist

    Since:
    :   1.3
  + ### getPath

    public [String](../lang/String.md "class in java.lang") getPath()

    Gets the path part of this `URL`.

    Returns:
    :   the path part of this `URL`, or an
        empty string if one does not exist

    Since:
    :   1.3
  + ### getUserInfo

    public [String](../lang/String.md "class in java.lang") getUserInfo()

    Gets the userInfo part of this `URL`.

    Returns:
    :   the userInfo part of this `URL`, or
        `null` if one does not exist

    Since:
    :   1.3
  + ### getAuthority

    public [String](../lang/String.md "class in java.lang") getAuthority()

    Gets the authority part of this `URL`.

    Returns:
    :   the authority part of this `URL`

    Since:
    :   1.3
  + ### getPort

    public int getPort()

    Gets the port number of this `URL`.

    Returns:
    :   the port number, or -1 if the port is not set
  + ### getDefaultPort

    public int getDefaultPort()

    Gets the default port number of the protocol associated
    with this `URL`. If the URL scheme or the URLStreamHandler
    for the URL do not define a default port number,
    then -1 is returned.

    Returns:
    :   the port number

    Since:
    :   1.4
  + ### getProtocol

    public [String](../lang/String.md "class in java.lang") getProtocol()

    Gets the protocol name of this `URL`.

    Returns:
    :   the protocol of this `URL`.
  + ### getHost

    public [String](../lang/String.md "class in java.lang") getHost()

    Gets the host name of this `URL`, if applicable.
    The format of the host conforms to RFC 2732, i.e. for a
    literal IPv6 address, this method will return the IPv6 address
    enclosed in square brackets (`'['` and `']'`).

    Returns:
    :   the host name of this `URL`.
  + ### getFile

    public [String](../lang/String.md "class in java.lang") getFile()

    Gets the file name of this `URL`.
    The returned file portion will be
    the same as `getPath()`, plus the concatenation of
    the value of `getQuery()`, if any. If there is
    no query portion, this method and `getPath()` will
    return identical results.

    Returns:
    :   the file name of this `URL`,
        or an empty string if one does not exist
  + ### getRef

    public [String](../lang/String.md "class in java.lang") getRef()

    Gets the anchor (also known as the "reference") of this
    `URL`.

    Returns:
    :   the anchor (also known as the "reference") of this
        `URL`, or `null` if one does not exist
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Compares this URL for equality with another object.

    If the given object is not a URL then this method immediately returns
    `false`.

    Two URL objects are equal if they have the same protocol, reference
    equivalent hosts, have the same port number on the host, and the same
    file and fragment of the file.

    Two hosts are considered equivalent if both host names can be resolved
    into the same IP addresses; else if either host name can't be
    resolved, the host names must be equal without regard to case; or both
    host names equal to null.

    Since hosts comparison requires name resolution, this operation is a
    blocking operation.

    Note: The defined behavior for `equals` is known to
    be inconsistent with virtual hosting in HTTP.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the URL to compare against.

    Returns:
    :   `true` if the objects are the same;
        `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Creates an integer suitable for hash table indexing.

    The hash code is based upon all the URL components relevant for URL
    comparison. As such, this operation is a blocking operation.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code for this `URL`.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### sameFile

    public boolean sameFile([URL](URL.md "class in java.net") other)

    Compares two URLs, excluding the fragment component.

    Returns `true` if this `URL` and the
    `other` argument are equal without taking the
    fragment component into consideration.

    Parameters:
    :   `other` - the `URL` to compare against.

    Returns:
    :   `true` if they reference the same remote object;
        `false` otherwise.
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Constructs a string representation of this `URL`. The
    string is created by calling the `toExternalForm`
    method of the stream protocol handler for this object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this object.

    See Also:
    :   - [`URL(java.lang.String, java.lang.String, int, java.lang.String)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String))
        - [`URLStreamHandler.toExternalForm(java.net.URL)`](URLStreamHandler.md#toExternalForm(java.net.URL))
  + ### toExternalForm

    public [String](../lang/String.md "class in java.lang") toExternalForm()

    Constructs a string representation of this `URL`. The
    string is created by calling the `toExternalForm`
    method of the stream protocol handler for this object.

    Returns:
    :   a string representation of this object.

    See Also:
    :   - [`URL(java.lang.String, java.lang.String, int, java.lang.String)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String))
        - [`URLStreamHandler.toExternalForm(java.net.URL)`](URLStreamHandler.md#toExternalForm(java.net.URL))
  + ### toURI

    public [URI](URI.md "class in java.net") toURI()
    throws [URISyntaxException](URISyntaxException.md "class in java.net")

    Returns a [`URI`](URI.md "class in java.net") equivalent to this URL.
    This method functions in the same way as `new URI (this.toString())`.

    Note, any URL instance that complies with RFC 2396 can be converted
    to a URI. However, some URLs that are not strictly in compliance
    can not be converted to a URI.

    Returns:
    :   a URI instance equivalent to this URL.

    Throws:
    :   `URISyntaxException` - if this URL is not formatted strictly according to
        RFC2396 and cannot be converted to a URI.

    Since:
    :   1.5
  + ### openConnection

    public [URLConnection](URLConnection.md "class in java.net") openConnection()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns a [`URLConnection`](URLConnection.md "class in java.net") instance that
    represents a connection to the remote object referred to by the
    `URL`.

    A new instance of [URLConnection](URLConnection.md "class in java.net") is
    created every time when invoking the
    [URLStreamHandler.openConnection(URL)](URLStreamHandler.md#openConnection(java.net.URL)) method of the protocol handler for
    this URL.

    It should be noted that a URLConnection instance does not establish
    the actual network connection on creation. This will happen only when
    calling [URLConnection.connect()](URLConnection.md#connect()).

    If for the URL's protocol (such as HTTP or JAR), there
    exists a public, specialized URLConnection subclass belonging
    to one of the following packages or one of their subpackages:
    java.lang, java.io, java.util, java.net, the connection
    returned will be of that subclass. For example, for HTTP an
    HttpURLConnection will be returned, and for JAR a
    JarURLConnection will be returned.

    Returns:
    :   a [`URLConnection`](URLConnection.md "class in java.net") linking
        to the URL.

    Throws:
    :   `IOException` - if an I/O exception occurs.

    See Also:
    :   - [`URL(java.lang.String, java.lang.String, int, java.lang.String)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String))
  + ### openConnection

    public [URLConnection](URLConnection.md "class in java.net") openConnection([Proxy](Proxy.md "class in java.net") proxy)
    throws [IOException](../io/IOException.md "class in java.io")

    Same as [`openConnection()`](#openConnection()), except that the connection will be
    made through the specified proxy; Protocol handlers that do not
    support proxying will ignore the proxy parameter and make a
    normal connection.
    Invoking this method preempts the system's default
    [`ProxySelector`](ProxySelector.md "class in java.net") settings.

    Parameters:
    :   `proxy` - the Proxy through which this connection
        will be made. If direct connection is desired,
        Proxy.NO\_PROXY should be specified.

    Returns:
    :   a `URLConnection` to the URL.

    Throws:
    :   `IOException` - if an I/O exception occurs.
    :   `SecurityException` - if a security manager is present
        and the caller doesn't have permission to connect
        to the proxy.
    :   `IllegalArgumentException` - will be thrown if proxy is null,
        or proxy has the wrong type
    :   `UnsupportedOperationException` - if the subclass that
        implements the protocol handler doesn't support
        this method.

    Since:
    :   1.5

    See Also:
    :   - [`URL(java.lang.String, java.lang.String, int, java.lang.String)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String))
        - [`URLConnection`](URLConnection.md "class in java.net")
        - [`URLStreamHandler.openConnection(java.net.URL, java.net.Proxy)`](URLStreamHandler.md#openConnection(java.net.URL,java.net.Proxy))
  + ### openStream

    public final [InputStream](../io/InputStream.md "class in java.io") openStream()
    throws [IOException](../io/IOException.md "class in java.io")

    Opens a connection to this `URL` and returns an
    `InputStream` for reading from that connection. This
    method is a shorthand for:
    > ```
    >      openConnection().getInputStream()
    > ```

    Returns:
    :   an input stream for reading from the URL connection.

    Throws:
    :   `IOException` - if an I/O exception occurs.

    See Also:
    :   - [`openConnection()`](#openConnection())
        - [`URLConnection.getInputStream()`](URLConnection.md#getInputStream())
  + ### getContent

    public final [Object](../lang/Object.md "class in java.lang") getContent()
    throws [IOException](../io/IOException.md "class in java.io")

    Gets the contents of this URL. This method is a shorthand for:
    > ```
    >      openConnection().getContent()
    > ```

    Returns:
    :   the contents of this URL.

    Throws:
    :   `IOException` - if an I/O exception occurs.

    See Also:
    :   - [`URLConnection.getContent()`](URLConnection.md#getContent())
  + ### getContent

    public final [Object](../lang/Object.md "class in java.lang") getContent([Class](../lang/Class.md "class in java.lang")<?>[] classes)
    throws [IOException](../io/IOException.md "class in java.io")

    Gets the contents of this URL. This method is a shorthand for:
    > ```
    >      openConnection().getContent(classes)
    > ```

    Parameters:
    :   `classes` - an array of Java types

    Returns:
    :   the content object of this URL that is the first match of
        the types specified in the classes array.
        null if none of the requested types are supported.

    Throws:
    :   `IOException` - if an I/O exception occurs.

    Since:
    :   1.3

    See Also:
    :   - [`URLConnection.getContent(Class[])`](URLConnection.md#getContent(java.lang.Class%5B%5D))
  + ### setURLStreamHandlerFactory

    public static void setURLStreamHandlerFactory([URLStreamHandlerFactory](URLStreamHandlerFactory.md "interface in java.net") fac)

    Sets an application's `URLStreamHandlerFactory`.
    This method can be called at most once in a given Java Virtual
    Machine.

    The `URLStreamHandlerFactory` instance is used to
    construct a stream protocol handler from a protocol name.

    If there is a security manager, this method first calls
    the security manager's `checkSetFactory` method
    to ensure the operation is allowed.
    This could result in a SecurityException.

    Parameters:
    :   `fac` - the desired factory.

    Throws:
    :   `Error` - if the application has already set a factory.
    :   `SecurityException` - if a security manager exists and its
        `checkSetFactory` method doesn't allow
        the operation.

    See Also:
    :   - [`URL(java.lang.String, java.lang.String, int, java.lang.String)`](#%3Cinit%3E(java.lang.String,java.lang.String,int,java.lang.String))
        - [`URLStreamHandlerFactory`](URLStreamHandlerFactory.md "interface in java.net")
        - [`SecurityManager.checkSetFactory()`](../lang/SecurityManager.md#checkSetFactory())