Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class AccessException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](RemoteException.md "class in java.rmi")

java.rmi.AccessException

All Implemented Interfaces:
:   `Serializable`

---

public class AccessException
extends [RemoteException](RemoteException.md "class in java.rmi")

An `AccessException` is thrown by certain methods of the
`java.rmi.Naming` class (specifically `bind`,
`rebind`, and `unbind`) to
indicate that the caller does not have permission to perform the action
requested by the method call. If the method was invoked from a non-local
host, then an `AccessException` is thrown.

Since:
:   1.1

See Also:
:   * [`Naming`](Naming.md "class in java.rmi")
    * [Serialized Form](../../../serialized-form.md#java.rmi.AccessException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessException(String s)`

  Constructs an `AccessException` with the specified
  detail message.

  `AccessException(String s,
  Exception ex)`

  Constructs an `AccessException` with the specified
  detail message and nested exception.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AccessException

    public AccessException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an `AccessException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.1
  + ### AccessException

    public AccessException([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    Constructs an `AccessException` with the specified
    detail message and nested exception.

    Parameters:
    :   `s` - the detail message
    :   `ex` - the nested exception

    Since:
    :   1.1