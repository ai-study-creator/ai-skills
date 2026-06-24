Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class HttpURLConnection

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.net.URLConnection](URLConnection.md "class in java.net")

java.net.HttpURLConnection

Direct Known Subclasses:
:   `HttpsURLConnection`

---

public abstract class HttpURLConnection
extends [URLConnection](URLConnection.md "class in java.net")

A URLConnection with support for HTTP-specific features. See
 [the spec](http://www.w3.org/pub/WWW/Protocols/)  for
details.

Each HttpURLConnection instance is used to make a single request
but the underlying network connection to the HTTP server may be
transparently shared by other instances. Calling the close() methods
on the InputStream or OutputStream of an HttpURLConnection
after a request may free network resources associated with this
instance but has no effect on any shared persistent connection.
Calling the disconnect() method may close the underlying socket
if a persistent connection is otherwise idle at that time.

The HTTP protocol handler has a few settings that can be accessed through
System Properties. This covers
[Proxy settings](doc-files/net-properties.md#Proxies) as well as
 [various other settings](doc-files/net-properties.md#MiscHTTP).

**Security permissions**

If a security manager is installed, and if a method is called which results in an
attempt to open a connection, the caller must possess either:

* a "connect" [`SocketPermission`](SocketPermission.md "class in java.net") to the host/port combination of the
  destination URL or
* a [`URLPermission`](URLPermission.md "class in java.net") that permits this request.

If automatic redirection is enabled, and this request is redirected to another
destination, then the caller must also have permission to connect to the
redirected host/URL.

Since:
:   1.1

See Also:
:   * [`disconnect()`](#disconnect())

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected int`

  `chunkLength`

  The chunk-length when using chunked encoding streaming mode for output.

  `protected int`

  `fixedContentLength`

  The fixed content-length when using fixed-length streaming mode.

  `protected long`

  `fixedContentLengthLong`

  The fixed content-length when using fixed-length streaming mode.

  `static final int`

  `HTTP_ACCEPTED`

  HTTP Status-Code 202: Accepted.

  `static final int`

  `HTTP_BAD_GATEWAY`

  HTTP Status-Code 502: Bad Gateway.

  `static final int`

  `HTTP_BAD_METHOD`

  HTTP Status-Code 405: Method Not Allowed.

  `static final int`

  `HTTP_BAD_REQUEST`

  HTTP Status-Code 400: Bad Request.

  `static final int`

  `HTTP_CLIENT_TIMEOUT`

  HTTP Status-Code 408: Request Time-Out.

  `static final int`

  `HTTP_CONFLICT`

  HTTP Status-Code 409: Conflict.

  `static final int`

  `HTTP_CREATED`

  HTTP Status-Code 201: Created.

  `static final int`

  `HTTP_ENTITY_TOO_LARGE`

  HTTP Status-Code 413: Request Entity Too Large.

  `static final int`

  `HTTP_FORBIDDEN`

  HTTP Status-Code 403: Forbidden.

  `static final int`

  `HTTP_GATEWAY_TIMEOUT`

  HTTP Status-Code 504: Gateway Timeout.

  `static final int`

  `HTTP_GONE`

  HTTP Status-Code 410: Gone.

  `static final int`

  `HTTP_INTERNAL_ERROR`

  HTTP Status-Code 500: Internal Server Error.

  `static final int`

  `HTTP_LENGTH_REQUIRED`

  HTTP Status-Code 411: Length Required.

  `static final int`

  `HTTP_MOVED_PERM`

  HTTP Status-Code 301: Moved Permanently.

  `static final int`

  `HTTP_MOVED_TEMP`

  HTTP Status-Code 302: Temporary Redirect.

  `static final int`

  `HTTP_MULT_CHOICE`

  HTTP Status-Code 300: Multiple Choices.

  `static final int`

  `HTTP_NO_CONTENT`

  HTTP Status-Code 204: No Content.

  `static final int`

  `HTTP_NOT_ACCEPTABLE`

  HTTP Status-Code 406: Not Acceptable.

  `static final int`

  `HTTP_NOT_AUTHORITATIVE`

  HTTP Status-Code 203: Non-Authoritative Information.

  `static final int`

  `HTTP_NOT_FOUND`

  HTTP Status-Code 404: Not Found.

  `static final int`

  `HTTP_NOT_IMPLEMENTED`

  HTTP Status-Code 501: Not Implemented.

  `static final int`

  `HTTP_NOT_MODIFIED`

  HTTP Status-Code 304: Not Modified.

  `static final int`

  `HTTP_OK`

  HTTP Status-Code 200: OK.

  `static final int`

  `HTTP_PARTIAL`

  HTTP Status-Code 206: Partial Content.

  `static final int`

  `HTTP_PAYMENT_REQUIRED`

  HTTP Status-Code 402: Payment Required.

  `static final int`

  `HTTP_PRECON_FAILED`

  HTTP Status-Code 412: Precondition Failed.

  `static final int`

  `HTTP_PROXY_AUTH`

  HTTP Status-Code 407: Proxy Authentication Required.

  `static final int`

  `HTTP_REQ_TOO_LONG`

  HTTP Status-Code 414: Request-URI Too Large.

  `static final int`

  `HTTP_RESET`

  HTTP Status-Code 205: Reset Content.

  `static final int`

  `HTTP_SEE_OTHER`

  HTTP Status-Code 303: See Other.

  `static final int`

  `HTTP_SERVER_ERROR`

  Deprecated.

  it is misplaced and shouldn't have existed.

  `static final int`

  `HTTP_UNAUTHORIZED`

  HTTP Status-Code 401: Unauthorized.

  `static final int`

  `HTTP_UNAVAILABLE`

  HTTP Status-Code 503: Service Unavailable.

  `static final int`

  `HTTP_UNSUPPORTED_TYPE`

  HTTP Status-Code 415: Unsupported Media Type.

  `static final int`

  `HTTP_USE_PROXY`

  HTTP Status-Code 305: Use Proxy.

  `static final int`

  `HTTP_VERSION`

  HTTP Status-Code 505: HTTP Version Not Supported.

  `protected boolean`

  `instanceFollowRedirects`

  If `true`, the protocol will automatically follow redirects.

  `protected String`

  `method`

  The HTTP method (GET,POST,PUT,etc.).

  `protected int`

  `responseCode`

  An `int` representing the three digit HTTP Status-Code.

  `protected String`

  `responseMessage`

  The HTTP response message.

  ### Fields inherited from class java.net.[URLConnection](URLConnection.md "class in java.net")

  `allowUserInteraction, connected, doInput, doOutput, ifModifiedSince, url, useCaches`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `HttpURLConnection(URL u)`

  Constructor for the HttpURLConnection.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `disconnect()`

  Indicates that other requests to the server
  are unlikely in the near future.

  `InputStream`

  `getErrorStream()`

  Returns the error stream if the connection failed
  but the server sent useful data nonetheless.

  `static boolean`

  `getFollowRedirects()`

  Returns a `boolean` indicating
  whether or not HTTP redirects (3xx) should
  be automatically followed.

  `String`

  `getHeaderField(int n)`

  Returns the value for the `n`th header field.

  `long`

  `getHeaderFieldDate(String name,
  long defaultValue)`

  Returns the value of the named field parsed as date.

  `String`

  `getHeaderFieldKey(int n)`

  Returns the key for the `n`th header field.

  `boolean`

  `getInstanceFollowRedirects()`

  Returns the value of this `HttpURLConnection`'s
  `instanceFollowRedirects` field.

  `Permission`

  `getPermission()`

  Returns a [`SocketPermission`](SocketPermission.md "class in java.net") object representing the
  permission necessary to connect to the destination host and port.

  `String`

  `getRequestMethod()`

  Get the request method.

  `int`

  `getResponseCode()`

  Gets the status code from an HTTP response message.

  `String`

  `getResponseMessage()`

  Gets the HTTP response message, if any, returned along with the
  response code from a server.

  `void`

  `setAuthenticator(Authenticator auth)`

  Supplies an [`Authenticator`](Authenticator.md "class in java.net") to be used
  when authentication is requested through the HTTP protocol for
  this `HttpURLConnection`.

  `void`

  `setChunkedStreamingMode(int chunklen)`

  This method is used to enable streaming of a HTTP request body
  without internal buffering, when the content length is **not**
  known in advance.

  `void`

  `setFixedLengthStreamingMode(int contentLength)`

  This method is used to enable streaming of a HTTP request body
  without internal buffering, when the content length is known in
  advance.

  `void`

  `setFixedLengthStreamingMode(long contentLength)`

  This method is used to enable streaming of a HTTP request body
  without internal buffering, when the content length is known in
  advance.

  `static void`

  `setFollowRedirects(boolean set)`

  Sets whether HTTP redirects (requests with response code 3xx) should
  be automatically followed by this class.

  `void`

  `setInstanceFollowRedirects(boolean followRedirects)`

  Sets whether HTTP redirects (requests with response code 3xx) should
  be automatically followed by this `HttpURLConnection`
  instance.

  `void`

  `setRequestMethod(String method)`

  Set the method for the URL request, one of:
  GET
  POST
  HEAD
  OPTIONS
  PUT
  DELETE
  TRACE
  are legal, subject to protocol restrictions.

  `abstract boolean`

  `usingProxy()`

  Indicates if the connection is going through a proxy.

  ### Methods inherited from class java.net.[URLConnection](URLConnection.md "class in java.net")

  `addRequestProperty, connect, getAllowUserInteraction, getConnectTimeout, getContent, getContent, getContentEncoding, getContentLength, getContentLengthLong, getContentType, getDate, getDefaultAllowUserInteraction, getDefaultRequestProperty, getDefaultUseCaches, getDefaultUseCaches, getDoInput, getDoOutput, getExpiration, getFileNameMap, getHeaderField, getHeaderFieldInt, getHeaderFieldLong, getHeaderFields, getIfModifiedSince, getInputStream, getLastModified, getOutputStream, getReadTimeout, getRequestProperties, getRequestProperty, getURL, getUseCaches, guessContentTypeFromName, guessContentTypeFromStream, setAllowUserInteraction, setConnectTimeout, setContentHandlerFactory, setDefaultAllowUserInteraction, setDefaultRequestProperty, setDefaultUseCaches, setDefaultUseCaches, setDoInput, setDoOutput, setFileNameMap, setIfModifiedSince, setReadTimeout, setRequestProperty, setUseCaches, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### method

    protected [String](../lang/String.md "class in java.lang") method

    The HTTP method (GET,POST,PUT,etc.).
  + ### chunkLength

    protected int chunkLength

    The chunk-length when using chunked encoding streaming mode for output.
    A value of `-1` means chunked encoding is disabled for output.

    Since:
    :   1.5
  + ### fixedContentLength

    protected int fixedContentLength

    The fixed content-length when using fixed-length streaming mode.
    A value of `-1` means fixed-length streaming mode is disabled
    for output.

    **NOTE:** [`fixedContentLengthLong`](#fixedContentLengthLong) is recommended instead
    of this field, as it allows larger content lengths to be set.

    Since:
    :   1.5
  + ### fixedContentLengthLong

    protected long fixedContentLengthLong

    The fixed content-length when using fixed-length streaming mode.
    A value of `-1` means fixed-length streaming mode is disabled
    for output.

    Since:
    :   1.7
  + ### responseCode

    protected int responseCode

    An `int` representing the three digit HTTP Status-Code.
    - 1xx: Informational- 2xx: Success- 3xx: Redirection- 4xx: Client Error- 5xx: Server Error
  + ### responseMessage

    protected [String](../lang/String.md "class in java.lang") responseMessage

    The HTTP response message.
  + ### instanceFollowRedirects

    protected boolean instanceFollowRedirects

    If `true`, the protocol will automatically follow redirects.
    If `false`, the protocol will not automatically follow
    redirects.

    This field is set by the `setInstanceFollowRedirects`
    method. Its value is returned by the `getInstanceFollowRedirects`
    method.

    Its default value is based on the value of the static followRedirects
    at HttpURLConnection construction time.

    See Also:
    :   - [`setInstanceFollowRedirects(boolean)`](#setInstanceFollowRedirects(boolean))
        - [`getInstanceFollowRedirects()`](#getInstanceFollowRedirects())
        - [`setFollowRedirects(boolean)`](#setFollowRedirects(boolean))
  + ### HTTP\_OK

    public static final int HTTP\_OK

    HTTP Status-Code 200: OK.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_OK)
  + ### HTTP\_CREATED

    public static final int HTTP\_CREATED

    HTTP Status-Code 201: Created.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_CREATED)
  + ### HTTP\_ACCEPTED

    public static final int HTTP\_ACCEPTED

    HTTP Status-Code 202: Accepted.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_ACCEPTED)
  + ### HTTP\_NOT\_AUTHORITATIVE

    public static final int HTTP\_NOT\_AUTHORITATIVE

    HTTP Status-Code 203: Non-Authoritative Information.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_NOT_AUTHORITATIVE)
  + ### HTTP\_NO\_CONTENT

    public static final int HTTP\_NO\_CONTENT

    HTTP Status-Code 204: No Content.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_NO_CONTENT)
  + ### HTTP\_RESET

    public static final int HTTP\_RESET

    HTTP Status-Code 205: Reset Content.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_RESET)
  + ### HTTP\_PARTIAL

    public static final int HTTP\_PARTIAL

    HTTP Status-Code 206: Partial Content.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_PARTIAL)
  + ### HTTP\_MULT\_CHOICE

    public static final int HTTP\_MULT\_CHOICE

    HTTP Status-Code 300: Multiple Choices.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_MULT_CHOICE)
  + ### HTTP\_MOVED\_PERM

    public static final int HTTP\_MOVED\_PERM

    HTTP Status-Code 301: Moved Permanently.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_MOVED_PERM)
  + ### HTTP\_MOVED\_TEMP

    public static final int HTTP\_MOVED\_TEMP

    HTTP Status-Code 302: Temporary Redirect.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_MOVED_TEMP)
  + ### HTTP\_SEE\_OTHER

    public static final int HTTP\_SEE\_OTHER

    HTTP Status-Code 303: See Other.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_SEE_OTHER)
  + ### HTTP\_NOT\_MODIFIED

    public static final int HTTP\_NOT\_MODIFIED

    HTTP Status-Code 304: Not Modified.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_NOT_MODIFIED)
  + ### HTTP\_USE\_PROXY

    public static final int HTTP\_USE\_PROXY

    HTTP Status-Code 305: Use Proxy.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_USE_PROXY)
  + ### HTTP\_BAD\_REQUEST

    public static final int HTTP\_BAD\_REQUEST

    HTTP Status-Code 400: Bad Request.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_BAD_REQUEST)
  + ### HTTP\_UNAUTHORIZED

    public static final int HTTP\_UNAUTHORIZED

    HTTP Status-Code 401: Unauthorized.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_UNAUTHORIZED)
  + ### HTTP\_PAYMENT\_REQUIRED

    public static final int HTTP\_PAYMENT\_REQUIRED

    HTTP Status-Code 402: Payment Required.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_PAYMENT_REQUIRED)
  + ### HTTP\_FORBIDDEN

    public static final int HTTP\_FORBIDDEN

    HTTP Status-Code 403: Forbidden.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_FORBIDDEN)
  + ### HTTP\_NOT\_FOUND

    public static final int HTTP\_NOT\_FOUND

    HTTP Status-Code 404: Not Found.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_NOT_FOUND)
  + ### HTTP\_BAD\_METHOD

    public static final int HTTP\_BAD\_METHOD

    HTTP Status-Code 405: Method Not Allowed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_BAD_METHOD)
  + ### HTTP\_NOT\_ACCEPTABLE

    public static final int HTTP\_NOT\_ACCEPTABLE

    HTTP Status-Code 406: Not Acceptable.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_NOT_ACCEPTABLE)
  + ### HTTP\_PROXY\_AUTH

    public static final int HTTP\_PROXY\_AUTH

    HTTP Status-Code 407: Proxy Authentication Required.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_PROXY_AUTH)
  + ### HTTP\_CLIENT\_TIMEOUT

    public static final int HTTP\_CLIENT\_TIMEOUT

    HTTP Status-Code 408: Request Time-Out.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_CLIENT_TIMEOUT)
  + ### HTTP\_CONFLICT

    public static final int HTTP\_CONFLICT

    HTTP Status-Code 409: Conflict.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_CONFLICT)
  + ### HTTP\_GONE

    public static final int HTTP\_GONE

    HTTP Status-Code 410: Gone.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_GONE)
  + ### HTTP\_LENGTH\_REQUIRED

    public static final int HTTP\_LENGTH\_REQUIRED

    HTTP Status-Code 411: Length Required.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_LENGTH_REQUIRED)
  + ### HTTP\_PRECON\_FAILED

    public static final int HTTP\_PRECON\_FAILED

    HTTP Status-Code 412: Precondition Failed.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_PRECON_FAILED)
  + ### HTTP\_ENTITY\_TOO\_LARGE

    public static final int HTTP\_ENTITY\_TOO\_LARGE

    HTTP Status-Code 413: Request Entity Too Large.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_ENTITY_TOO_LARGE)
  + ### HTTP\_REQ\_TOO\_LONG

    public static final int HTTP\_REQ\_TOO\_LONG

    HTTP Status-Code 414: Request-URI Too Large.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_REQ_TOO_LONG)
  + ### HTTP\_UNSUPPORTED\_TYPE

    public static final int HTTP\_UNSUPPORTED\_TYPE

    HTTP Status-Code 415: Unsupported Media Type.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_UNSUPPORTED_TYPE)
  + ### HTTP\_SERVER\_ERROR

    [@Deprecated](../lang/Deprecated.md "annotation interface in java.lang")
    public static final int HTTP\_SERVER\_ERROR

    Deprecated.

    it is misplaced and shouldn't have existed.

    HTTP Status-Code 500: Internal Server Error.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_SERVER_ERROR)
  + ### HTTP\_INTERNAL\_ERROR

    public static final int HTTP\_INTERNAL\_ERROR

    HTTP Status-Code 500: Internal Server Error.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_INTERNAL_ERROR)
  + ### HTTP\_NOT\_IMPLEMENTED

    public static final int HTTP\_NOT\_IMPLEMENTED

    HTTP Status-Code 501: Not Implemented.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_NOT_IMPLEMENTED)
  + ### HTTP\_BAD\_GATEWAY

    public static final int HTTP\_BAD\_GATEWAY

    HTTP Status-Code 502: Bad Gateway.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_BAD_GATEWAY)
  + ### HTTP\_UNAVAILABLE

    public static final int HTTP\_UNAVAILABLE

    HTTP Status-Code 503: Service Unavailable.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_UNAVAILABLE)
  + ### HTTP\_GATEWAY\_TIMEOUT

    public static final int HTTP\_GATEWAY\_TIMEOUT

    HTTP Status-Code 504: Gateway Timeout.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_GATEWAY_TIMEOUT)
  + ### HTTP\_VERSION

    public static final int HTTP\_VERSION

    HTTP Status-Code 505: HTTP Version Not Supported.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.net.HttpURLConnection.HTTP_VERSION)
* ## Constructor Details

  + ### HttpURLConnection

    protected HttpURLConnection([URL](URL.md "class in java.net") u)

    Constructor for the HttpURLConnection.

    Parameters:
    :   `u` - the URL
* ## Method Details

  + ### setAuthenticator

    public void setAuthenticator([Authenticator](Authenticator.md "class in java.net") auth)

    Supplies an [`Authenticator`](Authenticator.md "class in java.net") to be used
    when authentication is requested through the HTTP protocol for
    this `HttpURLConnection`.
    If no authenticator is supplied, the
    [default
    authenticator](Authenticator.md#setDefault(java.net.Authenticator)) will be used.

    Parameters:
    :   `auth` - The `Authenticator` that should be used by this
        `HttpURLConnection`.

    Throws:
    :   `UnsupportedOperationException` - if setting an Authenticator is
        not supported by the underlying implementation.
    :   `IllegalStateException` - if URLConnection is already connected.
    :   `NullPointerException` - if the supplied `auth` is `null`.

    Since:
    :   9
  + ### getHeaderFieldKey

    public [String](../lang/String.md "class in java.lang") getHeaderFieldKey(int n)

    Returns the key for the `n`th header field.
    Some implementations may treat the `0`th
    header field as special, i.e. as the status line returned by the HTTP
    server. In this case, [`getHeaderField(0)`](#getHeaderField(int)) returns the status
    line, but `getHeaderFieldKey(0)` returns null.

    Overrides:
    :   `getHeaderFieldKey` in class `URLConnection`

    Parameters:
    :   `n` - an index, where `n >=0`.

    Returns:
    :   the key for the `n`th header field,
        or `null` if the key does not exist.
  + ### setFixedLengthStreamingMode

    public void setFixedLengthStreamingMode(int contentLength)

    This method is used to enable streaming of a HTTP request body
    without internal buffering, when the content length is known in
    advance.

    An exception will be thrown if the application
    attempts to write more data than the indicated
    content-length, or if the application closes the OutputStream
    before writing the indicated amount.

    When output streaming is enabled, authentication
    and redirection cannot be handled automatically.
    A HttpRetryException will be thrown when reading
    the response if authentication or redirection are required.
    This exception can be queried for the details of the error.

    This method must be called before the URLConnection is connected.

    **NOTE:** [`setFixedLengthStreamingMode(long)`](#setFixedLengthStreamingMode(long)) is recommended
    instead of this method as it allows larger content lengths to be set.

    Parameters:
    :   `contentLength` - The number of bytes which will be written
        to the OutputStream.

    Throws:
    :   `IllegalStateException` - if URLConnection is already connected
        or if a different streaming mode is already enabled.
    :   `IllegalArgumentException` - if a content length less than
        zero is specified.

    Since:
    :   1.5

    See Also:
    :   - [`setChunkedStreamingMode(int)`](#setChunkedStreamingMode(int))
  + ### setFixedLengthStreamingMode

    public void setFixedLengthStreamingMode(long contentLength)

    This method is used to enable streaming of a HTTP request body
    without internal buffering, when the content length is known in
    advance.

    An exception will be thrown if the application attempts to write
    more data than the indicated content-length, or if the application
    closes the OutputStream before writing the indicated amount.

    When output streaming is enabled, authentication and redirection
    cannot be handled automatically. A [HttpRetryException](HttpRetryException.md "class in java.net") will
    be thrown when reading the response if authentication or redirection
    are required. This exception can be queried for the details of the
    error.

    This method must be called before the URLConnection is connected.

    The content length set by invoking this method takes precedence
    over any value set by [`setFixedLengthStreamingMode(int)`](#setFixedLengthStreamingMode(int)).

    Parameters:
    :   `contentLength` - The number of bytes which will be written to the OutputStream.

    Throws:
    :   `IllegalStateException` - if URLConnection is already connected or if a different
        streaming mode is already enabled.
    :   `IllegalArgumentException` - if a content length less than zero is specified.

    Since:
    :   1.7
  + ### setChunkedStreamingMode

    public void setChunkedStreamingMode(int chunklen)

    This method is used to enable streaming of a HTTP request body
    without internal buffering, when the content length is **not**
    known in advance. In this mode, chunked transfer encoding
    is used to send the request body. Note, not all HTTP servers
    support this mode.

    When output streaming is enabled, authentication
    and redirection cannot be handled automatically.
    A HttpRetryException will be thrown when reading
    the response if authentication or redirection are required.
    This exception can be queried for the details of the error.

    This method must be called before the URLConnection is connected.

    Parameters:
    :   `chunklen` - The number of bytes to be written in each chunk,
        including a chunk size header as a hexadecimal string
        (minimum of 1 byte), two CRLF's (4 bytes) and a minimum
        payload length of 1 byte. If chunklen is less than or equal
        to 5, a higher default value will be used.

    Throws:
    :   `IllegalStateException` - if URLConnection is already connected
        or if a different streaming mode is already enabled.

    Since:
    :   1.5

    See Also:
    :   - [`setFixedLengthStreamingMode(int)`](#setFixedLengthStreamingMode(int))
  + ### getHeaderField

    public [String](../lang/String.md "class in java.lang") getHeaderField(int n)

    Returns the value for the `n`th header field.
    Some implementations may treat the `0`th
    header field as special, i.e. as the status line returned by the HTTP
    server.

    This method can be used in conjunction with the
    [`getHeaderFieldKey`](#getHeaderFieldKey(int)) method to iterate through all
    the headers in the message.

    Overrides:
    :   `getHeaderField` in class `URLConnection`

    Parameters:
    :   `n` - an index, where `n>=0`.

    Returns:
    :   the value of the `n`th header field,
        or `null` if the value does not exist.

    See Also:
    :   - [`getHeaderFieldKey(int)`](#getHeaderFieldKey(int))
  + ### setFollowRedirects

    public static void setFollowRedirects(boolean set)

    Sets whether HTTP redirects (requests with response code 3xx) should
    be automatically followed by this class. True by default. Applets
    cannot change this variable.

    If there is a security manager, this method first calls
    the security manager's `checkSetFactory` method
    to ensure the operation is allowed.
    This could result in a SecurityException.

    Parameters:
    :   `set` - a `boolean` indicating whether or not
        to follow HTTP redirects.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkSetFactory` method doesn't
        allow the operation.

    See Also:
    :   - [`SecurityManager.checkSetFactory()`](../lang/SecurityManager.md#checkSetFactory())
        - [`getFollowRedirects()`](#getFollowRedirects())
  + ### getFollowRedirects

    public static boolean getFollowRedirects()

    Returns a `boolean` indicating
    whether or not HTTP redirects (3xx) should
    be automatically followed.

    Returns:
    :   `true` if HTTP redirects should
        be automatically followed, `false` if not.

    See Also:
    :   - [`setFollowRedirects(boolean)`](#setFollowRedirects(boolean))
  + ### setInstanceFollowRedirects

    public void setInstanceFollowRedirects(boolean followRedirects)

    Sets whether HTTP redirects (requests with response code 3xx) should
    be automatically followed by this `HttpURLConnection`
    instance.

    The default value comes from followRedirects, which defaults to
    true.

    Parameters:
    :   `followRedirects` - a `boolean` indicating
        whether or not to follow HTTP redirects.

    Since:
    :   1.3

    See Also:
    :   - [`instanceFollowRedirects`](#instanceFollowRedirects)
        - [`getInstanceFollowRedirects()`](#getInstanceFollowRedirects())
  + ### getInstanceFollowRedirects

    public boolean getInstanceFollowRedirects()

    Returns the value of this `HttpURLConnection`'s
    `instanceFollowRedirects` field.

    Returns:
    :   the value of this `HttpURLConnection`'s
        `instanceFollowRedirects` field.

    Since:
    :   1.3

    See Also:
    :   - [`instanceFollowRedirects`](#instanceFollowRedirects)
        - [`setInstanceFollowRedirects(boolean)`](#setInstanceFollowRedirects(boolean))
  + ### setRequestMethod

    public void setRequestMethod([String](../lang/String.md "class in java.lang") method)
    throws [ProtocolException](ProtocolException.md "class in java.net")

    Set the method for the URL request, one of:
    - GET- POST- HEAD- OPTIONS- PUT- DELETE- TRACEare legal, subject to protocol restrictions. The default
    method is GET.

    Parameters:
    :   `method` - the HTTP method

    Throws:
    :   `ProtocolException` - if the method cannot be reset or if
        the requested method isn't valid for HTTP.
    :   `SecurityException` - if a security manager is set and the
        method is "TRACE", but the "allowHttpTrace"
        NetPermission is not granted.

    See Also:
    :   - [`getRequestMethod()`](#getRequestMethod())
  + ### getRequestMethod

    public [String](../lang/String.md "class in java.lang") getRequestMethod()

    Get the request method.

    Returns:
    :   the HTTP request method

    See Also:
    :   - [`setRequestMethod(java.lang.String)`](#setRequestMethod(java.lang.String))
  + ### getResponseCode

    public int getResponseCode()
    throws [IOException](../io/IOException.md "class in java.io")

    Gets the status code from an HTTP response message.
    For example, in the case of the following status lines:

    ```
     HTTP/1.0 200 OK
     HTTP/1.0 401 Unauthorized
    ```

    It will return 200 and 401 respectively.
    Returns -1 if no code can be discerned
    from the response (i.e., the response is not valid HTTP).

    Returns:
    :   the HTTP Status-Code, or -1

    Throws:
    :   `IOException` - if an error occurred connecting to the server.
  + ### getResponseMessage

    public [String](../lang/String.md "class in java.lang") getResponseMessage()
    throws [IOException](../io/IOException.md "class in java.io")

    Gets the HTTP response message, if any, returned along with the
    response code from a server. From responses like:

    ```
     HTTP/1.0 200 OK
     HTTP/1.0 404 Not Found
    ```

    Extracts the Strings "OK" and "Not Found" respectively.
    Returns null if none could be discerned from the responses
    (the result was not valid HTTP).

    Returns:
    :   the HTTP response message, or `null`

    Throws:
    :   `IOException` - if an error occurred connecting to the server.
  + ### getHeaderFieldDate

    public long getHeaderFieldDate([String](../lang/String.md "class in java.lang") name,
    long defaultValue)

    Description copied from class: `URLConnection`

    Returns the value of the named field parsed as date.
    The result is the number of milliseconds since January 1, 1970 GMT
    represented by the named field.

    This form of `getHeaderField` exists because some
    connection types (e.g., `http-ng`) have pre-parsed
    headers. Classes for that connection type can override this method
    and short-circuit the parsing.

    Overrides:
    :   `getHeaderFieldDate` in class `URLConnection`

    Parameters:
    :   `name` - the name of the header field.
    :   `defaultValue` - a default value.

    Returns:
    :   the value of the field, parsed as a date. The value of the
        `defaultValue` argument is returned if the field is
        missing or malformed.
  + ### disconnect

    public abstract void disconnect()

    Indicates that other requests to the server
    are unlikely in the near future. Calling disconnect()
    should not imply that this HttpURLConnection
    instance can be reused for other requests.
  + ### usingProxy

    public abstract boolean usingProxy()

    Indicates if the connection is going through a proxy.
    This method returns `true` if the connection is known
    to be going or has gone through proxies, and returns `false`
    if the connection will never go through a proxy or if
    the use of a proxy cannot be determined.

    Returns:
    :   a boolean indicating if the connection is using a proxy.
  + ### getPermission

    public [Permission](../security/Permission.md "class in java.security") getPermission()
    throws [IOException](../io/IOException.md "class in java.io")

    Returns a [`SocketPermission`](SocketPermission.md "class in java.net") object representing the
    permission necessary to connect to the destination host and port.

    Overrides:
    :   `getPermission` in class `URLConnection`

    Returns:
    :   a `SocketPermission` object representing the
        permission necessary to connect to the destination
        host and port.

    Throws:
    :   `IOException` - if an error occurs while computing
        the permission.
  + ### getErrorStream

    public [InputStream](../io/InputStream.md "class in java.io") getErrorStream()

    Returns the error stream if the connection failed
    but the server sent useful data nonetheless. The
    typical example is when an HTTP server responds
    with a 404, which will cause a FileNotFoundException
    to be thrown in connect, but the server sent an HTML
    help page with suggestions as to what to do.

    This method will not cause a connection to be initiated. If
    the connection was not connected, or if the server did not have
    an error while connecting or if the server had an error but
    no error data was sent, this method will return null. This is
    the default.

    Returns:
    :   an error stream if any, null if there have been no
        errors, the connection is not connected or the server sent no
        useful data.