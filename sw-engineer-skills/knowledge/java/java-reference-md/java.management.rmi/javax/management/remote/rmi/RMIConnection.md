Module [java.management.rmi](../../../../module-summary.md)

Package [javax.management.remote.rmi](package-summary.md)

# Interface RMIConnection

All Superinterfaces:
:   `AutoCloseable`, `Closeable`, `Remote`

All Known Implementing Classes:
:   `RMIConnectionImpl`, `RMIConnectionImpl_Stub`

---

public interface RMIConnection
extends [Closeable](../../../../../java.base/java/io/Closeable.md "interface in java.io"), [Remote](../../../../../java.rmi/java/rmi/Remote.md "interface in java.rmi")

RMI object used to forward an MBeanServer request from a client
to its MBeanServer implementation on the server side. There is one
Remote object implementing this interface for each remote client
connected to an RMI connector.

User code does not usually refer to this interface. It is
specified as part of the public API so that different
implementations of that API will interoperate.

To ensure that client parameters will be deserialized at the
server side with the correct classloader, client parameters such as
parameters used to invoke a method are wrapped in a [`MarshalledObject`](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi"). An implementation of this interface must first
get the appropriate class loader for the operation and its target,
then deserialize the marshalled parameters with this classloader.
Except as noted, a parameter that is a
`MarshalledObject` or `MarshalledObject[]`
must not be null; the behavior is unspecified if it is.

Class loading aspects are detailed in the
[JMX Specification, version 1.4](https://jcp.org/aboutJava/communityprocess/mrel/jsr160/index2.html)

Most methods in this interface parallel methods in the [`MBeanServerConnection`](../../../../../java.management/javax/management/MBeanServerConnection.md "interface in javax.management") interface. Where an aspect of the behavior
of a method is not specified here, it is the same as in the
corresponding `MBeanServerConnection` method.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotificationListener(ObjectName name,
  ObjectName listener,
  MarshalledObject filter,
  MarshalledObject handback,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.addNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)).

  `Integer[]`

  `addNotificationListeners(ObjectName[] names,
  MarshalledObject[] filters,
  Subject[] delegationSubjects)`

  Handles the method [`MBeanServerConnection.addNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)).

  `void`

  `close()`

  Closes this connection.

  `ObjectInstance`

  `createMBean(String className,
  ObjectName name,
  MarshalledObject params,
  String[] signature,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)).

  `ObjectInstance`

  `createMBean(String className,
  ObjectName name,
  ObjectName loaderName,
  MarshalledObject params,
  String[] signature,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, ObjectName, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)).

  `ObjectInstance`

  `createMBean(String className,
  ObjectName name,
  ObjectName loaderName,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,javax.management.ObjectName)).

  `ObjectInstance`

  `createMBean(String className,
  ObjectName name,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.createMBean(String, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName)).

  `NotificationResult`

  `fetchNotifications(long clientSequenceNumber,
  int maxNotifications,
  long timeout)`

  Retrieves notifications from the connector server.

  `Object`

  `getAttribute(ObjectName name,
  String attribute,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.getAttribute(ObjectName, String)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getAttribute(javax.management.ObjectName,java.lang.String)).

  `AttributeList`

  `getAttributes(ObjectName name,
  String[] attributes,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.getAttributes(ObjectName, String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#getAttributes(javax.management.ObjectName,java.lang.String%5B%5D)).

  `String`

  `getConnectionId()`

  Returns the connection ID.

  `String`

  `getDefaultDomain(Subject delegationSubject)`

  Handles the method
  [`MBeanServerConnection.getDefaultDomain()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getDefaultDomain()).

  `String[]`

  `getDomains(Subject delegationSubject)`

  Handles the method
  [`MBeanServerConnection.getDomains()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getDomains()).

  `Integer`

  `getMBeanCount(Subject delegationSubject)`

  Handles the method
  [`MBeanServerConnection.getMBeanCount()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getMBeanCount()).

  `MBeanInfo`

  `getMBeanInfo(ObjectName name,
  Subject delegationSubject)`

  Handles the method
  [`MBeanServerConnection.getMBeanInfo(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getMBeanInfo(javax.management.ObjectName)).

  `ObjectInstance`

  `getObjectInstance(ObjectName name,
  Subject delegationSubject)`

  Handles the method
  [`MBeanServerConnection.getObjectInstance(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getObjectInstance(javax.management.ObjectName)).

  `Object`

  `invoke(ObjectName name,
  String operationName,
  MarshalledObject params,
  String[] signature,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.invoke(ObjectName, String, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#invoke(javax.management.ObjectName,java.lang.String,java.lang.Object%5B%5D,java.lang.String%5B%5D)).

  `boolean`

  `isInstanceOf(ObjectName name,
  String className,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.isInstanceOf(ObjectName, String)`](../../../../../java.management/javax/management/MBeanServerConnection.md#isInstanceOf(javax.management.ObjectName,java.lang.String)).

  `boolean`

  `isRegistered(ObjectName name,
  Subject delegationSubject)`

  Handles the method
  [`MBeanServerConnection.isRegistered(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#isRegistered(javax.management.ObjectName)).

  `Set<ObjectInstance>`

  `queryMBeans(ObjectName name,
  MarshalledObject query,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.queryMBeans(ObjectName, QueryExp)`](../../../../../java.management/javax/management/MBeanServerConnection.md#queryMBeans(javax.management.ObjectName,javax.management.QueryExp)).

  `Set<ObjectName>`

  `queryNames(ObjectName name,
  MarshalledObject query,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.queryNames(ObjectName, QueryExp)`](../../../../../java.management/javax/management/MBeanServerConnection.md#queryNames(javax.management.ObjectName,javax.management.QueryExp)).

  `void`

  `removeNotificationListener(ObjectName name,
  ObjectName listener,
  MarshalledObject filter,
  MarshalledObject handback,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.removeNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)).

  `void`

  `removeNotificationListener(ObjectName name,
  ObjectName listener,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.removeNotificationListener(ObjectName, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName)).

  `void`

  `removeNotificationListeners(ObjectName name,
  Integer[] listenerIDs,
  Subject delegationSubject)`

  Handles the
  [`removeNotificationListener(ObjectName, NotificationListener)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.NotificationListener)) and
  [`removeNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)) methods.

  `void`

  `setAttribute(ObjectName name,
  MarshalledObject attribute,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.setAttribute(ObjectName, Attribute)`](../../../../../java.management/javax/management/MBeanServerConnection.md#setAttribute(javax.management.ObjectName,javax.management.Attribute)).

  `AttributeList`

  `setAttributes(ObjectName name,
  MarshalledObject attributes,
  Subject delegationSubject)`

  Handles the method [`MBeanServerConnection.setAttributes(ObjectName, AttributeList)`](../../../../../java.management/javax/management/MBeanServerConnection.md#setAttributes(javax.management.ObjectName,javax.management.AttributeList)).

  `void`

  `unregisterMBean(ObjectName name,
  Subject delegationSubject)`

  Handles the method
  [`MBeanServerConnection.unregisterMBean(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#unregisterMBean(javax.management.ObjectName)).

* ## Method Details

  + ### getConnectionId

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getConnectionId()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Returns the connection ID. This string is different for
    every open connection to a given RMI connector server.

    Returns:
    :   the connection ID

    Throws:
    :   `IOException` - if a general communication exception occurred.

    See Also:
    :   - [`RMIConnector.connect`](RMIConnector.md#connect())
  + ### close

    void close()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Closes this connection. On return from this method, the RMI
    object implementing this interface is unexported, so further
    remote calls to it will fail.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Throws:
    :   `IOException` - if the connection could not be closed,
        or the Remote object could not be unexported, or there was a
        communication failure when transmitting the remote close
        request.
  + ### createMBean

    [ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management") createMBean([String](../../../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management"),
    [InstanceAlreadyExistsException](../../../../../java.management/javax/management/InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanRegistrationException](../../../../../java.management/javax/management/MBeanRegistrationException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [NotCompliantMBeanException](../../../../../java.management/javax/management/NotCompliantMBeanException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.createMBean(String, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName)).

    Parameters:
    :   `className` - The class name of the MBean to be instantiated.
    :   `name` - The object name of the MBean. May be null.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or a
        `java.lang.Exception` that occurred
        when trying to invoke the MBean's constructor.
    :   `InstanceAlreadyExistsException` - The MBean is already
        under the control of the MBean server.
    :   `MBeanRegistrationException` - The
        `preRegister` (`MBeanRegistration`
        interface) method of the MBean has thrown an exception. The
        MBean will not be registered.
    :   `MBeanException` - The constructor of the MBean has
        thrown an exception.
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null, the `ObjectName` passed
        in parameter contains a pattern or no `ObjectName`
        is specified for the MBean.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### createMBean

    [ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management") createMBean([String](../../../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") loaderName,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management"),
    [InstanceAlreadyExistsException](../../../../../java.management/javax/management/InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanRegistrationException](../../../../../java.management/javax/management/MBeanRegistrationException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [NotCompliantMBeanException](../../../../../java.management/javax/management/NotCompliantMBeanException.md "class in javax.management"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,javax.management.ObjectName)).

    Parameters:
    :   `className` - The class name of the MBean to be instantiated.
    :   `name` - The object name of the MBean. May be null.
    :   `loaderName` - The object name of the class loader to be used.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or a
        `java.lang.Exception` that occurred when trying to
        invoke the MBean's constructor.
    :   `InstanceAlreadyExistsException` - The MBean is already
        under the control of the MBean server.
    :   `MBeanRegistrationException` - The
        `preRegister` (`MBeanRegistration`
        interface) method of the MBean has thrown an exception. The
        MBean will not be registered.
    :   `MBeanException` - The constructor of the MBean has
        thrown an exception.
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean.
    :   `InstanceNotFoundException` - The specified class loader
        is not registered in the MBean server.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null, the `ObjectName` passed
        in parameter contains a pattern or no `ObjectName`
        is specified for the MBean.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### createMBean

    [ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management") createMBean([String](../../../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") params,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] signature,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management"),
    [InstanceAlreadyExistsException](../../../../../java.management/javax/management/InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanRegistrationException](../../../../../java.management/javax/management/MBeanRegistrationException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [NotCompliantMBeanException](../../../../../java.management/javax/management/NotCompliantMBeanException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)). The `Object[]`
    parameter is wrapped in a `MarshalledObject`.

    Parameters:
    :   `className` - The class name of the MBean to be instantiated.
    :   `name` - The object name of the MBean. May be null.
    :   `params` - An array containing the parameters of the
        constructor to be invoked, encapsulated into a
        `MarshalledObject`. The encapsulated array can be
        null, equivalent to an empty array.
    :   `signature` - An array containing the signature of the
        constructor to be invoked. Can be null, equivalent to an empty
        array.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or a
        `java.lang.Exception` that occurred when trying to
        invoke the MBean's constructor.
    :   `InstanceAlreadyExistsException` - The MBean is already
        under the control of the MBean server.
    :   `MBeanRegistrationException` - The
        `preRegister` (`MBeanRegistration`
        interface) method of the MBean has thrown an exception. The
        MBean will not be registered.
    :   `MBeanException` - The constructor of the MBean has
        thrown an exception.
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null, the `ObjectName` passed
        in parameter contains a pattern, or no `ObjectName`
        is specified for the MBean.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### createMBean

    [ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management") createMBean([String](../../../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") loaderName,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") params,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] signature,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management"),
    [InstanceAlreadyExistsException](../../../../../java.management/javax/management/InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanRegistrationException](../../../../../java.management/javax/management/MBeanRegistrationException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [NotCompliantMBeanException](../../../../../java.management/javax/management/NotCompliantMBeanException.md "class in javax.management"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, ObjectName, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)). The
    `Object[]` parameter is wrapped in a
    `MarshalledObject`.

    Parameters:
    :   `className` - The class name of the MBean to be instantiated.
    :   `name` - The object name of the MBean. May be null.
    :   `loaderName` - The object name of the class loader to be used.
    :   `params` - An array containing the parameters of the
        constructor to be invoked, encapsulated into a
        `MarshalledObject`. The encapsulated array can be
        null, equivalent to an empty array.
    :   `signature` - An array containing the signature of the
        constructor to be invoked. Can be null, equivalent to an empty
        array.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or a
        `java.lang.Exception` that occurred when trying to
        invoke the MBean's constructor.
    :   `InstanceAlreadyExistsException` - The MBean is already
        under the control of the MBean server.
    :   `MBeanRegistrationException` - The
        `preRegister` (`MBeanRegistration`
        interface) method of the MBean has thrown an exception. The
        MBean will not be registered.
    :   `MBeanException` - The constructor of the MBean has
        thrown an exception.
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean.
    :   `InstanceNotFoundException` - The specified class loader
        is not registered in the MBean server.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null, the `ObjectName` passed
        in parameter contains a pattern, or no `ObjectName`
        is specified for the MBean.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### unregisterMBean

    void unregisterMBean([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [MBeanRegistrationException](../../../../../java.management/javax/management/MBeanRegistrationException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method
    [`MBeanServerConnection.unregisterMBean(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#unregisterMBean(javax.management.ObjectName)).

    Parameters:
    :   `name` - The object name of the MBean to be unregistered.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `MBeanRegistrationException` - The preDeregister
        (`MBeanRegistration` interface) method of the MBean
        has thrown an exception.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null or the MBean you are when trying to
        unregister is the [`MBeanServerDelegate`](../../../../../java.management/javax/management/MBeanServerDelegate.md "class in javax.management") MBean.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### getObjectInstance

    [ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management") getObjectInstance([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method
    [`MBeanServerConnection.getObjectInstance(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getObjectInstance(javax.management.ObjectName)).

    Parameters:
    :   `name` - The object name of the MBean.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   The `ObjectInstance` associated with the MBean
        specified by name. The contained `ObjectName`
        is `name` and the contained class name is
        `getMBeanInfo(name).getClassName()`.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### queryMBeans

    [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management")> queryMBeans([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") query,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.queryMBeans(ObjectName, QueryExp)`](../../../../../java.management/javax/management/MBeanServerConnection.md#queryMBeans(javax.management.ObjectName,javax.management.QueryExp)). The `QueryExp` is wrapped in a
    `MarshalledObject`.

    Parameters:
    :   `name` - The object name pattern identifying the MBeans to
        be retrieved. If null or no domain and key properties are
        specified, all the MBeans registered will be retrieved.
    :   `query` - The query expression to be applied for selecting
        MBeans, encapsulated into a `MarshalledObject`. If
        the `MarshalledObject` encapsulates a null value no
        query expression will be applied for selecting MBeans.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   A set containing the `ObjectInstance`
        objects for the selected MBeans. If no MBean satisfies the
        query an empty list is returned.

    Throws:
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### queryNames

    [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management")> queryNames([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") query,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.queryNames(ObjectName, QueryExp)`](../../../../../java.management/javax/management/MBeanServerConnection.md#queryNames(javax.management.ObjectName,javax.management.QueryExp)). The `QueryExp` is wrapped in a
    `MarshalledObject`.

    Parameters:
    :   `name` - The object name pattern identifying the MBean names
        to be retrieved. If null or no domain and key properties are
        specified, the name of all registered MBeans will be retrieved.
    :   `query` - The query expression to be applied for selecting
        MBeans, encapsulated into a `MarshalledObject`. If
        the `MarshalledObject` encapsulates a null value no
        query expression will be applied for selecting MBeans.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   A set containing the ObjectNames for the MBeans
        selected. If no MBean satisfies the query, an empty list is
        returned.

    Throws:
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### isRegistered

    boolean isRegistered([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method
    [`MBeanServerConnection.isRegistered(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#isRegistered(javax.management.ObjectName)).

    Parameters:
    :   `name` - The object name of the MBean to be checked.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   True if the MBean is already registered in the MBean
        server, false otherwise.

    Throws:
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### getMBeanCount

    [Integer](../../../../../java.base/java/lang/Integer.md "class in java.lang") getMBeanCount([Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method
    [`MBeanServerConnection.getMBeanCount()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getMBeanCount()).

    Parameters:
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   the number of MBeans registered.

    Throws:
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### getAttribute

    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") attribute,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [AttributeNotFoundException](../../../../../java.management/javax/management/AttributeNotFoundException.md "class in javax.management"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.getAttribute(ObjectName, String)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getAttribute(javax.management.ObjectName,java.lang.String)).

    Parameters:
    :   `name` - The object name of the MBean from which the
        attribute is to be retrieved.
    :   `attribute` - A String specifying the name of the attribute
        to be retrieved.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   The value of the retrieved attribute.

    Throws:
    :   `AttributeNotFoundException` - The attribute specified
        is not accessible in the MBean.
    :   `MBeanException` - Wraps an exception thrown by the
        MBean's getter.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `ReflectionException` - Wraps a
        `java.lang.Exception` thrown when trying to invoke
        the getter.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null or the attribute in parameter is
        null.
    :   `RuntimeMBeanException` - Wraps a runtime exception thrown
        by the MBean's getter.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.

    See Also:
    :   - [`setAttribute(javax.management.ObjectName, java.rmi.MarshalledObject, javax.security.auth.Subject)`](#setAttribute(javax.management.ObjectName,java.rmi.MarshalledObject,javax.security.auth.Subject))
  + ### getAttributes

    [AttributeList](../../../../../java.management/javax/management/AttributeList.md "class in javax.management") getAttributes([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] attributes,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.getAttributes(ObjectName, String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#getAttributes(javax.management.ObjectName,java.lang.String%5B%5D)).

    Parameters:
    :   `name` - The object name of the MBean from which the
        attributes are retrieved.
    :   `attributes` - A list of the attributes to be retrieved.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   The list of the retrieved attributes.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `ReflectionException` - An exception occurred when
        trying to invoke the getAttributes method of a Dynamic MBean.
    :   `RuntimeOperationsException` - Wrap a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null or attributes in parameter is null.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.

    See Also:
    :   - [`setAttributes(javax.management.ObjectName, java.rmi.MarshalledObject, javax.security.auth.Subject)`](#setAttributes(javax.management.ObjectName,java.rmi.MarshalledObject,javax.security.auth.Subject))
  + ### setAttribute

    void setAttribute([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") attribute,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [AttributeNotFoundException](../../../../../java.management/javax/management/AttributeNotFoundException.md "class in javax.management"),
    [InvalidAttributeValueException](../../../../../java.management/javax/management/InvalidAttributeValueException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.setAttribute(ObjectName, Attribute)`](../../../../../java.management/javax/management/MBeanServerConnection.md#setAttribute(javax.management.ObjectName,javax.management.Attribute)). The `Attribute` parameter is wrapped
    in a `MarshalledObject`.

    Parameters:
    :   `name` - The name of the MBean within which the attribute is
        to be set.
    :   `attribute` - The identification of the attribute to be set
        and the value it is to be set to, encapsulated into a
        `MarshalledObject`.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `AttributeNotFoundException` - The attribute specified
        is not accessible in the MBean.
    :   `InvalidAttributeValueException` - The value specified
        for the attribute is not valid.
    :   `MBeanException` - Wraps an exception thrown by the
        MBean's setter.
    :   `ReflectionException` - Wraps a
        `java.lang.Exception` thrown when trying to invoke
        the setter.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null or the attribute in parameter is
        null.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.

    See Also:
    :   - [`getAttribute(javax.management.ObjectName, java.lang.String, javax.security.auth.Subject)`](#getAttribute(javax.management.ObjectName,java.lang.String,javax.security.auth.Subject))
  + ### setAttributes

    [AttributeList](../../../../../java.management/javax/management/AttributeList.md "class in javax.management") setAttributes([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") attributes,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.setAttributes(ObjectName, AttributeList)`](../../../../../java.management/javax/management/MBeanServerConnection.md#setAttributes(javax.management.ObjectName,javax.management.AttributeList)). The `AttributeList` parameter is
    wrapped in a `MarshalledObject`.

    Parameters:
    :   `name` - The object name of the MBean within which the
        attributes are to be set.
    :   `attributes` - A list of attributes: The identification of
        the attributes to be set and the values they are to be set to,
        encapsulated into a `MarshalledObject`.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   The list of attributes that were set, with their new
        values.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `ReflectionException` - An exception occurred when
        trying to invoke the getAttributes method of a Dynamic MBean.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null or attributes in parameter is null.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.

    See Also:
    :   - [`getAttributes(javax.management.ObjectName, java.lang.String[], javax.security.auth.Subject)`](#getAttributes(javax.management.ObjectName,java.lang.String%5B%5D,javax.security.auth.Subject))
  + ### invoke

    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") invoke([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") operationName,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") params,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] signature,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.invoke(ObjectName, String, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#invoke(javax.management.ObjectName,java.lang.String,java.lang.Object%5B%5D,java.lang.String%5B%5D)). The `Object[]`
    parameter is wrapped in a `MarshalledObject`.

    Parameters:
    :   `name` - The object name of the MBean on which the method is
        to be invoked.
    :   `operationName` - The name of the operation to be invoked.
    :   `params` - An array containing the parameters to be set when
        the operation is invoked, encapsulated into a
        `MarshalledObject`. The encapsulated array can be
        null, equivalent to an empty array.
    :   `signature` - An array containing the signature of the
        operation. The class objects will be loaded using the same
        class loader as the one used for loading the MBean on which the
        operation was invoked. Can be null, equivalent to an empty
        array.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   The object returned by the operation, which represents
        the result of invoking the operation on the MBean specified.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `MBeanException` - Wraps an exception thrown by the
        MBean's invoked method.
    :   `ReflectionException` - Wraps a
        `java.lang.Exception` thrown while trying to invoke
        the method.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
    :   `RuntimeOperationsException` - Wraps an [`IllegalArgumentException`](../../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") when `name` or
        `operationName` is null.
  + ### getDefaultDomain

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDefaultDomain([Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method
    [`MBeanServerConnection.getDefaultDomain()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getDefaultDomain()).

    Parameters:
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   the default domain.

    Throws:
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### getDomains

    [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getDomains([Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method
    [`MBeanServerConnection.getDomains()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getDomains()).

    Parameters:
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   the list of domains.

    Throws:
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
  + ### getMBeanInfo

    [MBeanInfo](../../../../../java.management/javax/management/MBeanInfo.md "class in javax.management") getMBeanInfo([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [IntrospectionException](../../../../../java.management/javax/management/IntrospectionException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method
    [`MBeanServerConnection.getMBeanInfo(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getMBeanInfo(javax.management.ObjectName)).

    Parameters:
    :   `name` - The name of the MBean to analyze
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   An instance of `MBeanInfo` allowing the
        retrieval of all attributes and operations of this MBean.

    Throws:
    :   `IntrospectionException` - An exception occurred during
        introspection.
    :   `InstanceNotFoundException` - The MBean specified was
        not found.
    :   `ReflectionException` - An exception occurred when
        trying to invoke the getMBeanInfo of a Dynamic MBean.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null.
  + ### isInstanceOf

    boolean isInstanceOf([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") className,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.isInstanceOf(ObjectName, String)`](../../../../../java.management/javax/management/MBeanServerConnection.md#isInstanceOf(javax.management.ObjectName,java.lang.String)).

    Parameters:
    :   `name` - The `ObjectName` of the MBean.
    :   `className` - The name of the class.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   true if the MBean specified is an instance of the
        specified class according to the rules above, false otherwise.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null.
  + ### addNotificationListener

    void addNotificationListener([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") listener,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") filter,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") handback,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.addNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)). The
    `NotificationFilter` parameter is wrapped in a
    `MarshalledObject`. The `Object`
    (handback) parameter is also wrapped in a
    `MarshalledObject`.

    Parameters:
    :   `name` - The name of the MBean on which the listener should
        be added.
    :   `listener` - The object name of the listener which will
        handle the notifications emitted by the registered MBean.
    :   `filter` - The filter object, encapsulated into a
        `MarshalledObject`. If filter encapsulated in the
        `MarshalledObject` has a null value, no filtering
        will be performed before handling notifications.
    :   `handback` - The context to be sent to the listener when a
        notification is emitted, encapsulated into a
        `MarshalledObject`.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `InstanceNotFoundException` - The MBean name of the
        notification listener or of the notification broadcaster does
        not match any of the registered MBeans.
    :   `RuntimeOperationsException` - Wraps an [`IllegalArgumentException`](../../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"). The MBean named by
        `listener` exists but does not implement the
        [`NotificationListener`](../../../../../java.management/javax/management/NotificationListener.md "interface in javax.management") interface,
        or `name` or `listener` is null.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.

    See Also:
    :   - [`removeNotificationListener(ObjectName, ObjectName, Subject)`](#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.security.auth.Subject))
        - [`removeNotificationListener(ObjectName, ObjectName, MarshalledObject, MarshalledObject, Subject)`](#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName,java.rmi.MarshalledObject,java.rmi.MarshalledObject,javax.security.auth.Subject))
  + ### removeNotificationListener

    void removeNotificationListener([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") listener,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ListenerNotFoundException](../../../../../java.management/javax/management/ListenerNotFoundException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.removeNotificationListener(ObjectName, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName)).

    Parameters:
    :   `name` - The name of the MBean on which the listener should
        be removed.
    :   `listener` - The object name of the listener to be removed.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `InstanceNotFoundException` - The MBean name provided
        does not match any of the registered MBeans.
    :   `ListenerNotFoundException` - The listener is not
        registered in the MBean.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
    :   `RuntimeOperationsException` - Wraps an [`IllegalArgumentException`](../../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") when `name` or
        `listener` is null.

    See Also:
    :   - [`addNotificationListener(javax.management.ObjectName, javax.management.ObjectName, java.rmi.MarshalledObject, java.rmi.MarshalledObject, javax.security.auth.Subject)`](#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,java.rmi.MarshalledObject,java.rmi.MarshalledObject,javax.security.auth.Subject))
  + ### removeNotificationListener

    void removeNotificationListener([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") listener,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") filter,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") handback,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ListenerNotFoundException](../../../../../java.management/javax/management/ListenerNotFoundException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.removeNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)). The
    `NotificationFilter` parameter is wrapped in a
    `MarshalledObject`. The `Object`
    parameter is also wrapped in a `MarshalledObject`.

    Parameters:
    :   `name` - The name of the MBean on which the listener should
        be removed.
    :   `listener` - A listener that was previously added to this
        MBean.
    :   `filter` - The filter that was specified when the listener
        was added, encapsulated into a `MarshalledObject`.
    :   `handback` - The handback that was specified when the
        listener was added, encapsulated into a `MarshalledObject`.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `InstanceNotFoundException` - The MBean name provided
        does not match any of the registered MBeans.
    :   `ListenerNotFoundException` - The listener is not
        registered in the MBean, or it is not registered with the given
        filter and handback.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to perform this operation.
    :   `IOException` - if a general communication exception occurred.
    :   `RuntimeOperationsException` - Wraps an [`IllegalArgumentException`](../../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") when `name` or
        `listener` is null.

    See Also:
    :   - [`addNotificationListener(javax.management.ObjectName, javax.management.ObjectName, java.rmi.MarshalledObject, java.rmi.MarshalledObject, javax.security.auth.Subject)`](#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,java.rmi.MarshalledObject,java.rmi.MarshalledObject,javax.security.auth.Subject))
  + ### addNotificationListeners

    [Integer](../../../../../java.base/java/lang/Integer.md "class in java.lang")[] addNotificationListeners([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management")[] names,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi")[] filters,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth")[] delegationSubjects)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the method [`MBeanServerConnection.addNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)).

    Register for notifications from the given MBeans that match
    the given filters. The remote client can subsequently retrieve
    the notifications using the [`fetchNotifications`](#fetchNotifications(long,int,long)) method.

    For each listener, the original
    `NotificationListener` and `handback` are
    kept on the client side; in order for the client to be able to
    identify them, the server generates and returns a unique
    `listenerID`. This `listenerID` is
    forwarded with the `Notifications` to the remote
    client.

    If any one of the given (name, filter) pairs cannot be
    registered, then the operation fails with an exception, and no
    names or filters are registered.

    Parameters:
    :   `names` - the `ObjectNames` identifying the
        MBeans emitting the Notifications.
    :   `filters` - an array of marshalled representations of the
        `NotificationFilters`. Elements of this array can
        be null.
    :   `delegationSubjects` - the `Subjects` on behalf
        of which the listeners are being added. Elements of this array
        can be null. Also, the `delegationSubjects`
        parameter itself can be null, which is equivalent to an array
        of null values with the same size as the `names` and
        `filters` arrays.

    Returns:
    :   an array of `listenerIDs` identifying the
        local listeners. This array has the same number of elements as
        the parameters.

    Throws:
    :   `IllegalArgumentException` - if `names` or
        `filters` is null, or if `names` contains
        a null element, or if the three arrays do not all have the same
        size.
    :   `ClassCastException` - if one of the elements of
        `filters` unmarshalls as a non-null object that is
        not a `NotificationFilter`.
    :   `InstanceNotFoundException` - if one of the
        `names` does not correspond to any registered MBean.
    :   `SecurityException` - if, for one of the MBeans, the
        client, or the delegated Subject if any, does not have
        permission to add a listener.
    :   `IOException` - if a general communication exception occurred.
  + ### removeNotificationListeners

    void removeNotificationListeners([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") name,
    [Integer](../../../../../java.base/java/lang/Integer.md "class in java.lang")[] listenerIDs,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") delegationSubject)
    throws [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ListenerNotFoundException](../../../../../java.management/javax/management/ListenerNotFoundException.md "class in javax.management"),
    [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Handles the
    [`removeNotificationListener(ObjectName, NotificationListener)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.NotificationListener)) and
    [`removeNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)) methods.

    This method removes one or more
    `NotificationListener`s from a given MBean in the
    MBean server.

    The `NotificationListeners` are identified by the
    IDs which were returned by the [`addNotificationListeners(ObjectName[], MarshalledObject[], Subject[])`](#addNotificationListeners(javax.management.ObjectName%5B%5D,java.rmi.MarshalledObject%5B%5D,javax.security.auth.Subject%5B%5D)) method.

    Parameters:
    :   `name` - the `ObjectName` identifying the MBean
        emitting the Notifications.
    :   `listenerIDs` - the list of the IDs corresponding to the
        listeners to remove.
    :   `delegationSubject` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `InstanceNotFoundException` - if the given
        `name` does not correspond to any registered MBean.
    :   `ListenerNotFoundException` - if one of the listeners was
        not found on the server side. This exception can happen if the
        MBean discarded a listener for some reason other than a call to
        `MBeanServer.removeNotificationListener`.
    :   `SecurityException` - if the client, or the delegated Subject
        if any, does not have permission to remove the listeners.
    :   `IOException` - if a general communication exception occurred.
    :   `IllegalArgumentException` - if `ObjectName` or
        `listenerIds` is null or if `listenerIds`
        contains a null element.
  + ### fetchNotifications

    [NotificationResult](../../../../../java.management/javax/management/remote/NotificationResult.md "class in javax.management.remote") fetchNotifications(long clientSequenceNumber,
    int maxNotifications,
    long timeout)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Retrieves notifications from the connector server. This
    method can block until there is at least one notification or
    until the specified timeout is reached. The method can also
    return at any time with zero notifications.

    A notification can be included in the result if its sequence
    number is no less than `clientSequenceNumber` and
    this client has registered at least one listener for the MBean
    generating the notification, with a filter that accepts the
    notification. Each listener that is interested in the
    notification is identified by an Integer ID that was returned
    by [`addNotificationListeners(ObjectName[], MarshalledObject[], Subject[])`](#addNotificationListeners(javax.management.ObjectName%5B%5D,java.rmi.MarshalledObject%5B%5D,javax.security.auth.Subject%5B%5D)).

    Parameters:
    :   `clientSequenceNumber` - the first sequence number that the
        client is interested in. If negative, it is interpreted as
        meaning the sequence number that the next notification will
        have.
    :   `maxNotifications` - the maximum number of different
        notifications to return. The `TargetedNotification`
        array in the returned `NotificationResult` can have
        more elements than this if the same notification appears more
        than once. The behavior is unspecified if this parameter is
        negative.
    :   `timeout` - the maximum time in milliseconds to wait for a
        notification to arrive. This can be 0 to indicate that the
        method should not wait if there are no notifications, but
        should return at once. It can be `Long.MAX_VALUE`
        to indicate that there is no timeout. The behavior is
        unspecified if this parameter is negative.

    Returns:
    :   A `NotificationResult`.

    Throws:
    :   `IOException` - if a general communication exception occurred.