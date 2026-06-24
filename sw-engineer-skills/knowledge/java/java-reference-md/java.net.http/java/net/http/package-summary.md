Module [java.net.http](../../../module-summary.md)

# Package java.net.http

---

package java.net.http

## HTTP Client and WebSocket APIs

Provides high-level client interfaces to HTTP (versions 1.1 and 2) and
low-level client interfaces to WebSocket. The main types defined are:

* [`HttpClient`](HttpClient.md "class in java.net.http")
* [`HttpRequest`](HttpRequest.md "class in java.net.http")
* [`HttpResponse`](HttpResponse.md "interface in java.net.http")
* [`WebSocket`](WebSocket.md "interface in java.net.http")

The protocol-specific requirements are defined in the
[Hypertext Transfer Protocol
Version 2 (HTTP/2)](https://tools.ietf.org/html/rfc7540), the [Hypertext Transfer Protocol (HTTP/1.1)](https://tools.ietf.org/html/rfc2616), and
[The WebSocket Protocol](https://tools.ietf.org/html/rfc6455).

In general, asynchronous tasks execute in either the thread invoking
the operation, e.g. [sending](HttpClient.md#send(java.net.http.HttpRequest,java.net.http.HttpResponse.BodyHandler)) an HTTP request, or by the threads supplied by the client's [`executor`](HttpClient.md#executor()). Dependent tasks, those that are triggered by
returned CompletionStages or CompletableFutures, that do not explicitly
specify an executor, execute in the same [`default executor`](../../../../java.base/java/util/concurrent/CompletableFuture.md#defaultExecutor()) as that of `CompletableFuture`, or the invoking thread if the operation completes before
the dependent task is registered.

`CompletableFuture`s returned by this API will throw [`UnsupportedOperationException`](../../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang") for their [`obtrudeValue`](../../../../java.base/java/util/concurrent/CompletableFuture.md#obtrudeValue(T))
and [`obtrudeException`](../../../../java.base/java/util/concurrent/CompletableFuture.md#obtrudeException(java.lang.Throwable)) methods. Invoking the [`cancel`](../../../../java.base/java/util/concurrent/CompletableFuture.md#cancel(boolean)) method on a `CompletableFuture` returned by this API may not
interrupt the underlying operation, but may be useful to complete,
exceptionally, dependent stages that have not already completed.

Unless otherwise stated, `null` parameter values will cause methods
of all classes in this package to throw `NullPointerException`.

Since:
:   11

* Related Packages

  Module

  Package

  Description

  [java.base](../../../../java.base/module-summary.md)

  [java.net](../../../../java.base/java/net/package-summary.md)

  Provides the classes for implementing networking applications.

  [java.base](../../../../java.base/module-summary.md)

  [java.net.spi](../../../../java.base/java/net/spi/package-summary.md)

  Service-provider classes for the [`java.net`](../../../../java.base/java/net/package-summary.md) package.
* All Classes and InterfacesInterfacesClassesEnum ClassesException Classes

  Class

  Description

  [HttpClient](HttpClient.md "class in java.net.http")

  An HTTP Client.

  [HttpClient.Builder](HttpClient.Builder.md "interface in java.net.http")

  A builder of [HTTP Clients](HttpClient.md "class in java.net.http").

  [HttpClient.Redirect](HttpClient.Redirect.md "enum class in java.net.http")

  Defines the automatic redirection policy.

  [HttpClient.Version](HttpClient.Version.md "enum class in java.net.http")

  The HTTP protocol version.

  [HttpConnectTimeoutException](HttpConnectTimeoutException.md "class in java.net.http")

  Thrown when a connection, over which an `HttpRequest` is intended to be
  sent, is not successfully established within a specified time period.

  [HttpHeaders](HttpHeaders.md "class in java.net.http")

  A read-only view of a set of HTTP headers.

  [HttpRequest](HttpRequest.md "class in java.net.http")

  An HTTP request.

  [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http")

  A `BodyPublisher` converts high-level Java objects into a flow of
  byte buffers suitable for sending as a request body.

  [HttpRequest.BodyPublishers](HttpRequest.BodyPublishers.md "class in java.net.http")

  Implementations of [`BodyPublisher`](HttpRequest.BodyPublisher.md "interface in java.net.http") that implement
  various useful publishers, such as publishing the request body from a
  String, or from a file.

  [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http")

  A builder of [HTTP requests](HttpRequest.md "class in java.net.http").

  [HttpResponse](HttpResponse.md "interface in java.net.http")<T>

  An HTTP response.

  [HttpResponse.BodyHandler](HttpResponse.BodyHandler.md "interface in java.net.http")<T>

  A handler for response bodies.

  [HttpResponse.BodyHandlers](HttpResponse.BodyHandlers.md "class in java.net.http")

  Implementations of [`BodyHandler`](HttpResponse.BodyHandler.md "interface in java.net.http") that implement various
  useful handlers, such as handling the response body as a String, or
  streaming the response body to a file.

  [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<T>

  A `BodySubscriber` consumes response body bytes and converts them
  into a higher-level Java type.

  [HttpResponse.BodySubscribers](HttpResponse.BodySubscribers.md "class in java.net.http")

  Implementations of [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http") that implement
  various useful subscribers, such as converting the response body bytes
  into a String, or streaming the bytes to a file.

  [HttpResponse.PushPromiseHandler](HttpResponse.PushPromiseHandler.md "interface in java.net.http")<T>

  A handler for push promises.

  [HttpResponse.ResponseInfo](HttpResponse.ResponseInfo.md "interface in java.net.http")

  Initial response information supplied to a [`BodyHandler`](HttpResponse.BodyHandler.md "interface in java.net.http")
  when a response is initially received and before the body is processed.

  [HttpTimeoutException](HttpTimeoutException.md "class in java.net.http")

  Thrown when a response is not received within a specified time period.

  [WebSocket](WebSocket.md "interface in java.net.http")

  A WebSocket Client.

  [WebSocket.Builder](WebSocket.Builder.md "interface in java.net.http")

  A builder of [WebSocket Clients](WebSocket.md "interface in java.net.http").

  [WebSocket.Listener](WebSocket.Listener.md "interface in java.net.http")

  The receiving interface of `WebSocket`.

  [WebSocketHandshakeException](WebSocketHandshakeException.md "class in java.net.http")

  Thrown when the opening handshake has failed.