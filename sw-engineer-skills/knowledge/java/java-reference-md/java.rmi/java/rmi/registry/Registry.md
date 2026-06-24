Module [java.rmi](../../../module-summary.md)

Package [java.rmi.registry](package-summary.md)

# Interface Registry

All Superinterfaces:
:   `Remote`

---

public interface Registry
extends [Remote](../Remote.md "interface in java.rmi")

`Registry` is a remote interface to a simple remote
object registry that provides methods for storing and retrieving
remote object references bound with arbitrary string names. The
`bind`, `unbind`, and `rebind`
methods are used to alter the name bindings in the registry, and
the `lookup` and `list` methods are used to
query the current name bindings.

In its typical usage, a `Registry` enables RMI client
bootstrapping: it provides a simple means for a client to obtain an
initial reference to a remote object. Therefore, a registry's
remote object implementation is typically exported with a
well-known address, such as with a well-known [`ObjID`](../server/ObjID.md#REGISTRY_ID) and TCP port number
(default is [`1099`](#REGISTRY_PORT)).

The [`LocateRegistry`](LocateRegistry.md "class in java.rmi.registry") class provides a programmatic API for
constructing a bootstrap reference to a `Registry` at a
remote address (see the static `getRegistry` methods)
and for creating and exporting a `Registry` in the
current VM on a particular local address (see the static
`createRegistry` methods).

A `Registry` implementation may choose to restrict
access to some or all of its methods (for example, methods that
mutate the registry's bindings may be restricted to calls
originating from the local host). If a `Registry`
method chooses to deny access for a given invocation, its
implementation may throw [`AccessException`](../AccessException.md "class in java.rmi"), which
(because it extends [`RemoteException`](../RemoteException.md "class in java.rmi")) will be
wrapped in a [`ServerException`](../ServerException.md "class in java.rmi") when caught by a
remote client.

The names used for bindings in a `Registry` are pure
strings, not parsed. A service which stores its remote reference
in a `Registry` may wish to use a package name as a
prefix in the name binding to reduce the likelihood of name
collisions in the registry.

Since:
:   1.1

See Also:
:   * [`LocateRegistry`](LocateRegistry.md "class in java.rmi.registry")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `REGISTRY_PORT`

  Well known port for registry.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `bind(String name,
  Remote obj)`

  Binds a remote reference to the specified `name` in
  this registry.

  `String[]`

  `list()`

  Returns an array of the names bound in this registry.

  `Remote`

  `lookup(String name)`

  Returns the remote reference bound to the specified
  `name` in this registry.

  `void`

  `rebind(String name,
  Remote obj)`

  Replaces the binding for the specified `name` in
  this registry with the supplied remote reference.

  `void`

  `unbind(String name)`

  Removes the binding for the specified `name` in
  this registry.

* ## Field Details

  + ### REGISTRY\_PORT

    static final int REGISTRY\_PORT

    Well known port for registry.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.registry.Registry.REGISTRY_PORT)
* ## Method Details

  + ### lookup

    [Remote](../Remote.md "interface in java.rmi") lookup([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [RemoteException](../RemoteException.md "class in java.rmi"),
    [NotBoundException](../NotBoundException.md "class in java.rmi"),
    [AccessException](../AccessException.md "class in java.rmi")

    Returns the remote reference bound to the specified
    `name` in this registry.

    Parameters:
    :   `name` - the name for the remote reference to look up

    Returns:
    :   a reference to a remote object

    Throws:
    :   `NotBoundException` - if `name` is not currently bound
    :   `RemoteException` - if remote communication with the
        registry failed; if exception is a `ServerException`
        containing an `AccessException`, then the registry
        denies the caller access to perform this operation
    :   `AccessException` - if this registry is local and it denies
        the caller access to perform this operation
    :   `NullPointerException` - if `name` is `null`
  + ### bind

    void bind([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Remote](../Remote.md "interface in java.rmi") obj)
    throws [RemoteException](../RemoteException.md "class in java.rmi"),
    [AlreadyBoundException](../AlreadyBoundException.md "class in java.rmi"),
    [AccessException](../AccessException.md "class in java.rmi")

    Binds a remote reference to the specified `name` in
    this registry.

    Parameters:
    :   `name` - the name to associate with the remote reference
    :   `obj` - a reference to a remote object (usually a stub)

    Throws:
    :   `AlreadyBoundException` - if `name` is already bound
    :   `RemoteException` - if remote communication with the
        registry failed; if exception is a `ServerException`
        containing an `AccessException`, then the registry
        denies the caller access to perform this operation (if
        originating from a non-local host, for example)
    :   `AccessException` - if this registry is local and it denies
        the caller access to perform this operation
    :   `NullPointerException` - if `name` is
        `null`, or if `obj` is `null`
  + ### unbind

    void unbind([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [RemoteException](../RemoteException.md "class in java.rmi"),
    [NotBoundException](../NotBoundException.md "class in java.rmi"),
    [AccessException](../AccessException.md "class in java.rmi")

    Removes the binding for the specified `name` in
    this registry.

    Parameters:
    :   `name` - the name of the binding to remove

    Throws:
    :   `NotBoundException` - if `name` is not currently bound
    :   `RemoteException` - if remote communication with the
        registry failed; if exception is a `ServerException`
        containing an `AccessException`, then the registry
        denies the caller access to perform this operation (if
        originating from a non-local host, for example)
    :   `AccessException` - if this registry is local and it denies
        the caller access to perform this operation
    :   `NullPointerException` - if `name` is `null`
  + ### rebind

    void rebind([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Remote](../Remote.md "interface in java.rmi") obj)
    throws [RemoteException](../RemoteException.md "class in java.rmi"),
    [AccessException](../AccessException.md "class in java.rmi")

    Replaces the binding for the specified `name` in
    this registry with the supplied remote reference. If there is
    an existing binding for the specified `name`, it is
    discarded.

    Parameters:
    :   `name` - the name to associate with the remote reference
    :   `obj` - a reference to a remote object (usually a stub)

    Throws:
    :   `RemoteException` - if remote communication with the
        registry failed; if exception is a `ServerException`
        containing an `AccessException`, then the registry
        denies the caller access to perform this operation (if
        originating from a non-local host, for example)
    :   `AccessException` - if this registry is local and it denies
        the caller access to perform this operation
    :   `NullPointerException` - if `name` is
        `null`, or if `obj` is `null`
  + ### list

    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] list()
    throws [RemoteException](../RemoteException.md "class in java.rmi"),
    [AccessException](../AccessException.md "class in java.rmi")

    Returns an array of the names bound in this registry. The
    array will contain a snapshot of the names bound in this
    registry at the time of the given invocation of this method.

    Returns:
    :   an array of the names bound in this registry

    Throws:
    :   `RemoteException` - if remote communication with the
        registry failed; if exception is a `ServerException`
        containing an `AccessException`, then the registry
        denies the caller access to perform this operation
    :   `AccessException` - if this registry is local and it denies
        the caller access to perform this operation