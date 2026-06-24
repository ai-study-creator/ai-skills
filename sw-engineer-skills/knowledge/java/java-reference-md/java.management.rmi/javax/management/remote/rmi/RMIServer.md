Module [java.management.rmi](../../../../module-summary.md)

Package [javax.management.remote.rmi](package-summary.md)

# Interface RMIServer

All Superinterfaces:
:   `Remote`

All Known Implementing Classes:
:   `RMIJRMPServerImpl`, `RMIServerImpl`, `RMIServerImpl_Stub`

---

public interface RMIServer
extends [Remote](../../../../../java.rmi/java/rmi/Remote.md "interface in java.rmi")

RMI object used to establish connections to an RMI connector.
There is one Remote object implementing this interface for each RMI
connector.

User code does not usually refer to this interface. It is
specified as part of the public API so that different
implementations of that API will interoperate.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getVersion()`

  The version of the RMI Connector Protocol understood by this
  connector server.

  `RMIConnection`

  `newClient(Object credentials)`

  Makes a new connection through this RMI connector.

* ## Method Details

  + ### getVersion

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getVersion()
    throws [RemoteException](../../../../../java.rmi/java/rmi/RemoteException.md "class in java.rmi")

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

    Returns:
    :   a string with the format described here.

    Throws:
    :   `RemoteException` - if there is a communication
        exception during the remote method call.
  + ### newClient

    [RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi") newClient([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") credentials)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Makes a new connection through this RMI connector. Each
    remote client calls this method to obtain a new RMI object
    representing its connection.

    Parameters:
    :   `credentials` - this object specifies the user-defined credentials
        to be passed in to the server in order to authenticate the user before
        creating the `RMIConnection`. Can be null.

    Returns:
    :   the newly-created connection object.

    Throws:
    :   `IOException` - if the new client object cannot be
        created or exported, or if there is a communication exception
        during the remote method call.
    :   `SecurityException` - if the given credentials do not
        allow the server to authenticate the caller successfully.