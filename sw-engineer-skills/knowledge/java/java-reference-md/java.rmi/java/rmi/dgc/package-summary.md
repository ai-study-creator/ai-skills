Module [java.rmi](../../../module-summary.md)

# Package java.rmi.dgc

---

package java.rmi.dgc

Provides classes and interface for RMI distributed
garbage-collection (DGC). When the RMI server returns an object to
its client (caller of the remote method), it tracks the remote
object's usage in the client. When there are no more references to the
remote object on the client, or if the reference's ``lease'' expires and
not renewed, the server garbage-collects the remote object.

Since:
:   1.1

* Related Packages

  Package

  Description

  [java.rmi](../package-summary.md)

  Provides the RMI package.

  [java.rmi.registry](../registry/package-summary.md)

  Provides a class and two interfaces for the RMI registry.

  [java.rmi.server](../server/package-summary.md)

  Provides classes and interfaces for supporting the server side of RMI.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [DGC](DGC.md "interface in java.rmi.dgc")

  The DGC abstraction is used for the server side of the distributed
  garbage collection algorithm.

  [Lease](Lease.md "class in java.rmi.dgc")

  A lease contains a unique VM identifier and a lease duration.

  [VMID](VMID.md "class in java.rmi.dgc")

  A VMID is a identifier that is unique across all Java virtual
  machines.