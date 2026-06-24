Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Class Naming

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.rmi.Naming

---

public final class Naming
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

The `Naming` class provides methods for storing and obtaining
references to remote objects in a remote object registry. Each method of
the `Naming` class takes as one of its arguments a name that
is a `java.lang.String` in URL format (without the
scheme component) of the form:

```
    //host:port/name
```

where `host` is the host (remote or local) where the registry
is located, `port` is the port number on which the registry
accepts calls, and where `name` is a simple string uninterpreted
by the registry. Both `host` and `port` are optional.
If `host` is omitted, the host defaults to the local host. If
`port` is omitted, then the port defaults to 1099, the
"well-known" port that RMI's registry, `rmiregistry`, uses.

*Binding* a name for a remote object is associating or
registering a name for a remote object that can be used at a later time to
look up that remote object. A remote object can be associated with a name
using the `Naming` class's `bind` or
`rebind` methods.

Once a remote object is registered (bound) with the RMI registry on the
local host, callers on a remote (or local) host can lookup the remote
object by name, obtain its reference, and then invoke remote methods on the
object. A registry may be shared by all servers running on a host or an
individual server process may create and use its own registry if desired
(see `java.rmi.registry.LocateRegistry.createRegistry` method
for details).

Since:
:   1.1

See Also:
:   * [`Registry`](registry/Registry.md "interface in java.rmi.registry")
    * [`LocateRegistry`](registry/LocateRegistry.md "class in java.rmi.registry")
    * [`LocateRegistry.createRegistry(int)`](registry/LocateRegistry.md#createRegistry(int))

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static void`

  `bind(String name,
  Remote obj)`

  Binds the specified `name` to a remote object.

  `static String[]`

  `list(String name)`

  Returns an array of the names bound in the registry.

  `static Remote`

  `lookup(String name)`

  Returns a reference, a stub, for the remote object associated
  with the specified `name`.

  `static void`

  `rebind(String name,
  Remote obj)`

  Rebinds the specified name to a new remote object.

  `static void`

  `unbind(String name)`

  Destroys the binding for the specified name that is associated
  with a remote object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### lookup

    public static [Remote](Remote.md "interface in java.rmi") lookup([String](../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [NotBoundException](NotBoundException.md "class in java.rmi"),
    [MalformedURLException](../../../java.base/java/net/MalformedURLException.md "class in java.net"),
    [RemoteException](RemoteException.md "class in java.rmi")

    Returns a reference, a stub, for the remote object associated
    with the specified `name`.

    Parameters:
    :   `name` - a name in URL format (without the scheme component)

    Returns:
    :   a reference for a remote object

    Throws:
    :   `NotBoundException` - if name is not currently bound
    :   `RemoteException` - if registry could not be contacted
    :   `AccessException` - if this operation is not permitted
    :   `MalformedURLException` - if the name is not an appropriately
        formatted URL

    Since:
    :   1.1
  + ### bind

    public static void bind([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Remote](Remote.md "interface in java.rmi") obj)
    throws [AlreadyBoundException](AlreadyBoundException.md "class in java.rmi"),
    [MalformedURLException](../../../java.base/java/net/MalformedURLException.md "class in java.net"),
    [RemoteException](RemoteException.md "class in java.rmi")

    Binds the specified `name` to a remote object.

    Parameters:
    :   `name` - a name in URL format (without the scheme component)
    :   `obj` - a reference for the remote object (usually a stub)

    Throws:
    :   `AlreadyBoundException` - if name is already bound
    :   `MalformedURLException` - if the name is not an appropriately
        formatted URL
    :   `RemoteException` - if registry could not be contacted
    :   `AccessException` - if this operation is not permitted (if
        originating from a non-local host, for example)

    Since:
    :   1.1
  + ### unbind

    public static void unbind([String](../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [RemoteException](RemoteException.md "class in java.rmi"),
    [NotBoundException](NotBoundException.md "class in java.rmi"),
    [MalformedURLException](../../../java.base/java/net/MalformedURLException.md "class in java.net")

    Destroys the binding for the specified name that is associated
    with a remote object.

    Parameters:
    :   `name` - a name in URL format (without the scheme component)

    Throws:
    :   `NotBoundException` - if name is not currently bound
    :   `MalformedURLException` - if the name is not an appropriately
        formatted URL
    :   `RemoteException` - if registry could not be contacted
    :   `AccessException` - if this operation is not permitted (if
        originating from a non-local host, for example)

    Since:
    :   1.1
  + ### rebind

    public static void rebind([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Remote](Remote.md "interface in java.rmi") obj)
    throws [RemoteException](RemoteException.md "class in java.rmi"),
    [MalformedURLException](../../../java.base/java/net/MalformedURLException.md "class in java.net")

    Rebinds the specified name to a new remote object. Any existing
    binding for the name is replaced.

    Parameters:
    :   `name` - a name in URL format (without the scheme component)
    :   `obj` - new remote object to associate with the name

    Throws:
    :   `MalformedURLException` - if the name is not an appropriately
        formatted URL
    :   `RemoteException` - if registry could not be contacted
    :   `AccessException` - if this operation is not permitted (if
        originating from a non-local host, for example)

    Since:
    :   1.1
  + ### list

    public static [String](../../../java.base/java/lang/String.md "class in java.lang")[] list([String](../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [RemoteException](RemoteException.md "class in java.rmi"),
    [MalformedURLException](../../../java.base/java/net/MalformedURLException.md "class in java.net")

    Returns an array of the names bound in the registry. The names are
    URL-formatted (without the scheme component) strings. The array contains
    a snapshot of the names present in the registry at the time of the
    call.

    Parameters:
    :   `name` - a registry name in URL format (without the scheme
        component)

    Returns:
    :   an array of names (in the appropriate format) bound
        in the registry

    Throws:
    :   `MalformedURLException` - if the name is not an appropriately
        formatted URL
    :   `RemoteException` - if registry could not be contacted.

    Since:
    :   1.1