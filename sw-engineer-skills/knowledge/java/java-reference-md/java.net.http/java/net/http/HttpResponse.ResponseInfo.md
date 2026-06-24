Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Interface HttpResponse.ResponseInfo

Enclosing interface:
:   `HttpResponse<T>`

---

public static interface HttpResponse.ResponseInfo

Initial response information supplied to a [`BodyHandler`](HttpResponse.BodyHandler.md "interface in java.net.http")
when a response is initially received and before the body is processed.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `HttpHeaders`

  `headers()`

  Provides the response headers.

  `int`

  `statusCode()`

  Provides the response status code.

  `HttpClient.Version`

  `version()`

  Provides the response protocol version.

* ## Method Details

  + ### statusCode

    int statusCode()

    Provides the response status code.

    Returns:
    :   the response status code
  + ### headers

    [HttpHeaders](HttpHeaders.md "class in java.net.http") headers()

    Provides the response headers.

    Returns:
    :   the response headers
  + ### version

    [HttpClient.Version](HttpClient.Version.md "enum class in java.net.http") version()

    Provides the response protocol version.

    Returns:
    :   the response protocol version