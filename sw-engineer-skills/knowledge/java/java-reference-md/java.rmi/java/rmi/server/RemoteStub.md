Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Class RemoteStub

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.rmi.server.RemoteObject](RemoteObject.md "class in java.rmi.server")

java.rmi.server.RemoteStub

All Implemented Interfaces:
:   `Serializable`, `Remote`

Direct Known Subclasses:
:   `RMIConnectionImpl_Stub`, `RMIServerImpl_Stub`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public abstract class RemoteStub
extends [RemoteObject](RemoteObject.md "class in java.rmi.server")

Deprecated.

Statically generated stubs are deprecated, since
stubs are generated dynamically. See [`UnicastRemoteObject`](UnicastRemoteObject.md "class in java.rmi.server")
for information about dynamic stub generation.

The `RemoteStub` class is the common superclass of
statically generated client
stubs and provides the framework to support a wide range of remote
reference semantics. Stub objects are surrogates that support
exactly the same set of remote interfaces defined by the actual
implementation of the remote object.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.rmi.server.RemoteStub)

* ## Field Summary

  ### Fields inherited from class java.rmi.server.[RemoteObject](RemoteObject.md "class in java.rmi.server")

  `ref`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `RemoteStub()`

  Deprecated.

  Constructs a `RemoteStub`.

  `protected`

  `RemoteStub(RemoteRef ref)`

  Deprecated.

  Constructs a `RemoteStub` with the specified remote
  reference.
* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `protected static void`

  `setRef(RemoteStub stub,
  RemoteRef ref)`

  Deprecated.

  No replacement.

  ### Methods inherited from class java.rmi.server.[RemoteObject](RemoteObject.md "class in java.rmi.server")

  `equals, getRef, hashCode, toString, toStub`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RemoteStub

    protected RemoteStub()

    Deprecated.

    Constructs a `RemoteStub`.
  + ### RemoteStub

    protected RemoteStub([RemoteRef](RemoteRef.md "interface in java.rmi.server") ref)

    Deprecated.

    Constructs a `RemoteStub` with the specified remote
    reference.

    Parameters:
    :   `ref` - the remote reference

    Since:
    :   1.1
* ## Method Details

  + ### setRef

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected static void setRef([RemoteStub](RemoteStub.md "class in java.rmi.server") stub,
    [RemoteRef](RemoteRef.md "interface in java.rmi.server") ref)

    Deprecated.

    No replacement. The `setRef` method
    was intended for setting the remote reference of a remote
    stub. This is unnecessary, since `RemoteStub`s can be created
    and initialized with a remote reference through use of
    the [`RemoteStub(RemoteRef)`](#%3Cinit%3E(java.rmi.server.RemoteRef)) constructor.

    Throws [`UnsupportedOperationException`](../../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang").

    Parameters:
    :   `stub` - the remote stub
    :   `ref` - the remote reference

    Throws:
    :   `UnsupportedOperationException` - always

    Since:
    :   1.1