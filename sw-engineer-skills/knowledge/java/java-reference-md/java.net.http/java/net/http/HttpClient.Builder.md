Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Interface HttpClient.Builder

Enclosing class:
:   `HttpClient`

---

public static interface HttpClient.Builder

A builder of [HTTP Clients](HttpClient.md "class in java.net.http").

Builders are created by invoking [`newBuilder`](HttpClient.md#newBuilder()). Each of the setter methods modifies the state of the builder
and returns the same instance. Builders are not thread-safe and should not be
used concurrently from multiple threads without external synchronization.

Since:
:   11

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ProxySelector`

  `NO_PROXY`

  A proxy selector that always return [`Proxy.NO_PROXY`](../../../../java.base/java/net/Proxy.md#NO_PROXY) implying
  a direct connection.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `HttpClient.Builder`

  `authenticator(Authenticator authenticator)`

  Sets an authenticator to use for HTTP authentication.

  `HttpClient`

  `build()`

  Returns a new [`HttpClient`](HttpClient.md "class in java.net.http") built from the current state of this
  builder.

  `HttpClient.Builder`

  `connectTimeout(Duration duration)`

  Sets the connect timeout duration for this client.

  `HttpClient.Builder`

  `cookieHandler(CookieHandler cookieHandler)`

  Sets a cookie handler.

  `HttpClient.Builder`

  `executor(Executor executor)`

  Sets the executor to be used for asynchronous and dependent tasks.

  `HttpClient.Builder`

  `followRedirects(HttpClient.Redirect policy)`

  Specifies whether requests will automatically follow redirects issued
  by the server.

  `default HttpClient.Builder`

  `localAddress(InetAddress localAddr)`

  Binds the socket to this local address when creating
  connections for sending requests.

  `HttpClient.Builder`

  `priority(int priority)`

  Sets the default priority for any HTTP/2 requests sent from this
  client.

  `HttpClient.Builder`

  `proxy(ProxySelector proxySelector)`

  Sets a [`ProxySelector`](../../../../java.base/java/net/ProxySelector.md "class in java.net").

  `HttpClient.Builder`

  `sslContext(SSLContext sslContext)`

  Sets an `SSLContext`.

  `HttpClient.Builder`

  `sslParameters(SSLParameters sslParameters)`

  Sets an `SSLParameters`.

  `HttpClient.Builder`

  `version(HttpClient.Version version)`

  Requests a specific HTTP protocol version where possible.

* ## Field Details

  + ### NO\_PROXY

    static final [ProxySelector](../../../../java.base/java/net/ProxySelector.md "class in java.net") NO\_PROXY

    A proxy selector that always return [`Proxy.NO_PROXY`](../../../../java.base/java/net/Proxy.md#NO_PROXY) implying
    a direct connection.

    This is a convenience object that can be passed to
    [`proxy(ProxySelector)`](#proxy(java.net.ProxySelector)) in order to build an instance of
    [`HttpClient`](HttpClient.md "class in java.net.http") that uses no proxy.
* ## Method Details

  + ### cookieHandler

    [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") cookieHandler([CookieHandler](../../../../java.base/java/net/CookieHandler.md "class in java.net") cookieHandler)

    Sets a cookie handler.

    Parameters:
    :   `cookieHandler` - the cookie handler

    Returns:
    :   this builder
  + ### connectTimeout

    [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") connectTimeout([Duration](../../../../java.base/java/time/Duration.md "class in java.time") duration)

    Sets the connect timeout duration for this client.

    In the case where a new connection needs to be established, if
    the connection cannot be established within the given `duration`, then [`HttpClient::send`](HttpClient.md#send(java.net.http.HttpRequest,java.net.http.HttpResponse.BodyHandler)) throws an [`HttpConnectTimeoutException`](HttpConnectTimeoutException.md "class in java.net.http"), or
    [`HttpClient::sendAsync`](HttpClient.md#sendAsync(java.net.http.HttpRequest,java.net.http.HttpResponse.BodyHandler)) completes exceptionally with an
    `HttpConnectTimeoutException`. If a new connection does not
    need to be established, for example if a connection can be reused
    from a previous request, then this timeout duration has no effect.

    Parameters:
    :   `duration` - the duration to allow the underlying connection to be
        established

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if the duration is non-positive
  + ### sslContext

    [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") sslContext([SSLContext](../../../../java.base/javax/net/ssl/SSLContext.md "class in javax.net.ssl") sslContext)

    Sets an `SSLContext`.

    If this method is not invoked prior to [building](#build()), then newly built clients will use the [default context](../../../../java.base/javax/net/ssl/SSLContext.md#getDefault()), which is normally adequate
    for client applications that do not need to specify protocols, or
    require client authentication.

    Parameters:
    :   `sslContext` - the SSLContext

    Returns:
    :   this builder
  + ### sslParameters

    [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") sslParameters([SSLParameters](../../../../java.base/javax/net/ssl/SSLParameters.md "class in javax.net.ssl") sslParameters)

    Sets an `SSLParameters`.

    If this method is not invoked prior to [building](#build()), then newly built clients will use a default,
    implementation specific, set of parameters.

    Some parameters which are used internally by the HTTP Client
    implementation (such as the application protocol list) should not be
    set by callers, as they may be ignored. The contents of the given
    object are copied.

    Parameters:
    :   `sslParameters` - the SSLParameters

    Returns:
    :   this builder
  + ### executor

    [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") executor([Executor](../../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent") executor)

    Sets the executor to be used for asynchronous and dependent tasks.

    If this method is not invoked prior to [building](#build()), a default executor is created for each newly built `HttpClient`.

    Parameters:
    :   `executor` - the Executor

    Returns:
    :   this builder
  + ### followRedirects

    [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") followRedirects([HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http") policy)

    Specifies whether requests will automatically follow redirects issued
    by the server.

    If this method is not invoked prior to [building](#build()), then newly built clients will use a default redirection
    policy of [`NEVER`](HttpClient.Redirect.md#NEVER).

    Parameters:
    :   `policy` - the redirection policy

    Returns:
    :   this builder
  + ### version

    [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") version([HttpClient.Version](HttpClient.Version.md "enum class in java.net.http") version)

    Requests a specific HTTP protocol version where possible.

    If this method is not invoked prior to [building](#build()), then newly built clients will prefer [HTTP/2](HttpClient.Version.md#HTTP_2).

    If set to [HTTP/2](HttpClient.Version.md#HTTP_2), then each request
    will attempt to upgrade to HTTP/2. If the upgrade succeeds, then the
    response to this request will use HTTP/2 and all subsequent requests
    and responses to the same
    [origin server](https://tools.ietf.org/html/rfc6454#section-4)
    will use HTTP/2. If the upgrade fails, then the response will be
    handled using HTTP/1.1

    Parameters:
    :   `version` - the requested HTTP protocol version

    Returns:
    :   this builder
  + ### priority

    [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") priority(int priority)

    Sets the default priority for any HTTP/2 requests sent from this
    client. The value provided must be between `1` and `256`
    (inclusive).

    Parameters:
    :   `priority` - the priority weighting

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if the given priority is out of range
  + ### proxy

    [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") proxy([ProxySelector](../../../../java.base/java/net/ProxySelector.md "class in java.net") proxySelector)

    Sets a [`ProxySelector`](../../../../java.base/java/net/ProxySelector.md "class in java.net").

    Parameters:
    :   `proxySelector` - the ProxySelector

    Returns:
    :   this builder
  + ### authenticator

    [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") authenticator([Authenticator](../../../../java.base/java/net/Authenticator.md "class in java.net") authenticator)

    Sets an authenticator to use for HTTP authentication.

    Parameters:
    :   `authenticator` - the Authenticator

    Returns:
    :   this builder
  + ### localAddress

    default [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") localAddress([InetAddress](../../../../java.base/java/net/InetAddress.md "class in java.net") localAddr)

    Binds the socket to this local address when creating
    connections for sending requests.

    If no local address is set or `null` is passed
    to this method then sockets created by the
    HTTP client will be bound to an automatically
    assigned socket address.

    Common usages of the `HttpClient` do not require
    this method to be called. Setting a local address, through this
    method, is only for advanced usages where users of the `HttpClient`
    require specific control on which network interface gets used
    for the HTTP communication. Callers of this method are expected to
    be aware of the networking configurations of the system where the
    `HttpClient` will be used and care should be taken to ensure the
    correct `localAddr` is passed. Failure to do so can result in
    requests sent through the `HttpClient` to fail.

    Parameters:
    :   `localAddr` - The local address of the socket. Can be null.

    Returns:
    :   this builder

    Throws:
    :   `UnsupportedOperationException` - if this builder doesn't support
        configuring a local address or if the passed `localAddr`
        is not supported by this `HttpClient` implementation.

    Since:
    :   19
  + ### build

    [HttpClient](HttpClient.md "class in java.net.http") build()

    Returns a new [`HttpClient`](HttpClient.md "class in java.net.http") built from the current state of this
    builder.

    Returns:
    :   a new `HttpClient`

    Throws:
    :   `UncheckedIOException` - may be thrown if underlying IO resources required
        by the implementation cannot be allocated. For instance,
        if the implementation requires a [`Selector`](../../../../java.base/java/nio/channels/Selector.md "class in java.nio.channels"), and opening
        one fails due to [lack of necessary resources](../../../../java.base/java/nio/channels/Selector.md#open()).
    :   `SecurityException` - If a security manager has been installed and the
        security manager's [`checkListen`](../../../../java.base/java/lang/SecurityManager.md#checkListen(int))
        method disallows binding to the given address.