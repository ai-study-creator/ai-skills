Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class NoRouteToHostException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

[java.net.SocketException](SocketException.md "class in java.net")

java.net.NoRouteToHostException

All Implemented Interfaces:
:   `Serializable`

---

public class NoRouteToHostException
extends [SocketException](SocketException.md "class in java.net")

Signals that an error occurred while attempting to connect a
socket to a remote address and port. Typically, the remote
host cannot be reached because of an intervening firewall, or
if an intermediate router is down.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.NoRouteToHostException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoRouteToHostException()`

  Construct a new NoRouteToHostException with no detailed message.

  `NoRouteToHostException(String msg)`

  Constructs a new NoRouteToHostException with the specified detail
  message as to why the remote host cannot be reached.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoRouteToHostException

    public NoRouteToHostException([String](../lang/String.md "class in java.lang") msg)

    Constructs a new NoRouteToHostException with the specified detail
    message as to why the remote host cannot be reached.
    A detail message is a String that gives a specific
    description of this error.

    Parameters:
    :   `msg` - the detail message
  + ### NoRouteToHostException

    public NoRouteToHostException()

    Construct a new NoRouteToHostException with no detailed message.