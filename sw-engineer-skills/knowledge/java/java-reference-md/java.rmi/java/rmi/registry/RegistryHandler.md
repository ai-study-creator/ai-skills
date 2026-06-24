Module [java.rmi](../../../module-summary.md)

Package [java.rmi.registry](package-summary.md)

# Interface RegistryHandler

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public interface RegistryHandler

Deprecated.

no replacement

`RegistryHandler` is an interface used internally by the RMI
runtime in previous implementation versions. It should never be accessed
by application code.

Since:
:   1.1

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Registry`

  `registryImpl(int port)`

  Deprecated.

  no replacement.

  `Registry`

  `registryStub(String host,
  int port)`

  Deprecated.

  no replacement.

* ## Method Details

  + ### registryStub

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [Registry](Registry.md "interface in java.rmi.registry") registryStub([String](../../../../java.base/java/lang/String.md "class in java.lang") host,
    int port)
    throws [RemoteException](../RemoteException.md "class in java.rmi"),
    [UnknownHostException](../UnknownHostException.md "class in java.rmi")

    Deprecated.

    no replacement. As of the Java 2 platform v1.2, RMI no
    longer uses the `RegistryHandler` to obtain the registry's
    stub.

    Returns a "stub" for contacting a remote registry
    on the specified host and port.

    Parameters:
    :   `host` - name of remote registry host
    :   `port` - remote registry port

    Returns:
    :   remote registry stub

    Throws:
    :   `RemoteException` - if a remote error occurs
    :   `UnknownHostException` - if unable to resolve given hostname
  + ### registryImpl

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [Registry](Registry.md "interface in java.rmi.registry") registryImpl(int port)
    throws [RemoteException](../RemoteException.md "class in java.rmi")

    Deprecated.

    no replacement. As of the Java 2 platform v1.2, RMI no
    longer uses the `RegistryHandler` to obtain the registry's
    implementation.

    Constructs and exports a Registry on the specified port.
    The port must be non-zero.

    Parameters:
    :   `port` - port to export registry on

    Returns:
    :   registry stub

    Throws:
    :   `RemoteException` - if a remote error occurs