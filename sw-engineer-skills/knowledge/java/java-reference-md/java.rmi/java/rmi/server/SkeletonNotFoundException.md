Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class SkeletonNotFoundException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

[java.rmi.RemoteException](../RemoteException.md "class in java.rmi")

java.rmi.server.SkeletonNotFoundException

All Implemented Interfaces:
:   `Serializable`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public class SkeletonNotFoundException
extends [RemoteException](../RemoteException.md "class in java.rmi")

Deprecated.

no replacement. Skeletons are no longer required for remote
method calls in the Java 2 platform v1.2 and greater.

A `SkeletonNotFoundException` is thrown if the
`Skeleton` corresponding to the remote object being
exported is not found. Skeletons are no longer required, so this
exception is never thrown.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.rmi.server.SkeletonNotFoundException)

* ## Field Summary

  ### Fields inherited from class java.rmi.[RemoteException](../RemoteException.md "class in java.rmi")

  `detail`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SkeletonNotFoundException(String s)`

  Deprecated.

  Constructs a `SkeletonNotFoundException` with the specified
  detail message.

  `SkeletonNotFoundException(String s,
  Exception ex)`

  Deprecated.

  Constructs a `SkeletonNotFoundException` with the specified
  detail message and nested exception.
* ## Method Summary

  ### Methods inherited from class java.rmi.[RemoteException](../RemoteException.md "class in java.rmi")

  `getCause, getMessage`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SkeletonNotFoundException

    public SkeletonNotFoundException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Deprecated.

    Constructs a `SkeletonNotFoundException` with the specified
    detail message.

    Parameters:
    :   `s` - the detail message.

    Since:
    :   1.1
  + ### SkeletonNotFoundException

    public SkeletonNotFoundException([String](../../../../java.base/java/lang/String.md "class in java.lang") s,
    [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") ex)

    Deprecated.

    Constructs a `SkeletonNotFoundException` with the specified
    detail message and nested exception.

    Parameters:
    :   `s` - the detail message.
    :   `ex` - the nested exception

    Since:
    :   1.1