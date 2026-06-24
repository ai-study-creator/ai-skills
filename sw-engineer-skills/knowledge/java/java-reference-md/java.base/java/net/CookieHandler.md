Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class CookieHandler

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.CookieHandler

Direct Known Subclasses:
:   `CookieManager`

---

public abstract class CookieHandler
extends [Object](../lang/Object.md "class in java.lang")

A CookieHandler object provides a callback mechanism to hook up a
HTTP state management policy implementation into the HTTP protocol
handler. The HTTP state management mechanism specifies a way to
create a stateful session with HTTP requests and responses.

A system-wide CookieHandler to be used by the [HTTP URL stream protocol handler](HttpURLConnection.md "class in java.net") can be registered by
doing a CookieHandler.setDefault(CookieHandler). The currently registered
CookieHandler can be retrieved by calling
CookieHandler.getDefault().
For more information on HTTP state management, see [*RFC 2965: HTTP
State Management Mechanism*](http://www.ietf.org/rfc/rfc2965.txt)

Since:
:   1.5

External Specifications
:   * [RFC 2965: HTTP State Management Mechanism](https://www.rfc-editor.org/info/rfc2965)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CookieHandler()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Map<String,List<String>>`

  `get(URI uri,
  Map<String,List<String>> requestHeaders)`

  Gets all the applicable cookies from a cookie cache for the
  specified uri in the request header.

  `static CookieHandler`

  `getDefault()`

  Gets the system-wide cookie handler.

  `abstract void`

  `put(URI uri,
  Map<String,List<String>> responseHeaders)`

  Sets all the applicable cookies, examples are response header
  fields that are named Set-Cookie2, present in the response
  headers into a cookie cache.

  `static void`

  `setDefault(CookieHandler cHandler)`

  Sets (or unsets) the system-wide cookie handler.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CookieHandler

    public CookieHandler()

    Constructor for subclasses to call.
* ## Method Details

  + ### getDefault

    public static [CookieHandler](CookieHandler.md "class in java.net") getDefault()

    Gets the system-wide cookie handler.

    Returns:
    :   the system-wide cookie handler; A null return means
        there is no system-wide cookie handler currently set.

    Throws:
    :   `SecurityException` - If a security manager has been installed and it denies
        [`NetPermission`](NetPermission.md "class in java.net")`("getCookieHandler")`

    See Also:
    :   - [`setDefault(CookieHandler)`](#setDefault(java.net.CookieHandler))
  + ### setDefault

    public static void setDefault([CookieHandler](CookieHandler.md "class in java.net") cHandler)

    Sets (or unsets) the system-wide cookie handler.
    Note: non-standard http protocol handlers may ignore this setting.

    Parameters:
    :   `cHandler` - The HTTP cookie handler, or
        `null` to unset.

    Throws:
    :   `SecurityException` - If a security manager has been installed and it denies
        [`NetPermission`](NetPermission.md "class in java.net")`("setCookieHandler")`

    See Also:
    :   - [`getDefault()`](#getDefault())
  + ### get

    public abstract [Map](../util/Map.md "interface in java.util")<[String](../lang/String.md "class in java.lang"),[List](../util/List.md "interface in java.util")<[String](../lang/String.md "class in java.lang")>> get([URI](URI.md "class in java.net") uri,
    [Map](../util/Map.md "interface in java.util")<[String](../lang/String.md "class in java.lang"),[List](../util/List.md "interface in java.util")<[String](../lang/String.md "class in java.lang")>> requestHeaders)
    throws [IOException](../io/IOException.md "class in java.io")

    Gets all the applicable cookies from a cookie cache for the
    specified uri in the request header.

    The `URI` passed as an argument specifies the intended use for
    the cookies. In particular the scheme should reflect whether the cookies
    will be sent over http, https or used in another context like javascript.
    The host part should reflect either the destination of the cookies or
    their origin in the case of javascript.

    It is up to the implementation to take into account the `URI` and
    the cookies attributes and security settings to determine which ones
    should be returned.

    HTTP protocol implementers should make sure that this method is
    called after all request headers related to choosing cookies
    are added, and before the request is sent.

    Parameters:
    :   `uri` - a `URI` representing the intended use for the
        cookies
    :   `requestHeaders` - a Map from request header
        field names to lists of field values representing
        the current request headers

    Returns:
    :   an immutable map from state management headers, with
        field names "Cookie" or "Cookie2" to a list of
        cookies containing state information

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `IllegalArgumentException` - if either argument is null

    See Also:
    :   - [`put(URI, Map)`](#put(java.net.URI,java.util.Map))
  + ### put

    public abstract void put([URI](URI.md "class in java.net") uri,
    [Map](../util/Map.md "interface in java.util")<[String](../lang/String.md "class in java.lang"),[List](../util/List.md "interface in java.util")<[String](../lang/String.md "class in java.lang")>> responseHeaders)
    throws [IOException](../io/IOException.md "class in java.io")

    Sets all the applicable cookies, examples are response header
    fields that are named Set-Cookie2, present in the response
    headers into a cookie cache.

    Parameters:
    :   `uri` - a `URI` where the cookies come from
    :   `responseHeaders` - an immutable map from field names to
        lists of field values representing the response
        header fields returned

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `IllegalArgumentException` - if either argument is null

    See Also:
    :   - [`get(URI, Map)`](#get(java.net.URI,java.util.Map))