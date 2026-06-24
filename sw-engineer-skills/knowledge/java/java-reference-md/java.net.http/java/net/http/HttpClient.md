Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Class HttpClient

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.net.http.HttpClient

All Implemented Interfaces:
:   `AutoCloseable`

---

public abstract class HttpClient
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")

An HTTP Client.

An `HttpClient` can be used to send [requests](HttpRequest.md "class in java.net.http") and retrieve their [responses](HttpResponse.md "interface in java.net.http"). An `HttpClient` is created through a [`builder`](HttpClient.Builder.md "interface in java.net.http").
The [`newBuilder`](#newBuilder()) method returns a builder that creates
instances of the default `HttpClient` implementation.
The builder can be used to configure per-client state, like: the preferred
protocol version ( HTTP/1.1 or HTTP/2 ), whether to follow redirects, a
proxy, an authenticator, etc. Once built, an `HttpClient` is immutable,
and can be used to send multiple requests.

An `HttpClient` provides configuration information, and resource
sharing, for all requests sent through it. An `HttpClient` instance
typically manages its own pools of connections, which it may then reuse
as and when necessary. Connection pools are typically not shared between
`HttpClient` instances. Creating a new client for each operation,
though possible, will usually prevent reusing such connections.

A [`BodyHandler`](HttpResponse.BodyHandler.md "interface in java.net.http") must be supplied for each [`HttpRequest`](HttpRequest.md "class in java.net.http") sent. The `BodyHandler` determines how to handle the
response body, if any. Once an [`HttpResponse`](HttpResponse.md "interface in java.net.http") is received, the
headers, response code, and body (typically) are available. Whether the
response body bytes have been read or not depends on the type, `T`, of
the response body.

Requests can be sent either synchronously or asynchronously:

* [`send(HttpRequest, BodyHandler)`](#send(java.net.http.HttpRequest,java.net.http.HttpResponse.BodyHandler)) blocks
  until the request has been sent and the response has been received.
* [`sendAsync(HttpRequest, BodyHandler)`](#sendAsync(java.net.http.HttpRequest,java.net.http.HttpResponse.BodyHandler)) sends the
  request and receives the response asynchronously. The `sendAsync`
  method returns immediately with a [`CompletableFuture`](../../../../java.base/java/util/concurrent/CompletableFuture.md "class in java.util.concurrent")<[`HttpResponse`](HttpResponse.md "interface in java.net.http")>. The `CompletableFuture` completes when the response becomes available. The
  returned `CompletableFuture` can be combined in different ways to
  declare dependencies among several asynchronous tasks.

**Synchronous Example**

Copy![Copy snippet](../../../../copy.svg)

```
HttpClient client = HttpClient.newBuilder()
     .version(Version.HTTP_1_1)
     .followRedirects(Redirect.NORMAL)
     .connectTimeout(Duration.ofSeconds(20))
     .proxy(ProxySelector.of(new InetSocketAddress("proxy.example.com", 80)))
     .authenticator(Authenticator.getDefault())
     .build();
HttpResponse<String> response = client.send(request, BodyHandlers.ofString());
System.out.println(response.statusCode());
System.out.println(response.body());
```

**Asynchronous Example**

Copy![Copy snippet](../../../../copy.svg)

```
 HttpRequest request = HttpRequest.newBuilder()
     .uri(URI.create("https://foo.com/"))
     .timeout(Duration.ofMinutes(2))
     .header("Content-Type", "application/json")
     .POST(BodyPublishers.ofFile(Paths.get("file.json")))
     .build();
client.sendAsync(request, BodyHandlers.ofString())
     .thenApply(HttpResponse::body)
     .thenAccept(System.out::println);
```

**Security checks**

If a security manager is present then security checks are performed by
the HTTP Client's sending methods. An appropriate [`URLPermission`](../../../../java.base/java/net/URLPermission.md "class in java.net") is
required to access the destination server, and proxy server if one has
been configured. The form of the `URLPermission` required to access a
proxy has a `method` parameter of `"CONNECT"` (for all kinds of
proxying) and a `URL` string of the form `"socket://host:port"`
where host and port specify the proxy's address.

Since:
:   11

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static interface`

  `HttpClient.Builder`

  A builder of [HTTP Clients](HttpClient.md "class in java.net.http").

  `static enum`

  `HttpClient.Redirect`

  Defines the automatic redirection policy.

  `static enum`

  `HttpClient.Version`

  The HTTP protocol version.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `HttpClient()`

  Creates an HttpClient.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Optional<Authenticator>`

  `authenticator()`

  Returns an `Optional` containing the [`Authenticator`](../../../../java.base/java/net/Authenticator.md "class in java.net") set on
  this client.

  `boolean`

  `awaitTermination(Duration duration)`

  Blocks until all operations have completed execution after a shutdown
  request, or the `duration` elapses, or the current thread is
  [interrupted](../../../../java.base/java/lang/Thread.md#interrupt()), whichever happens first.

  `void`

  `close()`

  Initiates an orderly shutdown in which requests previously
  submitted to `send` or `sendAsync`
  are run to completion, but no new request will be accepted.

  `abstract Optional<Duration>`

  `connectTimeout()`

  Returns an `Optional` containing the *connect timeout duration*
  for this client.

  `abstract Optional<CookieHandler>`

  `cookieHandler()`

  Returns an `Optional` containing this client's [`CookieHandler`](../../../../java.base/java/net/CookieHandler.md "class in java.net").

  `abstract Optional<Executor>`

  `executor()`

  Returns an `Optional` containing this client's [`Executor`](../../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent").

  `abstract HttpClient.Redirect`

  `followRedirects()`

  Returns the follow redirects policy for this client.

  `boolean`

  `isTerminated()`

  Returns `true` if all operations have completed following
  a shutdown.

  `static HttpClient.Builder`

  `newBuilder()`

  Creates a new `HttpClient` builder.

  `static HttpClient`

  `newHttpClient()`

  Returns a new `HttpClient` with default settings.

  `WebSocket.Builder`

  `newWebSocketBuilder()`

  Creates a new `WebSocket` builder (optional operation).

  `abstract Optional<ProxySelector>`

  `proxy()`

  Returns an `Optional` containing the `ProxySelector`
  supplied to this client.

  `abstract <T> HttpResponse<T>`

  `send(HttpRequest request,
  HttpResponse.BodyHandler<T> responseBodyHandler)`

  Sends the given request using this client, blocking if necessary to get
  the response.

  `abstract <T> CompletableFuture<HttpResponse<T>>`

  `sendAsync(HttpRequest request,
  HttpResponse.BodyHandler<T> responseBodyHandler)`

  Sends the given request asynchronously using this client with the given
  response body handler.

  `abstract <T> CompletableFuture<HttpResponse<T>>`

  `sendAsync(HttpRequest request,
  HttpResponse.BodyHandler<T> responseBodyHandler,
  HttpResponse.PushPromiseHandler<T> pushPromiseHandler)`

  Sends the given request asynchronously using this client with the given
  response body handler and push promise handler.

  `void`

  `shutdown()`

  Initiates an orderly shutdown in which requests previously
  submitted with `send` or `sendAsync`
  are run to completion, but no new request will be accepted.

  `void`

  `shutdownNow()`

  This method attempts to initiate an immediate shutdown.

  `abstract SSLContext`

  `sslContext()`

  Returns this client's `SSLContext`.

  `abstract SSLParameters`

  `sslParameters()`

  Returns a copy of this client's [`SSLParameters`](../../../../java.base/javax/net/ssl/SSLParameters.md "class in javax.net.ssl").

  `abstract HttpClient.Version`

  `version()`

  Returns the preferred HTTP protocol version for this client.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### HttpClient

    protected HttpClient()

    Creates an HttpClient.
* ## Method Details

  + ### newHttpClient

    public static [HttpClient](HttpClient.md "class in java.net.http") newHttpClient()

    Returns a new `HttpClient` with default settings.

    Equivalent to `newBuilder().build()`.

    The default settings include: the "GET" request method, a preference
    of [HTTP/2](HttpClient.Version.md#HTTP_2), a redirection policy of
    [NEVER](HttpClient.Redirect.md#NEVER), the [default proxy selector](../../../../java.base/java/net/ProxySelector.md#getDefault()), and the [default SSL context](../../../../java.base/javax/net/ssl/SSLContext.md#getDefault()).

    Returns:
    :   a new HttpClient

    Throws:
    :   `UncheckedIOException` - if necessary underlying IO resources required to
        [build a new HttpClient](HttpClient.Builder.md#build()) cannot be allocated.
  + ### newBuilder

    public static [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http") newBuilder()

    Creates a new `HttpClient` builder.

    Builders returned by this method create instances
    of the default `HttpClient` implementation.

    Returns:
    :   an `HttpClient.Builder`
  + ### cookieHandler

    public abstract [Optional](../../../../java.base/java/util/Optional.md "class in java.util")<[CookieHandler](../../../../java.base/java/net/CookieHandler.md "class in java.net")> cookieHandler()

    Returns an `Optional` containing this client's [`CookieHandler`](../../../../java.base/java/net/CookieHandler.md "class in java.net"). If no `CookieHandler` was set in this client's
    builder, then the `Optional` is empty.

    Returns:
    :   an `Optional` containing this client's `CookieHandler`
  + ### connectTimeout

    public abstract [Optional](../../../../java.base/java/util/Optional.md "class in java.util")<[Duration](../../../../java.base/java/time/Duration.md "class in java.time")> connectTimeout()

    Returns an `Optional` containing the *connect timeout duration*
    for this client. If the [connect timeout duration](HttpClient.Builder.md#connectTimeout(java.time.Duration)) was not set in the client's builder, then the
    `Optional` is empty.

    Returns:
    :   an `Optional` containing this client's connect timeout
        duration
  + ### followRedirects

    public abstract [HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http") followRedirects()

    Returns the follow redirects policy for this client. The default value
    for client's built by builders that do not specify a redirect policy is
    [`NEVER`](HttpClient.Redirect.md#NEVER).

    Returns:
    :   this client's follow redirects setting
  + ### proxy

    public abstract [Optional](../../../../java.base/java/util/Optional.md "class in java.util")<[ProxySelector](../../../../java.base/java/net/ProxySelector.md "class in java.net")> proxy()

    Returns an `Optional` containing the `ProxySelector`
    supplied to this client. If no proxy selector was set in this client's
    builder, then the `Optional` is empty.

    Even though this method may return an empty optional, the `HttpClient` may still have a non-exposed [default proxy selector](HttpClient.Builder.md#proxy(java.net.ProxySelector)) that is
    used for sending HTTP requests.

    Returns:
    :   an `Optional` containing the proxy selector supplied
        to this client.
  + ### sslContext

    public abstract [SSLContext](../../../../java.base/javax/net/ssl/SSLContext.md "class in javax.net.ssl") sslContext()

    Returns this client's `SSLContext`.

    If no `SSLContext` was set in this client's builder, then the
    [default context](../../../../java.base/javax/net/ssl/SSLContext.md#getDefault()) is returned.

    Returns:
    :   this client's SSLContext
  + ### sslParameters

    public abstract [SSLParameters](../../../../java.base/javax/net/ssl/SSLParameters.md "class in javax.net.ssl") sslParameters()

    Returns a copy of this client's [`SSLParameters`](../../../../java.base/javax/net/ssl/SSLParameters.md "class in javax.net.ssl").

    If no `SSLParameters` were set in the client's builder, then an
    implementation specific default set of parameters, that the client will
    use, is returned.

    Returns:
    :   this client's `SSLParameters`
  + ### authenticator

    public abstract [Optional](../../../../java.base/java/util/Optional.md "class in java.util")<[Authenticator](../../../../java.base/java/net/Authenticator.md "class in java.net")> authenticator()

    Returns an `Optional` containing the [`Authenticator`](../../../../java.base/java/net/Authenticator.md "class in java.net") set on
    this client. If no `Authenticator` was set in the client's builder,
    then the `Optional` is empty.

    Returns:
    :   an `Optional` containing this client's `Authenticator`
  + ### version

    public abstract [HttpClient.Version](HttpClient.Version.md "enum class in java.net.http") version()

    Returns the preferred HTTP protocol version for this client. The default
    value is [`HttpClient.Version.HTTP_2`](HttpClient.Version.md#HTTP_2)

    Returns:
    :   the HTTP protocol version requested
  + ### executor

    public abstract [Optional](../../../../java.base/java/util/Optional.md "class in java.util")<[Executor](../../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent")> executor()

    Returns an `Optional` containing this client's [`Executor`](../../../../java.base/java/util/concurrent/Executor.md "interface in java.util.concurrent"). If no `Executor` was set in the client's builder,
    then the `Optional` is empty.

    Even though this method may return an empty optional, the `HttpClient` may still have an non-exposed [default executor](HttpClient.Builder.md#executor(java.util.concurrent.Executor)) that is used for
    executing asynchronous and dependent tasks.

    Returns:
    :   an `Optional` containing this client's `Executor`
  + ### send

    public abstract <T> [HttpResponse](HttpResponse.md "interface in java.net.http")<T> send([HttpRequest](HttpRequest.md "class in java.net.http") request,
    [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<T> responseBodyHandler)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io"),
    [InterruptedException](../../../../java.base/java/lang/InterruptedException.md "class in java.lang")

    Sends the given request using this client, blocking if necessary to get
    the response. The returned [`HttpResponse`](HttpResponse.md "interface in java.net.http")`<T>` contains the
    response status, headers, and body ( as handled by given response body
    handler ).

    If the operation is interrupted, the default `HttpClient`
    implementation attempts to cancel the HTTP exchange and
    [`InterruptedException`](../../../../java.base/java/lang/InterruptedException.md "class in java.lang") is thrown.
    No guarantee is made as to exactly *when* the cancellation request
    may be taken into account. In particular, the request might still get sent
    to the server, as its processing might already have started asynchronously
    in another thread, and the underlying resources may only be released
    asynchronously.
    - With HTTP/1.1, an attempt to cancel may cause the underlying
      connection to be closed abruptly.- With HTTP/2, an attempt to cancel may cause the stream to be reset,
        or in certain circumstances, may also cause the connection to be
        closed abruptly, if, for instance, the thread is currently trying
        to write to the underlying socket.

    Type Parameters:
    :   `T` - the response body type

    Parameters:
    :   `request` - the request
    :   `responseBodyHandler` - the response body handler

    Returns:
    :   the response

    Throws:
    :   `IOException` - if an I/O error occurs when sending or receiving, or
        the client has [shut down](#closing)
    :   `InterruptedException` - if the operation is interrupted
    :   `IllegalArgumentException` - if the `request` argument is not
        a request that could have been validly built as specified by [`HttpRequest.Builder`](HttpRequest.Builder.md "interface in java.net.http").
    :   `SecurityException` - If a security manager has been installed
        and it denies [`access`](../../../../java.base/java/net/URLPermission.md "class in java.net") to the
        URL in the given request, or proxy if one is configured.
        See [security checks](#securitychecks) for further
        information.
  + ### sendAsync

    public abstract <T>
    [CompletableFuture](../../../../java.base/java/util/concurrent/CompletableFuture.md "class in java.util.concurrent")<[HttpResponse](HttpResponse.md "interface in java.net.http")<T>> sendAsync([HttpRequest](HttpRequest.md "class in java.net.http") request,
    [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<T> responseBodyHandler)

    Sends the given request asynchronously using this client with the given
    response body handler.

    Equivalent to: `sendAsync(request, responseBodyHandler, null)`.

    Type Parameters:
    :   `T` - the response body type

    Parameters:
    :   `request` - the request
    :   `responseBodyHandler` - the response body handler

    Returns:
    :   a `CompletableFuture<HttpResponse<T>>`

    Throws:
    :   `IllegalArgumentException` - if the `request` argument is not
        a request that could have been validly built as specified by [`HttpRequest.Builder`](HttpRequest.Builder.md "interface in java.net.http").
  + ### sendAsync

    public abstract <T>
    [CompletableFuture](../../../../java.base/java/util/concurrent/CompletableFuture.md "class in java.util.concurrent")<[HttpResponse](HttpResponse.md "interface in java.net.http")<T>> sendAsync([HttpRequest](HttpRequest.md "class in java.net.http") request,
    [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<T> responseBodyHandler,
    [HttpResponse.PushPromiseHandler](HttpResponse.PushPromiseHandler.md "interface in java.net.http")<T> pushPromiseHandler)

    Sends the given request asynchronously using this client with the given
    response body handler and push promise handler.

    The returned completable future, if completed successfully, completes
    with an [`HttpResponse`](HttpResponse.md "interface in java.net.http")`<T>` that contains the response status,
    headers, and body ( as handled by given response body handler ).

    [Push promises](HttpResponse.PushPromiseHandler.md "interface in java.net.http") received, if any, are
    handled by the given `pushPromiseHandler`. A `null` valued
    `pushPromiseHandler` rejects any push promises.

    The returned completable future completes exceptionally with:
    - [`IOException`](../../../../java.base/java/io/IOException.md "class in java.io") - if an I/O error occurs when sending or receiving,
      or the client has [shut down](#closing).
    - [`SecurityException`](../../../../java.base/java/lang/SecurityException.md "class in java.lang") - If a security manager has been installed
      and it denies [`access`](../../../../java.base/java/net/URLPermission.md "class in java.net") to the
      URL in the given request, or proxy if one is configured.
      See [security checks](#securitychecks) for further
      information.

    The default `HttpClient` implementation returns
    `CompletableFuture` objects that are *cancelable*.
    `CompletableFuture` objects [derived](../../../../java.base/java/util/concurrent/CompletableFuture.md#newIncompleteFuture()) from cancelable futures are themselves *cancelable*.
    Invoking [cancel(true)](../../../../java.base/java/util/concurrent/CompletableFuture.md#cancel(boolean))
    on a cancelable future that is not completed, attempts to cancel the HTTP exchange
    in an effort to release underlying resources as soon as possible.
    No guarantee is made as to exactly *when* the cancellation request
    may be taken into account. In particular, the request might still get sent
    to the server, as its processing might already have started asynchronously
    in another thread, and the underlying resources may only be released
    asynchronously.
    - With HTTP/1.1, an attempt to cancel may cause the underlying connection
      to be closed abruptly.- With HTTP/2, an attempt to cancel may cause the stream to be reset.

    Type Parameters:
    :   `T` - the response body type

    Parameters:
    :   `request` - the request
    :   `responseBodyHandler` - the response body handler
    :   `pushPromiseHandler` - push promise handler, may be null

    Returns:
    :   a `CompletableFuture<HttpResponse<T>>`

    Throws:
    :   `IllegalArgumentException` - if the `request` argument is not
        a request that could have been validly built as specified by [`HttpRequest.Builder`](HttpRequest.Builder.md "interface in java.net.http").
  + ### newWebSocketBuilder

    public [WebSocket.Builder](WebSocket.Builder.md "interface in java.net.http") newWebSocketBuilder()

    Creates a new `WebSocket` builder (optional operation).

    **Example**

    Copy![Copy snippet](../../../../copy.svg)

    ```
    HttpClient client = HttpClient.newHttpClient();
    CompletableFuture<WebSocket> ws = client.newWebSocketBuilder()
       .buildAsync(URI.create("ws://websocket.example.com"), listener);
    ```

    Finer control over the WebSocket Opening Handshake can be achieved
    by using a custom `HttpClient`.

    **Example**

    Copy![Copy snippet](../../../../copy.svg)

    ```
    InetSocketAddress addr = new InetSocketAddress("proxy.example.com", 80);
    HttpClient client = HttpClient.newBuilder()
            .proxy(ProxySelector.of(addr))
            .build();

    CompletableFuture<WebSocket> ws = client.newWebSocketBuilder()
            .buildAsync(URI.create("ws://websocket.example.com"), listener);
    ```

    Returns:
    :   a `WebSocket.Builder`

    Throws:
    :   `UnsupportedOperationException` - if this `HttpClient` does not provide WebSocket support
  + ### shutdown

    public void shutdown()

    Initiates an orderly shutdown in which requests previously
    submitted with `send` or `sendAsync`
    are run to completion, but no new request will be accepted.
    Running a request to completion may involve running several
    operations in the background, including [waiting for responses to be delivered](#closing), which will all have to
    run to completion until the request is considered completed.
    Invocation has no additional effect if already shut down.

    This method does not wait for previously submitted request
    to complete execution. Use [`awaitTermination`](#awaitTermination(java.time.Duration)) or [`close`](#close()) to do that.

    Since:
    :   21

    See Also:
    :   - [`Implementation Note on closing the HttpClient`](#closing)
  + ### awaitTermination

    public boolean awaitTermination([Duration](../../../../java.base/java/time/Duration.md "class in java.time") duration)
    throws [InterruptedException](../../../../java.base/java/lang/InterruptedException.md "class in java.lang")

    Blocks until all operations have completed execution after a shutdown
    request, or the `duration` elapses, or the current thread is
    [interrupted](../../../../java.base/java/lang/Thread.md#interrupt()), whichever happens first.
    Operations are any tasks required to run a request previously
    submitted with `send` or `sendAsync` to completion.

    This method does not wait if the duration to wait is less than or
    equal to zero. In this case, the method just tests if the thread has
    terminated.

    Parameters:
    :   `duration` - the maximum time to wait

    Returns:
    :   `true` if this client terminated and
        `false` if the timeout elapsed before termination

    Throws:
    :   `InterruptedException` - if interrupted while waiting

    Since:
    :   21

    See Also:
    :   - [`Implementation Note on closing the HttpClient`](#closing)
  + ### isTerminated

    public boolean isTerminated()

    Returns `true` if all operations have completed following
    a shutdown.
    Operations are any tasks required to run a request previously
    submitted with `send` or `sendAsync` to completion.

    Note that `isTerminated` is never `true` unless
    either `shutdown` or `shutdownNow` was called first.

    Returns:
    :   `true` if all tasks have completed following a shutdown

    Since:
    :   21

    See Also:
    :   - [`Implementation Note on closing the HttpClient`](#closing)
  + ### shutdownNow

    public void shutdownNow()

    This method attempts to initiate an immediate shutdown.
    An implementation of this method may attempt to
    interrupt operations that are actively running.
    Operations are any tasks required to run a request previously
    submitted with `send` or `sendAsync` to completion.
    The behavior of actively running operations when interrupted
    is undefined. In particular, there is no guarantee that
    interrupted operations will terminate, or that code waiting
    on these operations will ever be notified.

    Since:
    :   21

    See Also:
    :   - [`Implementation Note on closing the HttpClient`](#closing)
  + ### close

    public void close()

    Initiates an orderly shutdown in which requests previously
    submitted to `send` or `sendAsync`
    are run to completion, but no new request will be accepted.
    Running a request to completion may involve running several
    operations in the background, including [waiting for responses to be delivered](#closing).
    This method waits until all operations have completed execution
    and the client has terminated.

    If interrupted while waiting, this method may attempt to stop all
    operations by calling [`shutdownNow()`](#shutdownNow()). It then continues to wait
    until all actively executing operations have completed.
    The interrupt status will be re-asserted before this method returns.

    If already terminated, invoking this method has no effect.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Since:
    :   21

    See Also:
    :   - [`Implementation Note on closing the HttpClient`](#closing)