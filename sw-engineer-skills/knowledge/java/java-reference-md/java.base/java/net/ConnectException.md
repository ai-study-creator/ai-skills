Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class ConnectException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

[java.net.SocketException](SocketException.md "class in java.net")

java.net.ConnectException

All Implemented Interfaces:
:   `Serializable`

---

public class ConnectException
extends [SocketException](SocketException.md "class in java.net")

Signals that an error occurred while attempting to connect a
socket to a remote address and port. Typically, the connection
was refused remotely (e.g., no process is listening on the
remote address/port).

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.ConnectException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ConnectException()`

  Construct a new ConnectException with no detailed message.

  `ConnectException(String msg)`

  Constructs a new ConnectException with the specified detail
  message as to why the connect error occurred.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ConnectException

    public ConnectException([String](../lang/String.md "class in java.lang") msg)

    Constructs a new ConnectException with the specified detail
    message as to why the connect error occurred.
    A detail message is a String that gives a specific
    description of this error.

    Parameters:
    :   `msg` - the detail message
  + ### ConnectException

    public ConnectException()

    Construct a new ConnectException with no detailed message.