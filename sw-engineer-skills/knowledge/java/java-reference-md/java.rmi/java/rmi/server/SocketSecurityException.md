Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class SocketSecurityException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](../RemoteException.md "class in java.rmi")

[java.rmi.server.ExportException](ExportException.md "class in java.rmi.server")

java.rmi.server.SocketSecurityException

All Implemented Interfaces:
:   `Serializable`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public class SocketSecurityException
extends [ExportException](ExportException.md "class in java.rmi.server")

Deprecated.

This class is obsolete. Use [`ExportException`](ExportException.md "class in java.rmi.server") instead.

An obsolete subclass of [`ExportException`](ExportException.md "class in java.rmi.server").

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.rmi.server.SocketSecurityException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](../RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SocketSecurityException(String s)`

  Deprecated.

  Constructs an `SocketSecurityException` with the specified
  detail message.

  `SocketSecurityException(String s,
  Exception ex)`

  Deprecated.

  Constructs an `SocketSecurityException` with the specified
  detail message and nested exception.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](../RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SocketSecurityException

    public SocketSecurityException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Deprecated.

    Constructs an `SocketSecurityException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.

    Since:
    :   1.1
  + ### SocketSecurityException

    public SocketSecurityException([String](../../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    Deprecated.

    Constructs an `SocketSecurityException` with the specified
    detail message and nested exception.

    Parameters:
    :   `s` - the detail message.
    :   `ex` - the nested exception

    Since:
    :   1.1