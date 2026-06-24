Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class NoSuchObjectException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](RemoteException.md "class in java.rmi")

java.rmi.NoSuchObjectException

All Implemented Interfaces:
:   `Serializable`

---

public class NoSuchObjectException
extends [RemoteException](RemoteException.md "class in java.rmi")

A `NoSuchObjectException` is thrown if an attempt is made to
invoke a method on an object that no longer exists in the remote virtual
machine. If a `NoSuchObjectException` occurs attempting to
invoke a method on a remote object, the call may be retransmitted and still
preserve RMI's "at most once" call semantics.
A `NoSuchObjectException` is also thrown by the method
`java.rmi.server.RemoteObject.toStub` and by the
`unexportObject` methods of
`java.rmi.server.UnicastRemoteObject`.

Since:
:   1.1

See Also:
:   * [`RemoteObject.toStub(Remote)`](server/RemoteObject.md#toStub(java.rmi.Remote))
    * [`UnicastRemoteObject.unexportObject(Remote,boolean)`](server/UnicastRemoteObject.md#unexportObject(java.rmi.Remote,boolean))
    * [Serialized Form](../../../serialized-form.md#java.rmi.NoSuchObjectException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NoSuchObjectException(String s)`

  Constructs a `NoSuchObjectException` with the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NoSuchObjectException

    public NoSuchObjectException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a `NoSuchObjectException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.1