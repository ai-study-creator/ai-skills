Module [java.rmi](../../../module-summary.md)

# Package java.rmi.registry

---

package java.rmi.registry

Provides a class and two interfaces for the RMI registry.
A registry is a remote object that maps names to remote objects. A
server registers its remote objects with the registry so that they can
be looked up. When an object wants to invoke a method on a remote
object, it must first lookup the remote object using its name. The
registry returns to the calling object a reference to the remote
object, using which a remote method can be invoked.

Since:
:   1.1

* Related Packages

  Package

  Description

  [java.rmi](../package-summary.md)

  Provides the RMI package.

  [java.rmi.dgc](../dgc/package-summary.md)

  Provides classes and interface for RMI distributed
  garbage-collection (DGC).

  [java.rmi.server](../server/package-summary.md)

  Provides classes and interfaces for supporting the server side of RMI.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [LocateRegistry](LocateRegistry.md "class in java.rmi.registry")

  `LocateRegistry` is used to obtain a reference to a bootstrap
  remote object registry on a particular host (including the local host), or
  to create a remote object registry that accepts calls on a specific port.

  [Registry](Registry.md "interface in java.rmi.registry")

  `Registry` is a remote interface to a simple remote
  object registry that provides methods for storing and retrieving
  remote object references bound with arbitrary string names.

  [RegistryHandler](RegistryHandler.md "interface in java.rmi.registry")

  Deprecated.

  no replacement