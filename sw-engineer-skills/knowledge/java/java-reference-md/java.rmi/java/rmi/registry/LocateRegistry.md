Module [java.rmi](../../../module-summary.md)

Package [java.rmi.registry](package-summary.md)

# Class LocateRegistry

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.registry.LocateRegistry

---

public final class LocateRegistry
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

`LocateRegistry` is used to obtain a reference to a bootstrap
remote object registry on a particular host (including the local host), or
to create a remote object registry that accepts calls on a specific port.

Note that a `getRegistry` call does not actually make a
connection to the remote host. It simply creates a local reference to
the remote registry and will succeed even if no registry is running on
the remote host. Therefore, a subsequent method invocation to a remote
registry returned as a result of this method may fail.

Since:
:   1.1

See Also:
:   * [`Registry`](Registry.md "interface in java.rmi.registry")

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Registry`

  `createRegistry(int port)`

  Creates and exports a `Registry` instance on the local
  host that accepts requests on the specified `port`.

  `static Registry`

  `createRegistry(int port,
  RMIClientSocketFactory csf,
  RMIServerSocketFactory ssf)`

  Creates and exports a `Registry` instance on the local
  host that uses custom socket factories for communication with that
  instance.

  `static Registry`

  `getRegistry()`

  Returns a reference to the remote object `Registry` for
  the local host on the default registry port of 1099.

  `static Registry`

  `getRegistry(int port)`

  Returns a reference to the remote object `Registry` for
  the local host on the specified `port`.

  `static Registry`

  `getRegistry(String host)`

  Returns a reference to the remote object `Registry` on the
  specified `host` on the default registry port of 1099.

  `static Registry`

  `getRegistry(String host,
  int port)`

  Returns a reference to the remote object `Registry` on the
  specified `host` and `port`.

  `static Registry`

  `getRegistry(String host,
  int port,
  RMIClientSocketFactory csf)`

  Returns a locally created remote reference to the remote object
  `Registry` on the specified `host` and
  `port`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### getRegistry

    public static [Registry](Registry.md "interface in java.rmi.registry") getRegistry()
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Returns a reference to the remote object `Registry` for
    the local host on the default registry port of 1099.

    Returns:
    :   reference (a stub) to the remote object registry

    Throws:
    :   `RemoteException` - if the reference could not be created

    Since:
    :   1.1
  + ### getRegistry

    public static [Registry](Registry.md "interface in java.rmi.registry") getRegistry(int port)
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Returns a reference to the remote object `Registry` for
    the local host on the specified `port`.

    Parameters:
    :   `port` - port on which the registry accepts requests

    Returns:
    :   reference (a stub) to the remote object registry

    Throws:
    :   `RemoteException` - if the reference could not be created

    Since:
    :   1.1
  + ### getRegistry

    public static [Registry](Registry.md "interface in java.rmi.registry") getRegistry([String](../../../../java.base/java/lang/String.md "class in java.lang") host)
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Returns a reference to the remote object `Registry` on the
    specified `host` on the default registry port of 1099. If
    `host` is `null`, the local host is used.

    Parameters:
    :   `host` - host for the remote registry

    Returns:
    :   reference (a stub) to the remote object registry

    Throws:
    :   `RemoteException` - if the reference could not be created

    Since:
    :   1.1
  + ### getRegistry

    public static [Registry](Registry.md "interface in java.rmi.registry") getRegistry([String](../../../../java.base/java/lang/String.md "class in java.lang") host,
    int port)
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Returns a reference to the remote object `Registry` on the
    specified `host` and `port`. If `host`
    is `null`, the local host is used.

    Parameters:
    :   `host` - host for the remote registry
    :   `port` - port on which the registry accepts requests

    Returns:
    :   reference (a stub) to the remote object registry

    Throws:
    :   `RemoteException` - if the reference could not be created

    Since:
    :   1.1
  + ### getRegistry

    public static [Registry](Registry.md "interface in java.rmi.registry") getRegistry([String](../../../../java.base/java/lang/String.md "class in java.lang") host,
    int port,
    [RMIClientSocketFactory](../server/RMIClientSocketFactory.md "interface in java.rmi.server") csf)
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Returns a locally created remote reference to the remote object
    `Registry` on the specified `host` and
    `port`. Communication with this remote registry will
    use the supplied `RMIClientSocketFactory` `csf`
    to create `Socket` connections to the registry on the
    remote `host` and `port`.

    Parameters:
    :   `host` - host for the remote registry
    :   `port` - port on which the registry accepts requests
    :   `csf` - client-side `Socket` factory used to
        make connections to the registry. If `csf`
        is null, then the default client-side `Socket`
        factory will be used in the registry stub.

    Returns:
    :   reference (a stub) to the remote registry

    Throws:
    :   `RemoteException` - if the reference could not be created

    Since:
    :   1.2
  + ### createRegistry

    public static [Registry](Registry.md "interface in java.rmi.registry") createRegistry(int port)
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Creates and exports a `Registry` instance on the local
    host that accepts requests on the specified `port`.

    The `Registry` instance is exported as if the static
    [`UnicastRemoteObject.exportObject`](../server/UnicastRemoteObject.md#exportObject(java.rmi.Remote,int)) method is invoked, passing the
    `Registry` instance and the specified `port` as
    arguments, except that the `Registry` instance is
    exported with a well-known object identifier, an [`ObjID`](../server/ObjID.md "class in java.rmi.server")
    instance constructed with the value [`ObjID.REGISTRY_ID`](../server/ObjID.md#REGISTRY_ID).

    Parameters:
    :   `port` - the port on which the registry accepts requests

    Returns:
    :   the registry

    Throws:
    :   `RemoteException` - if the registry could not be exported

    Since:
    :   1.1
  + ### createRegistry

    public static [Registry](Registry.md "interface in java.rmi.registry") createRegistry(int port,
    [RMIClientSocketFactory](../server/RMIClientSocketFactory.md "interface in java.rmi.server") csf,
    [RMIServerSocketFactory](../server/RMIServerSocketFactory.md "interface in java.rmi.server") ssf)
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Creates and exports a `Registry` instance on the local
    host that uses custom socket factories for communication with that
    instance. The registry that is created listens for incoming
    requests on the given `port` using a
    `ServerSocket` created from the supplied
    `RMIServerSocketFactory`.

    The `Registry` instance is exported as if
    the static [`UnicastRemoteObject.exportObject`](../server/UnicastRemoteObject.md#exportObject(java.rmi.Remote,int,java.rmi.server.RMIClientSocketFactory,java.rmi.server.RMIServerSocketFactory)) method is invoked, passing the
    `Registry` instance, the specified `port`, the
    specified `RMIClientSocketFactory`, and the specified
    `RMIServerSocketFactory` as arguments, except that the
    `Registry` instance is exported with a well-known object
    identifier, an [`ObjID`](../server/ObjID.md "class in java.rmi.server") instance constructed with the value
    [`ObjID.REGISTRY_ID`](../server/ObjID.md#REGISTRY_ID).

    Parameters:
    :   `port` - port on which the registry accepts requests
    :   `csf` - client-side `Socket` factory used to
        make connections to the registry
    :   `ssf` - server-side `ServerSocket` factory
        used to accept connections to the registry

    Returns:
    :   the registry

    Throws:
    :   `RemoteException` - if the registry could not be exported

    Since:
    :   1.2