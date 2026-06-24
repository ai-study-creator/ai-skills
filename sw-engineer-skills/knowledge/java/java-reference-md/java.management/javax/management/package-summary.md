Module [java.management](../../module-summary.md)

# Package javax.management

---

package javax.management

* Related Packages

  Package

  Description

  [javax.management.loading](loading/package-summary.md)

  [javax.management.modelmbean](modelmbean/package-summary.md)

  [javax.management.monitor](monitor/package-summary.md)

  [javax.management.openmbean](openmbean/package-summary.md)

  [javax.management.relation](relation/package-summary.md)

  [javax.management.remote](remote/package-summary.md)

  [javax.management.timer](timer/package-summary.md)
* All Classes and InterfacesInterfacesClassesException ClassesAnnotation Interfaces

  Class

  Description

  [Attribute](Attribute.md "class in javax.management")

  Represents an MBean attribute by associating its name with its value.

  [AttributeChangeNotification](AttributeChangeNotification.md "class in javax.management")

  Provides definitions of the attribute change notifications sent by MBeans.

  [AttributeChangeNotificationFilter](AttributeChangeNotificationFilter.md "class in javax.management")

  This class implements of the [`NotificationFilter`](NotificationFilter.md "interface in javax.management")
  interface for the [`attribute change notification`](AttributeChangeNotification.md "class in javax.management").

  [AttributeList](AttributeList.md "class in javax.management")

  Represents a list of values for attributes of an MBean.

  [AttributeNotFoundException](AttributeNotFoundException.md "class in javax.management")

  The specified attribute does not exist or cannot be retrieved.

  [AttributeValueExp](AttributeValueExp.md "class in javax.management")

  Represents attributes used as arguments to relational constraints.

  [BadAttributeValueExpException](BadAttributeValueExpException.md "class in javax.management")

  Thrown when an invalid MBean attribute is passed to a query
  constructing method.

  [BadBinaryOpValueExpException](BadBinaryOpValueExpException.md "class in javax.management")

  Thrown when an invalid expression is passed to a method for
  constructing a query.

  [BadStringOperationException](BadStringOperationException.md "class in javax.management")

  Thrown when an invalid string operation is passed
  to a method for constructing a query.

  [ConstructorParameters](ConstructorParameters.md "annotation interface in javax.management")

  An annotation on a constructor that shows how the parameters of
  that constructor correspond to the constructed object's getter
  methods.

  [DefaultLoaderRepository](DefaultLoaderRepository.md "class in javax.management")

  Deprecated.

  Use
  [`MBeanServer.getClassLoaderRepository()`](MBeanServer.md#getClassLoaderRepository())
  instead.

  [Descriptor](Descriptor.md "interface in javax.management")

  Additional metadata for a JMX element.

  [DescriptorAccess](DescriptorAccess.md "interface in javax.management")

  This interface is used to gain access to descriptors of the Descriptor class
  which are associated with a JMX component, i.e.

  [DescriptorKey](DescriptorKey.md "annotation interface in javax.management")

  Meta-annotation that describes how an annotation element relates
  to a field in a [`Descriptor`](Descriptor.md "interface in javax.management").

  [DescriptorRead](DescriptorRead.md "interface in javax.management")

  Interface to read the Descriptor of a management interface element
  such as an MBeanInfo.

  [DynamicMBean](DynamicMBean.md "interface in javax.management")

  Defines the methods that should be implemented by
  a Dynamic MBean (MBean that exposes a dynamic management interface).

  [ImmutableDescriptor](ImmutableDescriptor.md "class in javax.management")

  An immutable descriptor.

  [InstanceAlreadyExistsException](InstanceAlreadyExistsException.md "class in javax.management")

  The MBean is already registered in the repository.

  [InstanceNotFoundException](InstanceNotFoundException.md "class in javax.management")

  The specified MBean does not exist in the repository.

  [IntrospectionException](IntrospectionException.md "class in javax.management")

  An exception occurred during the introspection of an MBean.

  [InvalidApplicationException](InvalidApplicationException.md "class in javax.management")

  Thrown when an attempt is made to apply either of the following: A
  subquery expression to an MBean or a qualified attribute expression
  to an MBean of the wrong class.

  [InvalidAttributeValueException](InvalidAttributeValueException.md "class in javax.management")

  The value specified is not valid for the attribute.

  [JMException](JMException.md "class in javax.management")

  Exceptions thrown by JMX implementations.

  [JMRuntimeException](JMRuntimeException.md "class in javax.management")

  Runtime exceptions emitted by JMX implementations.

  [JMX](JMX.md "class in javax.management")

  Static methods from the JMX API.

  [ListenerNotFoundException](ListenerNotFoundException.md "class in javax.management")

  The specified MBean listener does not exist in the repository.

  [MalformedObjectNameException](MalformedObjectNameException.md "class in javax.management")

  The format of the string does not correspond to a valid ObjectName.

  [MBeanAttributeInfo](MBeanAttributeInfo.md "class in javax.management")

  Describes an MBean attribute exposed for management.

  [MBeanConstructorInfo](MBeanConstructorInfo.md "class in javax.management")

  Describes a constructor exposed by an MBean.

  [MBeanException](MBeanException.md "class in javax.management")

  Represents "user defined" exceptions thrown by MBean methods
  in the agent.

  [MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

  Provides general information for an MBean descriptor object.

  [MBeanInfo](MBeanInfo.md "class in javax.management")

  Describes the management interface exposed by an MBean; that is,
  the set of attributes and operations which are available for
  management operations.

  [MBeanNotificationInfo](MBeanNotificationInfo.md "class in javax.management")

  The `MBeanNotificationInfo` class is used to describe the
  characteristics of the different notification instances
  emitted by an MBean, for a given Java class of notification.

  [MBeanOperationInfo](MBeanOperationInfo.md "class in javax.management")

  Describes a management operation exposed by an MBean.

  [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management")

  Describes an argument of an operation exposed by an MBean.

  [MBeanPermission](MBeanPermission.md "class in javax.management")

  Permission controlling access to MBeanServer operations.

  [MBeanRegistration](MBeanRegistration.md "interface in javax.management")

  Can be implemented by an MBean in order to
  carry out operations before and after being registered or unregistered from
  the MBean Server.

  [MBeanRegistrationException](MBeanRegistrationException.md "class in javax.management")

  Wraps exceptions thrown by the preRegister(), preDeregister() methods
  of the `MBeanRegistration` interface.

  [MBeanServer](MBeanServer.md "interface in javax.management")

  This is the interface for MBean manipulation on the agent
  side.

  [MBeanServerBuilder](MBeanServerBuilder.md "class in javax.management")

  This class represents a builder that creates a default
  [`MBeanServer`](MBeanServer.md "interface in javax.management") implementation.

  [MBeanServerConnection](MBeanServerConnection.md "interface in javax.management")

  This interface represents a way to talk to an MBean server, whether
  local or remote.

  [MBeanServerDelegate](MBeanServerDelegate.md "class in javax.management")

  Represents the MBean server from the management point of view.

  [MBeanServerDelegateMBean](MBeanServerDelegateMBean.md "interface in javax.management")

  Defines the management interface of an object of class MBeanServerDelegate.

  [MBeanServerFactory](MBeanServerFactory.md "class in javax.management")

  Provides MBean server references.

  [MBeanServerInvocationHandler](MBeanServerInvocationHandler.md "class in javax.management")

  [`InvocationHandler`](../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect") that forwards methods in an MBean's
  management interface through the MBean server to the MBean.

  [MBeanServerNotification](MBeanServerNotification.md "class in javax.management")

  Represents a notification emitted by the MBean Server through the MBeanServerDelegate MBean.

  [MBeanServerPermission](MBeanServerPermission.md "class in javax.management")

  A Permission to perform actions related to MBeanServers.

  [MBeanTrustPermission](MBeanTrustPermission.md "class in javax.management")

  This permission represents "trust" in a signer or codebase.

  [MXBean](MXBean.md "annotation interface in javax.management")

  Annotation to mark an interface explicitly as being an MXBean
  interface, or as not being an MXBean interface.

  [NotCompliantMBeanException](NotCompliantMBeanException.md "class in javax.management")

  Exception which occurs when trying to register an object in the MBean server that is not a JMX compliant MBean.

  [Notification](Notification.md "class in javax.management")

  The Notification class represents a notification emitted by an
  MBean.

  [NotificationBroadcaster](NotificationBroadcaster.md "interface in javax.management")

  Interface implemented by an MBean that emits Notifications.

  [NotificationBroadcasterSupport](NotificationBroadcasterSupport.md "class in javax.management")

  Provides an implementation of [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management")
  interface.

  [NotificationEmitter](NotificationEmitter.md "interface in javax.management")

  Interface implemented by an MBean that emits Notifications.

  [NotificationFilter](NotificationFilter.md "interface in javax.management")

  To be implemented by a any class acting as a notification filter.

  [NotificationFilterSupport](NotificationFilterSupport.md "class in javax.management")

  Provides an implementation of the [`NotificationFilter`](NotificationFilter.md "interface in javax.management") interface.

  [NotificationListener](NotificationListener.md "interface in javax.management")

  Should be implemented by an object that wants to receive notifications.

  [ObjectInstance](ObjectInstance.md "class in javax.management")

  Used to represent the object name of an MBean and its class name.

  [ObjectName](ObjectName.md "class in javax.management")

  Represents the object name of an MBean, or a pattern that can
  match the names of several MBeans.

  [OperationsException](OperationsException.md "class in javax.management")

  Represents exceptions thrown in the MBean server when performing operations
  on MBeans.

  [PersistentMBean](PersistentMBean.md "interface in javax.management")

  This class is the interface to be implemented by MBeans that are meant to be
  persistent.

  [Query](Query.md "class in javax.management")

  Constructs query object constraints.

  [QueryEval](QueryEval.md "class in javax.management")

  Allows a query to be performed in the context of a specific MBean server.

  [QueryExp](QueryExp.md "interface in javax.management")

  Represents relational constraints similar to database query "where
  clauses".

  [ReflectionException](ReflectionException.md "class in javax.management")

  Represents exceptions thrown in the MBean server when using the
  java.lang.reflect classes to invoke methods on MBeans.

  [RuntimeErrorException](RuntimeErrorException.md "class in javax.management")

  When a `java.lang.Error` occurs in the agent it should be caught and
  re-thrown as a `RuntimeErrorException`.

  [RuntimeMBeanException](RuntimeMBeanException.md "class in javax.management")

  Represents runtime exceptions thrown by MBean methods in
  the agent.

  [RuntimeOperationsException](RuntimeOperationsException.md "class in javax.management")

  Represents runtime exceptions thrown in the agent when performing operations on MBeans.

  [ServiceNotFoundException](ServiceNotFoundException.md "class in javax.management")

  Represents exceptions raised when a requested service is not supported.

  [StandardEmitterMBean](StandardEmitterMBean.md "class in javax.management")

  An MBean whose management interface is determined by reflection
  on a Java interface, and that emits notifications.

  [StandardMBean](StandardMBean.md "class in javax.management")

  An MBean whose management interface is determined by reflection
  on a Java interface.

  [StringValueExp](StringValueExp.md "class in javax.management")

  Represents strings that are arguments to relational constraints.

  [ValueExp](ValueExp.md "interface in javax.management")

  Represents values that can be passed as arguments to
  relational expressions.