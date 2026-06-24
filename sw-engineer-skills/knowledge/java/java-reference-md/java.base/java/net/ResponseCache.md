Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class ResponseCache

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.ResponseCache

---

public abstract class ResponseCache
extends [Object](../lang/Object.md "class in java.lang")

Represents implementations of URLConnection caches. An instance of
such a class can be registered with the system by doing
ResponseCache.setDefault(ResponseCache), and the system will call
this object in order to:

* store resource data which has been retrieved from an
  external source into the cache
* try to fetch a requested resource that may have been
  stored in the cache

The ResponseCache implementation decides which resources
should be cached, and for how long they should be cached. If a
request resource cannot be retrieved from the cache, then the
protocol handlers will fetch the resource from its original
location.
The settings for URLConnection#useCaches controls whether the
protocol is allowed to use a cached response.
For more information on HTTP caching, see [*RFC 2616: Hypertext
Transfer Protocol -- HTTP/1.1*](http://www.ietf.org/rfc/rfc2616.txt)

Since:
:   1.5

External Specifications
:   * [RFC 2616: Hypertext Transfer Protocol -- HTTP/1.1](https://www.rfc-editor.org/info/rfc2616)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ResponseCache()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract CacheResponse`

  `get(URI uri,
  String rqstMethod,
  Map<String,List<String>> rqstHeaders)`

  Retrieve the cached response based on the requesting uri,
  request method and request headers.

  `static ResponseCache`

  `getDefault()`

  Gets the system-wide response cache.

  `abstract CacheRequest`

  `put(URI uri,
  URLConnection conn)`

  The protocol handler calls this method after a resource has
  been retrieved, and the ResponseCache must decide whether or
  not to store the resource in its cache.

  `static void`

  `setDefault(ResponseCache responseCache)`

  Sets (or unsets) the system-wide cache.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ResponseCache

    public ResponseCache()

    Constructor for subclasses to call.
* ## Method Details

  + ### getDefault

    public static [ResponseCache](ResponseCache.md "class in java.net") getDefault()

    Gets the system-wide response cache.

    Returns:
    :   the system-wide `ResponseCache`

    Throws:
    :   `SecurityException` - If a security manager has been installed and it denies
        [`NetPermission`](NetPermission.md "class in java.net")`("getResponseCache")`

    Since:
    :   1.5

    See Also:
    :   - [`setDefault(ResponseCache)`](#setDefault(java.net.ResponseCache))
  + ### setDefault

    public static void setDefault([ResponseCache](ResponseCache.md "class in java.net") responseCache)

    Sets (or unsets) the system-wide cache.
    Note: non-standard protocol handlers may ignore this setting.

    Parameters:
    :   `responseCache` - The response cache, or
        `null` to unset the cache.

    Throws:
    :   `SecurityException` - If a security manager has been installed and it denies
        [`NetPermission`](NetPermission.md "class in java.net")`("setResponseCache")`

    Since:
    :   1.5

    See Also:
    :   - [`getDefault()`](#getDefault())
  + ### get

    public abstract [CacheResponse](CacheResponse.md "class in java.net") get([URI](URI.md "class in java.net") uri,
    [String](../lang/String.md "class in java.lang") rqstMethod,
    [Map](../util/Map.md "interface in java.util")<[String](../lang/String.md "class in java.lang"),[List](../util/List.md "interface in java.util")<[String](../lang/String.md "class in java.lang")>> rqstHeaders)
    throws [IOException](../io/IOException.md "class in java.io")

    Retrieve the cached response based on the requesting uri,
    request method and request headers. Typically this method is
    called by the protocol handler before it sends out the request
    to get the network resource. If a cached response is returned,
    that resource is used instead.

    Parameters:
    :   `uri` - a `URI` used to reference the requested
        network resource
    :   `rqstMethod` - a `String` representing the request
        method
    :   `rqstHeaders` - a Map from request header
        field names to lists of field values representing
        the current request headers

    Returns:
    :   a `CacheResponse` instance if available
        from cache, or null otherwise

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `IllegalArgumentException` - if any one of the arguments is null

    See Also:
    :   - [`URLConnection.setUseCaches(boolean)`](URLConnection.md#setUseCaches(boolean))
        - [`URLConnection.getUseCaches()`](URLConnection.md#getUseCaches())
        - [`URLConnection.setDefaultUseCaches(boolean)`](URLConnection.md#setDefaultUseCaches(boolean))
        - [`URLConnection.getDefaultUseCaches()`](URLConnection.md#getDefaultUseCaches())
  + ### put

    public abstract [CacheRequest](CacheRequest.md "class in java.net") put([URI](URI.md "class in java.net") uri,
    [URLConnection](URLConnection.md "class in java.net") conn)
    throws [IOException](../io/IOException.md "class in java.io")

    The protocol handler calls this method after a resource has
    been retrieved, and the ResponseCache must decide whether or
    not to store the resource in its cache. If the resource is to
    be cached, then put() must return a CacheRequest object which
    contains an OutputStream that the protocol handler will
    use to write the resource into the cache. If the resource is
    not to be cached, then put must return null.

    Parameters:
    :   `uri` - a `URI` used to reference the requested
        network resource
    :   `conn` - a URLConnection instance that is used to fetch
        the response to be cached

    Returns:
    :   a `CacheRequest` for recording the
        response to be cached. Null return indicates that
        the caller does not intend to cache the response.

    Throws:
    :   `IOException` - if an I/O error occurs
    :   `IllegalArgumentException` - if any one of the arguments is
        null