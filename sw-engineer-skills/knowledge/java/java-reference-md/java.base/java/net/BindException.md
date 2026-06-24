Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class BindException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](../io/IOException.md "class in java.io")

[java.net.SocketException](SocketException.md "class in java.net")

java.net.BindException

All Implemented Interfaces:
:   `Serializable`

---

public class BindException
extends [SocketException](SocketException.md "class in java.net")

Signals that an error occurred while attempting to bind a
socket to a local address and port. Typically, the port is
in use, or the requested local address could not be assigned.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.net.BindException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BindException()`

  Construct a new BindException with no detailed message.

  `BindException(String msg)`

  Constructs a new BindException with the specified detail
  message as to why the bind error occurred.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BindException

    public BindException([String](../lang/String.md "class in java.lang") msg)

    Constructs a new BindException with the specified detail
    message as to why the bind error occurred.
    A detail message is a String that gives a specific
    description of this error.

    Parameters:
    :   `msg` - the detail message
  + ### BindException

    public BindException()

    Construct a new BindException with no detailed message.