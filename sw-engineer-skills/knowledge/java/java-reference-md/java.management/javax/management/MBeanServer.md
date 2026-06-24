Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Interface MBeanServer

All Superinterfaces:
:   `MBeanServerConnection`

All Known Subinterfaces:
:   `MBeanServerForwarder`

---

public interface MBeanServer
extends [MBeanServerConnection](MBeanServerConnection.md "interface in javax.management")

This is the interface for MBean manipulation on the agent
side. It contains the methods necessary for the creation,
registration, and deletion of MBeans as well as the access methods
for registered MBeans. This is the core component of the JMX
infrastructure.

User code does not usually implement this interface. Instead,
an object that implements this interface is obtained with one of
the methods in the [`MBeanServerFactory`](MBeanServerFactory.md "class in javax.management") class.

Every MBean which is added to the MBean server becomes
manageable: its attributes and operations become remotely
accessible through the connectors/adaptors connected to that MBean
server. A Java object cannot be registered in the MBean server
unless it is a JMX compliant MBean.

When an MBean is registered or unregistered in the
MBean server a [`MBeanServerNotification`](MBeanServerNotification.md "class in javax.management") Notification is emitted. To register an
object as listener to MBeanServerNotifications you should call the
MBean server method [`addNotificationListener`](#addNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)) with `ObjectName` the
`ObjectName` of the [`MBeanServerDelegate`](MBeanServerDelegate.md "class in javax.management"). This
`ObjectName` is:   
`JMImplementation:type=MBeanServerDelegate`.

An object obtained from the [`createMBeanServer`](MBeanServerFactory.md#createMBeanServer(java.lang.String)) or
[`newMBeanServer`](MBeanServerFactory.md#newMBeanServer(java.lang.String))
methods of the [`MBeanServerFactory`](MBeanServerFactory.md "class in javax.management") class applies security
checks to its methods, as follows.

First, if there is no security manager ([`System.getSecurityManager()`](../../../java.base/java/lang/System.md#getSecurityManager()) is null), then an implementation of
this interface is free not to make any checks.

Assuming that there is a security manager, or that the
implementation chooses to make checks anyway, the checks are made
as detailed below. In what follows, and unless otherwise specified,
`className` is the
string returned by [`MBeanInfo.getClassName()`](MBeanInfo.md#getClassName()) for the target
MBean.

If a security check fails, the method throws [`SecurityException`](../../../java.base/java/lang/SecurityException.md "class in java.lang").

For methods that can throw [`InstanceNotFoundException`](InstanceNotFoundException.md "class in javax.management"),
this exception is thrown for a non-existent MBean, regardless of
permissions. This is because a non-existent MBean has no
`className`.

* For the [`invoke`](#invoke(javax.management.ObjectName,java.lang.String,java.lang.Object%5B%5D,java.lang.String%5B%5D)) method, the caller's
  permissions must imply [`MBeanPermission(className, operationName, name, "invoke")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

  * For the [`getAttribute`](#getAttribute(javax.management.ObjectName,java.lang.String)) method, the
    caller's permissions must imply [`MBeanPermission(className, attribute, name, "getAttribute")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

    * For the [`getAttributes`](#getAttributes(javax.management.ObjectName,java.lang.String%5B%5D)) method, the
      caller's permissions must imply [`MBeanPermission(className, null, name, "getAttribute")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).
      Additionally, for each attribute *a* in the [`AttributeList`](AttributeList.md "class in javax.management"), if the caller's permissions do not imply [`MBeanPermission(className, a, name, "getAttribute")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)), the
      MBean server will behave as if that attribute had not been in the
      supplied list.

      * For the [`setAttribute`](#setAttribute(javax.management.ObjectName,javax.management.Attribute)) method, the
        caller's permissions must imply [`MBeanPermission(className, attrName, name, "setAttribute")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)), where
        `attrName` is [`attribute.getName()`](Attribute.md#getName()).

        * For the [`setAttributes`](#setAttributes(javax.management.ObjectName,javax.management.AttributeList)) method, the
          caller's permissions must imply [`MBeanPermission(className, null, name, "setAttribute")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).
          Additionally, for each attribute *a* in the [`AttributeList`](AttributeList.md "class in javax.management"), if the caller's permissions do not imply [`MBeanPermission(className, a, name, "setAttribute")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)), the
          MBean server will behave as if that attribute had not been in the
          supplied list.

          * For the `addNotificationListener` methods,
            the caller's permissions must imply [`MBeanPermission(className, null, name,
            "addNotificationListener")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

            * For the `removeNotificationListener` methods,
              the caller's permissions must imply [`MBeanPermission(className, null, name,
              "removeNotificationListener")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

              * For the [`getMBeanInfo`](#getMBeanInfo(javax.management.ObjectName)) method, the
                caller's permissions must imply [`MBeanPermission(className, null, name, "getMBeanInfo")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

                * For the [`getObjectInstance`](#getObjectInstance(javax.management.ObjectName)) method,
                  the caller's permissions must imply [`MBeanPermission(className, null, name, "getObjectInstance")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

                  * For the [`isInstanceOf`](#isInstanceOf(javax.management.ObjectName,java.lang.String)) method, the
                    caller's permissions must imply [`MBeanPermission(className, null, name, "isInstanceOf")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

                    * For the [`queryMBeans`](#queryMBeans(javax.management.ObjectName,javax.management.QueryExp)) method, the
                      caller's permissions must imply [`MBeanPermission(null, null, null, "queryMBeans")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).
                      Additionally, for each MBean *n* that matches `name`,
                      if the caller's permissions do not imply [`MBeanPermission(className, null, n, "queryMBeans")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)), the
                      MBean server will behave as if that MBean did not exist.

                      Certain query elements perform operations on the MBean server.
                      If the caller does not have the required permissions for a given
                      MBean, that MBean will not be included in the result of the query.
                      The standard query elements that are affected are [`Query.attr(String)`](Query.md#attr(java.lang.String)), [`Query.attr(String,String)`](Query.md#attr(java.lang.String,java.lang.String)), and [`Query.classattr()`](Query.md#classattr()).

                      * For the [`queryNames`](#queryNames(javax.management.ObjectName,javax.management.QueryExp)) method, the checks
                        are the same as for `queryMBeans` except that
                        `"queryNames"` is used instead of
                        `"queryMBeans"` in the `MBeanPermission`
                        objects. Note that a `"queryMBeans"` permission implies
                        the corresponding `"queryNames"` permission.

                        * For the [`getDomains`](#getDomains()) method, the caller's
                          permissions must imply [`MBeanPermission(null, null, null, "getDomains")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)). Additionally,
                          for each domain d in the returned array, if the caller's
                          permissions do not imply [`MBeanPermission(null, null, new ObjectName("d:x=x"),
                          "getDomains")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)), the domain is eliminated from the array. Here,
                          `x=x` is any key=value pair, needed to
                          satisfy ObjectName's constructor but not otherwise relevant.

                          * For the [`getClassLoader`](#getClassLoader(javax.management.ObjectName)) method, the
                            caller's permissions must imply [`MBeanPermission(className, null, loaderName,
                            "getClassLoader")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

                            * For the [`getClassLoaderFor`](#getClassLoaderFor(javax.management.ObjectName)) method,
                              the caller's permissions must imply [`MBeanPermission(className, null, mbeanName,
                              "getClassLoaderFor")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

                              * For the [`getClassLoaderRepository`](#getClassLoaderRepository()) method, the caller's permissions must
                                imply [`MBeanPermission(null, null, null, "getClassLoaderRepository")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

                                * For the deprecated `deserialize` methods, the
                                  required permissions are the same as for the methods that replace
                                  them.

                                  * For the `instantiate` methods, the caller's
                                    permissions must imply [`MBeanPermission(className, null, null, "instantiate")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)),
                                    where `className` is the name of the class which is to
                                    be instantiated.

                                    * For the [`registerMBean`](#registerMBean(java.lang.Object,javax.management.ObjectName)) method, the
                                      caller's permissions must imply [`MBeanPermission(className, null, name, "registerMBean")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

                                      If the `MBeanPermission` check succeeds, the MBean's
                                      class is validated by checking that its [`ProtectionDomain`](../../../java.base/java/security/ProtectionDomain.md "class in java.security") implies [`MBeanTrustPermission("register")`](MBeanTrustPermission.md#%3Cinit%3E(java.lang.String)).

                                      Finally, if the `name` argument is null, another
                                      `MBeanPermission` check is made using the
                                      `ObjectName` returned by [`MBeanRegistration.preRegister`](MBeanRegistration.md#preRegister(javax.management.MBeanServer,javax.management.ObjectName)).

                                      * For the `createMBean` methods, the caller's
                                        permissions must imply the permissions needed by the equivalent
                                        `instantiate` followed by
                                        `registerMBean`.

                                        * For the [`unregisterMBean`](#unregisterMBean(javax.management.ObjectName)) method,
                                          the caller's permissions must imply [`MBeanPermission(className, null, name, "unregisterMBean")`](MBeanPermission.md#%3Cinit%3E(java.lang.String,java.lang.String,javax.management.ObjectName,java.lang.String)).

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNotificationListener(ObjectName name,
  NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Adds a listener to a registered MBean.

  `void`

  `addNotificationListener(ObjectName name,
  ObjectName listener,
  NotificationFilter filter,
  Object handback)`

  Adds a listener to a registered MBean.

  `ObjectInstance`

  `createMBean(String className,
  ObjectName name)`

  Instantiates and registers an MBean in the MBean server.

  `ObjectInstance`

  `createMBean(String className,
  ObjectName name,
  Object[] params,
  String[] signature)`

  Instantiates and registers an MBean in the MBean server.

  `ObjectInstance`

  `createMBean(String className,
  ObjectName name,
  ObjectName loaderName)`

  Instantiates and registers an MBean in the MBean server.

  `ObjectInstance`

  `createMBean(String className,
  ObjectName name,
  ObjectName loaderName,
  Object[] params,
  String[] signature)`

  Instantiates and registers an MBean in the MBean server.

  `default ObjectInputStream`

  `deserialize(String className,
  byte[] data)`

  Deprecated.

  Use [`getClassLoaderRepository()`](#getClassLoaderRepository()) to obtain the
  class loader repository and use it to deserialize.

  `default ObjectInputStream`

  `deserialize(String className,
  ObjectName loaderName,
  byte[] data)`

  Deprecated.

  Use [`getClassLoader`](#getClassLoader(javax.management.ObjectName)) to obtain
  the class loader for deserialization.

  `default ObjectInputStream`

  `deserialize(ObjectName name,
  byte[] data)`

  Deprecated.

  Use [`getClassLoaderFor`](#getClassLoaderFor(javax.management.ObjectName)) to
  obtain the appropriate class loader for deserialization.

  `Object`

  `getAttribute(ObjectName name,
  String attribute)`

  Gets the value of a specific attribute of a named MBean.

  `AttributeList`

  `getAttributes(ObjectName name,
  String[] attributes)`

  Retrieves the values of several attributes of a named MBean.

  `ClassLoader`

  `getClassLoader(ObjectName loaderName)`

  Return the named [`ClassLoader`](../../../java.base/java/lang/ClassLoader.md "class in java.lang").

  `ClassLoader`

  `getClassLoaderFor(ObjectName mbeanName)`

  Return the [`ClassLoader`](../../../java.base/java/lang/ClassLoader.md "class in java.lang") that was used for
  loading the class of the named MBean.

  `ClassLoaderRepository`

  `getClassLoaderRepository()`

  Return the ClassLoaderRepository for this MBeanServer.

  `String`

  `getDefaultDomain()`

  Returns the default domain used for naming the MBean.

  `String[]`

  `getDomains()`

  Returns the list of domains in which any MBean is currently
  registered.

  `Integer`

  `getMBeanCount()`

  Returns the number of MBeans registered in the MBean server.

  `MBeanInfo`

  `getMBeanInfo(ObjectName name)`

  This method discovers the attributes and operations that an
  MBean exposes for management.

  `ObjectInstance`

  `getObjectInstance(ObjectName name)`

  Gets the `ObjectInstance` for a given MBean
  registered with the MBean server.

  `Object`

  `instantiate(String className)`

  Instantiates an object using the list of all class loaders
  registered in the MBean server's [`Class Loader
  Repository`](loading/ClassLoaderRepository.md "interface in javax.management.loading").

  `Object`

  `instantiate(String className,
  Object[] params,
  String[] signature)`

  Instantiates an object using the list of all class loaders
  registered in the MBean server [`Class Loader
  Repository`](loading/ClassLoaderRepository.md "interface in javax.management.loading").

  `Object`

  `instantiate(String className,
  ObjectName loaderName)`

  Instantiates an object using the class Loader specified by its
  `ObjectName`.

  `Object`

  `instantiate(String className,
  ObjectName loaderName,
  Object[] params,
  String[] signature)`

  Instantiates an object.

  `Object`

  `invoke(ObjectName name,
  String operationName,
  Object[] params,
  String[] signature)`

  Invokes an operation on an MBean.

  `boolean`

  `isInstanceOf(ObjectName name,
  String className)`

  Returns true if the MBean specified is an instance of the
  specified class, false otherwise.

  `boolean`

  `isRegistered(ObjectName name)`

  Checks whether an MBean, identified by its object name, is
  already registered with the MBean server.

  `Set<ObjectInstance>`

  `queryMBeans(ObjectName name,
  QueryExp query)`

  Gets MBeans controlled by the MBean server.

  `Set<ObjectName>`

  `queryNames(ObjectName name,
  QueryExp query)`

  Gets the names of MBeans controlled by the MBean server.

  `ObjectInstance`

  `registerMBean(Object object,
  ObjectName name)`

  Registers a pre-existing object as an MBean with the MBean
  server.

  `void`

  `removeNotificationListener(ObjectName name,
  NotificationListener listener)`

  Removes a listener from a registered MBean.

  `void`

  `removeNotificationListener(ObjectName name,
  NotificationListener listener,
  NotificationFilter filter,
  Object handback)`

  Removes a listener from a registered MBean.

  `void`

  `removeNotificationListener(ObjectName name,
  ObjectName listener)`

  Removes a listener from a registered MBean.

  `void`

  `removeNotificationListener(ObjectName name,
  ObjectName listener,
  NotificationFilter filter,
  Object handback)`

  Removes a listener from a registered MBean.

  `void`

  `setAttribute(ObjectName name,
  Attribute attribute)`

  Sets the value of a specific attribute of a named MBean.

  `AttributeList`

  `setAttributes(ObjectName name,
  AttributeList attributes)`

  Sets the values of several attributes of a named MBean.

  `void`

  `unregisterMBean(ObjectName name)`

  Unregisters an MBean from the MBean server.

* ## Method Details

  + ### createMBean

    [ObjectInstance](ObjectInstance.md "class in javax.management") createMBean([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](ObjectName.md "class in javax.management") name)
    throws [ReflectionException](ReflectionException.md "class in javax.management"),
    [InstanceAlreadyExistsException](InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanRegistrationException](MBeanRegistrationException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [NotCompliantMBeanException](NotCompliantMBeanException.md "class in javax.management")

    Instantiates and registers an MBean in the MBean server. The
    MBean server will use its [`Default Loader
    Repository`](loading/ClassLoaderRepository.md "interface in javax.management.loading") to load the class of the MBean. An object name is
    associated with the MBean. If the object name given is null, the
    MBean must provide its own name by implementing the [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management") interface
    and returning the name from the [`preRegister`](MBeanRegistration.md#preRegister(javax.management.MBeanServer,javax.management.ObjectName)) method.

    This method is equivalent to [`createMBean(className, name, (Object[]) null, (String[])
    null)`](MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)).

    If this method successfully creates an MBean, a notification
    is sent as described [above](#notif).

    Specified by:
    :   `createMBean` in interface `MBeanServerConnection`

    Parameters:
    :   `className` - The class name of the MBean to be instantiated.
    :   `name` - The object name of the MBean. May be null.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null, the `ObjectName` passed
        in parameter contains a pattern or no `ObjectName`
        is specified for the MBean.
    :   `RuntimeMBeanException` - If the MBean's constructor or its
        `preRegister` or `postRegister` method threw
        a `RuntimeException`. If the `postRegister`
        (`MBeanRegistration` interface) method of the MBean throws a
        `RuntimeException`, the `createMBean` method will
        throw a `RuntimeMBeanException`, although the MBean creation
        and registration succeeded. In such a case, the MBean will be actually
        registered even though the `createMBean` method
        threw an exception. Note that `RuntimeMBeanException` can
        also be thrown by `preRegister`, in which case the MBean
        will not be registered.
    :   `RuntimeErrorException` - If the `postRegister`
        (`MBeanRegistration` interface) method of the MBean throws an
        `Error`, the `createMBean` method will
        throw a `RuntimeErrorException`, although the MBean creation
        and registration succeeded. In such a case, the MBean will be actually
        registered even though the `createMBean` method
        threw an exception. Note that `RuntimeErrorException` can
        also be thrown by `preRegister`, in which case the MBean
        will not be registered.
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
        thrown an exception
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean

    See Also:
    :   - [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management")
  + ### createMBean

    [ObjectInstance](ObjectInstance.md "class in javax.management") createMBean([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](ObjectName.md "class in javax.management") name,
    [ObjectName](ObjectName.md "class in javax.management") loaderName)
    throws [ReflectionException](ReflectionException.md "class in javax.management"),
    [InstanceAlreadyExistsException](InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanRegistrationException](MBeanRegistrationException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [NotCompliantMBeanException](NotCompliantMBeanException.md "class in javax.management"),
    [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Instantiates and registers an MBean in the MBean server. The
    class loader to be used is identified by its object name. An
    object name is associated with the MBean. If the object name of
    the loader is null, the ClassLoader that loaded the MBean
    server will be used. If the MBean's object name given is null,
    the MBean must provide its own name by implementing the [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management") interface
    and returning the name from the [`preRegister`](MBeanRegistration.md#preRegister(javax.management.MBeanServer,javax.management.ObjectName)) method.

    This method is equivalent to [`createMBean(className, name, loaderName, (Object[]) null,
    (String[]) null)`](MBeanServerConnection.md#createMBean(java.lang.String,javax.management.ObjectName,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)).

    If this method successfully creates an MBean, a notification
    is sent as described [above](#notif).

    Specified by:
    :   `createMBean` in interface `MBeanServerConnection`

    Parameters:
    :   `className` - The class name of the MBean to be instantiated.
    :   `name` - The object name of the MBean. May be null.
    :   `loaderName` - The object name of the class loader to be used.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null, the `ObjectName` passed
        in parameter contains a pattern or no `ObjectName`
        is specified for the MBean.
    :   `RuntimeMBeanException` - If the MBean's constructor or its
        `preRegister` or `postRegister` method threw
        a `RuntimeException`. If the `postRegister`
        (`MBeanRegistration` interface) method of the MBean throws a
        `RuntimeException`, the `createMBean` method will
        throw a `RuntimeMBeanException`, although the MBean creation
        and registration succeeded. In such a case, the MBean will be actually
        registered even though the `createMBean` method
        threw an exception. Note that `RuntimeMBeanException` can
        also be thrown by `preRegister`, in which case the MBean
        will not be registered.
    :   `RuntimeErrorException` - If the `postRegister`
        (`MBeanRegistration` interface) method of the MBean throws an
        `Error`, the `createMBean` method will
        throw a `RuntimeErrorException`, although the MBean creation
        and registration succeeded. In such a case, the MBean will be actually
        registered even though the `createMBean` method
        threw an exception. Note that `RuntimeErrorException` can
        also be thrown by `preRegister`, in which case the MBean
        will not be registered.
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
        thrown an exception
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean
    :   `InstanceNotFoundException` - The specified class loader
        is not registered in the MBean server.

    See Also:
    :   - [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management")
  + ### createMBean

    [ObjectInstance](ObjectInstance.md "class in javax.management") createMBean([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](ObjectName.md "class in javax.management") name,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] params,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] signature)
    throws [ReflectionException](ReflectionException.md "class in javax.management"),
    [InstanceAlreadyExistsException](InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanRegistrationException](MBeanRegistrationException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [NotCompliantMBeanException](NotCompliantMBeanException.md "class in javax.management")

    Instantiates and registers an MBean in the MBean server. The
    MBean server will use its [`Default Loader
    Repository`](loading/ClassLoaderRepository.md "interface in javax.management.loading") to load the class of the MBean. An object name is
    associated with the MBean. If the object name given is null, the
    MBean must provide its own name by implementing the [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management") interface
    and returning the name from the [`preRegister`](MBeanRegistration.md#preRegister(javax.management.MBeanServer,javax.management.ObjectName)) method.

    If this method successfully creates an MBean, a notification
    is sent as described [above](#notif).

    Specified by:
    :   `createMBean` in interface `MBeanServerConnection`

    Parameters:
    :   `className` - The class name of the MBean to be instantiated.
    :   `name` - The object name of the MBean. May be null.
    :   `params` - An array containing the parameters of the
        constructor to be invoked.
    :   `signature` - An array containing the signature of the
        constructor to be invoked.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null, the `ObjectName` passed
        in parameter contains a pattern or no `ObjectName`
        is specified for the MBean.
    :   `RuntimeMBeanException` - If the MBean's constructor or its
        `preRegister` or `postRegister` method threw
        a `RuntimeException`. If the `postRegister`
        (`MBeanRegistration` interface) method of the MBean throws a
        `RuntimeException`, the `createMBean` method will
        throw a `RuntimeMBeanException`, although the MBean creation
        and registration succeeded. In such a case, the MBean will be actually
        registered even though the `createMBean` method
        threw an exception. Note that `RuntimeMBeanException` can
        also be thrown by `preRegister`, in which case the MBean
        will not be registered.
    :   `RuntimeErrorException` - If the `postRegister`
        (`MBeanRegistration` interface) method of the MBean throws an
        `Error`, the `createMBean` method will
        throw a `RuntimeErrorException`, although the MBean creation
        and registration succeeded. In such a case, the MBean will be actually
        registered even though the `createMBean` method
        threw an exception. Note that `RuntimeErrorException` can
        also be thrown by `preRegister`, in which case the MBean
        will not be registered.
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
        thrown an exception
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean

    See Also:
    :   - [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management")
  + ### createMBean

    [ObjectInstance](ObjectInstance.md "class in javax.management") createMBean([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](ObjectName.md "class in javax.management") name,
    [ObjectName](ObjectName.md "class in javax.management") loaderName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] params,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] signature)
    throws [ReflectionException](ReflectionException.md "class in javax.management"),
    [InstanceAlreadyExistsException](InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanRegistrationException](MBeanRegistrationException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [NotCompliantMBeanException](NotCompliantMBeanException.md "class in javax.management"),
    [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Instantiates and registers an MBean in the MBean server. The
    class loader to be used is identified by its object name. An
    object name is associated with the MBean. If the object name of
    the loader is not specified, the ClassLoader that loaded the
    MBean server will be used. If the MBean object name given is
    null, the MBean must provide its own name by implementing the
    [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management")
    interface and returning the name from the [`preRegister`](MBeanRegistration.md#preRegister(javax.management.MBeanServer,javax.management.ObjectName)) method.

    If this method successfully creates an MBean, a notification
    is sent as described [above](#notif).

    Specified by:
    :   `createMBean` in interface `MBeanServerConnection`

    Parameters:
    :   `className` - The class name of the MBean to be instantiated.
    :   `name` - The object name of the MBean. May be null.
    :   `loaderName` - The object name of the class loader to be used.
    :   `params` - An array containing the parameters of the
        constructor to be invoked.
    :   `signature` - An array containing the signature of the
        constructor to be invoked.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        instantiated MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null, the `ObjectName` passed
        in parameter contains a pattern or no `ObjectName`
        is specified for the MBean.
    :   `RuntimeMBeanException` - The MBean's constructor or its
        `preRegister` or `postRegister` method threw
        a `RuntimeException`. If the `postRegister`
        (`MBeanRegistration` interface) method of the MBean throws a
        `RuntimeException`, the `createMBean` method will
        throw a `RuntimeMBeanException`, although the MBean creation
        and registration succeeded. In such a case, the MBean will be actually
        registered even though the `createMBean` method
        threw an exception. Note that `RuntimeMBeanException` can
        also be thrown by `preRegister`, in which case the MBean
        will not be registered.
    :   `RuntimeErrorException` - If the `postRegister` method
        (`MBeanRegistration` interface) method of the MBean throws an
        `Error`, the `createMBean` method will
        throw a `RuntimeErrorException`, although the MBean creation
        and registration succeeded. In such a case, the MBean will be actually
        registered even though the `createMBean` method
        threw an exception. Note that `RuntimeErrorException` can
        also be thrown by `preRegister`, in which case the MBean
        will not be registered.
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
        thrown an exception
    :   `NotCompliantMBeanException` - This class is not a JMX
        compliant MBean
    :   `InstanceNotFoundException` - The specified class loader
        is not registered in the MBean server.

    See Also:
    :   - [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management")
  + ### registerMBean

    [ObjectInstance](ObjectInstance.md "class in javax.management") registerMBean([Object](../../../java.base/java/lang/Object.md "class in java.lang") object,
    [ObjectName](ObjectName.md "class in javax.management") name)
    throws [InstanceAlreadyExistsException](InstanceAlreadyExistsException.md "class in javax.management"),
    [MBeanRegistrationException](MBeanRegistrationException.md "class in javax.management"),
    [NotCompliantMBeanException](NotCompliantMBeanException.md "class in javax.management")

    Registers a pre-existing object as an MBean with the MBean
    server. If the object name given is null, the MBean must
    provide its own name by implementing the [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management") interface
    and returning the name from the [`preRegister`](MBeanRegistration.md#preRegister(javax.management.MBeanServer,javax.management.ObjectName)) method.

    If this method successfully registers an MBean, a notification
    is sent as described [above](#notif).

    Parameters:
    :   `object` - The MBean to be registered as an MBean.
    :   `name` - The object name of the MBean. May be null.

    Returns:
    :   An `ObjectInstance`, containing the
        `ObjectName` and the Java class name of the newly
        registered MBean. If the contained `ObjectName`
        is `n`, the contained Java class name is
        `getMBeanInfo(n).getClassName()`.

    Throws:
    :   `InstanceAlreadyExistsException` - The MBean is already
        under the control of the MBean server.
    :   `MBeanRegistrationException` - The
        `preRegister` (`MBeanRegistration`
        interface) method of the MBean has thrown an exception. The
        MBean will not be registered.
    :   `RuntimeMBeanException` - If the `postRegister`
        (`MBeanRegistration` interface) method of the MBean throws a
        `RuntimeException`, the `registerMBean` method will
        throw a `RuntimeMBeanException`, although the MBean
        registration succeeded. In such a case, the MBean will be actually
        registered even though the `registerMBean` method
        threw an exception. Note that `RuntimeMBeanException` can
        also be thrown by `preRegister`, in which case the MBean
        will not be registered.
    :   `RuntimeErrorException` - If the `postRegister`
        (`MBeanRegistration` interface) method of the MBean throws an
        `Error`, the `registerMBean` method will
        throw a `RuntimeErrorException`, although the MBean
        registration succeeded. In such a case, the MBean will be actually
        registered even though the `registerMBean` method
        threw an exception. Note that `RuntimeErrorException` can
        also be thrown by `preRegister`, in which case the MBean
        will not be registered.
    :   `NotCompliantMBeanException` - This object is not a JMX
        compliant MBean
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        passed in parameter is null or no object name is specified.

    See Also:
    :   - [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management")
  + ### unregisterMBean

    void unregisterMBean([ObjectName](ObjectName.md "class in javax.management") name)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [MBeanRegistrationException](MBeanRegistrationException.md "class in javax.management")

    Unregisters an MBean from the MBean server. The MBean is
    identified by its object name. Once the method has been
    invoked, the MBean may no longer be accessed by its object
    name.

    If this method successfully unregisters an MBean, a notification
    is sent as described [above](#notif).

    Specified by:
    :   `unregisterMBean` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The object name of the MBean to be unregistered.

    Throws:
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null or the MBean you are when trying to
        unregister is the [`MBeanServerDelegate`](MBeanServerDelegate.md "class in javax.management") MBean.
    :   `RuntimeMBeanException` - If the `postDeregister`
        (`MBeanRegistration` interface) method of the MBean throws a
        `RuntimeException`, the `unregisterMBean` method
        will throw a `RuntimeMBeanException`, although the MBean
        unregistration succeeded. In such a case, the MBean will be actually
        unregistered even though the `unregisterMBean` method
        threw an exception. Note that `RuntimeMBeanException` can
        also be thrown by `preDeregister`, in which case the MBean
        will remain registered.
    :   `RuntimeErrorException` - If the `postDeregister`
        (`MBeanRegistration` interface) method of the MBean throws an
        `Error`, the `unregisterMBean` method will
        throw a `RuntimeErrorException`, although the MBean
        unregistration succeeded. In such a case, the MBean will be actually
        unregistered even though the `unregisterMBean` method
        threw an exception. Note that `RuntimeMBeanException` can
        also be thrown by `preDeregister`, in which case the MBean
        will remain registered.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `MBeanRegistrationException` - The preDeregister
        (`MBeanRegistration` interface) method of the MBean
        has thrown an exception.

    See Also:
    :   - [`MBeanRegistration`](MBeanRegistration.md "interface in javax.management")
  + ### getObjectInstance

    [ObjectInstance](ObjectInstance.md "class in javax.management") getObjectInstance([ObjectName](ObjectName.md "class in javax.management") name)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Gets the `ObjectInstance` for a given MBean
    registered with the MBean server.

    Specified by:
    :   `getObjectInstance` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The object name of the MBean.

    Returns:
    :   The `ObjectInstance` associated with the MBean
        specified by name. The contained `ObjectName`
        is `name` and the contained class name is
        `getMBeanInfo(name).getClassName()`.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
  + ### queryMBeans

    [Set](../../../java.base/java/util/Set.md "interface in java.util")<[ObjectInstance](ObjectInstance.md "class in javax.management")> queryMBeans([ObjectName](ObjectName.md "class in javax.management") name,
    [QueryExp](QueryExp.md "interface in javax.management") query)

    Gets MBeans controlled by the MBean server. This method allows
    any of the following to be obtained: All MBeans, a set of
    MBeans specified by pattern matching on the
    `ObjectName` and/or a Query expression, a specific
    MBean. When the object name is null or no domain and key
    properties are specified, all objects are to be selected (and
    filtered if a query is specified). It returns the set of
    `ObjectInstance` objects (containing the
    `ObjectName` and the Java Class name) for the
    selected MBeans.

    Specified by:
    :   `queryMBeans` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The object name pattern identifying the MBeans to
        be retrieved. If null or no domain and key properties are
        specified, all the MBeans registered will be retrieved.
    :   `query` - The query expression to be applied for selecting
        MBeans. If null no query expression will be applied for
        selecting MBeans.

    Returns:
    :   A set containing the `ObjectInstance`
        objects for the selected MBeans. If no MBean satisfies the
        query an empty list is returned.
  + ### queryNames

    [Set](../../../java.base/java/util/Set.md "interface in java.util")<[ObjectName](ObjectName.md "class in javax.management")> queryNames([ObjectName](ObjectName.md "class in javax.management") name,
    [QueryExp](QueryExp.md "interface in javax.management") query)

    Gets the names of MBeans controlled by the MBean server. This
    method enables any of the following to be obtained: The names
    of all MBeans, the names of a set of MBeans specified by
    pattern matching on the `ObjectName` and/or a Query
    expression, a specific MBean name (equivalent to testing
    whether an MBean is registered). When the object name is null
    or no domain and key properties are specified, all objects are
    selected (and filtered if a query is specified). It returns the
    set of ObjectNames for the MBeans selected.

    Specified by:
    :   `queryNames` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The object name pattern identifying the MBean names
        to be retrieved. If null or no domain and key properties are
        specified, the name of all registered MBeans will be retrieved.
    :   `query` - The query expression to be applied for selecting
        MBeans. If null no query expression will be applied for
        selecting MBeans.

    Returns:
    :   A set containing the ObjectNames for the MBeans
        selected. If no MBean satisfies the query, an empty list is
        returned.
  + ### isRegistered

    boolean isRegistered([ObjectName](ObjectName.md "class in javax.management") name)

    Description copied from interface: `MBeanServerConnection`

    Checks whether an MBean, identified by its object name, is
    already registered with the MBean server.

    Specified by:
    :   `isRegistered` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The object name of the MBean to be checked.

    Returns:
    :   True if the MBean is already registered in the MBean
        server, false otherwise.

    Throws:
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null.
  + ### getMBeanCount

    [Integer](../../../java.base/java/lang/Integer.md "class in java.lang") getMBeanCount()

    Returns the number of MBeans registered in the MBean server.

    Specified by:
    :   `getMBeanCount` in interface `MBeanServerConnection`

    Returns:
    :   the number of registered MBeans, wrapped in an Integer.
        If the caller's permissions are restricted, this number may
        be greater than the number of MBeans the caller can access.
  + ### getAttribute

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([ObjectName](ObjectName.md "class in javax.management") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") attribute)
    throws [MBeanException](MBeanException.md "class in javax.management"),
    [AttributeNotFoundException](AttributeNotFoundException.md "class in javax.management"),
    [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Gets the value of a specific attribute of a named MBean. The MBean
    is identified by its object name.

    Specified by:
    :   `getAttribute` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The object name of the MBean from which the
        attribute is to be retrieved.
    :   `attribute` - A String specifying the name of the attribute
        to be retrieved.

    Returns:
    :   The value of the retrieved attribute.

    Throws:
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null or the attribute in parameter is
        null.
    :   `MBeanException` - Wraps an exception thrown by the
        MBean's getter.
    :   `AttributeNotFoundException` - The attribute specified
        is not accessible in the MBean.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `ReflectionException` - Wraps a
        `java.lang.Exception` thrown when trying to invoke
        the setter.

    See Also:
    :   - [`MBeanServerConnection.setAttribute(javax.management.ObjectName, javax.management.Attribute)`](MBeanServerConnection.md#setAttribute(javax.management.ObjectName,javax.management.Attribute))
  + ### getAttributes

    [AttributeList](AttributeList.md "class in javax.management") getAttributes([ObjectName](ObjectName.md "class in javax.management") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] attributes)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Retrieves the values of several attributes of a named MBean. The MBean
    is identified by its object name.

    If one or more attributes cannot be retrieved for some reason, they
    will be omitted from the returned `AttributeList`. The caller
    should check that the list is the same size as the `attributes`
    array. To discover what problem prevented a given attribute from being
    retrieved, call [`getAttribute`](MBeanServerConnection.md#getAttribute(javax.management.ObjectName,java.lang.String)) for that attribute.

    Here is an example of calling this method and checking that it
    succeeded in retrieving all the requested attributes:

    ```
     String[] attrNames = ...;
     AttributeList list = mbeanServerConnection.getAttributes(objectName, attrNames);
     if (list.size() == attrNames.length)
         System.out.println("All attributes were retrieved successfully");
     else {
         List<String> missing = new ArrayList<String>(Arrays.asList(attrNames));
         for (Attribute a : list.asList())
             missing.remove(a.getName());
         System.out.println("Did not retrieve: " + missing);
     }
    ```

    Specified by:
    :   `getAttributes` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The object name of the MBean from which the
        attributes are retrieved.
    :   `attributes` - A list of the attributes to be retrieved.

    Returns:
    :   The list of the retrieved attributes.

    Throws:
    :   `RuntimeOperationsException` - Wrap a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null or attributes in parameter is null.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `ReflectionException` - An exception occurred when
        trying to invoke the getAttributes method of a Dynamic MBean.

    See Also:
    :   - [`MBeanServerConnection.setAttributes(javax.management.ObjectName, javax.management.AttributeList)`](MBeanServerConnection.md#setAttributes(javax.management.ObjectName,javax.management.AttributeList))
  + ### setAttribute

    void setAttribute([ObjectName](ObjectName.md "class in javax.management") name,
    [Attribute](Attribute.md "class in javax.management") attribute)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [AttributeNotFoundException](AttributeNotFoundException.md "class in javax.management"),
    [InvalidAttributeValueException](InvalidAttributeValueException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Sets the value of a specific attribute of a named MBean. The MBean
    is identified by its object name.

    Specified by:
    :   `setAttribute` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The name of the MBean within which the attribute is
        to be set.
    :   `attribute` - The identification of the attribute to be set
        and the value it is to be set to.

    Throws:
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null or the attribute in parameter is
        null.
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

    See Also:
    :   - [`MBeanServerConnection.getAttribute(javax.management.ObjectName, java.lang.String)`](MBeanServerConnection.md#getAttribute(javax.management.ObjectName,java.lang.String))
  + ### setAttributes

    [AttributeList](AttributeList.md "class in javax.management") setAttributes([ObjectName](ObjectName.md "class in javax.management") name,
    [AttributeList](AttributeList.md "class in javax.management") attributes)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Sets the values of several attributes of a named MBean. The MBean is
    identified by its object name.

    If one or more attributes cannot be set for some reason, they will be
    omitted from the returned `AttributeList`. The caller should check
    that the input `AttributeList` is the same size as the output one.
    To discover what problem prevented a given attribute from being retrieved,
    it will usually be possible to call [`setAttribute`](MBeanServerConnection.md#setAttribute(javax.management.ObjectName,javax.management.Attribute))
    for that attribute, although this is not guaranteed to work. (For
    example, the values of two attributes may have been rejected because
    they were inconsistent with each other. Setting one of them alone might
    be allowed.)

    Here is an example of calling this method and checking that it
    succeeded in setting all the requested attributes:

    ```
     AttributeList inputAttrs = ...;
     AttributeList outputAttrs = mbeanServerConnection.setAttributes(objectName, inputAttrs);
     if (inputAttrs.size() == outputAttrs.size())
         System.out.println("All attributes were set successfully");
     else {
         List<String> missing = new ArrayList<String>();
         for (Attribute a : inputAttrs.asList())
             missing.add(a.getName());
         for (Attribute a : outputAttrs.asList())
             missing.remove(a.getName());
         System.out.println("Did not set: " + missing);
     }
    ```

    Specified by:
    :   `setAttributes` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The object name of the MBean within which the
        attributes are to be set.
    :   `attributes` - A list of attributes: The identification of
        the attributes to be set and the values they are to be set to.

    Returns:
    :   The list of attributes that were set, with their new
        values.

    Throws:
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The object
        name in parameter is null or attributes in parameter is null.
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.
    :   `ReflectionException` - An exception occurred when
        trying to invoke the getAttributes method of a Dynamic MBean.

    See Also:
    :   - [`MBeanServerConnection.getAttributes(javax.management.ObjectName, java.lang.String[])`](MBeanServerConnection.md#getAttributes(javax.management.ObjectName,java.lang.String%5B%5D))
  + ### invoke

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") invoke([ObjectName](ObjectName.md "class in javax.management") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") operationName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] params,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] signature)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Invokes an operation on an MBean.

    Because of the need for a `signature` to differentiate
    possibly-overloaded operations, it is much simpler to invoke operations
    through an [MBean proxy](JMX.md#newMBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class)) where possible. For example, suppose you have a
    Standard MBean interface like this:

    ```
     public interface FooMBean {
         public int countMatches(String[] patterns, boolean ignoreCase);
     }
    ```

    The `countMatches` operation can be invoked as follows:

    ```
     String[] myPatterns = ...;
     int count = (Integer) mbeanServerConnection.invoke(
             objectName,
             "countMatches",
             new Object[] {myPatterns, true},
             new String[] {String[].class.getName(), boolean.class.getName()});
    ```

    Alternatively, it can be invoked through a proxy as follows:

    ```
     String[] myPatterns = ...;
     FooMBean fooProxy = JMX.newMBeanProxy(
             mbeanServerConnection, objectName, FooMBean.class);
     int count = fooProxy.countMatches(myPatterns, true);
    ```

    Specified by:
    :   `invoke` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The object name of the MBean on which the method is
        to be invoked.
    :   `operationName` - The name of the operation to be invoked.
    :   `params` - An array containing the parameters to be set when
        the operation is invoked
    :   `signature` - An array containing the signature of the
        operation, an array of class names in the format returned by
        [`Class.getName()`](../../../java.base/java/lang/Class.md#getName()). The class objects will be loaded using the same
        class loader as the one used for loading the MBean on which the
        operation was invoked.

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
  + ### getDefaultDomain

    [String](../../../java.base/java/lang/String.md "class in java.lang") getDefaultDomain()

    Description copied from interface: `MBeanServerConnection`

    Returns the default domain used for naming the MBean.
    The default domain name is used as the domain part in the ObjectName
    of MBeans if no domain is specified by the user.

    Specified by:
    :   `getDefaultDomain` in interface `MBeanServerConnection`

    Returns:
    :   the default domain.
  + ### getDomains

    [String](../../../java.base/java/lang/String.md "class in java.lang")[] getDomains()

    Description copied from interface: `MBeanServerConnection`

    Returns the list of domains in which any MBean is currently
    registered. A string is in the returned array if and only if
    there is at least one MBean registered with an ObjectName whose
    [`getDomain()`](ObjectName.md#getDomain()) is equal to that
    string. The order of strings within the returned array is
    not defined.

    Specified by:
    :   `getDomains` in interface `MBeanServerConnection`

    Returns:
    :   the list of domains.
  + ### addNotificationListener

    void addNotificationListener([ObjectName](ObjectName.md "class in javax.management") name,
    [NotificationListener](NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Adds a listener to a registered MBean.
    Notifications emitted by the MBean will be forwarded to the listener.

    If the source of the notification
    is a reference to an MBean object, the MBean server will replace it
    by that MBean's ObjectName. Otherwise the source is unchanged.

    Specified by:
    :   `addNotificationListener` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The name of the MBean on which the listener should
        be added.
    :   `listener` - The listener object which will handle the
        notifications emitted by the registered MBean.
    :   `filter` - The filter object. If filter is null, no
        filtering will be performed before handling notifications.
    :   `handback` - The context to be sent to the listener when a
        notification is emitted.

    Throws:
    :   `InstanceNotFoundException` - The MBean name provided
        does not match any of the registered MBeans.

    See Also:
    :   - [`MBeanServerConnection.removeNotificationListener(ObjectName, NotificationListener)`](MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.NotificationListener))
        - [`MBeanServerConnection.removeNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### addNotificationListener

    void addNotificationListener([ObjectName](ObjectName.md "class in javax.management") name,
    [ObjectName](ObjectName.md "class in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Adds a listener to a registered MBean.

    A notification emitted by an MBean will be forwarded by the
    MBeanServer to the listener. If the source of the notification
    is a reference to an MBean object, the MBean server will
    replace it by that MBean's ObjectName. Otherwise the source is
    unchanged.

    The listener object that receives notifications is the one
    that is registered with the given name at the time this method
    is called. Even if it is subsequently unregistered, it will
    continue to receive notifications.

    Specified by:
    :   `addNotificationListener` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The name of the MBean on which the listener should
        be added.
    :   `listener` - The object name of the listener which will
        handle the notifications emitted by the registered MBean.
    :   `filter` - The filter object. If filter is null, no
        filtering will be performed before handling notifications.
    :   `handback` - The context to be sent to the listener when a
        notification is emitted.

    Throws:
    :   `RuntimeOperationsException` - Wraps an [`IllegalArgumentException`](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang"). The MBean named by
        `listener` exists but does not implement the [`NotificationListener`](NotificationListener.md "interface in javax.management") interface.
    :   `InstanceNotFoundException` - The MBean name of the
        notification listener or of the notification broadcaster does
        not match any of the registered MBeans.

    See Also:
    :   - [`MBeanServerConnection.removeNotificationListener(ObjectName, ObjectName)`](MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName))
        - [`MBeanServerConnection.removeNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](MBeanServerConnection.md#removeNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object))
  + ### removeNotificationListener

    void removeNotificationListener([ObjectName](ObjectName.md "class in javax.management") name,
    [ObjectName](ObjectName.md "class in javax.management") listener)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Removes a listener from a registered MBean.

    If the listener is registered more than once, perhaps with
    different filters or callbacks, this method will remove all
    those registrations.

    Specified by:
    :   `removeNotificationListener` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The name of the MBean on which the listener should
        be removed.
    :   `listener` - The object name of the listener to be removed.

    Throws:
    :   `InstanceNotFoundException` - The MBean name provided
        does not match any of the registered MBeans.
    :   `ListenerNotFoundException` - The listener is not
        registered in the MBean.

    See Also:
    :   - [`MBeanServerConnection.addNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object))
  + ### removeNotificationListener

    void removeNotificationListener([ObjectName](ObjectName.md "class in javax.management") name,
    [ObjectName](ObjectName.md "class in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Removes a listener from a registered MBean.

    The MBean must have a listener that exactly matches the
    given `listener`, `filter`, and
    `handback` parameters. If there is more than one
    such listener, only one is removed.

    The `filter` and `handback` parameters
    may be null if and only if they are null in a listener to be
    removed.

    Specified by:
    :   `removeNotificationListener` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The name of the MBean on which the listener should
        be removed.
    :   `listener` - The object name of the listener to be removed.
    :   `filter` - The filter that was specified when the listener
        was added.
    :   `handback` - The handback that was specified when the
        listener was added.

    Throws:
    :   `InstanceNotFoundException` - The MBean name provided
        does not match any of the registered MBeans.
    :   `ListenerNotFoundException` - The listener is not
        registered in the MBean, or it is not registered with the given
        filter and handback.

    See Also:
    :   - [`MBeanServerConnection.addNotificationListener(ObjectName, ObjectName, NotificationFilter, Object)`](MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.ObjectName,javax.management.NotificationFilter,java.lang.Object))
  + ### removeNotificationListener

    void removeNotificationListener([ObjectName](ObjectName.md "class in javax.management") name,
    [NotificationListener](NotificationListener.md "interface in javax.management") listener)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Removes a listener from a registered MBean.

    If the listener is registered more than once, perhaps with
    different filters or callbacks, this method will remove all
    those registrations.

    Specified by:
    :   `removeNotificationListener` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The name of the MBean on which the listener should
        be removed.
    :   `listener` - The listener to be removed.

    Throws:
    :   `InstanceNotFoundException` - The MBean name provided
        does not match any of the registered MBeans.
    :   `ListenerNotFoundException` - The listener is not
        registered in the MBean.

    See Also:
    :   - [`MBeanServerConnection.addNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### removeNotificationListener

    void removeNotificationListener([ObjectName](ObjectName.md "class in javax.management") name,
    [NotificationListener](NotificationListener.md "interface in javax.management") listener,
    [NotificationFilter](NotificationFilter.md "interface in javax.management") filter,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Removes a listener from a registered MBean.

    The MBean must have a listener that exactly matches the
    given `listener`, `filter`, and
    `handback` parameters. If there is more than one
    such listener, only one is removed.

    The `filter` and `handback` parameters
    may be null if and only if they are null in a listener to be
    removed.

    Specified by:
    :   `removeNotificationListener` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The name of the MBean on which the listener should
        be removed.
    :   `listener` - The listener to be removed.
    :   `filter` - The filter that was specified when the listener
        was added.
    :   `handback` - The handback that was specified when the
        listener was added.

    Throws:
    :   `InstanceNotFoundException` - The MBean name provided
        does not match any of the registered MBeans.
    :   `ListenerNotFoundException` - The listener is not
        registered in the MBean, or it is not registered with the given
        filter and handback.

    See Also:
    :   - [`MBeanServerConnection.addNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object))
  + ### getMBeanInfo

    [MBeanInfo](MBeanInfo.md "class in javax.management") getMBeanInfo([ObjectName](ObjectName.md "class in javax.management") name)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [IntrospectionException](IntrospectionException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    This method discovers the attributes and operations that an
    MBean exposes for management.

    Specified by:
    :   `getMBeanInfo` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The name of the MBean to analyze

    Returns:
    :   An instance of `MBeanInfo` allowing the
        retrieval of all attributes and operations of this MBean.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified was
        not found.
    :   `IntrospectionException` - An exception occurred during
        introspection.
    :   `ReflectionException` - An exception occurred when
        trying to invoke the getMBeanInfo of a Dynamic MBean.
  + ### isInstanceOf

    boolean isInstanceOf([ObjectName](ObjectName.md "class in javax.management") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Description copied from interface: `MBeanServerConnection`

    Returns true if the MBean specified is an instance of the
    specified class, false otherwise.

    If `name` does not name an MBean, this method
    throws [`InstanceNotFoundException`](InstanceNotFoundException.md "class in javax.management").

    Otherwise, let  
    X be the MBean named by `name`,  
    L be the ClassLoader of X,  
    N be the class name in X's [`MBeanInfo`](MBeanInfo.md "class in javax.management").

    If N equals `className`, the result is true.

    Otherwise, if L successfully loads `className`
    and X is an instance of this class, the result is true.

    Otherwise, if L successfully loads both N and
    `className`, and the second class is assignable from
    the first, the result is true.

    Otherwise, the result is false.

    Specified by:
    :   `isInstanceOf` in interface `MBeanServerConnection`

    Parameters:
    :   `name` - The `ObjectName` of the MBean.
    :   `className` - The name of the class.

    Returns:
    :   true if the MBean specified is an instance of the
        specified class according to the rules above, false otherwise.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified is not
        registered in the MBean server.

    See Also:
    :   - [`Class.isInstance(java.lang.Object)`](../../../java.base/java/lang/Class.md#isInstance(java.lang.Object))
  + ### instantiate

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") instantiate([String](../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [ReflectionException](ReflectionException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management")

    Instantiates an object using the list of all class loaders
    registered in the MBean server's [`Class Loader
    Repository`](loading/ClassLoaderRepository.md "interface in javax.management.loading"). The object's class should have a public
    constructor. This method returns a reference to the newly
    created object. The newly created object is not registered in
    the MBean server.

    This method is equivalent to [`instantiate(className, (Object[]) null, (String[]) null)`](#instantiate(java.lang.String,java.lang.Object%5B%5D,java.lang.String%5B%5D)).

    Parameters:
    :   `className` - The class name of the object to be instantiated.

    Returns:
    :   The newly instantiated object.

    Throws:
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or the
        `java.lang.Exception` that occurred when trying to
        invoke the object's constructor.
    :   `MBeanException` - The constructor of the object has
        thrown an exception
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null.
  + ### instantiate

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") instantiate([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](ObjectName.md "class in javax.management") loaderName)
    throws [ReflectionException](ReflectionException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Instantiates an object using the class Loader specified by its
    `ObjectName`. If the loader name is null, the
    ClassLoader that loaded the MBean Server will be used. The
    object's class should have a public constructor. This method
    returns a reference to the newly created object. The newly
    created object is not registered in the MBean server.

    This method is equivalent to [`instantiate(className, loaderName, (Object[]) null, (String[])
    null)`](#instantiate(java.lang.String,javax.management.ObjectName,java.lang.Object%5B%5D,java.lang.String%5B%5D)).

    Parameters:
    :   `className` - The class name of the MBean to be instantiated.
    :   `loaderName` - The object name of the class loader to be used.

    Returns:
    :   The newly instantiated object.

    Throws:
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or the
        `java.lang.Exception` that occurred when trying to
        invoke the object's constructor.
    :   `MBeanException` - The constructor of the object has
        thrown an exception.
    :   `InstanceNotFoundException` - The specified class loader
        is not registered in the MBeanServer.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null.
  + ### instantiate

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") instantiate([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] params,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] signature)
    throws [ReflectionException](ReflectionException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management")

    Instantiates an object using the list of all class loaders
    registered in the MBean server [`Class Loader
    Repository`](loading/ClassLoaderRepository.md "interface in javax.management.loading"). The object's class should have a public
    constructor. The call returns a reference to the newly created
    object. The newly created object is not registered in the
    MBean server.

    Parameters:
    :   `className` - The class name of the object to be instantiated.
    :   `params` - An array containing the parameters of the
        constructor to be invoked.
    :   `signature` - An array containing the signature of the
        constructor to be invoked.

    Returns:
    :   The newly instantiated object.

    Throws:
    :   `ReflectionException` - Wraps a
        `java.lang.ClassNotFoundException` or the
        `java.lang.Exception` that occurred when trying to
        invoke the object's constructor.
    :   `MBeanException` - The constructor of the object has
        thrown an exception
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null.
  + ### instantiate

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") instantiate([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](ObjectName.md "class in javax.management") loaderName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] params,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] signature)
    throws [ReflectionException](ReflectionException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Instantiates an object. The class loader to be used is
    identified by its object name. If the object name of the loader
    is null, the ClassLoader that loaded the MBean server will be
    used. The object's class should have a public constructor.
    The call returns a reference to the newly created object. The
    newly created object is not registered in the MBean server.

    Parameters:
    :   `className` - The class name of the object to be instantiated.
    :   `loaderName` - The object name of the class loader to be used.
    :   `params` - An array containing the parameters of the
        constructor to be invoked.
    :   `signature` - An array containing the signature of the
        constructor to be invoked.

    Returns:
    :   The newly instantiated object.

    Throws:
    :   `ReflectionException` - Wraps a `java.lang.ClassNotFoundException` or the `java.lang.Exception` that
        occurred when trying to invoke the object's constructor.
    :   `MBeanException` - The constructor of the object has
        thrown an exception
    :   `InstanceNotFoundException` - The specified class loader
        is not registered in the MBean server.
    :   `RuntimeOperationsException` - Wraps a
        `java.lang.IllegalArgumentException`: The className
        passed in parameter is null.
  + ### deserialize

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.5")
    default [ObjectInputStream](../../../java.base/java/io/ObjectInputStream.md "class in java.io") deserialize([ObjectName](ObjectName.md "class in javax.management") name,
    byte[] data)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [OperationsException](OperationsException.md "class in javax.management")

    Deprecated.

    Use [`getClassLoaderFor`](#getClassLoaderFor(javax.management.ObjectName)) to
    obtain the appropriate class loader for deserialization.

    De-serializes a byte array in the context of the class loader
    of an MBean.

    Parameters:
    :   `name` - The name of the MBean whose class loader should be
        used for the de-serialization.
    :   `data` - The byte array to be de-sererialized.

    Returns:
    :   The de-serialized object stream.

    Throws:
    :   `InstanceNotFoundException` - The MBean specified is not
        found.
    :   `OperationsException` - Any of the usual Input/Output
        related exceptions.
  + ### deserialize

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.5")
    default [ObjectInputStream](../../../java.base/java/io/ObjectInputStream.md "class in java.io") deserialize([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    byte[] data)
    throws [OperationsException](OperationsException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Deprecated.

    Use [`getClassLoaderRepository()`](#getClassLoaderRepository()) to obtain the
    class loader repository and use it to deserialize.

    De-serializes a byte array in the context of a given MBean
    class loader. The class loader is found by loading the class
    `className` through the [`Class Loader
    Repository`](loading/ClassLoaderRepository.md "interface in javax.management.loading"). The resultant class's class loader is the one to
    use.

    Parameters:
    :   `className` - The name of the class whose class loader should be
        used for the de-serialization.
    :   `data` - The byte array to be de-sererialized.

    Returns:
    :   The de-serialized object stream.

    Throws:
    :   `OperationsException` - Any of the usual Input/Output
        related exceptions.
    :   `ReflectionException` - The specified class could not be
        loaded by the class loader repository
  + ### deserialize

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../java.base/java/lang/Deprecated.md#since())="1.5")
    default [ObjectInputStream](../../../java.base/java/io/ObjectInputStream.md "class in java.io") deserialize([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [ObjectName](ObjectName.md "class in javax.management") loaderName,
    byte[] data)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management"),
    [OperationsException](OperationsException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Deprecated.

    Use [`getClassLoader`](#getClassLoader(javax.management.ObjectName)) to obtain
    the class loader for deserialization.

    De-serializes a byte array in the context of a given MBean
    class loader. The class loader is the one that loaded the
    class with name "className". The name of the class loader to
    be used for loading the specified class is specified. If null,
    the MBean Server's class loader will be used.

    Parameters:
    :   `className` - The name of the class whose class loader should be
        used for the de-serialization.
    :   `loaderName` - The name of the class loader to be used for
        loading the specified class. If null, the MBean Server's class
        loader will be used.
    :   `data` - The byte array to be de-sererialized.

    Returns:
    :   The de-serialized object stream.

    Throws:
    :   `InstanceNotFoundException` - The specified class loader
        MBean is not found.
    :   `OperationsException` - Any of the usual Input/Output
        related exceptions.
    :   `ReflectionException` - The specified class could not be
        loaded by the specified class loader.
  + ### getClassLoaderFor

    [ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") getClassLoaderFor([ObjectName](ObjectName.md "class in javax.management") mbeanName)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Return the [`ClassLoader`](../../../java.base/java/lang/ClassLoader.md "class in java.lang") that was used for
    loading the class of the named MBean.

    Parameters:
    :   `mbeanName` - The ObjectName of the MBean.

    Returns:
    :   The ClassLoader used for that MBean. If l
        is the MBean's actual ClassLoader, and r is the
        returned value, then either:
        - r is identical to l; or- the result of r[`.loadClass(s)`](../../../java.base/java/lang/ClassLoader.md#loadClass(java.lang.String)) is the
            same as l[`.loadClass(s)`](../../../java.base/java/lang/ClassLoader.md#loadClass(java.lang.String)) for any string s.What this means is that the ClassLoader may be wrapped in
        another ClassLoader for security or other reasons.

    Throws:
    :   `InstanceNotFoundException` - if the named MBean is not found.
  + ### getClassLoader

    [ClassLoader](../../../java.base/java/lang/ClassLoader.md "class in java.lang") getClassLoader([ObjectName](ObjectName.md "class in javax.management") loaderName)
    throws [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

    Return the named [`ClassLoader`](../../../java.base/java/lang/ClassLoader.md "class in java.lang").

    Parameters:
    :   `loaderName` - The ObjectName of the ClassLoader. May be
        null, in which case the MBean server's own ClassLoader is
        returned.

    Returns:
    :   The named ClassLoader. If l is the actual
        ClassLoader with that name, and r is the returned
        value, then either:
        - r is identical to l; or- the result of r[`.loadClass(s)`](../../../java.base/java/lang/ClassLoader.md#loadClass(java.lang.String)) is the
            same as l[`.loadClass(s)`](../../../java.base/java/lang/ClassLoader.md#loadClass(java.lang.String)) for any string s.What this means is that the ClassLoader may be wrapped in
        another ClassLoader for security or other reasons.

    Throws:
    :   `InstanceNotFoundException` - if the named ClassLoader is
        not found.
  + ### getClassLoaderRepository

    [ClassLoaderRepository](loading/ClassLoaderRepository.md "interface in javax.management.loading") getClassLoaderRepository()

    Return the ClassLoaderRepository for this MBeanServer.

    Returns:
    :   The ClassLoaderRepository for this MBeanServer.