Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class SocketTimeoutException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

[java.io.InterruptedIOException](../io/InterruptedIOException.md "class in java.io")

java.net.SocketTimeoutException

All Implemented Interfaces:
:   `Serializable`

---

public class SocketTimeoutException
extends [InterruptedIOException](../io/InterruptedIOException.md "class in java.io")

Signals that a timeout has occurred on a socket read or accept.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.SocketTimeoutException)

* ## Field Summary

  ### Fields inherited from class java.io.[InterruptedIOException](../io/InterruptedIOException.md "class in java.io")

  `bytesTransferred`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SocketTimeoutException()`

  Construct a new SocketTimeoutException with no detailed message.

  `SocketTimeoutException(String msg)`

  Constructs a new SocketTimeoutException with a detail
  message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SocketTimeoutException

    public SocketTimeoutException([String](../lang/String.md "class in java.lang") msg)

    Constructs a new SocketTimeoutException with a detail
    message.

    Parameters:
    :   `msg` - the detail message
  + ### SocketTimeoutException

    public SocketTimeoutException()

    Construct a new SocketTimeoutException with no detailed message.