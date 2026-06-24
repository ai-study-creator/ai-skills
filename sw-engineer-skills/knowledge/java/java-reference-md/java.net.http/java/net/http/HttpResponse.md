Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Interface HttpResponse<T>

Type Parameters:
:   `T` - the response body type

---

public interface HttpResponse<T>

An HTTP response.

An `HttpResponse` is not created directly, but rather returned as
a result of sending an [`HttpRequest`](HttpRequest.md "class in java.net.http"). An `HttpResponse` is
made available when the response status code and headers have been received,
and typically after the response body has also been completely received.
Whether or not the `HttpResponse` is made available before the response
body has been completely received depends on the [`BodyHandler`](HttpResponse.BodyHandler.md "interface in java.net.http") provided when sending the `HttpRequest`.

This class provides methods for accessing the response status code,
headers, the response body, and the `HttpRequest` corresponding
to this response.

The following is an example of retrieving a response as a String:

Copy![Copy snippet](../../../../copy.svg)

```
HttpResponse<String> response = client
  .send(request, BodyHandlers.ofString());
```

The class [`BodyHandlers`](HttpResponse.BodyHandlers.md "class in java.net.http") provides implementations
of many common response handlers. Alternatively, a custom `BodyHandler`
implementation can be used.

Since:
:   11

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `HttpResponse.BodyHandler<T>`

  A handler for response bodies.

  `static class`

  `HttpResponse.BodyHandlers`

  Implementations of [`BodyHandler`](HttpResponse.BodyHandler.md "interface in java.net.http") that implement various
  useful handlers, such as handling the response body as a String, or
  streaming the response body to a file.

  `static interface`

  `HttpResponse.BodySubscriber<T>`

  A `BodySubscriber` consumes response body bytes and converts them
  into a higher-level Java type.

  `static class`

  `HttpResponse.BodySubscribers`

  Implementations of [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http") that implement
  various useful subscribers, such as converting the response body bytes
  into a String, or streaming the bytes to a file.

  `static interface`

  `HttpResponse.PushPromiseHandler<T>`

  A handler for push promises.

  `static interface`

  `HttpResponse.ResponseInfo`

  Initial response information supplied to a [`BodyHandler`](HttpResponse.BodyHandler.md "interface in java.net.http")
  when a response is initially received and before the body is processed.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `T`

  `body()`

  Returns the body.

  `HttpHeaders`

  `headers()`

  Returns the received response headers.

  `Optional<HttpResponse<T>>`

  `previousResponse()`

  Returns an `Optional` containing the previous intermediate response
  if one was received.

  `HttpRequest`

  `request()`

  Returns the [`HttpRequest`](HttpRequest.md "class in java.net.http") corresponding to this response.

  `Optional<SSLSession>`

  `sslSession()`

  Returns an [`Optional`](../../../../java.base/java/util/Optional.md "class in java.util") containing the [`SSLSession`](../../../../java.base/javax/net/ssl/SSLSession.md "interface in javax.net.ssl") in effect
  for this response.

  `int`

  `statusCode()`

  Returns the status code for this response.

  `URI`

  `uri()`

  Returns the `URI` that the response was received from.

  `HttpClient.Version`

  `version()`

  Returns the HTTP protocol version that was used for this response.

* ## Method Details

  + ### statusCode

    int statusCode()

    Returns the status code for this response.

    Returns:
    :   the response code
  + ### request

    [HttpRequest](HttpRequest.md "class in java.net.http") request()

    Returns the [`HttpRequest`](HttpRequest.md "class in java.net.http") corresponding to this response.

    The returned `HttpRequest` may not be the initiating request
    provided when [sending](HttpClient.md#send(java.net.http.HttpRequest,java.net.http.HttpResponse.BodyHandler)). For example, if the initiating request was redirected, then the
    request returned by this method will have the redirected URI, which will
    be different from the initiating request URI.

    Returns:
    :   the request

    See Also:
    :   - [`previousResponse()`](#previousResponse())
  + ### previousResponse

    [Optional](../../../../java.base/java/util/Optional.md "class in java.util")<[HttpResponse](HttpResponse.md "interface in java.net.http")<[T](HttpResponse.md "type parameter in HttpResponse")>> previousResponse()

    Returns an `Optional` containing the previous intermediate response
    if one was received. An intermediate response is one that is received
    as a result of redirection or authentication. If no previous response
    was received then an empty `Optional` is returned.

    Returns:
    :   an Optional containing the HttpResponse, if any.
  + ### headers

    [HttpHeaders](HttpHeaders.md "class in java.net.http") headers()

    Returns the received response headers.

    Returns:
    :   the response headers
  + ### body

    [T](HttpResponse.md "type parameter in HttpResponse") body()

    Returns the body. Depending on the type of `T`, the returned body
    may represent the body after it was read (such as `byte[]`, or
    `String`, or `Path`) or it may represent an object with
    which the body is read, such as an [`InputStream`](../../../../java.base/java/io/InputStream.md "class in java.io").

    If this `HttpResponse` was returned from an invocation of
    [`previousResponse()`](#previousResponse()) then this method returns `null`

    Returns:
    :   the body
  + ### sslSession

    [Optional](../../../../java.base/java/util/Optional.md "class in java.util")<[SSLSession](../../../../java.base/javax/net/ssl/SSLSession.md "interface in javax.net.ssl")> sslSession()

    Returns an [`Optional`](../../../../java.base/java/util/Optional.md "class in java.util") containing the [`SSLSession`](../../../../java.base/javax/net/ssl/SSLSession.md "interface in javax.net.ssl") in effect
    for this response. Returns an empty `Optional` if this is not a
    *HTTPS* response.

    Returns:
    :   an `Optional` containing the `SSLSession` associated
        with the response
  + ### uri

    [URI](../../../../java.base/java/net/URI.md "class in java.net") uri()

    Returns the `URI` that the response was received from. This may be
    different from the request `URI` if redirection occurred.

    Returns:
    :   the URI of the response
  + ### version

    [HttpClient.Version](HttpClient.Version.md "enum class in java.net.http") version()

    Returns the HTTP protocol version that was used for this response.

    Returns:
    :   HTTP protocol version