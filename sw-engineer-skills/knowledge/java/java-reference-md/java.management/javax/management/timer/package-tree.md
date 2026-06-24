# Hierarchy For Package javax.management.timer

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.management.[Notification](../Notification.md "class in javax.management")
      * javax.management.timer.[TimerNotification](TimerNotification.md "class in javax.management.timer")
  + javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management") (implements javax.management.[NotificationEmitter](../NotificationEmitter.md "interface in javax.management"))
    - javax.management.timer.[Timer](Timer.md "class in javax.management.timer") (implements javax.management.[MBeanRegistration](../MBeanRegistration.md "interface in javax.management"), javax.management.timer.[TimerMBean](TimerMBean.md "interface in javax.management.timer"))

## Interface Hierarchy

* javax.management.timer.[TimerMBean](TimerMBean.md "interface in javax.management.timer")