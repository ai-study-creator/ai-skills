Module [java.management](../../../module-summary.md)

# Package javax.management.remote

---

package javax.management.remote

* Related Packages

  Module

  Package

  Description

  [java.management](../../../module-summary.md)

  [javax.management](../package-summary.md)

  [java.management.rmi](../../../../java.management.rmi/module-summary.md)

  [javax.management.remote.rmi](../../../../java.management.rmi/javax/management/remote/rmi/package-summary.md)
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [JMXAddressable](JMXAddressable.md "interface in javax.management.remote")

  Implemented by objects that can have a `JMXServiceURL` address.

  [JMXAuthenticator](JMXAuthenticator.md "interface in javax.management.remote")

  Interface to define how remote credentials are converted into a
  JAAS Subject.

  [JMXConnectionNotification](JMXConnectionNotification.md "class in javax.management.remote")

  Notification emitted when a client connection is opened or
  closed or when notifications are lost.

  [JMXConnector](JMXConnector.md "interface in javax.management.remote")

  The client end of a JMX API connector.

  [JMXConnectorFactory](JMXConnectorFactory.md "class in javax.management.remote")

  Factory to create JMX API connector clients.

  [JMXConnectorProvider](JMXConnectorProvider.md "interface in javax.management.remote")

  A provider for creating JMX API connector clients using a given
  protocol.

  [JMXConnectorServer](JMXConnectorServer.md "class in javax.management.remote")

  Superclass of every connector server.

  [JMXConnectorServerFactory](JMXConnectorServerFactory.md "class in javax.management.remote")

  Factory to create JMX API connector servers.

  [JMXConnectorServerMBean](JMXConnectorServerMBean.md "interface in javax.management.remote")

  MBean interface for connector servers.

  [JMXConnectorServerProvider](JMXConnectorServerProvider.md "interface in javax.management.remote")

  A provider for creating JMX API connector servers using a given
  protocol.

  [JMXPrincipal](JMXPrincipal.md "class in javax.management.remote")

  The identity of a remote client of the JMX Remote API.

  [JMXProviderException](JMXProviderException.md "class in javax.management.remote")

  Exception thrown by [`JMXConnectorFactory`](JMXConnectorFactory.md "class in javax.management.remote") and
  [`JMXConnectorServerFactory`](JMXConnectorServerFactory.md "class in javax.management.remote") when a provider exists for
  the required protocol but cannot be used for some reason.

  [JMXServerErrorException](JMXServerErrorException.md "class in javax.management.remote")

  Exception thrown as the result of a remote [`MBeanServer`](../MBeanServer.md "interface in javax.management")
  method invocation when an `Error` is thrown while
  processing the invocation in the remote MBean server.

  [JMXServiceURL](JMXServiceURL.md "class in javax.management.remote")

  The address of a JMX API connector server.

  [MBeanServerForwarder](MBeanServerForwarder.md "interface in javax.management.remote")

  An object of this class implements the MBeanServer interface and
  wraps another object that also implements that interface.

  [NotificationResult](NotificationResult.md "class in javax.management.remote")

  Result of a query for buffered notifications.

  [SubjectDelegationPermission](SubjectDelegationPermission.md "class in javax.management.remote")

  Permission required by an authentication identity to perform
  operations on behalf of an authorization identity.

  [TargetedNotification](TargetedNotification.md "class in javax.management.remote")

  A (Notification, Listener ID) pair.