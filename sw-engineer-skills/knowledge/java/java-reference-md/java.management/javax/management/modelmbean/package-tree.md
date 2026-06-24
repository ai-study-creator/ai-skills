# Hierarchy For Package javax.management.modelmbean

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.management.modelmbean.[DescriptorSupport](DescriptorSupport.md "class in javax.management.modelmbean") (implements javax.management.[Descriptor](../Descriptor.md "interface in javax.management"))
  + javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management") (implements javax.management.[DescriptorRead](../DescriptorRead.md "interface in javax.management"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.management.[MBeanAttributeInfo](../MBeanAttributeInfo.md "class in javax.management") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))
      * javax.management.modelmbean.[ModelMBeanAttributeInfo](ModelMBeanAttributeInfo.md "class in javax.management.modelmbean") (implements javax.management.[DescriptorAccess](../DescriptorAccess.md "interface in javax.management"))
    - javax.management.[MBeanConstructorInfo](../MBeanConstructorInfo.md "class in javax.management") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))
      * javax.management.modelmbean.[ModelMBeanConstructorInfo](ModelMBeanConstructorInfo.md "class in javax.management.modelmbean") (implements javax.management.[DescriptorAccess](../DescriptorAccess.md "interface in javax.management"))
    - javax.management.[MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))
      * javax.management.modelmbean.[ModelMBeanNotificationInfo](ModelMBeanNotificationInfo.md "class in javax.management.modelmbean") (implements javax.management.[DescriptorAccess](../DescriptorAccess.md "interface in javax.management"))
    - javax.management.[MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"))
      * javax.management.modelmbean.[ModelMBeanOperationInfo](ModelMBeanOperationInfo.md "class in javax.management.modelmbean") (implements javax.management.[DescriptorAccess](../DescriptorAccess.md "interface in javax.management"))
  + javax.management.[MBeanInfo](../MBeanInfo.md "class in javax.management") (implements java.lang.[Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), javax.management.[DescriptorRead](../DescriptorRead.md "interface in javax.management"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.management.modelmbean.[ModelMBeanInfoSupport](ModelMBeanInfoSupport.md "class in javax.management.modelmbean") (implements javax.management.modelmbean.[ModelMBeanInfo](ModelMBeanInfo.md "interface in javax.management.modelmbean"))
  + javax.management.modelmbean.[RequiredModelMBean](RequiredModelMBean.md "class in javax.management.modelmbean") (implements javax.management.[MBeanRegistration](../MBeanRegistration.md "interface in javax.management"), javax.management.modelmbean.[ModelMBean](ModelMBean.md "interface in javax.management.modelmbean"), javax.management.[NotificationEmitter](../NotificationEmitter.md "interface in javax.management"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * javax.management.modelmbean.[InvalidTargetObjectTypeException](InvalidTargetObjectTypeException.md "class in javax.management.modelmbean")
      * javax.management.modelmbean.[XMLParseException](XMLParseException.md "class in javax.management.modelmbean")

## Interface Hierarchy

* javax.management.[DynamicMBean](../DynamicMBean.md "interface in javax.management")
  + javax.management.modelmbean.[ModelMBean](ModelMBean.md "interface in javax.management.modelmbean") (also extends javax.management.modelmbean.[ModelMBeanNotificationBroadcaster](ModelMBeanNotificationBroadcaster.md "interface in javax.management.modelmbean"), javax.management.[PersistentMBean](../PersistentMBean.md "interface in javax.management"))
* javax.management.modelmbean.[ModelMBeanInfo](ModelMBeanInfo.md "interface in javax.management.modelmbean")
* javax.management.[NotificationBroadcaster](../NotificationBroadcaster.md "interface in javax.management")
  + javax.management.modelmbean.[ModelMBeanNotificationBroadcaster](ModelMBeanNotificationBroadcaster.md "interface in javax.management.modelmbean")
    - javax.management.modelmbean.[ModelMBean](ModelMBean.md "interface in javax.management.modelmbean") (also extends javax.management.[DynamicMBean](../DynamicMBean.md "interface in javax.management"), javax.management.[PersistentMBean](../PersistentMBean.md "interface in javax.management"))
* javax.management.[PersistentMBean](../PersistentMBean.md "interface in javax.management")
  + javax.management.modelmbean.[ModelMBean](ModelMBean.md "interface in javax.management.modelmbean") (also extends javax.management.[DynamicMBean](../DynamicMBean.md "interface in javax.management"), javax.management.modelmbean.[ModelMBeanNotificationBroadcaster](ModelMBeanNotificationBroadcaster.md "interface in javax.management.modelmbean"))