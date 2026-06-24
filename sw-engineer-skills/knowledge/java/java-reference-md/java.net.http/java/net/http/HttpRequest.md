Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Class HttpRequest

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.net.http.HttpRequest

---

public abstract class HttpRequest
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

An HTTP request.

An `HttpRequest` instance is built through an `HttpRequest`
[builder](HttpRequest.Builder.md "interface in java.net.http"). An `HttpRequest` builder
is obtained from one of the [`newBuilder`](#newBuilder(java.net.URI))
methods. A request's [`URI`](../../../../java.base/java/net/URI.md "class in java.net"), headers, and body can be set. Request
bodies are provided through a [`BodyPublisher`](HttpRequest.BodyPublisher.md "interface in java.net.http") supplied
to one of the [`POST`](HttpRequest.Builder.md#POST(java.net.http.HttpRequest.BodyPublisher)),
[`PUT`](HttpRequest.Builder.md#PUT(java.net.http.HttpRequest.BodyPublisher)) or
[`method`](HttpRequest.Builder.md#method(java.lang.String,java.net.http.HttpRequest.BodyPublisher)) methods.
Once all required parameters have been set in the builder, [`build`](HttpRequest.Builder.md#build()) will return the `HttpRequest`. Builders can be
copied and modified many times in order to build multiple related requests
that differ in some parameters.

The following is an example of a GET request that prints the response
body as a String:

Copy![Copy snippet](../../../../copy.svg)

```
HttpClient client = HttpClient.newHttpClient();

HttpRequest request = HttpRequest.newBuilder()
      .uri(URI.create("http://foo.com/"))
      .build();

client.sendAsync(request, BodyHandlers.ofString())
      .thenApply(HttpResponse::body)
      .thenAccept(System.out::println)
      .join();
```

The class [`BodyPublishers`](HttpRequest.BodyPublishers.md "class in java.net.http") provides implementations
of many common publishers. Alternatively, a custom `BodyPublisher`
implementation can be used.

Since:
:   11

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static interface`

  `HttpRequest.BodyPublisher`

  A `BodyPublisher` converts high-level Java objects into a flow of
  byte buffers suitable for sending as a request body.

  `static class`

  `HttpRequest.BodyPublishers`

  Implementations of [`BodyPublisher`](HttpRequest.BodyPublisher.md "interface in java.net.http") that implement
  various useful publishers, such as publishing the request body from a
  String, or from a file.

  `static interface`

  `HttpRequest.Builder`

  A builder of [HTTP requests](HttpRequest.md "class in java.net.http").
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `HttpRequest()`

  Creates an HttpRequest.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract Optional<HttpRequest.BodyPublisher>`

  `bodyPublisher()`

  Returns an `Optional` containing the [`HttpRequest.BodyPublisher`](HttpRequest.BodyPublisher.md "interface in java.net.http") set on
  this request.

  `final boolean`

  `equals(Object obj)`

  Tests this HTTP request instance for equality with the given object.

  `abstract boolean`

  `expectContinue()`

  Returns this request's [expect continue](HttpRequest.Builder.md#expectContinue(boolean)) setting.

  `final int`

  `hashCode()`

  Computes a hash code for this HTTP request instance.

  `abstract HttpHeaders`

  `headers()`

  The (user-accessible) request headers that this request was (or will be)
  sent with.

  `abstract String`

  `method()`

  Returns the request method for this request.

  `static HttpRequest.Builder`

  `newBuilder()`

  Creates an `HttpRequest` builder.

  `static HttpRequest.Builder`

  `newBuilder(HttpRequest request,
  BiPredicate<String,String> filter)`

  Creates a `Builder` whose initial state is copied from an existing
  `HttpRequest`.

  `static HttpRequest.Builder`

  `newBuilder(URI uri)`

  Creates an `HttpRequest` builder with the given URI.

  `abstract Optional<Duration>`

  `timeout()`

  Returns an `Optional` containing this request's timeout duration.

  `abstract URI`

  `uri()`

  Returns this request's `URI`.

  `abstract Optional<HttpClient.Version>`

  `version()`

  Returns an `Optional` containing the HTTP protocol version that
  will be requested for this `HttpRequest`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### HttpRequest

    protected HttpRequest()

    Creates an HttpRequest.
* ## Method Details

  + ### newBuilder

    public static [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") newBuilder([URI](../../../../java.base/java/net/URI.md "class in java.net") uri)

    Creates an `HttpRequest` builder with the given URI.

    Parameters:
    :   `uri` - the request URI

    Returns:
    :   a new request builder

    Throws:
    :   `IllegalArgumentException` - if the URI scheme is not supported.
  + ### newBuilder

    public static [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") newBuilder([HttpRequest](HttpRequest.md "class in java.net.http") request,
    [BiPredicate](../../../../java.base/java/util/function/BiPredicate.md "interface in java.util.function")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[String](../../../../java.base/java/lang/String.md "class in java.lang")> filter)

    Creates a `Builder` whose initial state is copied from an existing
    `HttpRequest`.

    This builder can be used to build an `HttpRequest`, equivalent
    to the original, while allowing amendment of the request state prior to
    construction - for example, adding additional headers.

    The `filter` is applied to each header name value pair as they
    are copied from the given request. When completed, only headers that
    satisfy the condition as laid out by the `filter` will be present
    in the `Builder` returned from this method.

    Parameters:
    :   `request` - the original request
    :   `filter` - a header filter

    Returns:
    :   a new request builder

    Throws:
    :   `IllegalArgumentException` - if a new builder cannot be seeded from
        the given request (for instance, if the request contains illegal
        parameters)

    Since:
    :   16
  + ### newBuilder

    public static [HttpRequest.Builder](HttpRequest.Builder.md "interface in java.net.http") newBuilder()

    Creates an `HttpRequest` builder.

    Returns:
    :   a new request builder
  + ### bodyPublisher

    public abstract [Optional](../../../../java.base/java/util/Optional.md "class in java.util")<[HttpRequest.BodyPublisher](HttpRequest.BodyPublisher.md "interface in java.net.http")> bodyPublisher()

    Returns an `Optional` containing the [`HttpRequest.BodyPublisher`](HttpRequest.BodyPublisher.md "interface in java.net.http") set on
    this request. If no `BodyPublisher` was set in the requests's
    builder, then the `Optional` is empty.

    Returns:
    :   an `Optional` containing this request's `BodyPublisher`
  + ### method

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") method()

    Returns the request method for this request. If not set explicitly,
    the default method for any request is "GET".

    Returns:
    :   this request's method
  + ### timeout

    public abstract [Optional](../../../../java.base/java/util/Optional.md "class in java.util")<[Duration](../../../../java.base/java/time/Duration.md "class in java.time")> timeout()

    Returns an `Optional` containing this request's timeout duration.
    If the timeout duration was not set in the request's builder, then the
    `Optional` is empty.

    Returns:
    :   an `Optional` containing this request's timeout duration
  + ### expectContinue

    public abstract boolean expectContinue()

    Returns this request's [expect continue](HttpRequest.Builder.md#expectContinue(boolean)) setting.

    Returns:
    :   this request's expect continue setting
  + ### uri

    public abstract [URI](../../../../java.base/java/net/URI.md "class in java.net") uri()

    Returns this request's `URI`.

    Returns:
    :   this request's URI
  + ### version

    public abstract [Optional](../../../../java.base/java/util/Optional.md "class in java.util")<[HttpClient.Version](HttpClient.Version.md "enum class in java.net.http")> version()

    Returns an `Optional` containing the HTTP protocol version that
    will be requested for this `HttpRequest`. If the version was not
    set in the request's builder, then the `Optional` is empty.
    In that case, the version requested will be that of the sending
    [`HttpClient`](HttpClient.md "class in java.net.http"). The corresponding [`HttpResponse`](HttpResponse.md "interface in java.net.http") should be
    queried to determine the version that was actually used.

    Returns:
    :   HTTP protocol version
  + ### headers

    public abstract [HttpHeaders](HttpHeaders.md "class in java.net.http") headers()

    The (user-accessible) request headers that this request was (or will be)
    sent with.

    Returns:
    :   this request's HttpHeaders
  + ### equals

    public final boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Tests this HTTP request instance for equality with the given object.

    If the given object is not an `HttpRequest` then this
    method returns `false`. Two HTTP requests are equal if their URI,
    method, and headers fields are all equal.

    This method satisfies the general contract of the [`Object.equals`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to which this object is to be compared

    Returns:
    :   `true` if, and only if, the given object is an `HttpRequest` that is equal to this HTTP request

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Computes a hash code for this HTTP request instance.

    The hash code is based upon the HTTP request's URI, method, and
    header components, and satisfies the general contract of the
    [`Object.hashCode`](../../../../java.base/java/lang/Object.md#hashCode()) method.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash-code value for this HTTP request

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))