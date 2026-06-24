Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Interface HttpRequest.Builder

Enclosing class:
:   `HttpRequest`

---

public static interface HttpRequest.Builder

A builder of [HTTP requests](HttpRequest.md "class in java.net.http").

Instances of `HttpRequest.Builder` are created by calling
[`HttpRequest.newBuilder()`](HttpRequest.md#newBuilder()), [`HttpRequest.newBuilder(URI)`](HttpRequest.md#newBuilder(java.net.URI)),
or [`HttpRequest.newBuilder(HttpRequest, BiPredicate)`](HttpRequest.md#newBuilder(java.net.http.HttpRequest,java.util.function.BiPredicate)).

The builder can be used to configure per-request state, such as: the
request URI, the request method (default is GET unless explicitly set),
specific request headers, etc. Each of the setter methods modifies the
state of the builder and returns the same instance. The methods are not
synchronized and should not be called from multiple threads without
external synchronization. The [`build`](#build()) method returns a new
`HttpRequest` each time it is invoked. Once built an `HttpRequest` is immutable, and can be sent multiple times.

Note, that not all request headers may be set by user code. Some are
restricted for security reasons and others such as the headers relating
to authentication, redirection and cookie management may be managed by
specific APIs rather than through directly user set headers.

Since:
:   11

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `HttpRequest`

  `build()`

  Builds and returns an [`HttpRequest`](HttpRequest.md "class in java.net.http").

  `HttpRequest.Builder`

  `copy()`

  Returns an exact duplicate copy of this `Builder` based on
  current state.

  `HttpRequest.Builder`

  `DELETE()`

  Sets the request method of this builder to DELETE.

  `HttpRequest.Builder`

  `expectContinue(boolean enable)`

  Requests the server to acknowledge the request before sending the
  body.

  `HttpRequest.Builder`

  `GET()`

  Sets the request method of this builder to GET.

  `default HttpRequest.Builder`

  `HEAD()`

  Sets the request method of this builder to HEAD.

  `HttpRequest.Builder`

  `header(String name,
  String value)`

  Adds the given name value pair to the set of headers for this request.

  `HttpRequest.Builder`

  `headers(String... headers)`

  Adds the given name value pairs to the set of headers for this
  request.

  `HttpRequest.Builder`

  `method(String method,
  HttpRequest.BodyPublisher bodyPublisher)`

  Sets the request method and request body of this builder to the
  given values.

  `HttpRequest.Builder`

  `POST(HttpRequest.BodyPublisher bodyPublisher)`

  Sets the request method of this builder to POST and sets its
  request body publisher to the given value.

  `HttpRequest.Builder`

  `PUT(HttpRequest.BodyPublisher bodyPublisher)`

  Sets the request method of this builder to PUT and sets its
  request body publisher to the given value.

  `HttpRequest.Builder`

  `setHeader(String name,
  String value)`

  Sets the given name value pair to the set of headers for this
  request.

  `HttpRequest.Builder`

  `timeout(Duration duration)`

  Sets a timeout for this request.

  `HttpRequest.Builder`

  `uri(URI uri)`

  Sets this `HttpRequest`'s request `URI`.

  `HttpRequest.Builder`

  `version(HttpClient.Version version)`

  Sets the preferred [`HttpClient.Version`](HttpClient.Version.md "enum class in java.net.http") for this request.

* ## Method Details

  + ### uri

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") uri([URI](../../../../java.base/java/net/URI.md "class in java.net") uri)

    Sets this `HttpRequest`'s request `URI`.

    Parameters:
    :   `uri` - the request URI

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if the `URI` scheme is not
        supported
  + ### expectContinue

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") expectContinue(boolean enable)

    Requests the server to acknowledge the request before sending the
    body. This is disabled by default. If enabled, the server is
    requested to send an error response or a `100 Continue`
    response before the client sends the request body. This means the
    request publisher for the request will not be invoked until this
    interim response is received.

    Parameters:
    :   `enable` - `true` if Expect continue to be sent

    Returns:
    :   this builder
  + ### version

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") version([HttpClient.Version](HttpClient.Version.md "enum class in java.net.http") version)

    Sets the preferred [`HttpClient.Version`](HttpClient.Version.md "enum class in java.net.http") for this request.

    The corresponding [`HttpResponse`](HttpResponse.md "interface in java.net.http") should be checked for the
    version that was actually used. If the version is not set in a
    request, then the version requested will be that of the sending
    [`HttpClient`](HttpClient.md "class in java.net.http").

    Parameters:
    :   `version` - the HTTP protocol version requested

    Returns:
    :   this builder
  + ### header

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") header([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Adds the given name value pair to the set of headers for this request.
    The given value is added to the list of values for that name.

    Parameters:
    :   `name` - the header name
    :   `value` - the header value

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if the header name or value is not
        valid, see [RFC 7230 section-3.2](https://tools.ietf.org/html/rfc7230#section-3.2), or the header name or value is restricted
        by the implementation.
  + ### headers

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") headers([String](../../../../java.base/java/lang/String.md "class in java.lang")... headers)

    Adds the given name value pairs to the set of headers for this
    request. The supplied `String` instances must alternate as
    header names and header values.
    To add several values to the same name then the same name must
    be supplied with each new value.

    Parameters:
    :   `headers` - the list of name value pairs

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if there are an odd number of
        parameters, or if a header name or value is not valid, see
        [RFC 7230 section-3.2](https://tools.ietf.org/html/rfc7230#section-3.2), or a header name or value is
        [restricted](#header(java.lang.String,java.lang.String)) by the
        implementation.
  + ### timeout

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") timeout([Duration](../../../../java.base/java/time/Duration.md "class in java.time") duration)

    Sets a timeout for this request. If the response is not received
    within the specified timeout then an [`HttpTimeoutException`](HttpTimeoutException.md "class in java.net.http") is
    thrown from [`HttpClient::send`](HttpClient.md#send(java.net.http.HttpRequest,java.net.http.HttpResponse.BodyHandler)) or
    [`HttpClient::sendAsync`](HttpClient.md#sendAsync(java.net.http.HttpRequest,java.net.http.HttpResponse.BodyHandler))
    completes exceptionally with an `HttpTimeoutException`. The effect
    of not setting a timeout is the same as setting an infinite Duration,
    i.e. block forever.

    Parameters:
    :   `duration` - the timeout duration

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if the duration is non-positive
  + ### setHeader

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") setHeader([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Sets the given name value pair to the set of headers for this
    request. This overwrites any previously set values for name.

    Parameters:
    :   `name` - the header name
    :   `value` - the header value

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if the header name or value is not valid,
        see [RFC 7230 section-3.2](https://tools.ietf.org/html/rfc7230#section-3.2), or the header name or value is
        [restricted](#header(java.lang.String,java.lang.String)) by the
        implementation.
  + ### GET

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") GET()

    Sets the request method of this builder to GET.
    This is the default.

    Returns:
    :   this builder
  + ### POST

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") POST([HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") bodyPublisher)

    Sets the request method of this builder to POST and sets its
    request body publisher to the given value.

    Parameters:
    :   `bodyPublisher` - the body publisher

    Returns:
    :   this builder
  + ### PUT

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") PUT([HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") bodyPublisher)

    Sets the request method of this builder to PUT and sets its
    request body publisher to the given value.

    Parameters:
    :   `bodyPublisher` - the body publisher

    Returns:
    :   this builder
  + ### DELETE

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") DELETE()

    Sets the request method of this builder to DELETE.

    Returns:
    :   this builder
  + ### HEAD

    default [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") HEAD()

    Sets the request method of this builder to HEAD.

    Returns:
    :   this builder

    Since:
    :   18
  + ### method

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") method([String](../../../../java.base/java/lang/String.md "class in java.lang") method,
    [HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http") bodyPublisher)

    Sets the request method and request body of this builder to the
    given values.

    Parameters:
    :   `method` - the method to use
    :   `bodyPublisher` - the body publisher

    Returns:
    :   this builder

    Throws:
    :   `IllegalArgumentException` - if the method name is not
        valid, see [RFC 7230 section-3.1.1](https://tools.ietf.org/html/rfc7230#section-3.1.1), or the method is restricted by the
        implementation.
  + ### build

    [HttpRequest](HttpRequest.md "class in java.net.http") build()

    Builds and returns an [`HttpRequest`](HttpRequest.md "class in java.net.http").

    Returns:
    :   a new `HttpRequest`

    Throws:
    :   `IllegalStateException` - if a URI has not been set
  + ### copy

    [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") copy()

    Returns an exact duplicate copy of this `Builder` based on
    current state. The new builder can then be modified independently of
    this builder.

    Returns:
    :   an exact copy of this builder