Module [java.management](../../../module-summary.md)

Package [javax.management.remote](package-summary.md)

# Class JMXConnectorServerFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.remote.JMXConnectorServerFactory

---

public class JMXConnectorServerFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Factory to create JMX API connector servers. There
are no instances of this class.

Each connector server is created by an instance of [`JMXConnectorServerProvider`](JMXConnectorServerProvider.md "interface in javax.management.remote"). This instance is found as follows. Suppose
the given [`JMXServiceURL`](JMXServiceURL.md "class in javax.management.remote") looks like
`"service:jmx:protocol:remainder"`.
Then the factory will attempt to find the appropriate [`JMXConnectorServerProvider`](JMXConnectorServerProvider.md "interface in javax.management.remote") for `protocol`. Each
occurrence of the character `+` or `-` in
`protocol` is replaced by `.` or
`_`, respectively.

A *provider package list* is searched for as follows:

1. If the `environment` parameter to [`newJMXConnectorServer`](#newJMXConnectorServer(javax.management.remote.JMXServiceURL,java.util.Map,javax.management.MBeanServer)) contains the key
   `jmx.remote.protocol.provider.pkgs` then the associated
   value is the provider package list.- Otherwise, if the system property
     `jmx.remote.protocol.provider.pkgs` exists, then its value
     is the provider package list.- Otherwise, there is no provider package list.

The provider package list is a string that is interpreted as a
list of non-empty Java package names separated by vertical bars
(`|`). If the string is empty, then so is the provider
package list. If the provider package list is not a String, or if
it contains an element that is an empty string, a [`JMXProviderException`](JMXProviderException.md "class in javax.management.remote") is thrown.

If the provider package list exists and is not empty, then for
each element `pkg` of the list, the factory
will attempt to load the class
> `pkg.protocol.ServerProvider`

If the `environment` parameter to [`newJMXConnectorServer`](#newJMXConnectorServer(javax.management.remote.JMXServiceURL,java.util.Map,javax.management.MBeanServer)) contains the key
`jmx.remote.protocol.provider.class.loader` then the
associated value is the class loader to use to load the provider.
If the associated value is not an instance of [`ClassLoader`](../../../../java.base/java/lang/ClassLoader.md "class in java.lang"), an [`IllegalArgumentException`](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") is thrown.

If the `jmx.remote.protocol.provider.class.loader`
key is not present in the `environment` parameter, the
calling thread's context class loader is used.

If the attempt to load this class produces a [`ClassNotFoundException`](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"), the search for a handler continues with
the next element of the list.

Otherwise, a problem with the provider found is signalled by a
[`JMXProviderException`](JMXProviderException.md "class in javax.management.remote") whose [`cause`](JMXProviderException.md#getCause()) indicates the
underlying exception, as follows:

* if the attempt to load the class produces an exception other
  than `ClassNotFoundException`, that is the
  *cause*;* if [`Class.newInstance()`](../../../../java.base/java/lang/Class.md#newInstance()) for the class produces an
    exception, that is the *cause*.

If no provider is found by the above steps, including the
default case where there is no provider package list, then the
implementation will use its own provider for
`protocol`, or it will throw a
`MalformedURLException` if there is none. An
implementation may choose to find providers by other means. For
example, it may support [service providers](../../../../java.base/java/util/ServiceLoader.md#developing-service-providers),
where the service interface is `JMXConnectorServerProvider`.

Every implementation must support the RMI connector protocol with
the default RMI transport, specified with string `rmi`.

Once a provider is found, the result of the
`newJMXConnectorServer` method is the result of calling
[`newJMXConnectorServer`](JMXConnectorServerProvider.md#newJMXConnectorServer(javax.management.remote.JMXServiceURL,java.util.Map,javax.management.MBeanServer)) on the provider.

The `Map` parameter passed to the
`JMXConnectorServerProvider` is a new read-only
`Map` that contains all the entries that were in the
`environment` parameter to [`JMXConnectorServerFactory.newJMXConnectorServer`](#newJMXConnectorServer(javax.management.remote.JMXServiceURL,java.util.Map,javax.management.MBeanServer)), if there was one.
Additionally, if the
`jmx.remote.protocol.provider.class.loader` key is not
present in the `environment` parameter, it is added to
the new read-only `Map`. The associated value is the
calling thread's context class loader.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `DEFAULT_CLASS_LOADER`

  Name of the attribute that specifies the default class
  loader.

  `static final String`

  `DEFAULT_CLASS_LOADER_NAME`

  Name of the attribute that specifies the default class
  loader MBean name.

  `static final String`

  `PROTOCOL_PROVIDER_CLASS_LOADER`

  Name of the attribute that specifies the class
  loader for loading protocol providers.

  `static final String`

  `PROTOCOL_PROVIDER_PACKAGES`

  Name of the attribute that specifies the provider packages
  that are consulted when looking for the handler for a protocol.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static JMXConnectorServer`

  `newJMXConnectorServer(JMXServiceURL serviceURL,
  Map<String,?> environment,
  MBeanServer mbeanServer)`

  Creates a connector server at the given address.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_CLASS\_LOADER

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") DEFAULT\_CLASS\_LOADER

    Name of the attribute that specifies the default class
    loader. This class loader is used to deserialize objects in
    requests received from the client, possibly after consulting an
    MBean-specific class loader. The value associated with this
    attribute is an instance of [`ClassLoader`](../../../../java.base/java/lang/ClassLoader.md "class in java.lang").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.remote.JMXConnectorServerFactory.DEFAULT_CLASS_LOADER)
  + ### DEFAULT\_CLASS\_LOADER\_NAME

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") DEFAULT\_CLASS\_LOADER\_NAME

    Name of the attribute that specifies the default class
    loader MBean name. This class loader is used to deserialize objects in
    requests received from the client, possibly after consulting an
    MBean-specific class loader. The value associated with this
    attribute is an instance of [`ObjectName`](../ObjectName.md "class in javax.management").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.remote.JMXConnectorServerFactory.DEFAULT_CLASS_LOADER_NAME)
  + ### PROTOCOL\_PROVIDER\_PACKAGES

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") PROTOCOL\_PROVIDER\_PACKAGES

    Name of the attribute that specifies the provider packages
    that are consulted when looking for the handler for a protocol.
    The value associated with this attribute is a string with
    package names separated by vertical bars (`|`).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.remote.JMXConnectorServerFactory.PROTOCOL_PROVIDER_PACKAGES)
  + ### PROTOCOL\_PROVIDER\_CLASS\_LOADER

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") PROTOCOL\_PROVIDER\_CLASS\_LOADER

    Name of the attribute that specifies the class
    loader for loading protocol providers.
    The value associated with this attribute is an instance
    of [`ClassLoader`](../../../../java.base/java/lang/ClassLoader.md "class in java.lang").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.management.remote.JMXConnectorServerFactory.PROTOCOL_PROVIDER_CLASS_LOADER)
* ## Method Details

  + ### newJMXConnectorServer

    public static [JMXConnectorServer](JMXConnectorServer.md "class in javax.management.remote") newJMXConnectorServer([JMXServiceURL](JMXServiceURL.md "class in javax.management.remote") serviceURL,
    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),?> environment,
    [MBeanServer](../MBeanServer.md "interface in javax.management") mbeanServer)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Creates a connector server at the given address. The
    resultant server is not started until its [`start`](JMXConnectorServerMBean.md#start()) method is called.

    Parameters:
    :   `serviceURL` - the address of the new connector server. The
        actual address of the new connector server, as returned by its
        [`getAddress`](JMXConnectorServerMBean.md#getAddress()) method, will
        not necessarily be exactly the same. For example, it might
        include a port number if the original address did not.
    :   `environment` - a set of attributes to control the new
        connector server's behavior. This parameter can be null.
        Keys in this map must be Strings. The appropriate type of each
        associated value depends on the attribute. The contents of
        `environment` are not changed by this call.
    :   `mbeanServer` - the MBean server that this connector server
        is attached to. Null if this connector server will be attached
        to an MBean server by being registered in it.

    Returns:
    :   a `JMXConnectorServer` representing the new
        connector server. Each successful call to this method produces
        a different object.

    Throws:
    :   `NullPointerException` - if `serviceURL` is null.
    :   `IOException` - if the connector server cannot be made
        because of a communication problem.
    :   `MalformedURLException` - if there is no provider for the
        protocol in `serviceURL`.
    :   `JMXProviderException` - if there is a provider for the
        protocol in `serviceURL` but it cannot be used for
        some reason.