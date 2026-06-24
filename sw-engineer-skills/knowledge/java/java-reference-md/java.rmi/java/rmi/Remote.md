Module [java.rmi](../../module-summary.md)

Package [java.rmi](package-summary.md)

# Interface Remote

All Known Subinterfaces:
:   `DGC`, `Registry`, `RMIConnection`, `RMIServer`

All Known Implementing Classes:
:   `RemoteObject`, `RemoteObjectInvocationHandler`, `RemoteServer`, `RemoteStub`, `RMIConnectionImpl`, `RMIConnectionImpl_Stub`, `RMIJRMPServerImpl`, `RMIServerImpl`, `RMIServerImpl_Stub`, `UnicastRemoteObject`

---

public interface Remote

The `Remote` interface serves to identify interfaces whose
methods may be invoked from a non-local virtual machine. Any object that
is a remote object must directly or indirectly implement this interface.
Only those methods specified in a "remote interface", an interface that
extends `java.rmi.Remote` are available remotely.

Implementation classes can implement any number of remote interfaces and
can extend other remote implementation classes. RMI provides a convenience
class [`UnicastRemoteObject`](server/UnicastRemoteObject.md "class in java.rmi.server")
that remote object implementations can extend and that facilitates remote
object creation.

For complete details on RMI, see the [RMI Specification](../../../../specs/rmi/index.md) which
describes the RMI API and system.

Since:
:   1.1