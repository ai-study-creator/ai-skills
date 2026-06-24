Module [java.management.rmi](../../../../module-summary.md)

Package [javax.management.remote.rmi](package-summary.md)

# Class RMIConnectionImpl\_Stub

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.rmi.server.RemoteObject](../../../../../java.rmi/java/rmi/server/RemoteObject.md "class in java.rmi.server")

[java.rmi.server.RemoteStub](../../../../../java.rmi/java/rmi/server/RemoteStub.md "class in java.rmi.server")

javax.management.remote.rmi.RMIConnectionImpl\_Stub

All Implemented Interfaces:
:   `Closeable`, `Serializable`, `AutoCloseable`, `Remote`, `RMIConnection`

---

public final class RMIConnectionImpl\_Stub
extends [RemoteStub](../../../../../java.rmi/java/rmi/server/RemoteStub.md "class in java.rmi.server")
implements [RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi")

RMIConnectionImpl remote stub.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.management.remote.rmi.RMIConnectionImpl_Stub)

* ## Field Summary

  ### Fields inherited from class java.rmi.server.[RemoteObject](../../../../../java.rmi/java/rmi/server/RemoteObject.md "class in java.rmi.server")

  `ref`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RMIConnectionImpl_Stub(RemoteRef ref)`

  Constructor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotificationListener(ObjectName $param_ObjectName_1,
  ObjectName $param_ObjectName_2,
  MarshalledObject $param_MarshalledObject_3,
  MarshalledObject $param_MarshalledObject_4,
  Subject $param_Subject_5)`

  Handles the method [`MBeanServerConnection.addNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)).

  `Integer[]`

  `addNotificationListeners(ObjectName[] $param_arrayOf_ObjectName_1,
  MarshalledObject[] $param_arrayOf_MarshalledObject_2,
  Subject[] $param_arrayOf_Subject_3)`

  Handles the method [`MBeanServerConnection.addNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)).

  `void`

  `close()`

  Closes this connection.

  `ObjectInstance`

  `createMBean(String $param_String_1,
  ObjectName $param_ObjectName_2,
  MarshalledObject $param_MarshalledObject_3,
  String[] $param_arrayOf_String_4,
  Subject $param_Subject_5)`

  Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)).

  `ObjectInstance`

  `createMBean(String $param_String_1,
  ObjectName $param_ObjectName_2,
  ObjectName $param_ObjectName_3,
  MarshalledObject $param_MarshalledObject_4,
  String[] $param_arrayOf_String_5,
  Subject $param_Subject_6)`

  Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, ObjectName, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)).

  `ObjectInstance`

  `createMBean(String $param_String_1,
  ObjectName $param_ObjectName_2,
  ObjectName $param_ObjectName_3,
  Subject $param_Subject_4)`

  Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,javax.management.ObjectName)).

  `ObjectInstance`

  `createMBean(String $param_String_1,
  ObjectName $param_ObjectName_2,
  Subject $param_Subject_3)`

  Handles the method [`MBeanServerConnection.createMBean(String, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName)).

  `NotificationResult`

  `fetchNotifications(long $param_long_1,
  int $param_int_2,
  long $param_long_3)`

  Retrieves notifications from the connector server.

  `Object`

  `getAttribute(ObjectName $param_ObjectName_1,
  String $param_String_2,
  Subject $param_Subject_3)`

  Handles the method [`MBeanServerConnection.getAttribute(ObjectName, String)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getAttribute(javax.management.ObjectName,java.lang.String)).

  `AttributeList`

  `getAttributes(ObjectName $param_ObjectName_1,
  String[] $param_arrayOf_String_2,
  Subject $param_Subject_3)`

  Handles the method [`MBeanServerConnection.getAttributes(ObjectName, String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#getAttributes(javax.management.ObjectName,java.lang.String%5B%5D)).

  `String`

  `getConnectionId()`

  Returns the connection ID.

  `String`

  `getDefaultDomain(Subject $param_Subject_1)`

  Handles the method
  [`MBeanServerConnection.getDefaultDomain()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getDefaultDomain()).

  `String[]`

  `getDomains(Subject $param_Subject_1)`

  Handles the method
  [`MBeanServerConnection.getDomains()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getDomains()).

  `Integer`

  `getMBeanCount(Subject $param_Subject_1)`

  Handles the method
  [`MBeanServerConnection.getMBeanCount()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getMBeanCount()).

  `MBeanInfo`

  `getMBeanInfo(ObjectName $param_ObjectName_1,
  Subject $param_Subject_2)`

  Handles the method
  [`MBeanServerConnection.getMBeanInfo(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getMBeanInfo(javax.management.ObjectName)).

  `ObjectInstance`

  `getObjectInstance(ObjectName $param_ObjectName_1,
  Subject $param_Subject_2)`

  Handles the method
  [`MBeanServerConnection.getObjectInstance(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getObjectInstance(javax.management.ObjectName)).

  `Object`

  `invoke(ObjectName $param_ObjectName_1,
  String $param_String_2,
  MarshalledObject $param_MarshalledObject_3,
  String[] $param_arrayOf_String_4,
  Subject $param_Subject_5)`

  Handles the method [`MBeanServerConnection.invoke(ObjectName, String, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#invoke(javax.management.ObjectName,java.lang.String,java.lang.Object%5B%5D,java.lang.String%5B%5D)).

  `boolean`

  `isInstanceOf(ObjectName $param_ObjectName_1,
  String $param_String_2,
  Subject $param_Subject_3)`

  Handles the method [`MBeanServerConnection.isInstanceOf(ObjectName, String)`](../../../../../java.management/javax/management/MBeanServerConnection.md#isInstanceOf(javax.management.ObjectName,java.lang.String)).

  `boolean`

  `isRegistered(ObjectName $param_ObjectName_1,
  Subject $param_Subject_2)`

  Handles the method
  [`MBeanServerConnection.isRegistered(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#isRegistered(javax.management.ObjectName)).

  `Set`

  `queryMBeans(ObjectName $param_ObjectName_1,
  MarshalledObject $param_MarshalledObject_2,
  Subject $param_Subject_3)`

  Handles the method [`MBeanServerConnection.queryMBeans(ObjectName, QueryExp)`](../../../../../java.management/javax/management/MBeanServerConnection.md#queryMBeans(javax.management.ObjectName,javax.management.QueryExp)).

  `Set`

  `queryNames(ObjectName $param_ObjectName_1,
  MarshalledObject $param_MarshalledObject_2,
  Subject $param_Subject_3)`

  Handles the method [`MBeanServerConnection.queryNames(ObjectName, QueryExp)`](../../../../../java.management/javax/management/MBeanServerConnection.md#queryNames(javax.management.ObjectName,javax.management.QueryExp)).

  `void`

  `removeNotificationListener(ObjectName $param_ObjectName_1,
  ObjectName $param_ObjectName_2,
  MarshalledObject $param_MarshalledObject_3,
  MarshalledObject $param_MarshalledObject_4,
  Subject $param_Subject_5)`

  Handles the method [`MBeanServerConnection.removeNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)).

  `void`

  `removeNotificationListener(ObjectName $param_ObjectName_1,
  ObjectName $param_ObjectName_2,
  Subject $param_Subject_3)`

  Handles the method [`MBeanServerConnection.removeNotificationListener(ObjectName, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName)).

  `void`

  `removeNotificationListeners(ObjectName $param_ObjectName_1,
  Integer[] $param_arrayOf_Integer_2,
  Subject $param_Subject_3)`

  Handles the
  [`removeNotificationListener(ObjectName, NotificationListener)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.NotificationListener)) and
  [`removeNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)) methods.

  `void`

  `setAttribute(ObjectName $param_ObjectName_1,
  MarshalledObject $param_MarshalledObject_2,
  Subject $param_Subject_3)`

  Handles the method [`MBeanServerConnection.setAttribute(ObjectName, Attribute)`](../../../../../java.management/javax/management/MBeanServerConnection.md#setAttribute(javax.management.ObjectName,javax.management.Attribute)).

  `AttributeList`

  `setAttributes(ObjectName $param_ObjectName_1,
  MarshalledObject $param_MarshalledObject_2,
  Subject $param_Subject_3)`

  Handles the method [`MBeanServerConnection.setAttributes(ObjectName, AttributeList)`](../../../../../java.management/javax/management/MBeanServerConnection.md#setAttributes(javax.management.ObjectName,javax.management.AttributeList)).

  `void`

  `unregisterMBean(ObjectName $param_ObjectName_1,
  Subject $param_Subject_2)`

  Handles the method
  [`MBeanServerConnection.unregisterMBean(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#unregisterMBean(javax.management.ObjectName)).

  ### Methods inherited from class java.rmi.server.[RemoteStub](../../../../../java.rmi/java/rmi/server/RemoteStub.md "class in java.rmi.server")

  `setRef`

  ### Methods inherited from class java.rmi.server.[RemoteObject](../../../../../java.rmi/java/rmi/server/RemoteObject.md "class in java.rmi.server")

  `equals, getRef, hashCode, toString, toStub`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### RMIConnectionImpl\_Stub

    public RMIConnectionImpl\_Stub([RemoteRef](../../../../../java.rmi/java/rmi/server/RemoteRef.md "interface in java.rmi.server") ref)

    Constructor.

    Parameters:
    :   `ref` - a remote ref
* ## Method Details

  + ### addNotificationListener

    public void addNotificationListener([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_2,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_3,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_4,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_5)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.addNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)). The
    `NotificationFilter` parameter is wrapped in a
    `MarshalledObject`. The `Object`
    (handback) parameter is also wrapped in a
    `MarshalledObject`.

    Specified by:
    :   `addNotificationListener` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The name of the MBean on which the listener should
        be added.
    :   `$param_ObjectName_2` - The object name of the listener which will
        handle the notifications emitted by the registered MBean.
    :   `$param_MarshalledObject_3` - The filter object, encapsulated into a
        `MarshalledObject`. If filter encapsulated in the
        `MarshalledObject` has a null value, no filtering
        will be performed before handling notifications.
    :   `$param_MarshalledObject_4` - The context to be sent to the listener when a
        notification is emitted, encapsulated into a
        `MarshalledObject`.
    :   `$param_Subject_5` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - The MBean name of the
        notification listener or of the notification broadcaster does
        not match any of the registered MBeans.

    See Also:
    :   - [`RMIConnection.removeNotificationListener(ObjectName, ObjectName, Subject)`](RMIConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.security.auth.Subject))
        - [`RMIConnection.removeNotificationListener(ObjectName, ObjectName, MarshalledObject, MarshalledObject, Subject)`](RMIConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName,java.rmi.MarshalledObject,java.rmi.MarshalledObject,javax.security.auth.Subject))
  + ### addNotificationListeners

    public [Integer](../../../../../java.base/java/lang/Integer.md "class in java.lang")[] addNotificationListeners([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management")[] $param\_arrayOf\_ObjectName\_1,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi")[] $param\_arrayOf\_MarshalledObject\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth")[] $param\_arrayOf\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.addNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)).

    Register for notifications from the given MBeans that match
    the given filters. The remote client can subsequently retrieve
    the notifications using the [`fetchNotifications`](RMIConnection.md#fetchNotifications(long,int,long)) method.

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

    Specified by:
    :   `addNotificationListeners` in interface `RMIConnection`

    Parameters:
    :   `$param_arrayOf_ObjectName_1` - the `ObjectNames` identifying the
        MBeans emitting the Notifications.
    :   `$param_arrayOf_MarshalledObject_2` - an array of marshalled representations of the
        `NotificationFilters`. Elements of this array can
        be null.
    :   `$param_arrayOf_Subject_3` - the `Subjects` on behalf
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
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - if one of the
        `names` does not correspond to any registered MBean.
  + ### close

    public void close()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `RMIConnection`

    Closes this connection. On return from this method, the RMI
    object implementing this interface is unexported, so further
    remote calls to it will fail.

    Specified by:
    :   `close` in interface `AutoCloseable`

    Specified by:
    :   `close` in interface `Closeable`

    Specified by:
    :   `close` in interface `RMIConnection`

    Throws:
    :   `IOException` - if the connection could not be closed,
        or the Remote object could not be unexported, or there was a
        communication failure when transmitting the remote close
        request.
  + ### createMBean

    public [ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management") createMBean([String](../../../../../java.base/java/lang/String.md "class in java.lang") $param\_String\_1,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_2,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_3,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] $param\_arrayOf\_String\_4,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_5)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceAlreadyExistsException](../../../../../java.management/javax/management/InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [MBeanRegistrationException](../../../../../java.management/javax/management/MBeanRegistrationException.md "class in javax.management"),
    [NotCompliantMBeanException](../../../../../java.management/javax/management/NotCompliantMBeanException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)). The `Object[]`
    parameter is wrapped in a `MarshalledObject`.

    Specified by:
    :   `createMBean` in interface `RMIConnection`

    Parameters:
    :   `$param_String_1` - The class name of the MBean to be instantiated.
    :   `$param_ObjectName_2` - The object name of the MBean. May be null.
    :   `$param_MarshalledObject_3` - An array containing the parameters of the
        constructor to be invoked, encapsulated into a
        `MarshalledObject`. The encapsulated array can be
        null, equivalent to an empty array.
    :   `$param_arrayOf_String_4` - An array containing the signature of the
        constructor to be invoked. Can be null, equivalent to an empty
        array.
    :   `$param_Subject_5` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceAlreadyExistsException` - The MBean is already
        under the control of the MBean server.
    :   `MBeanException` - The constructor of the MBean has
        thrown an exception.
    :   `MBeanRegistrationException` - The
        `preRegister` (`MBeanRegistration`
        interface) method of the MBean has thrown an exception. The
        MBean will not be registered.
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean.
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or a
        `java.lang.Exception` that occurred when trying to
        invoke the MBean's constructor.
  + ### createMBean

    public [ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management") createMBean([String](../../../../../java.base/java/lang/String.md "class in java.lang") $param\_String\_1,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_2,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_3,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_4,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] $param\_arrayOf\_String\_5,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_6)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceAlreadyExistsException](../../../../../java.management/javax/management/InstanceAlreadyExistsException.md "class in javax.management"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [MBeanRegistrationException](../../../../../java.management/javax/management/MBeanRegistrationException.md "class in javax.management"),
    [NotCompliantMBeanException](../../../../../java.management/javax/management/NotCompliantMBeanException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, ObjectName, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)). The
    `Object[]` parameter is wrapped in a
    `MarshalledObject`.

    Specified by:
    :   `createMBean` in interface `RMIConnection`

    Parameters:
    :   `$param_String_1` - The class name of the MBean to be instantiated.
    :   `$param_ObjectName_2` - The object name of the MBean. May be null.
    :   `$param_ObjectName_3` - The object name of the class loader to be used.
    :   `$param_MarshalledObject_4` - An array containing the parameters of the
        constructor to be invoked, encapsulated into a
        `MarshalledObject`. The encapsulated array can be
        null, equivalent to an empty array.
    :   `$param_arrayOf_String_5` - An array containing the signature of the
        constructor to be invoked. Can be null, equivalent to an empty
        array.
    :   `$param_Subject_6` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceAlreadyExistsException` - The MBean is already
        under the control of the MBean server.
    :   `InstanceNotFoundException` - The specified class loader
        is not registered in the MBean server.
    :   `MBeanException` - The constructor of the MBean has
        thrown an exception.
    :   `MBeanRegistrationException` - The
        `preRegister` (`MBeanRegistration`
        interface) method of the MBean has thrown an exception. The
        MBean will not be registered.
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean.
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or a
        `java.lang.Exception` that occurred when trying to
        invoke the MBean's constructor.
  + ### createMBean

    public [ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management") createMBean([String](../../../../../java.base/java/lang/String.md "class in java.lang") $param\_String\_1,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_2,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_3,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_4)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceAlreadyExistsException](../../../../../java.management/javax/management/InstanceAlreadyExistsException.md "class in javax.management"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [MBeanRegistrationException](../../../../../java.management/javax/management/MBeanRegistrationException.md "class in javax.management"),
    [NotCompliantMBeanException](../../../../../java.management/javax/management/NotCompliantMBeanException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.createMBean(String, ObjectName, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,javax.management.ObjectName)).

    Specified by:
    :   `createMBean` in interface `RMIConnection`

    Parameters:
    :   `$param_String_1` - The class name of the MBean to be instantiated.
    :   `$param_ObjectName_2` - The object name of the MBean. May be null.
    :   `$param_ObjectName_3` - The object name of the class loader to be used.
    :   `$param_Subject_4` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceAlreadyExistsException` - The MBean is already
        under the control of the MBean server.
    :   `InstanceNotFoundException` - The specified class loader
        is not registered in the MBean server.
    :   `MBeanException` - The constructor of the MBean has
        thrown an exception.
    :   `MBeanRegistrationException` - The
        `preRegister` (`MBeanRegistration`
        interface) method of the MBean has thrown an exception. The
        MBean will not be registered.
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean.
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or a
        `java.lang.Exception` that occurred when trying to
        invoke the MBean's constructor.
  + ### createMBean

    public [ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management") createMBean([String](../../../../../java.base/java/lang/String.md "class in java.lang") $param\_String\_1,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceAlreadyExistsException](../../../../../java.management/javax/management/InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [MBeanRegistrationException](../../../../../java.management/javax/management/MBeanRegistrationException.md "class in javax.management"),
    [NotCompliantMBeanException](../../../../../java.management/javax/management/NotCompliantMBeanException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.createMBean(String, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName)).

    Specified by:
    :   `createMBean` in interface `RMIConnection`

    Parameters:
    :   `$param_String_1` - The class name of the MBean to be instantiated.
    :   `$param_ObjectName_2` - The object name of the MBean. May be null.
    :   `$param_Subject_3` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceAlreadyExistsException` - The MBean is already
        under the control of the MBean server.
    :   `MBeanException` - The constructor of the MBean has
        thrown an exception.
    :   `MBeanRegistrationException` - The
        `preRegister` (`MBeanRegistration`
        interface) method of the MBean has thrown an exception. The
        MBean will not be registered.
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean.
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or a
        `java.lang.Exception` that occurred
        when trying to invoke the MBean's constructor.
  + ### fetchNotifications

    public [NotificationResult](../../../../../java.management/javax/management/remote/NotificationResult.md "class in javax.management.remote") fetchNotifications(long $param\_long\_1,
    int $param\_int\_2,
    long $param\_long\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `RMIConnection`

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
    by [`RMIConnection.addNotificationListeners(ObjectName[], MarshalledObject[], Subject[])`](RMIConnection.md#addNotificationListeners(javax.management.ObjectName%5B%5D,java.rmi.MarshalledObject%5B%5D,javax.security.auth.Subject%5B%5D)).

    Specified by:
    :   `fetchNotifications` in interface `RMIConnection`

    Parameters:
    :   `$param_long_1` - the first sequence number that the
        client is interested in. If negative, it is interpreted as
        meaning the sequence number that the next notification will
        have.
    :   `$param_int_2` - the maximum number of different
        notifications to return. The `TargetedNotification`
        array in the returned `NotificationResult` can have
        more elements than this if the same notification appears more
        than once. The behavior is unspecified if this parameter is
        negative.
    :   `$param_long_3` - the maximum time in milliseconds to wait for a
        notification to arrive. This can be 0 to indicate that the
        method should not wait if there are no notifications, but
        should return at once. It can be `Long.MAX_VALUE`
        to indicate that there is no timeout. The behavior is
        unspecified if this parameter is negative.

    Returns:
    :   A `NotificationResult`.

    Throws:
    :   `IOException` - if a general communication exception occurred.
  + ### getAttribute

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") $param\_String\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [AttributeNotFoundException](../../../../../java.management/javax/management/AttributeNotFoundException.md "class in javax.management"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.getAttribute(ObjectName, String)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getAttribute(javax.management.ObjectName,java.lang.String)).

    Specified by:
    :   `getAttribute` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The object name of the MBean from which the
        attribute is to be retrieved.
    :   `$param_String_2` - A String specifying the name of the attribute
        to be retrieved.
    :   `$param_Subject_3` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   The value of the retrieved attribute.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `AttributeNotFoundException` - The attribute specified
        is not accessible in the MBean.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `MBeanException` - Wraps an exception thrown by the
        MBean's getter.
    :   `ReflectionException` - Wraps a
        `java.lang.Exception` thrown when trying to invoke
        the getter.

    See Also:
    :   - [`RMIConnection.setAttribute(javax.management.ObjectName, java.rmi.MarshalledObject, javax.security.auth.Subject)`](RMIConnection.md#setAttribute(javax.management.ObjectName,java.rmi.MarshalledObject,javax.security.auth.Subject))
  + ### getAttributes

    public [AttributeList](../../../../../java.management/javax/management/AttributeList.md "class in javax.management") getAttributes([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] $param\_arrayOf\_String\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.getAttributes(ObjectName, String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#getAttributes(javax.management.ObjectName,java.lang.String%5B%5D)).

    Specified by:
    :   `getAttributes` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The object name of the MBean from which the
        attributes are retrieved.
    :   `$param_arrayOf_String_2` - A list of the attributes to be retrieved.
    :   `$param_Subject_3` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   The list of the retrieved attributes.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `ReflectionException` - An exception occurred when
        trying to invoke the getAttributes method of a Dynamic MBean.

    See Also:
    :   - [`RMIConnection.setAttributes(javax.management.ObjectName, java.rmi.MarshalledObject, javax.security.auth.Subject)`](RMIConnection.md#setAttributes(javax.management.ObjectName,java.rmi.MarshalledObject,javax.security.auth.Subject))
  + ### getConnectionId

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getConnectionId()
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `RMIConnection`

    Returns the connection ID. This string is different for
    every open connection to a given RMI connector server.

    Specified by:
    :   `getConnectionId` in interface `RMIConnection`

    Returns:
    :   the connection ID

    Throws:
    :   `IOException` - if a general communication exception occurred.

    See Also:
    :   - [`RMIConnector.connect`](RMIConnector.md#connect())
  + ### getDefaultDomain

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getDefaultDomain([Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_1)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `RMIConnection`

    Handles the method
    [`MBeanServerConnection.getDefaultDomain()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getDefaultDomain()).

    Specified by:
    :   `getDefaultDomain` in interface `RMIConnection`

    Parameters:
    :   `$param_Subject_1` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   the default domain.

    Throws:
    :   `IOException` - if a general communication exception occurred.
  + ### getDomains

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getDomains([Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_1)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `RMIConnection`

    Handles the method
    [`MBeanServerConnection.getDomains()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getDomains()).

    Specified by:
    :   `getDomains` in interface `RMIConnection`

    Parameters:
    :   `$param_Subject_1` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   the list of domains.

    Throws:
    :   `IOException` - if a general communication exception occurred.
  + ### getMBeanCount

    public [Integer](../../../../../java.base/java/lang/Integer.md "class in java.lang") getMBeanCount([Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_1)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `RMIConnection`

    Handles the method
    [`MBeanServerConnection.getMBeanCount()`](../../../../../java.management/javax/management/MBeanServerConnection.md#getMBeanCount()).

    Specified by:
    :   `getMBeanCount` in interface `RMIConnection`

    Parameters:
    :   `$param_Subject_1` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   the number of MBeans registered.

    Throws:
    :   `IOException` - if a general communication exception occurred.
  + ### getMBeanInfo

    public [MBeanInfo](../../../../../java.management/javax/management/MBeanInfo.md "class in javax.management") getMBeanInfo([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_2)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [IntrospectionException](../../../../../java.management/javax/management/IntrospectionException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method
    [`MBeanServerConnection.getMBeanInfo(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getMBeanInfo(javax.management.ObjectName)).

    Specified by:
    :   `getMBeanInfo` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The name of the MBean to analyze
    :   `$param_Subject_2` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   An instance of `MBeanInfo` allowing the
        retrieval of all attributes and operations of this MBean.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - The MBean specified was
        not found.
    :   `IntrospectionException` - An exception occurred during
        introspection.
    :   `ReflectionException` - An exception occurred when
        trying to invoke the getMBeanInfo of a Dynamic MBean.
  + ### getObjectInstance

    public [ObjectInstance](../../../../../java.management/javax/management/ObjectInstance.md "class in javax.management") getObjectInstance([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_2)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method
    [`MBeanServerConnection.getObjectInstance(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#getObjectInstance(javax.management.ObjectName)).

    Specified by:
    :   `getObjectInstance` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The object name of the MBean.
    :   `$param_Subject_2` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   The `ObjectInstance` associated with the MBean
        specified by name. The contained `ObjectName`
        is `name` and the contained class name is
        `getMBeanInfo(name).getClassName()`.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
  + ### invoke

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") invoke([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") $param\_String\_2,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_3,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] $param\_arrayOf\_String\_4,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_5)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.invoke(ObjectName, String, Object[], String[])`](../../../../../java.management/javax/management/MBeanServerConnection.md#invoke(javax.management.ObjectName,java.lang.String,java.lang.Object%5B%5D,java.lang.String%5B%5D)). The `Object[]`
    parameter is wrapped in a `MarshalledObject`.

    Specified by:
    :   `invoke` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The object name of the MBean on which the method is
        to be invoked.
    :   `$param_String_2` - The name of the operation to be invoked.
    :   `$param_MarshalledObject_3` - An array containing the parameters to be set when
        the operation is invoked, encapsulated into a
        `MarshalledObject`. The encapsulated array can be
        null, equivalent to an empty array.
    :   `$param_arrayOf_String_4` - An array containing the signature of the
        operation. The class objects will be loaded using the same
        class loader as the one used for loading the MBean on which the
        operation was invoked. Can be null, equivalent to an empty
        array.
    :   `$param_Subject_5` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   The object returned by the operation, which represents
        the result of invoking the operation on the MBean specified.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `MBeanException` - Wraps an exception thrown by the
        MBean's invoked method.
    :   `ReflectionException` - Wraps a
        `java.lang.Exception` thrown while trying to invoke
        the method.
  + ### isInstanceOf

    public boolean isInstanceOf([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") $param\_String\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.isInstanceOf(ObjectName, String)`](../../../../../java.management/javax/management/MBeanServerConnection.md#isInstanceOf(javax.management.ObjectName,java.lang.String)).

    Specified by:
    :   `isInstanceOf` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The `ObjectName` of the MBean.
    :   `$param_String_2` - The name of the class.
    :   `$param_Subject_3` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   true if the MBean specified is an instance of the
        specified class according to the rules above, false otherwise.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
  + ### isRegistered

    public boolean isRegistered([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_2)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `RMIConnection`

    Handles the method
    [`MBeanServerConnection.isRegistered(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#isRegistered(javax.management.ObjectName)).

    Specified by:
    :   `isRegistered` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The object name of the MBean to be checked.
    :   `$param_Subject_2` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   True if the MBean is already registered in the MBean
        server, false otherwise.

    Throws:
    :   `IOException` - if a general communication exception occurred.
  + ### queryMBeans

    public [Set](../../../../../java.base/java/util/Set.md "interface in java.util") queryMBeans([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.queryMBeans(ObjectName, QueryExp)`](../../../../../java.management/javax/management/MBeanServerConnection.md#queryMBeans(javax.management.ObjectName,javax.management.QueryExp)). The `QueryExp` is wrapped in a
    `MarshalledObject`.

    Specified by:
    :   `queryMBeans` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The object name pattern identifying the MBeans to
        be retrieved. If null or no domain and key properties are
        specified, all the MBeans registered will be retrieved.
    :   `$param_MarshalledObject_2` - The query expression to be applied for selecting
        MBeans, encapsulated into a `MarshalledObject`. If
        the `MarshalledObject` encapsulates a null value no
        query expression will be applied for selecting MBeans.
    :   `$param_Subject_3` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   A set containing the `ObjectInstance`
        objects for the selected MBeans. If no MBean satisfies the
        query an empty list is returned.

    Throws:
    :   `IOException` - if a general communication exception occurred.
  + ### queryNames

    public [Set](../../../../../java.base/java/util/Set.md "interface in java.util") queryNames([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.queryNames(ObjectName, QueryExp)`](../../../../../java.management/javax/management/MBeanServerConnection.md#queryNames(javax.management.ObjectName,javax.management.QueryExp)). The `QueryExp` is wrapped in a
    `MarshalledObject`.

    Specified by:
    :   `queryNames` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The object name pattern identifying the MBean names
        to be retrieved. If null or no domain and key properties are
        specified, the name of all registered MBeans will be retrieved.
    :   `$param_MarshalledObject_2` - The query expression to be applied for selecting
        MBeans, encapsulated into a `MarshalledObject`. If
        the `MarshalledObject` encapsulates a null value no
        query expression will be applied for selecting MBeans.
    :   `$param_Subject_3` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   A set containing the ObjectNames for the MBeans
        selected. If no MBean satisfies the query, an empty list is
        returned.

    Throws:
    :   `IOException` - if a general communication exception occurred.
  + ### removeNotificationListener

    public void removeNotificationListener([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_2,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_3,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_4,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_5)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ListenerNotFoundException](../../../../../java.management/javax/management/ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.removeNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object)). The
    `NotificationFilter` parameter is wrapped in a
    `MarshalledObject`. The `Object`
    parameter is also wrapped in a `MarshalledObject`.

    Specified by:
    :   `removeNotificationListener` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The name of the MBean on which the listener should
        be removed.
    :   `$param_ObjectName_2` - A listener that was previously added to this
        MBean.
    :   `$param_MarshalledObject_3` - The filter that was specified when the listener
        was added, encapsulated into a `MarshalledObject`.
    :   `$param_MarshalledObject_4` - The handback that was specified when the
        listener was added, encapsulated into a `MarshalledObject`.
    :   `$param_Subject_5` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - The MBean name provided
        does not match any of the registered MBeans.
    :   `ListenerNotFoundException` - The listener is not
        registered in the MBean, or it is not registered with the given
        filter and handback.

    See Also:
    :   - [`RMIConnection.addNotificationListener(javax.management.ObjectName, javax.management.ObjectName, java.rmi.MarshalledObject, java.rmi.MarshalledObject, javax.security.auth.Subject)`](RMIConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,java.rmi.MarshalledObject,java.rmi.MarshalledObject,javax.security.auth.Subject))
  + ### removeNotificationListener

    public void removeNotificationListener([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ListenerNotFoundException](../../../../../java.management/javax/management/ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.removeNotificationListener(ObjectName, ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName)).

    Specified by:
    :   `removeNotificationListener` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The name of the MBean on which the listener should
        be removed.
    :   `$param_ObjectName_2` - The object name of the listener to be removed.
    :   `$param_Subject_3` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - The MBean name provided
        does not match any of the registered MBeans.
    :   `ListenerNotFoundException` - The listener is not
        registered in the MBean.

    See Also:
    :   - [`RMIConnection.addNotificationListener(javax.management.ObjectName, javax.management.ObjectName, java.rmi.MarshalledObject, java.rmi.MarshalledObject, javax.security.auth.Subject)`](RMIConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,java.rmi.MarshalledObject,java.rmi.MarshalledObject,javax.security.auth.Subject))
  + ### removeNotificationListeners

    public void removeNotificationListeners([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [Integer](../../../../../java.base/java/lang/Integer.md "class in java.lang")[] $param\_arrayOf\_Integer\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ListenerNotFoundException](../../../../../java.management/javax/management/ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the
    [`removeNotificationListener(ObjectName, NotificationListener)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.NotificationListener)) and
    [`removeNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](../../../../../java.management/javax/management/MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)) methods.

    This method removes one or more
    `NotificationListener`s from a given MBean in the
    MBean server.

    The `NotificationListeners` are identified by the
    IDs which were returned by the [`RMIConnection.addNotificationListeners(ObjectName[], MarshalledObject[], Subject[])`](RMIConnection.md#addNotificationListeners(javax.management.ObjectName%5B%5D,java.rmi.MarshalledObject%5B%5D,javax.security.auth.Subject%5B%5D)) method.

    Specified by:
    :   `removeNotificationListeners` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - the `ObjectName` identifying the MBean
        emitting the Notifications.
    :   `$param_arrayOf_Integer_2` - the list of the IDs corresponding to the
        listeners to remove.
    :   `$param_Subject_3` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - if the given
        `name` does not correspond to any registered MBean.
    :   `ListenerNotFoundException` - if one of the listeners was
        not found on the server side. This exception can happen if the
        MBean discarded a listener for some reason other than a call to
        `MBeanServer.removeNotificationListener`.
  + ### setAttribute

    public void setAttribute([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [AttributeNotFoundException](../../../../../java.management/javax/management/AttributeNotFoundException.md "class in javax.management"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [InvalidAttributeValueException](../../../../../java.management/javax/management/InvalidAttributeValueException.md "class in javax.management"),
    [MBeanException](../../../../../java.management/javax/management/MBeanException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.setAttribute(ObjectName, Attribute)`](../../../../../java.management/javax/management/MBeanServerConnection.md#setAttribute(javax.management.ObjectName,javax.management.Attribute)). The `Attribute` parameter is wrapped
    in a `MarshalledObject`.

    Specified by:
    :   `setAttribute` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The name of the MBean within which the attribute is
        to be set.
    :   `$param_MarshalledObject_2` - The identification of the attribute to be set
        and the value it is to be set to, encapsulated into a
        `MarshalledObject`.
    :   `$param_Subject_3` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `AttributeNotFoundException` - The attribute specified
        is not accessible in the MBean.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `InvalidAttributeValueException` - The value specified
        for the attribute is not valid.
    :   `MBeanException` - Wraps an exception thrown by the
        MBean's setter.
    :   `ReflectionException` - Wraps a
        `java.lang.Exception` thrown when trying to invoke
        the setter.

    See Also:
    :   - [`RMIConnection.getAttribute(javax.management.ObjectName, java.lang.String, javax.security.auth.Subject)`](RMIConnection.md#getAttribute(javax.management.ObjectName,java.lang.String,javax.security.auth.Subject))
  + ### setAttributes

    public [AttributeList](../../../../../java.management/javax/management/AttributeList.md "class in javax.management") setAttributes([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [MarshalledObject](../../../../../java.rmi/java/rmi/MarshalledObject.md "class in java.rmi") $param\_MarshalledObject\_2,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_3)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [ReflectionException](../../../../../java.management/javax/management/ReflectionException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method [`MBeanServerConnection.setAttributes(ObjectName, AttributeList)`](../../../../../java.management/javax/management/MBeanServerConnection.md#setAttributes(javax.management.ObjectName,javax.management.AttributeList)). The `AttributeList` parameter is
    wrapped in a `MarshalledObject`.

    Specified by:
    :   `setAttributes` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The object name of the MBean within which the
        attributes are to be set.
    :   `$param_MarshalledObject_2` - A list of attributes: The identification of
        the attributes to be set and the values they are to be set to,
        encapsulated into a `MarshalledObject`.
    :   `$param_Subject_3` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Returns:
    :   The list of attributes that were set, with their new
        values.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `ReflectionException` - An exception occurred when
        trying to invoke the getAttributes method of a Dynamic MBean.

    See Also:
    :   - [`RMIConnection.getAttributes(javax.management.ObjectName, java.lang.String[], javax.security.auth.Subject)`](RMIConnection.md#getAttributes(javax.management.ObjectName,java.lang.String%5B%5D,javax.security.auth.Subject))
  + ### unregisterMBean

    public void unregisterMBean([ObjectName](../../../../../java.management/javax/management/ObjectName.md "class in javax.management") $param\_ObjectName\_1,
    [Subject](../../../../../java.base/javax/security/auth/Subject.md "class in javax.security.auth") $param\_Subject\_2)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io"),
    [InstanceNotFoundException](../../../../../java.management/javax/management/InstanceNotFoundException.md "class in javax.management"),
    [MBeanRegistrationException](../../../../../java.management/javax/management/MBeanRegistrationException.md "class in javax.management")

    Description copied from interface: `RMIConnection`

    Handles the method
    [`MBeanServerConnection.unregisterMBean(ObjectName)`](../../../../../java.management/javax/management/MBeanServerConnection.md#unregisterMBean(javax.management.ObjectName)).

    Specified by:
    :   `unregisterMBean` in interface `RMIConnection`

    Parameters:
    :   `$param_ObjectName_1` - The object name of the MBean to be unregistered.
    :   `$param_Subject_2` - The `Subject` containing the
        delegation principals or `null` if the authentication
        principal is used instead.

    Throws:
    :   `IOException` - if a general communication exception occurred.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `MBeanRegistrationException` - The preDeregister
        (`MBeanRegistration` interface) method of the MBean
        has thrown an exception.