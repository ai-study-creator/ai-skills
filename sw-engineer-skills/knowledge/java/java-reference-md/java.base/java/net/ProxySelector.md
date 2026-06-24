Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class ProxySelector

[java.lang.Object](../lang/Object.md "class in java.lang")

java.net.ProxySelector

---

public abstract class ProxySelector
extends [Object](../lang/Object.md "class in java.lang")

Selects the proxy server to use, if any, when connecting to the
network resource referenced by a URL. A proxy selector is a
concrete sub-class of this class and is registered by invoking the
[`setDefault`](#setDefault(java.net.ProxySelector)) method. The
currently registered proxy selector can be retrieved by calling
[`getDefault`](#getDefault()) method.

When a proxy selector is registered, for instance, a subclass
of URLConnection class should call the [`select`](#select(java.net.URI))
method for each URL request so that the proxy selector can decide
if a direct, or proxied connection should be used. The [`select`](#select(java.net.URI)) method returns an iterator over a collection with
the preferred connection approach.

If a connection cannot be established to a proxy (PROXY or
SOCKS) servers then the caller should call the proxy selector's
[`connectFailed`](#connectFailed(java.net.URI,java.net.SocketAddress,java.io.IOException)) method to notify the proxy
selector that the proxy server is unavailable.

The default proxy selector does enforce a
[set of System Properties](doc-files/net-properties.md#Proxies)
related to proxy settings.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ProxySelector()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `connectFailed(URI uri,
  SocketAddress sa,
  IOException ioe)`

  Called to indicate that a connection could not be established
  to a proxy/socks server.

  `static ProxySelector`

  `getDefault()`

  Gets the system-wide proxy selector.

  `static ProxySelector`

  `of(InetSocketAddress proxyAddress)`

  Returns a ProxySelector which uses the given proxy address for all HTTP
  and HTTPS requests.

  `abstract List<Proxy>`

  `select(URI uri)`

  Selects all the applicable proxies based on the protocol to
  access the resource with and a destination address to access
  the resource at.

  `static void`

  `setDefault(ProxySelector ps)`

  Sets (or unsets) the system-wide proxy selector.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ProxySelector

    public ProxySelector()

    Constructor for subclasses to call.
* ## Method Details

  + ### getDefault

    public static [ProxySelector](ProxySelector.md "class in java.net") getDefault()

    Gets the system-wide proxy selector.

    Returns:
    :   the system-wide `ProxySelector`

    Throws:
    :   `SecurityException` - If a security manager has been installed and it denies
        [`NetPermission`](NetPermission.md "class in java.net")`("getProxySelector")`

    Since:
    :   1.5

    See Also:
    :   - [`setDefault(ProxySelector)`](#setDefault(java.net.ProxySelector))
  + ### setDefault

    public static void setDefault([ProxySelector](ProxySelector.md "class in java.net") ps)

    Sets (or unsets) the system-wide proxy selector.
    Note: non-standard protocol handlers may ignore this setting.

    Parameters:
    :   `ps` - The HTTP proxy selector, or
        `null` to unset the proxy selector.

    Throws:
    :   `SecurityException` - If a security manager has been installed and it denies
        [`NetPermission`](NetPermission.md "class in java.net")`("setProxySelector")`

    Since:
    :   1.5

    See Also:
    :   - [`getDefault()`](#getDefault())
  + ### select

    public abstract [List](../util/List.md "interface in java.util")<[Proxy](Proxy.md "class in java.net")> select([URI](URI.md "class in java.net") uri)

    Selects all the applicable proxies based on the protocol to
    access the resource with and a destination address to access
    the resource at.
    The format of the URI is defined as follows:
    - http URI for http connections
    - https URI for https connections- `socket://host:port`  
        for tcp client sockets connections

    Parameters:
    :   `uri` - The URI that a connection is required to

    Returns:
    :   a List of Proxies. Each element in
        the List is of type
        [`Proxy`](Proxy.md "class in java.net");
        when no proxy is available, the list will
        contain one element of type
        [`Proxy`](Proxy.md "class in java.net")
        that represents a direct connection.

    Throws:
    :   `IllegalArgumentException` - if the argument is null or if
        the protocol or host cannot be determined from the provided
        `uri`
  + ### connectFailed

    public abstract void connectFailed([URI](URI.md "class in java.net") uri,
    [SocketAddress](SocketAddress.md "class in java.net") sa,
    [IOException](../io/IOException.md "class in java.io") ioe)

    Called to indicate that a connection could not be established
    to a proxy/socks server. An implementation of this method can
    temporarily remove the proxies or reorder the sequence of
    proxies returned by [`select(URI)`](#select(java.net.URI)), using the address
    and the IOException caught when trying to connect.

    Parameters:
    :   `uri` - The URI that the proxy at sa failed to serve.
    :   `sa` - The socket address of the proxy/SOCKS server
    :   `ioe` - The I/O exception thrown when the connect failed.

    Throws:
    :   `IllegalArgumentException` - if either argument is null
  + ### of

    public static [ProxySelector](ProxySelector.md "class in java.net") of([InetSocketAddress](InetSocketAddress.md "class in java.net") proxyAddress)

    Returns a ProxySelector which uses the given proxy address for all HTTP
    and HTTPS requests. If proxy is `null` then proxying is disabled.

    Parameters:
    :   `proxyAddress` - The address of the proxy

    Returns:
    :   a ProxySelector

    Since:
    :   9