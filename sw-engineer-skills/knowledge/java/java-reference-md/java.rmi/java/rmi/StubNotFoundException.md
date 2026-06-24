Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class StubNotFoundException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](RemoteException.md "class in java.rmi")

java.rmi.StubNotFoundException

All Implemented Interfaces:
:   `Serializable`

---

public class StubNotFoundException
extends [RemoteException](RemoteException.md "class in java.rmi")

A `StubNotFoundException` is thrown if a valid stub class
could not be found for a remote object when it is exported.

Since:
:   1.1

See Also:
:   * [`UnicastRemoteObject`](server/UnicastRemoteObject.md "class in java.rmi.server")
    * [Serialized Form](../../../serialized-form.md#java.rmi.StubNotFoundException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StubNotFoundException(String s)`

  Constructs a `StubNotFoundException` with the specified
  detail message.

  `StubNotFoundException(String s,
  Exception ex)`

  Constructs a `StubNotFoundException` with the specified
  detail message and nested exception.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StubNotFoundException

    public StubNotFoundException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a `StubNotFoundException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.1
  + ### StubNotFoundException

    public StubNotFoundException([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    Constructs a `StubNotFoundException` with the specified
    detail message and nested exception.

    Parameters:
    :   `s` - the detail message
    :   `ex` - the nested exception

    Since:
    :   1.1