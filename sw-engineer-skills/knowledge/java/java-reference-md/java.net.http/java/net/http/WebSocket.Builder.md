Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Interface WebSocket.Builder

Enclosing interface:
:   `WebSocket`

---

public static interface WebSocket.Builder

A builder of [WebSocket Clients](WebSocket.md "interface in java.net.http").

Builders are created by invoking
[`HttpClient.newWebSocketBuilder`](HttpClient.md#newWebSocketBuilder()).
The intermediate (setter-like) methods change the state of the builder
and return the same builder they have been invoked on. If an intermediate
method is not invoked, an appropriate default value (or behavior) will be
assumed. A `Builder` is not safe for use by multiple threads
without external synchronization.

Since:
:   11

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `CompletableFuture<WebSocket>`

  `buildAsync(URI uri,
  WebSocket.Listener listener)`

  Builds a [`WebSocket`](WebSocket.md "interface in java.net.http") connected to the given `URI` and
  associated with the given `Listener`.

  `WebSocket.Builder`

  `connectTimeout(Duration timeout)`

  Sets a timeout for establishing a WebSocket connection.

  `WebSocket.Builder`

  `header(String name,
  String value)`

  Adds the given name-value pair to the list of additional HTTP headers
  sent during the opening handshake.

  `WebSocket.Builder`

  `subprotocols(String mostPreferred,
  String... lesserPreferred)`

  Sets a request for the given subprotocols.

* ## Method Details

  + ### header

    [WebSocket.Builder](WebSocket.Builder.md "interface in java.net.http") header([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Adds the given name-value pair to the list of additional HTTP headers
    sent during the opening handshake.

    Headers defined in the
    [WebSocket
    Protocol](https://tools.ietf.org/html/rfc6455#section-11.3) are illegal. If this method is not invoked, no
    additional HTTP headers will be sent.

    Parameters:
    :   `name` - the header name
    :   `value` - the header value

    Returns:
    :   this builder
  + ### connectTimeout

    [WebSocket.Builder](WebSocket.Builder.md "interface in java.net.http") connectTimeout([Duration](../../../../java.base/java/time/Duration.md "class in java.time") timeout)

    Sets a timeout for establishing a WebSocket connection.

    If the connection is not established within the specified
    duration then building of the `WebSocket` will fail with
    [`HttpTimeoutException`](HttpTimeoutException.md "class in java.net.http"). If this method is not invoked then the
    infinite timeout is assumed.

    Parameters:
    :   `timeout` - the timeout, non-[negative](../../../../java.base/java/time/Duration.md#isNegative()),
        non-[ZERO](../../../../java.base/java/time/Duration.md#ZERO)

    Returns:
    :   this builder
  + ### subprotocols

    [WebSocket.Builder](WebSocket.Builder.md "interface in java.net.http") subprotocols([String](../../../../java.base/java/lang/String.md "class in java.lang") mostPreferred,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")... lesserPreferred)

    Sets a request for the given subprotocols.

    After the `WebSocket` has been built, the actual
    subprotocol can be queried through
    [`WebSocket.getSubprotocol()`](WebSocket.md#getSubprotocol()).

    Subprotocols are specified in the order of preference. The most
    preferred subprotocol is specified first. If there are any additional
    subprotocols they are enumerated from the most preferred to the least
    preferred.

    Subprotocols not conforming to the syntax of subprotocol
    identifiers are illegal. If this method is not invoked then no
    subprotocols will be requested.

    Parameters:
    :   `mostPreferred` - the most preferred subprotocol
    :   `lesserPreferred` - the lesser preferred subprotocols

    Returns:
    :   this builder
  + ### buildAsync

    [CompletableFuture](../../../../java.base/java/util/concurrent/CompletableFuture.md "class in java.util.concurrent")<[WebSocket](WebSocket.md "interface in java.net.http")> buildAsync([URI](../../../../java.base/java/net/URI.md "class in java.net") uri,
    [WebSocket.Listener](WebSocket.Listener.md "interface in java.net.http") listener)

    Builds a [`WebSocket`](WebSocket.md "interface in java.net.http") connected to the given `URI` and
    associated with the given `Listener`.

    Returns a `CompletableFuture` which will either complete
    normally with the resulting `WebSocket` or complete
    exceptionally with one of the following errors:
    - [`IOException`](../../../../java.base/java/io/IOException.md "class in java.io") -
      if an I/O error occurs- [`WebSocketHandshakeException`](WebSocketHandshakeException.md "class in java.net.http") -
        if the opening handshake fails- [`HttpTimeoutException`](HttpTimeoutException.md "class in java.net.http") -
          if the opening handshake does not complete within
          the timeout- [`InterruptedException`](../../../../java.base/java/lang/InterruptedException.md "class in java.lang") -
            if the operation is interrupted- [`SecurityException`](../../../../java.base/java/lang/SecurityException.md "class in java.lang") -
              if a security manager has been installed and it denies
              [`access`](../../../../java.base/java/net/URLPermission.md "class in java.net") to `uri`.
              [Security checks](HttpClient.md#securitychecks)
              contains more information relating to the security context
              in which the listener is invoked.- [`IllegalArgumentException`](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") -
                if any of the arguments of this builder's methods are
                illegal

    Parameters:
    :   `uri` - the WebSocket URI
    :   `listener` - the listener

    Returns:
    :   a `CompletableFuture` with the `WebSocket`