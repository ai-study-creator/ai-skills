Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class MarshalException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](RemoteException.md "class in java.rmi")

java.rmi.MarshalException

All Implemented Interfaces:
:   `Serializable`

---

public class MarshalException
extends [RemoteException](RemoteException.md "class in java.rmi")

A `MarshalException` is thrown if a
`java.io.IOException` occurs while marshalling the remote call
header, arguments or return value for a remote method call. A
`MarshalException` is also thrown if the receiver does not
support the protocol version of the sender.

If a `MarshalException` occurs during a remote method call,
the call may or may not have reached the server. If the call did reach the
server, parameters may have been deserialized. A call may not be
retransmitted after a `MarshalException` and reliably preserve
"at most once" call semantics.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.rmi.MarshalException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MarshalException(String s)`

  Constructs a `MarshalException` with the specified
  detail message.

  `MarshalException(String s,
  Exception ex)`

  Constructs a `MarshalException` with the specified
  detail message and nested exception.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MarshalException

    public MarshalException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs a `MarshalException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.1
  + ### MarshalException

    public MarshalException([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    Constructs a `MarshalException` with the specified
    detail message and nested exception.

    Parameters:
    :   `s` - the detail message
    :   `ex` - the nested exception

    Since:
    :   1.1