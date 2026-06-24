# Hierarchy For Package javax.management.monitor

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.management.[Notification](../Notification.md "class in javax.management")
      * javax.management.monitor.[MonitorNotification](MonitorNotification.md "class in javax.management.monitor")
  + javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management") (implements javax.management.[NotificationEmitter](../NotificationEmitter.md "interface in javax.management"))
    - javax.management.monitor.[Monitor](Monitor.md "class in javax.management.monitor") (implements javax.management.[MBeanRegistration](../MBeanRegistration.md "interface in javax.management"), javax.management.monitor.[MonitorMBean](MonitorMBean.md "interface in javax.management.monitor"))
      * javax.management.monitor.[CounterMonitor](CounterMonitor.md "class in javax.management.monitor") (implements javax.management.monitor.[CounterMonitorMBean](CounterMonitorMBean.md "interface in javax.management.monitor"))
      * javax.management.monitor.[GaugeMonitor](GaugeMonitor.md "class in javax.management.monitor") (implements javax.management.monitor.[GaugeMonitorMBean](GaugeMonitorMBean.md "interface in javax.management.monitor"))
      * javax.management.monitor.[StringMonitor](StringMonitor.md "class in javax.management.monitor") (implements javax.management.monitor.[StringMonitorMBean](StringMonitorMBean.md "interface in javax.management.monitor"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.lang.[RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
        + javax.management.[JMRuntimeException](../JMRuntimeException.md "class in javax.management")
          - javax.management.monitor.[MonitorSettingException](MonitorSettingException.md "class in javax.management.monitor")

## Interface Hierarchy

* javax.management.monitor.[MonitorMBean](MonitorMBean.md "interface in javax.management.monitor")
  + javax.management.monitor.[CounterMonitorMBean](CounterMonitorMBean.md "interface in javax.management.monitor")
  + javax.management.monitor.[GaugeMonitorMBean](GaugeMonitorMBean.md "interface in javax.management.monitor")
  + javax.management.monitor.[StringMonitorMBean](StringMonitorMBean.md "interface in javax.management.monitor")