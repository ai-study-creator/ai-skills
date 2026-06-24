Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Interface JMXConnectorServerProvider

---

public interface JMXConnectorServerProvider

A provider for creating JMX API connector servers using a given
protocol. Instances of this interface are created by [`JMXConnectorServerFactory`](JMXConnectorServerFactory.md "class in javax.management.remote") as part of its [`newJMXConnectorServer`](JMXConnectorServerFactory.md#newJMXConnectorServer(javax.management.remote.JMXServiceURL,java.util.Map,javax.management.MBeanServer)) method.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `JMXConnectorServer`

  `newJMXConnectorServer(JMXServiceURL serviceURL,
  Map<String,?> environment,
  MBeanServer mbeanServer)`

  Creates a new connector server at the given address.

* ## Method Details

  + ### newJMXConnectorServer

    [JMXConnectorServer](JMXConnectorServer.md "class in javax.management.remote") newJMXConnectorServer([JMXServiceURL](JMXServiceURL.md "class in javax.management.remote") serviceURL,
    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),?> environment,
    [MBeanServer](../MBeanServer.md "interface in javax.management") mbeanServer)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Creates a new connector server at the given address. Each
    successful call to this method produces a different
    `JMXConnectorServer` object.

    Parameters:
    :   `serviceURL` - the address of the new connector server. The
        actual address of the new connector server, as returned by its
        [`getAddress`](JMXConnectorServerMBean.md#getAddress()) method, will
        not necessarily be exactly the same. For example, it might
        include a port number if the original address did not.
    :   `environment` - a read-only Map containing named attributes
        to control the new connector server's behavior. Keys in this
        map must be Strings. The appropriate type of each associated
        value depends on the attribute.
    :   `mbeanServer` - the MBean server that this connector server
        is attached to. Null if this connector server will be attached
        to an MBean server by being registered in it.

    Returns:
    :   a `JMXConnectorServer` representing the new
        connector server. Each successful call to this method produces
        a different object.

    Throws:
    :   `NullPointerException` - if `serviceURL` or
        `environment` is null.
    :   `IOException` - It is recommended for a provider
        implementation to throw `MalformedURLException` if the
        protocol in the `serviceURL` is not recognized by this
        provider, `JMXProviderException` if this is a provider
        for the protocol in `serviceURL` but it cannot be used
        for some reason or any other `IOException` if the
        connector server cannot be created.