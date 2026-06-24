Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class ServerException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](RemoteException.md "class in java.rmi")

java.rmi.ServerException

All Implemented Interfaces:
:   `Serializable`

---

public class ServerException
extends [RemoteException](RemoteException.md "class in java.rmi")

A `ServerException` is thrown as a result of a remote method
invocation when a `RemoteException` is thrown while processing
the invocation on the server, either while unmarshalling the arguments or
executing the remote method itself.
A `ServerException` instance contains the original
`RemoteException` that occurred as its cause.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.rmi.ServerException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ServerException(String s)`

  Constructs a `ServerException` with the specified
  detail message.

  `ServerException(String s,
  Exception ex)`

  Constructs a `ServerException` with the specified
  detail message and nested exception.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ServerException

    public ServerException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a `ServerException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.1
  + ### ServerException

    public ServerException([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    Constructs a `ServerException` with the specified
    detail message and nested exception.

    Parameters:
    :   `s` - the detail message
    :   `ex` - the nested exception

    Since:
    :   1.1