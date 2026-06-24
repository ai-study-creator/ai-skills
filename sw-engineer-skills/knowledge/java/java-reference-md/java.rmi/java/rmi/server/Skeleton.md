Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Interface Skeleton

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public interface Skeleton

Deprecated.

no replacement. Skeletons are no longer required for remote
method calls in the Java 2 platform v1.2 and greater.

The `Skeleton` interface is used solely by the RMI
implementation.

Every version 1.1 compatible skeleton implements this interface.
A skeleton for a remote object is a server-side entity that dispatches calls
to the actual remote object implementation.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `dispatch(Remote obj,
  RemoteCall theCall,
  int opnum,
  long hash)`

  Deprecated.

  no replacement

  `Operation[]`

  `getOperations()`

  Deprecated.

  no replacement

* ## Method Details

  + ### dispatch

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    void dispatch([Remote](../Remote.md "interface in java.rmi") obj,
    [RemoteCall](RemoteCall.md "interface in java.rmi.server") theCall,
    int opnum,
    long hash)
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Deprecated.

    no replacement

    Unmarshals arguments, calls the actual remote object implementation,
    and marshals the return value or any exception.

    Parameters:
    :   `obj` - remote implementation to dispatch call to
    :   `theCall` - object representing remote call
    :   `opnum` - operation number
    :   `hash` - stub/skeleton interface hash

    Throws:
    :   `Exception` - if a general exception occurs.

    Since:
    :   1.1
  + ### getOperations

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [Operation](Operation.md "class in java.rmi.server")[] getOperations()

    Deprecated.

    no replacement

    Returns the operations supported by the skeleton.

    Returns:
    :   operations supported by skeleton

    Since:
    :   1.1