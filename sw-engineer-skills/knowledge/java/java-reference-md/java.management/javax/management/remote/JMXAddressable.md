Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Interface JMXAddressable

All Known Implementing Classes:
:   `JMXConnectorServer`, `RMIConnector`, `RMIConnectorServer`

---

public interface JMXAddressable

Implemented by objects that can have a `JMXServiceURL` address.
All [`JMXConnectorServer`](JMXConnectorServer.md "class in javax.management.remote") objects implement this interface.
Depending on the connector implementation, a [`JMXConnector`](JMXConnector.md "interface in javax.management.remote")
object may implement this interface too. `JMXConnector`
objects for the RMI Connector are instances of
[`RMIConnector`](../../../../java.management.rmi/javax/management/remote/rmi/RMIConnector.md "class in javax.management.remote.rmi") which
implements this interface.

An object implementing this interface might not have an address
at a given moment. This is indicated by a null return value from
[`getAddress()`](#getAddress()).

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `JMXServiceURL`

  `getAddress()`

  The address of this object.

* ## Method Details

  + ### getAddress

    [JMXServiceURL](JMXServiceURL.md "class in javax.management.remote") getAddress()

    The address of this object.

    Returns:
    :   the address of this object, or null if it
        does not have one.