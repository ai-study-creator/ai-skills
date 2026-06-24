Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class ServerNotActiveException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

java.rmi.server.ServerNotActiveException

All Implemented Interfaces:
:   `Serializable`

---

public class ServerNotActiveException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

An `ServerNotActiveException` is an `Exception`
thrown during a call to `RemoteServer.getClientHost` if
the getClientHost method is called outside of servicing a remote
method call.

Since:
:   1.1

See Also:
:   * [`RemoteServer.getClientHost()`](RemoteServer.md#getClientHost())
    * [Serialized Form](../../../../serialized-form.md#java.rmi.server.ServerNotActiveException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ServerNotActiveException()`

  Constructs an `ServerNotActiveException` with no specified
  detail message.

  `ServerNotActiveException(String s)`

  Constructs an `ServerNotActiveException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ServerNotActiveException

    public ServerNotActiveException()

    Constructs an `ServerNotActiveException` with no specified
    detail message.

    Since:
    :   1.1
  + ### ServerNotActiveException

    public ServerNotActiveException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an `ServerNotActiveException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.

    Since:
    :   1.1