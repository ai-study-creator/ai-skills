Module [java.management](../../../module-summary.md)

Package [javax.management.modelmbean](package-summary.md)

# Interface ModelMBeanNotificationBroadcaster

All Superinterfaces:
:   `NotificationBroadcaster`

All Known Subinterfaces:
:   `ModelMBean`

All Known Implementing Classes:
:   `RequiredModelMBean`

---

public interface ModelMBeanNotificationBroadcaster
extends [NotificationBroadcaster](../NotificationBroadcaster.md "interface in javax.management")

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

  `addAttributeChangeNotificationListener(NotificationListener listener,
  String attributeName,
  Object handback)`

  Registers an object which implements the NotificationListener interface as a listener.

  `void`

  `removeAttributeChangeNotificationListener(NotificationListener listener,
  String attributeName)`

  Removes a listener for attributeChangeNotifications from the RequiredModelMBean.

  `void`

  `sendAttributeChangeNotification(AttributeChangeNotification notification)`

  Sends an attributeChangeNotification which is passed in to
  the registered attributeChangeNotification listeners on the
  ModelMBean.

  `void`

  `sendAttributeChangeNotification(Attribute oldValue,
  Attribute newValue)`

  Sends an attributeChangeNotification which contains the old value and new value for the
  attribute to the registered AttributeChangeNotification listeners on the ModelMBean.

  `void`

  `sendNotification(String ntfyText)`

  Sends a Notification which contains the text string that is passed in
  to the registered Notification listeners on the ModelMBean.

  `void`

  `sendNotification(Notification ntfyObj)`

  Sends a Notification which is passed in to the registered
  Notification listeners on the ModelMBean as a
  jmx.modelmbean.generic notification.

  ### Methods inherited from interface javax.management.[NotificationBroadcaster](../NotificationBroadcaster.md "interface in javax.management")

  `addNotificationListener, getNotificationInfo, removeNotificationListener`

* ## Method Details

  + ### sendNotification

    void sendNotification([Notification](../Notification.md "class in javax.management") ntfyObj)
    throws [MBeanException](../MBeanException.md "class in javax.management"),
    [RuntimeOperationsException](../RuntimeOperationsException.md "class in javax.management")

    Sends a Notification which is passed in to the registered
    Notification listeners on the ModelMBean as a
    jmx.modelmbean.generic notification.

    Parameters:
    :   `ntfyObj` - The notification which is to be passed to
        the 'handleNotification' method of the listener object.

    Throws:
    :   `MBeanException` - Wraps a distributed communication Exception.
    :   `RuntimeOperationsException` - Wraps an IllegalArgumentException:
        The Notification object passed in parameter is null.
  + ### sendNotification

    void sendNotification([String](../../../../java.base/java/lang/String.md "class in java.lang") ntfyText)
    throws [MBeanException](../MBeanException.md "class in javax.management"),
    [RuntimeOperationsException](../RuntimeOperationsException.md "class in javax.management")

    Sends a Notification which contains the text string that is passed in
    to the registered Notification listeners on the ModelMBean.

    Parameters:
    :   `ntfyText` - The text which is to be passed in the Notification to the 'handleNotification'
        method of the listener object.
        the constructed Notification will be:
        type "jmx.modelmbean.generic"
        source this ModelMBean instance
        sequence 1

    Throws:
    :   `MBeanException` - Wraps a distributed communication Exception.
    :   `RuntimeOperationsException` - Wraps an IllegalArgumentException:
        The Notification text string passed in parameter is null.
  + ### sendAttributeChangeNotification

    void sendAttributeChangeNotification([AttributeChangeNotification](../AttributeChangeNotification.md "class in javax.management") notification)
    throws [MBeanException](../MBeanException.md "class in javax.management"),
    [RuntimeOperationsException](../RuntimeOperationsException.md "class in javax.management")

    Sends an attributeChangeNotification which is passed in to
    the registered attributeChangeNotification listeners on the
    ModelMBean.

    Parameters:
    :   `notification` - The notification which is to be passed
        to the 'handleNotification' method of the listener object.

    Throws:
    :   `MBeanException` - Wraps a distributed communication Exception.
    :   `RuntimeOperationsException` - Wraps an IllegalArgumentException: The AttributeChangeNotification object passed in parameter is null.
  + ### sendAttributeChangeNotification

    void sendAttributeChangeNotification([Attribute](../Attribute.md "class in javax.management") oldValue,
    [Attribute](../Attribute.md "class in javax.management") newValue)
    throws [MBeanException](../MBeanException.md "class in javax.management"),
    [RuntimeOperationsException](../RuntimeOperationsException.md "class in javax.management")

    Sends an attributeChangeNotification which contains the old value and new value for the
    attribute to the registered AttributeChangeNotification listeners on the ModelMBean.

    Parameters:
    :   `oldValue` - The original value for the Attribute
    :   `newValue` - The current value for the Attribute

        ```
         The constructed attributeChangeNotification will be:
           type        "jmx.attribute.change"
           source      this ModelMBean instance
           sequence    1
           attributeName oldValue.getName()
           attributeType oldValue's class
           attributeOldValue oldValue.getValue()
           attributeNewValue newValue.getValue()
        ```

    Throws:
    :   `MBeanException` - Wraps a distributed communication Exception.
    :   `RuntimeOperationsException` - Wraps an IllegalArgumentException: An Attribute object passed in parameter is null
        or the names of the two Attribute objects in parameter are not the same.
  + ### addAttributeChangeNotificationListener

    void addAttributeChangeNotificationListener([NotificationListener](../NotificationListener.md "interface in javax.management") listener,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") attributeName,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") handback)
    throws [MBeanException](../MBeanException.md "class in javax.management"),
    [RuntimeOperationsException](../RuntimeOperationsException.md "class in javax.management"),
    [IllegalArgumentException](../../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Registers an object which implements the NotificationListener interface as a listener. This
    object's 'handleNotification()' method will be invoked when any attributeChangeNotification is issued through
    or by the ModelMBean. This does not include other Notifications. They must be registered
    for independently. An AttributeChangeNotification will be generated for this attributeName.

    Parameters:
    :   `listener` - The listener object which will handles notifications emitted by the registered MBean.
    :   `attributeName` - The name of the ModelMBean attribute for which to receive change notifications.
        If null, then all attribute changes will cause an attributeChangeNotification to be issued.
    :   `handback` - The context to be sent to the listener with the notification when a notification is emitted.

    Throws:
    :   `IllegalArgumentException` - The listener cannot be null.
    :   `MBeanException` - Wraps a distributed communication Exception.
    :   `RuntimeOperationsException` - Wraps an IllegalArgumentException The attribute name passed in parameter does not exist.

    See Also:
    :   - [`removeAttributeChangeNotificationListener(javax.management.NotificationListener, java.lang.String)`](#removeAttributeChangeNotificationListener(javax.management.NotificationListener,java.lang.String))
  + ### removeAttributeChangeNotificationListener

    void removeAttributeChangeNotificationListener([NotificationListener](../NotificationListener.md "interface in javax.management") listener,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") attributeName)
    throws [MBeanException](../MBeanException.md "class in javax.management"),
    [RuntimeOperationsException](../RuntimeOperationsException.md "class in javax.management"),
    [ListenerNotFoundException](../ListenerNotFoundException.md "class in javax.management")

    Removes a listener for attributeChangeNotifications from the RequiredModelMBean.

    Parameters:
    :   `listener` - The listener name which was handling notifications emitted by the registered MBean.
        This method will remove all information related to this listener.
    :   `attributeName` - The attribute for which the listener no longer wants to receive attributeChangeNotifications.
        If null the listener will be removed for all attributeChangeNotifications.

    Throws:
    :   `ListenerNotFoundException` - The listener is not registered in the MBean or is null.
    :   `MBeanException` - Wraps a distributed communication Exception.
    :   `RuntimeOperationsException` - Wraps an IllegalArgumentException If the inAttributeName parameter does not
        correspond to an attribute name.

    See Also:
    :   - [`addAttributeChangeNotificationListener(javax.management.NotificationListener, java.lang.String, java.lang.Object)`](#addAttributeChangeNotificationListener(javax.management.NotificationListener,java.lang.String,java.lang.Object))