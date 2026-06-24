Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Class HttpConnectTimeoutException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

[java.net.http.HttpTimeoutException](HttpTimeoutException.md "class in java.net.http")

java.net.http.HttpConnectTimeoutException

All Implemented Interfaces:
:   `Serializable`

---

public class HttpConnectTimeoutException
extends [HttpTimeoutException](HttpTimeoutException.md "class in java.net.http")

Thrown when a connection, over which an `HttpRequest` is intended to be
sent, is not successfully established within a specified time period.

Since:
:   11

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.net.http.HttpConnectTimeoutException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HttpConnectTimeoutException(String message)`

  Constructs an `HttpConnectTimeoutException` with the given detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### HttpConnectTimeoutException

    public HttpConnectTimeoutException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs an `HttpConnectTimeoutException` with the given detail
    message.

    Parameters:
    :   `message` - The detail message; can be `null`