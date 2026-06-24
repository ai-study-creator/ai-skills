Module [java.management.rmi](../../../../module-summary.md)

Package [javax.management.remote.rmi](package-summary.md)

# Class RMIServerImpl\_Stub

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.rmi.server.RemoteObject](../../../../../java.rmi/java/rmi/server/RemoteObject.md "class in java.rmi.server")

[java.rmi.server.RemoteStub](../../../../../java.rmi/java/rmi/server/RemoteStub.md "class in java.rmi.server")

javax.management.remote.rmi.RMIServerImpl\_Stub

All Implemented Interfaces:
:   `Serializable`, `Remote`, `RMIServer`

---

public final class RMIServerImpl\_Stub
extends [RemoteStub](../../../../../java.rmi/java/rmi/server/RemoteStub.md "class in java.rmi.server")
implements [RMIServer](RMIServer.md "interface in javax.management.remote.rmi")

RMIServerImpl remote stub.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.management.remote.rmi.RMIServerImpl_Stub)

* ## Field Summary

  ### Fields inherited from class java.rmi.server.[RemoteObject](../../../../../java.rmi/java/rmi/server/RemoteObject.md "class in java.rmi.server")

  `ref`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RMIServerImpl_Stub(RemoteRef ref)`

  Constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getVersion()`

  The version of the RMI Connector Protocol understood by this
  connector server.

  `RMIConnection`

  `newClient(Object $param_Object_1)`

  Makes a new connection through this RMI connector.

  ### Methods inherited from class java.rmi.server.[RemoteStub](../../../../../java.rmi/java/rmi/server/RemoteStub.md "class in java.rmi.server")

  `setRef`

  ### Methods inherited from class java.rmi.server.[RemoteObject](../../../../../java.rmi/java/rmi/server/RemoteObject.md "class in java.rmi.server")

  `equals, getRef, hashCode, toString, toStub`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RMIServerImpl\_Stub

    public RMIServerImpl\_Stub([RemoteRef](../../../../../java.rmi/java/rmi/server/RemoteRef.md "interface in java.rmi.server") ref)

    Constructor.

    Parameters:
    :   `ref` - a remote ref
* ## Method Details

  + ### getVersion

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getVersion()
    throws [RemoteException](../../../../../java.rmi/java/rmi/RemoteException.md "class in java.rmi")

    Description copied from interface: `RMIServer`

    The version of the RMI Connector Protocol understood by this
    connector server. This is a string with the following format:

    ```
     protocol-version implementation-name
    ```

    The `protocol-version` is a series of
    two or more non-negative integers separated by periods
    (`.`). An implementation of the version described
    by this documentation must use the string `1.0`
    here.

    After the protocol version there must be a space, followed
    by the implementation name. The format of the implementation
    name is unspecified. It is recommended that it include an
    implementation version number. An implementation can use an
    empty string as its implementation name, for example for
    security reasons.

    Specified by:
    :   `getVersion` in interface `RMIServer`

    Returns:
    :   a string with the format described here.

    Throws:
    :   `RemoteException` - if there is a communication
        exception during the remote method call.
  + ### newClient

    public [RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi") newClient([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") $param\_Object\_1)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `RMIServer`

    Makes a new connection through this RMI connector. Each
    remote client calls this method to obtain a new RMI object
    representing its connection.

    Specified by:
    :   `newClient` in interface `RMIServer`

    Parameters:
    :   `$param_Object_1` - this object specifies the user-defined credentials
        to be passed in to the server in order to authenticate the user before
        creating the `RMIConnection`. Can be null.

    Returns:
    :   the newly-created connection object.

    Throws:
    :   `IOException` - if the new client object cannot be
        created or exported, or if there is a communication exception
        during the remote method call.