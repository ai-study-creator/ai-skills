Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class PortUnreachableException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

[java.net.SocketException](SocketException.md "class in java.net")

java.net.PortUnreachableException

All Implemented Interfaces:
:   `Serializable`

---

public class PortUnreachableException
extends [SocketException](SocketException.md "class in java.net")

Signals that an ICMP Port Unreachable message has been
received on a connected datagram.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.PortUnreachableException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PortUnreachableException()`

  Construct a new `PortUnreachableException` with no
  detailed message.

  `PortUnreachableException(String msg)`

  Constructs a new `PortUnreachableException` with a
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PortUnreachableException

    public PortUnreachableException([String](../lang/String.md "class in java.lang") msg)

    Constructs a new `PortUnreachableException` with a
    detail message.

    Parameters:
    :   `msg` - the detail message
  + ### PortUnreachableException

    public PortUnreachableException()

    Construct a new `PortUnreachableException` with no
    detailed message.