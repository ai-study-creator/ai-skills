Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Interface ServerRef

All Superinterfaces:
:   `Externalizable`, `RemoteRef`, `Serializable`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public interface ServerRef
extends [RemoteRef](RemoteRef.md "interface in java.rmi.server")

Deprecated.

No replacement. This interface is unused and is obsolete.

A ServerRef represents the server-side handle for a remote object
implementation.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final long`

  `serialVersionUID`

  Deprecated.

  A `serialVersionUID` field in an interface is
  ineffectual.

  ### Fields inherited from interface java.rmi.server.[RemoteRef](RemoteRef.md "interface in java.rmi.server")

  `packagePrefix`
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `RemoteStub`

  `exportObject(Remote obj,
  Object data)`

  Deprecated.

  Creates a client stub object for the supplied Remote object.

  `String`

  `getClientHost()`

  Deprecated.

  Returns the hostname of the current client.

  ### Methods inherited from interface java.io.[Externalizable](../../../../java.base/java/io/Externalizable.md "interface in java.io")

  `readExternal, writeExternal`

  ### Methods inherited from interface java.rmi.server.[RemoteRef](RemoteRef.md "interface in java.rmi.server")

  `done, getRefClass, invoke, invoke, newCall, remoteEquals, remoteHashCode, remoteToString`

* ## Field Details

  + ### serialVersionUID

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    static final long serialVersionUID

    Deprecated.

    A `serialVersionUID` field in an interface is
    ineffectual. Do not use; no replacement.

    indicate compatibility with JDK 1.1.x version of class.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.server.ServerRef.serialVersionUID)
* ## Method Details

  + ### exportObject

    [RemoteStub](RemoteStub.md "class in java.rmi.server") exportObject([Remote](../Remote.md "interface in java.rmi") obj,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") data)
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Deprecated.

    Creates a client stub object for the supplied Remote object.
    If the call completes successfully, the remote object should
    be able to accept incoming calls from clients.

    Parameters:
    :   `obj` - the remote object implementation
    :   `data` - information necessary to export the object

    Returns:
    :   the stub for the remote object

    Throws:
    :   `RemoteException` - if an exception occurs attempting
        to export the object (e.g., stub class could not be found)

    Since:
    :   1.1
  + ### getClientHost

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getClientHost()
    throws [ServerNotActiveException](ServerNotActiveException.md "class in java.rmi.server")

    Deprecated.

    Returns the hostname of the current client. When called from a
    thread actively handling a remote method invocation the
    hostname of the client is returned.

    Returns:
    :   the client's host name

    Throws:
    :   `ServerNotActiveException` - if called outside of servicing
        a remote method invocation

    Since:
    :   1.1