Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Interface HttpResponse.BodyHandler<T>

Type Parameters:
:   `T` - the response body type

Enclosing interface:
:   `HttpResponse<T>`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](../../../../java.base/java/lang/FunctionalInterface.md "annotation interface in java.lang")
public static interface HttpResponse.BodyHandler<T>

A handler for response bodies. The class [`BodyHandlers`](HttpResponse.BodyHandlers.md "class in java.net.http")
provides implementations of many common body handlers.

The `BodyHandler` interface allows inspection of the response
code and headers, before the actual response body is received, and is
responsible for creating the response [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http"). The `BodySubscriber` consumes the actual response
body bytes and, typically, converts them into a higher-level Java type.

A `BodyHandler` is a function that takes a [`ResponseInfo`](HttpResponse.ResponseInfo.md "interface in java.net.http") object; and which returns a `BodySubscriber`. The
`BodyHandler` is invoked when the response status code and headers
are available, but before the response body bytes are received.

The following example uses one of the [predefined body handlers](HttpResponse.BodyHandlers.md "class in java.net.http") that always process the response body in the
same way ( streams the response body to a file ).

Copy![Copy snippet](../../../../copy.svg)

```
  HttpRequest request = HttpRequest.newBuilder()
      .uri(URI.create("http://www.foo.com/"))
      .build();

client.sendAsync(request, BodyHandlers.ofFile(Paths.get("/tmp/f")))
      .thenApply(HttpResponse::body)
      .thenAccept(System.out::println);
```

Note, that even though the pre-defined handlers do not examine the
response code, the response code and headers are always retrievable from
the [`HttpResponse`](HttpResponse.md "interface in java.net.http"), when it is returned.

In the second example, the function returns a different subscriber
depending on the status code.

Copy![Copy snippet](../../../../copy.svg)

```
  HttpRequest request = HttpRequest.newBuilder()
      .uri(URI.create("http://www.foo.com/"))
      .build();
BodyHandler<Path> bodyHandler = (rspInfo) -> rspInfo.statusCode() == 200
                    ? BodySubscribers.ofFile(Paths.get("/tmp/f"))
                    : BodySubscribers.replacing(Paths.get("/NULL"));
client.sendAsync(request, bodyHandler)
      .thenApply(HttpResponse::body)
      .thenAccept(System.out::println);
```

Since:
:   11

See Also:
:   * [`HttpResponse.BodyHandlers`](HttpResponse.BodyHandlers.md "class in java.net.http")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `HttpResponse.BodySubscriber<T>`

  `apply(HttpResponse.ResponseInfo responseInfo)`

  Returns a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http") considering the
  given response status code and headers.

* ## Method Details

  + ### apply

    [HttpResponse.BodySubscriber](HttpResponse.BodySubscriber.md "interface in java.net.http")<[T](HttpResponse.BodyHandler.md "type parameter in HttpResponse.BodyHandler")> apply([HttpResponse.ResponseInfo](HttpResponse.ResponseInfo.md "interface in java.net.http") responseInfo)

    Returns a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http") considering the
    given response status code and headers. This method is invoked before
    the actual response body bytes are read and its implementation must
    return a [`BodySubscriber`](HttpResponse.BodySubscriber.md "interface in java.net.http") to consume the response
    body bytes.

    The response body can be discarded using one of [`discarding`](HttpResponse.BodyHandlers.md#discarding()) or [`replacing`](HttpResponse.BodyHandlers.md#replacing(U)).

    Parameters:
    :   `responseInfo` - the response info

    Returns:
    :   a body subscriber