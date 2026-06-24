Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class ExportException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](../RemoteException.md "class in java.rmi")

java.rmi.server.ExportException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `SocketSecurityException`

---

public class ExportException
extends [RemoteException](../RemoteException.md "class in java.rmi")

An `ExportException` is a `RemoteException`
thrown if an attempt to export a remote object fails. A remote object is
exported via the constructors and `exportObject` methods of
`java.rmi.server.UnicastRemoteObject`.

Since:
:   1.1

See Also:
:   * [`UnicastRemoteObject`](UnicastRemoteObject.md "class in java.rmi.server")
    * [Serialized Form](../../../../serialized-form.md#java.rmi.server.ExportException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](../RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ExportException(String s)`

  Constructs an `ExportException` with the specified
  detail message.

  `ExportException(String s,
  Exception ex)`

  Constructs an `ExportException` with the specified
  detail message and nested exception.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](../RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ExportException

    public ExportException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an `ExportException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.1
  + ### ExportException

    public ExportException([String](../../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    Constructs an `ExportException` with the specified
    detail message and nested exception.

    Parameters:
    :   `s` - the detail message
    :   `ex` - the nested exception

    Since:
    :   1.1