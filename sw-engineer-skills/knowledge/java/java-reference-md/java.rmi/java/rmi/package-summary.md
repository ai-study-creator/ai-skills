Module [java.rmi](../../module-summary.md)

# Package java.rmi

---

package java.rmi

Provides the RMI package. RMI is Remote Method Invocation. It is a
mechanism that enables an object on one Java virtual machine to invoke
methods on an object in another Java virtual machine. Any object that
can be invoked this way must implement the Remote interface. When such
an object is invoked, its arguments are ``marshalled'' and sent from the
local virtual machine to the remote one, where the arguments are
``unmarshalled.'' When the method terminates, the results are
marshalled from the remote machine and sent to the caller's virtual
machine. If the method invocation results in an exception being
thrown, the exception is indicated to caller.

Since:
:   1.1

* Related Packages

  Package

  Description

  [java.rmi.dgc](dgc/package-summary.md)

  Provides classes and interface for RMI distributed
  garbage-collection (DGC).

  [java.rmi.registry](registry/package-summary.md)

  Provides a class and two interfaces for the RMI registry.

  [java.rmi.server](server/package-summary.md)

  Provides classes and interfaces for supporting the server side of RMI.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AccessException](AccessException.md "class in java.rmi")

  An `AccessException` is thrown by certain methods of the
  `java.rmi.Naming` class (specifically `bind`,
  `rebind`, and `unbind`) to
  indicate that the caller does not have permission to perform the action
  requested by the method call.

  [AlreadyBoundException](AlreadyBoundException.md "class in java.rmi")

  An `AlreadyBoundException` is thrown if an attempt
  is made to bind an object to a name that already
  has an associated binding in the registry.

  [ConnectException](ConnectException.md "class in java.rmi")

  A `ConnectException` is thrown if a connection is refused
  to the remote host for a remote method call.

  [ConnectIOException](ConnectIOException.md "class in java.rmi")

  A `ConnectIOException` is thrown if an
  `IOException` occurs while making a connection
  to the remote host for a remote method call.

  [MarshalException](MarshalException.md "class in java.rmi")

  A `MarshalException` is thrown if a
  `java.io.IOException` occurs while marshalling the remote call
  header, arguments or return value for a remote method call.

  [MarshalledObject](MarshalledObject.md "class in java.rmi")<T>

  A `MarshalledObject` contains a byte stream with the serialized
  representation of an object given to its constructor.

  [Naming](Naming.md "class in java.rmi")

  The `Naming` class provides methods for storing and obtaining
  references to remote objects in a remote object registry.

  [NoSuchObjectException](NoSuchObjectException.md "class in java.rmi")

  A `NoSuchObjectException` is thrown if an attempt is made to
  invoke a method on an object that no longer exists in the remote virtual
  machine.

  [NotBoundException](NotBoundException.md "class in java.rmi")

  A `NotBoundException` is thrown if an attempt
  is made to lookup or unbind in the registry a name that has
  no associated binding.

  [Remote](Remote.md "interface in java.rmi")

  The `Remote` interface serves to identify interfaces whose
  methods may be invoked from a non-local virtual machine.

  [RemoteException](RemoteException.md "class in java.rmi")

  A `RemoteException` is the common superclass for a number of
  communication-related exceptions that may occur during the execution of a
  remote method call.

  [RMISecurityException](RMISecurityException.md "class in java.rmi")

  Deprecated.

  Use [`SecurityException`](../../../java.base/java/lang/SecurityException.md "class in java.lang") instead.

  [RMISecurityManager](RMISecurityManager.md "class in java.rmi")

  Deprecated, for removal: This API element is subject to removal in a future version.

  This class is only useful in conjunction with
  [the Security Manager](../../../java.base/java/lang/SecurityManager.md "class in java.lang"), which is deprecated
  and subject to removal in a future release.

  [ServerError](ServerError.md "class in java.rmi")

  A `ServerError` is thrown as a result of a remote method
  invocation when an `Error` is thrown while processing
  the invocation on the server, either while unmarshalling the arguments,
  executing the remote method itself, or marshalling the return value.

  [ServerException](ServerException.md "class in java.rmi")

  A `ServerException` is thrown as a result of a remote method
  invocation when a `RemoteException` is thrown while processing
  the invocation on the server, either while unmarshalling the arguments or
  executing the remote method itself.

  [ServerRuntimeException](ServerRuntimeException.md "class in java.rmi")

  Deprecated.

  no replacement

  [StubNotFoundException](StubNotFoundException.md "class in java.rmi")

  A `StubNotFoundException` is thrown if a valid stub class
  could not be found for a remote object when it is exported.

  [UnexpectedException](UnexpectedException.md "class in java.rmi")

  An `UnexpectedException` is thrown if the client of a
  remote method call receives, as a result of the call, a checked
  exception that is not among the checked exception types declared in the
  `throws` clause of the method in the remote interface.

  [UnknownHostException](UnknownHostException.md "class in java.rmi")

  An `UnknownHostException` is thrown if a
  `java.net.UnknownHostException` occurs while creating
  a connection to the remote host for a remote method call.

  [UnmarshalException](UnmarshalException.md "class in java.rmi")

  An `UnmarshalException` can be thrown while unmarshalling the
  parameters or results of a remote method call if any of the following
  conditions occur:
  if an exception occurs while unmarshalling the call header
  if the protocol for the return value is invalid
  if a `java.io.IOException` occurs unmarshalling
  parameters (on the server side) or the return value (on the client side).