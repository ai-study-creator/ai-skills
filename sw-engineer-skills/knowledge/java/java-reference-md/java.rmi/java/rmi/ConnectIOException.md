Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class ConnectIOException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](RemoteException.md "class in java.rmi")

java.rmi.ConnectIOException

All Implemented Interfaces:
:   `Serializable`

---

public class ConnectIOException
extends [RemoteException](RemoteException.md "class in java.rmi")

A `ConnectIOException` is thrown if an
`IOException` occurs while making a connection
to the remote host for a remote method call.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.rmi.ConnectIOException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ConnectIOException(String s)`

  Constructs a `ConnectIOException` with the specified
  detail message.

  `ConnectIOException(String s,
  Exception ex)`

  Constructs a `ConnectIOException` with the specified
  detail message and nested exception.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ConnectIOException

    public ConnectIOException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a `ConnectIOException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.1
  + ### ConnectIOException

    public ConnectIOException([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    Constructs a `ConnectIOException` with the specified
    detail message and nested exception.

    Parameters:
    :   `s` - the detail message
    :   `ex` - the nested exception

    Since:
    :   1.1