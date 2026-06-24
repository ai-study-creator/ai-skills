Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class ServerRuntimeException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](RemoteException.md "class in java.rmi")

java.rmi.ServerRuntimeException

All Implemented Interfaces:
:   `Serializable`

---

[@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public class ServerRuntimeException
extends [RemoteException](RemoteException.md "class in java.rmi")

Deprecated.

no replacement

From a server executing on JDK 1.1, a
`ServerRuntimeException` is thrown as a result of a
remote method invocation when a `RuntimeException` is
thrown while processing the invocation on the server, either while
unmarshalling the arguments, executing the remote method itself, or
marshalling the return value.
A `ServerRuntimeException` instance contains the original
`RuntimeException` that occurred as its cause.

A `ServerRuntimeException` is not thrown from servers
executing on the Java 2 platform v1.2 or later versions.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.rmi.ServerRuntimeException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ServerRuntimeException(String s,
  Exception ex)`

  Deprecated.

  no replacement
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ServerRuntimeException

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public ServerRuntimeException([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    Deprecated.

    no replacement

    Constructs a `ServerRuntimeException` with the specified
    detail message and nested exception.

    Parameters:
    :   `s` - the detail message
    :   `ex` - the nested exception

    Since:
    :   1.1