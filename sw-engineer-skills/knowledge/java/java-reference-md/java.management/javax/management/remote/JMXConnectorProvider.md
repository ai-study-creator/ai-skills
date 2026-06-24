Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Interface JMXConnectorProvider

---

public interface JMXConnectorProvider

A provider for creating JMX API connector clients using a given
protocol. Instances of this interface are created by [`JMXConnectorFactory`](JMXConnectorFactory.md "class in javax.management.remote") as part of its [`newJMXConnector`](JMXConnectorFactory.md#newJMXConnector(javax.management.remote.JMXServiceURL,java.util.Map)) method.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `JMXConnector`

  `newJMXConnector(JMXServiceURL serviceURL,
  Map<String,?> environment)`

  Creates a new connector client that is ready to connect
  to the connector server at the given address.

* ## Method Details

  + ### newJMXConnector

    [JMXConnector](JMXConnector.md "interface in javax.management.remote") newJMXConnector([JMXServiceURL](JMXServiceURL.md "class in javax.management.remote") serviceURL,
    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),?> environment)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Creates a new connector client that is ready to connect
    to the connector server at the given address. Each successful
    call to this method produces a different
    `JMXConnector` object.

    Parameters:
    :   `serviceURL` - the address of the connector server to connect to.
    :   `environment` - a read-only Map containing named attributes
        to determine how the connection is made. Keys in this map must
        be Strings. The appropriate type of each associated value
        depends on the attribute.

    Returns:
    :   a `JMXConnector` representing the new
        connector client. Each successful call to this method produces
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
        connection cannot be made because of a communication problem.