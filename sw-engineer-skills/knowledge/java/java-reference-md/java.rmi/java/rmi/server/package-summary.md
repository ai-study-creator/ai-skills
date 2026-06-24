Module [java.rmi](../../../module-summary.md)

# Package java.rmi.server

---

package java.rmi.server

Provides classes and interfaces for supporting the server side of RMI.
One group of classes are used by the static stubs and skeletons.
Another group of classes implements the RMI Transport protocol.

**Deprecated: Skeletons and Static Stubs.**
*Skeletons and statically generated stubs are deprecated. This
includes the APIs in this package that require the use of skeletons
or static stubs and the runtime support for them. Support for skeletons
and static stubs may be removed in a future release of the
platform. Skeletons are unnecessary, as server-side method dispatching
is handled directly by the RMI runtime. Statically generated stubs are
unnecessary, as stubs are generated dynamically using [`Proxy`](../../../../java.base/java/lang/reflect/Proxy.md "class in java.lang.reflect") objects. See [`UnicastRemoteObject`](UnicastRemoteObject.md "class in java.rmi.server") for
information about dynamic stub generation.*

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

  [java.rmi.registry](../registry/package-summary.md)

  Provides a class and two interfaces for the RMI registry.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [ExportException](ExportException.md "class in java.rmi.server")

  An `ExportException` is a `RemoteException`
  thrown if an attempt to export a remote object fails.

  [LoaderHandler](LoaderHandler.md "interface in java.rmi.server")

  Deprecated.

  no replacement

  [LogStream](LogStream.md "class in java.rmi.server")

  Deprecated.

  no replacement

  [ObjID](ObjID.md "class in java.rmi.server")

  An `ObjID` is used to identify a remote object exported
  to an RMI runtime.

  [Operation](Operation.md "class in java.rmi.server")

  Deprecated.

  no replacement

  [RemoteCall](RemoteCall.md "interface in java.rmi.server")

  Deprecated.

  no replacement.

  [RemoteObject](RemoteObject.md "class in java.rmi.server")

  The `RemoteObject` class implements the
  `java.lang.Object` behavior for remote objects.

  [RemoteObjectInvocationHandler](RemoteObjectInvocationHandler.md "class in java.rmi.server")

  An implementation of the `InvocationHandler` interface for
  use with Java Remote Method Invocation (Java RMI).

  [RemoteRef](RemoteRef.md "interface in java.rmi.server")

  `RemoteRef` represents the handle for a remote object.

  [RemoteServer](RemoteServer.md "class in java.rmi.server")

  The `RemoteServer` class is the common superclass to server
  implementations and provides the framework to support a wide range
  of remote reference semantics.

  [RemoteStub](RemoteStub.md "class in java.rmi.server")

  Deprecated.

  Statically generated stubs are deprecated, since
  stubs are generated dynamically.

  [RMIClassLoader](RMIClassLoader.md "class in java.rmi.server")

  `RMIClassLoader` comprises static methods to support
  dynamic class loading with RMI.

  [RMIClassLoaderSpi](RMIClassLoaderSpi.md "class in java.rmi.server")

  `RMIClassLoaderSpi` is the service provider interface for
  `RMIClassLoader`.

  [RMIClientSocketFactory](RMIClientSocketFactory.md "interface in java.rmi.server")

  An `RMIClientSocketFactory` instance is used by the RMI runtime
  in order to obtain client sockets for RMI calls.

  [RMIFailureHandler](RMIFailureHandler.md "interface in java.rmi.server")

  An `RMIFailureHandler` can be registered via the
  `RMISocketFactory.setFailureHandler` call.

  [RMIServerSocketFactory](RMIServerSocketFactory.md "interface in java.rmi.server")

  An `RMIServerSocketFactory` instance is used by the RMI runtime
  in order to obtain server sockets for RMI calls.

  [RMISocketFactory](RMISocketFactory.md "class in java.rmi.server")

  An `RMISocketFactory` instance is used by the RMI runtime
  in order to obtain client and server sockets for RMI calls.

  [ServerCloneException](ServerCloneException.md "class in java.rmi.server")

  A `ServerCloneException` is thrown if a remote exception occurs
  during the cloning of a `UnicastRemoteObject`.

  [ServerNotActiveException](ServerNotActiveException.md "class in java.rmi.server")

  An `ServerNotActiveException` is an `Exception`
  thrown during a call to `RemoteServer.getClientHost` if
  the getClientHost method is called outside of servicing a remote
  method call.

  [ServerRef](ServerRef.md "interface in java.rmi.server")

  Deprecated.

  No replacement.

  [Skeleton](Skeleton.md "interface in java.rmi.server")

  Deprecated.

  no replacement.

  [SkeletonMismatchException](SkeletonMismatchException.md "class in java.rmi.server")

  Deprecated.

  no replacement.

  [SkeletonNotFoundException](SkeletonNotFoundException.md "class in java.rmi.server")

  Deprecated.

  no replacement.

  [SocketSecurityException](SocketSecurityException.md "class in java.rmi.server")

  Deprecated.

  This class is obsolete.

  [UID](UID.md "class in java.rmi.server")

  A `UID` represents an identifier that is unique over time
  with respect to the host it is generated on, or one of 216
  "well-known" identifiers.

  [UnicastRemoteObject](UnicastRemoteObject.md "class in java.rmi.server")

  Used for exporting a remote object with JRMP and obtaining a stub
  that communicates to the remote object.

  [Unreferenced](Unreferenced.md "interface in java.rmi.server")

  A remote object implementation should implement the
  `Unreferenced` interface to receive notification when there are
  no more clients that reference that remote object.