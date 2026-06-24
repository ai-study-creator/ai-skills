# Module java.management.rmi

---

module java.management.rmi

Defines the [RMI connector](javax/management/remote/rmi/package-summary.md)
for the Java Management Extensions (JMX) Remote API.

Providers:
:   This module provides the
    [`JMXConnectorProvider`](../java.management/javax/management/remote/JMXConnectorProvider.md "interface in javax.management.remote") service,
    which creates JMX connector clients using the RMI protocol.
    Instances of `JMXConnector` can be obtained via the
    [`JMXConnectorFactory.newJMXConnector`](../java.management/javax/management/remote/JMXConnectorFactory.md#newJMXConnector(javax.management.remote.JMXServiceURL,java.util.Map)) factory method.
    It also provides the [`JMXConnectorServerProvider`](../java.management/javax/management/remote/JMXConnectorServerProvider.md "interface in javax.management.remote") service,
    which creates JMX connector servers using the RMI protocol.
    Instances of `JMXConnectorServer` can be obtained via the
    [`JMXConnectorServerFactory.newJMXConnectorServer`](../java.management/javax/management/remote/JMXConnectorServerFactory.md#newJMXConnectorServer(javax.management.remote.JMXServiceURL,java.util.Map,javax.management.MBeanServer)) factory method.

Since:
:   9

* ## Packages

  Exports

  Package

  Description

  [javax.management.remote.rmi](javax/management/remote/rmi/package-summary.md)

  Indirect Exports

  From

  Packages

  [java.management](../java.management/module-summary.md)

  [java.lang.management](../java.management/java/lang/management/package-summary.md) [javax.management](../java.management/javax/management/package-summary.md) [javax.management.loading](../java.management/javax/management/loading/package-summary.md) [javax.management.modelmbean](../java.management/javax/management/modelmbean/package-summary.md) [javax.management.monitor](../java.management/javax/management/monitor/package-summary.md) [javax.management.openmbean](../java.management/javax/management/openmbean/package-summary.md) [javax.management.relation](../java.management/javax/management/relation/package-summary.md) [javax.management.remote](../java.management/javax/management/remote/package-summary.md) [javax.management.timer](../java.management/javax/management/timer/package-summary.md)

  [java.rmi](../java.rmi/module-summary.md)

  [java.rmi](../java.rmi/java/rmi/package-summary.md) [java.rmi.dgc](../java.rmi/java/rmi/dgc/package-summary.md) [java.rmi.registry](../java.rmi/java/rmi/registry/package-summary.md) [java.rmi.server](../java.rmi/java/rmi/server/package-summary.md) [javax.rmi.ssl](../java.rmi/javax/rmi/ssl/package-summary.md)
* ## Modules

  Requires

  Modifier

  Module

  Description

  transitive

  [java.management](../java.management/module-summary.md)

  Defines the Java Management Extensions (JMX) API.

  transitive

  [java.rmi](../java.rmi/module-summary.md)

  Defines the Remote Method Invocation (RMI) API.
* ## Services

  Provides

  Type

  Description

  [JMXConnectorProvider](../java.management/javax/management/remote/JMXConnectorProvider.md "interface in javax.management.remote")

  A provider for creating JMX API connector clients using a given
  protocol.

  [JMXConnectorServerProvider](../java.management/javax/management/remote/JMXConnectorServerProvider.md "interface in javax.management.remote")

  A provider for creating JMX API connector servers using a given
  protocol.