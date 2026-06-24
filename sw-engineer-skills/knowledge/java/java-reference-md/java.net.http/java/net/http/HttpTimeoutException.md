Module [java.net.http](../../../module-summary.md)

Package [java.net.http](package-summary.md)

# Class HttpTimeoutException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

java.net.http.HttpTimeoutException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `HttpConnectTimeoutException`

---

public class HttpTimeoutException
extends [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

Thrown when a response is not received within a specified time period.

Since:
:   11

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.net.http.HttpTimeoutException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HttpTimeoutException(String message)`

  Constructs an `HttpTimeoutException` with the given detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### HttpTimeoutException

    public HttpTimeoutException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs an `HttpTimeoutException` with the given detail message.

    Parameters:
    :   `message` - The detail message; can be `null`