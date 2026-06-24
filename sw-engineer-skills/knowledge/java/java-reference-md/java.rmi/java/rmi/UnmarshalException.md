Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class UnmarshalException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](RemoteException.md "class in java.rmi")

java.rmi.UnmarshalException

All Implemented Interfaces:
:   `Serializable`

---

public class UnmarshalException
extends [RemoteException](RemoteException.md "class in java.rmi")

An `UnmarshalException` can be thrown while unmarshalling the
parameters or results of a remote method call if any of the following
conditions occur:

* if an exception occurs while unmarshalling the call header* if the protocol for the return value is invalid* if a `java.io.IOException` occurs unmarshalling
      parameters (on the server side) or the return value (on the client side).* if a `java.lang.ClassNotFoundException` occurs during
        unmarshalling parameters or return values* if no skeleton can be loaded on the server-side; note that skeletons
          are required in the 1.1 stub protocol, but not in the 1.2 stub protocol.* if the method hash is invalid (i.e., missing method).* if there is a failure to create a remote reference object for
              a remote object's stub when it is unmarshalled.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.rmi.UnmarshalException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnmarshalException(String s)`

  Constructs an `UnmarshalException` with the specified
  detail message.

  `UnmarshalException(String s,
  Exception ex)`

  Constructs an `UnmarshalException` with the specified
  detail message and nested exception.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnmarshalException

    public UnmarshalException([String](../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructs an `UnmarshalException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message

    Since:
    :   1.1
  + ### UnmarshalException

    public UnmarshalException([String](../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    Constructs an `UnmarshalException` with the specified
    detail message and nested exception.

    Parameters:
    :   `s` - the detail message
    :   `ex` - the nested exception

    Since:
    :   1.1