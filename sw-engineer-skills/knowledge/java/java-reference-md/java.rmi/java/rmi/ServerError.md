Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class ServerError

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](RemoteException.md "class in java.rmi")

java.rmi.ServerError

All Implemented Interfaces:
:   `Serializable`

---

public class ServerError
extends [RemoteException](RemoteException.md "class in java.rmi")

A `ServerError` is thrown as a result of a remote method
invocation when an `Error` is thrown while processing
the invocation on the server, either while unmarshalling the arguments,
executing the remote method itself, or marshalling the return value.
A `ServerError` instance contains the original
`Error` that occurred as its cause.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.rmi.ServerError)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ServerError(String s,
  Error err)`

  Constructs a `ServerError` with the specified
  detail message and nested error.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ServerError

    public ServerError([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Error](../../../java.base/java/lang/Error.md "class in java.lang") err)

    Constructs a `ServerError` with the specified
    detail message and nested error.

    Parameters:
    :   `s` - the detail message
    :   `err` - the nested error

    Since:
    :   1.1