Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class HttpRetryException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

java.net.HttpRetryException

All Implemented Interfaces:
:   `Serializable`

---

public class HttpRetryException
extends [IOException](../io/IOException.md "class in java.io")

Thrown to indicate that a HTTP request needs to be retried
but cannot be retried automatically, due to streaming mode
being enabled.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.HttpRetryException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HttpRetryException(String detail,
  int code)`

  Constructs a new `HttpRetryException` from the
  specified response code and exception detail message

  `HttpRetryException(String detail,
  int code,
  String location)`

  Constructs a new `HttpRetryException` with detail message
  responseCode and the contents of the Location response header field.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getLocation()`

  Returns the value of the Location header field if the
  error resulted from redirection.

  `String`

  `getReason()`

  Returns a string explaining why the http request could
  not be retried.

  `int`

  `responseCode()`

  Returns the http response code

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### HttpRetryException

    public HttpRetryException([String](../lang/String.md "class in java.lang") detail,
    int code)

    Constructs a new `HttpRetryException` from the
    specified response code and exception detail message

    Parameters:
    :   `detail` - the detail message.
    :   `code` - the HTTP response code from server.
  + ### HttpRetryException

    public HttpRetryException([String](../lang/String.md "class in java.lang") detail,
    int code,
    [String](../lang/String.md "class in java.lang") location)

    Constructs a new `HttpRetryException` with detail message
    responseCode and the contents of the Location response header field.

    Parameters:
    :   `detail` - the detail message.
    :   `code` - the HTTP response code from server.
    :   `location` - the URL to be redirected to
* ## Method Details

  + ### responseCode

    public int responseCode()

    Returns the http response code

    Returns:
    :   The http response code.
  + ### getReason

    public [String](../lang/String.md "class in java.lang") getReason()

    Returns a string explaining why the http request could
    not be retried.

    Returns:
    :   The reason string
  + ### getLocation

    public [String](../lang/String.md "class in java.lang") getLocation()

    Returns the value of the Location header field if the
    error resulted from redirection.

    Returns:
    :   The location string