Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class SocketException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

java.net.SocketException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `BindException`, `ConnectException`, `NoRouteToHostException`, `PortUnreachableException`

---

public class SocketException
extends [IOException](../io/IOException.md "class in java.io")

Thrown to indicate that there is an error creating or accessing a Socket.

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.SocketException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SocketException()`

  Constructs a new `SocketException` with no detail message.

  `SocketException(String msg)`

  Constructs a new `SocketException` with the
  specified detail message.

  `SocketException(String msg,
  Throwable cause)`

  Constructs a new `SocketException` with the
  specified detail message and cause.

  `SocketException(Throwable cause)`

  Constructs a new `SocketException` with the
  specified cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SocketException

    public SocketException([String](../lang/String.md "class in java.lang") msg)

    Constructs a new `SocketException` with the
    specified detail message.

    Parameters:
    :   `msg` - the detail message.
  + ### SocketException

    public SocketException()

    Constructs a new `SocketException` with no detail message.
  + ### SocketException

    public SocketException([String](../lang/String.md "class in java.lang") msg,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs a new `SocketException` with the
    specified detail message and cause.

    Parameters:
    :   `msg` - the detail message.
    :   `cause` - the cause

    Since:
    :   19
  + ### SocketException

    public SocketException([Throwable](../lang/Throwable.md "class in java.lang") cause)

    Constructs a new `SocketException` with the
    specified cause.

    Parameters:
    :   `cause` - the cause

    Since:
    :   19