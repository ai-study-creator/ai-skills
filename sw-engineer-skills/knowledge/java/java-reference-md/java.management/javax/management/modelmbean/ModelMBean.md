Module [java.management](../../../module-summary.md)

Package [javax.management.modelmbean](package-summary.md)

# Interface ModelMBean

All Superinterfaces:
:   `DynamicMBean`, `ModelMBeanNotificationBroadcaster`, `NotificationBroadcaster`, `PersistentMBean`

All Known Implementing Classes:
:   `RequiredModelMBean`

---

public interface ModelMBean
extends [DynamicMBean](../DynamicMBean.md "interface in javax.management"), [PersistentMBean](../PersistentMBean.md "interface in javax.management"), [ModelMBeanNotificationBroadcaster](ModelMBeanNotificationBroadcaster.md "interface in javax.management.modelmbean")

This interface must be implemented by the ModelMBeans. An implementation of this interface
must be shipped with every JMX Agent.

Java resources wishing to be manageable instantiate the ModelMBean using the MBeanServer's
createMBean method. The resource then sets the ModelMBeanInfo (with Descriptors) for the ModelMBean
instance. The attributes and operations exposed via the ModelMBeanInfo for the ModelMBean are accessible
from MBeans, connectors/adaptors like other MBeans. Through the ModelMBeanInfo Descriptors, values and methods in
the managed application can be defined and mapped to attributes and operations of the ModelMBean.
This mapping can be defined during development in an XML formatted file or dynamically and
programmatically at runtime.

Every ModelMBean which is instantiated in the MBeanServer becomes manageable:
its attributes and operations
become remotely accessible through the connectors/adaptors connected to that MBeanServer.
A Java object cannot be registered in the MBeanServer unless it is a JMX compliant MBean.
By instantiating a ModelMBean, resources are guaranteed that the MBean is valid.

MBeanException and RuntimeOperationsException must be thrown on every public method. This allows
for wrapping exceptions from distributed communications (RMI, EJB, etc.). These exceptions do
not have to be thrown by the implementation except in the scenarios described in the specification
and javadoc.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `setManagedResource(Object mr,
  String mr_type)`

  Sets the instance handle of the object against which to
  execute all methods in this ModelMBean management interface
  (MBeanInfo and Descriptors).

  `void`

  `setModelMBeanInfo(ModelMBeanInfo inModelMBeanInfo)`

  Initializes a ModelMBean object using ModelMBeanInfo passed in.

  ### Methods inherited from interface javax.management.[DynamicMBean](../DynamicMBean.md "interface in javax.management")

  `getAttribute, getAttributes, getMBeanInfo, invoke, setAttribute, setAttributes`

  ### Methods inherited from interface javax.management.modelmbean.[ModelMBeanNotificationBroadcaster](ModelMBeanNotificationBroadcaster.md "interface in javax.management.modelmbean")

  `addAttributeChangeNotificationListener, removeAttributeChangeNotificationListener, sendAttributeChangeNotification, sendAttributeChangeNotification, sendNotification, sendNotification`

  ### Methods inherited from interface javax.management.[NotificationBroadcaster](../NotificationBroadcaster.md "interface in javax.management")

  `addNotificationListener, getNotificationInfo, removeNotificationListener`

  ### Methods inherited from interface javax.management.[PersistentMBean](../PersistentMBean.md "interface in javax.management")

  `load, store`

* ## Method Details

  + ### setModelMBeanInfo

    void setModelMBeanInfo([ModelMBeanInfo](ModelMBeanInfo.md "interface in javax.management.modelmbean") inModelMBeanInfo)
    throws [MBeanException](../MBeanException.md "class in javax.management"),
    [RuntimeOperationsException](../RuntimeOperationsException.md "class in javax.management")

    Initializes a ModelMBean object using ModelMBeanInfo passed in.
    This method makes it possible to set a customized ModelMBeanInfo on
    the ModelMBean as long as it is not registered with the MBeanServer.
      
    Once the ModelMBean's ModelMBeanInfo (with Descriptors) are
    customized and set on the ModelMBean, the ModelMBean can be
    registered with the MBeanServer.

    If the ModelMBean is currently registered, this method throws
    a [`RuntimeOperationsException`](../RuntimeOperationsException.md "class in javax.management") wrapping an
    [`IllegalStateException`](../../../../java.base/java/lang/IllegalStateException.md "class in java.lang")

    Parameters:
    :   `inModelMBeanInfo` - The ModelMBeanInfo object to be used
        by the ModelMBean.

    Throws:
    :   `MBeanException` - Wraps a distributed communication
        Exception.
    :   `RuntimeOperationsException` -
        - Wraps an [`IllegalArgumentException`](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang") if
          the MBeanInfo passed in parameter is null.
        - Wraps an [`IllegalStateException`](../../../../java.base/java/lang/IllegalStateException.md "class in java.lang") if the ModelMBean
          is currently registered in the MBeanServer.
  + ### setManagedResource

    void setManagedResource([Object](../../../../java.base/java/lang/Object.md "class in java.lang") mr,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") mr\_type)
    throws [MBeanException](../MBeanException.md "class in javax.management"),
    [RuntimeOperationsException](../RuntimeOperationsException.md "class in javax.management"),
    [InstanceNotFoundException](../InstanceNotFoundException.md "class in javax.management"),
    [InvalidTargetObjectTypeException](InvalidTargetObjectTypeException.md "class in javax.management.modelmbean")

    Sets the instance handle of the object against which to
    execute all methods in this ModelMBean management interface
    (MBeanInfo and Descriptors).

    Parameters:
    :   `mr` - Object that is the managed resource
    :   `mr_type` - The type of reference for the managed resource. Can be: ObjectReference,
        Handle, IOR, EJBHandle, RMIReference.
        If the MBeanServer cannot process the mr\_type passed in, an InvalidTargetTypeException
        will be thrown.

    Throws:
    :   `MBeanException` - The initializer of the object has thrown an exception.
    :   `RuntimeOperationsException` - Wraps an IllegalArgumentException:
        The managed resource type passed in parameter is null.
    :   `InstanceNotFoundException` - The managed resource object could not be found
    :   `InvalidTargetObjectTypeException` - The managed resource type cannot be processed by the
        ModelMBean or JMX Agent.