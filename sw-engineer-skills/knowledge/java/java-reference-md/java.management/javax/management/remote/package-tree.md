# Hierarchy For Package javax.management.remote

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.management.[Notification](../Notification.md "class in javax.management")
      * javax.management.remote.[JMXConnectionNotification](JMXConnectionNotification.md "class in javax.management.remote")
  + javax.management.remote.[JMXConnectorFactory](JMXConnectorFactory.md "class in javax.management.remote")
  + javax.management.remote.[JMXConnectorServerFactory](JMXConnectorServerFactory.md "class in javax.management.remote")
  + javax.management.remote.[JMXPrincipal](JMXPrincipal.md "class in javax.management.remote") (implements java.security.[Principal](../../../../java.base/java/security/Principal.md "interface in java.security"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.management.remote.[JMXServiceURL](JMXServiceURL.md "class in javax.management.remote") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.management.[NotificationBroadcasterSupport](../NotificationBroadcasterSupport.md "class in javax.management") (implements javax.management.[NotificationEmitter](../NotificationEmitter.md "interface in javax.management"))
    - javax.management.remote.[JMXConnectorServer](JMXConnectorServer.md "class in javax.management.remote") (implements javax.management.remote.[JMXAddressable](JMXAddressable.md "interface in javax.management.remote"), javax.management.remote.[JMXConnectorServerMBean](JMXConnectorServerMBean.md "interface in javax.management.remote"), javax.management.[MBeanRegistration](../MBeanRegistration.md "interface in javax.management"))
  + javax.management.remote.[NotificationResult](NotificationResult.md "class in javax.management.remote") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.security.[Permission](../../../../java.base/java/security/Permission.md "class in java.security") (implements java.security.[Guard](../../../../java.base/java/security/Guard.md "interface in java.security"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.security.[BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
      * javax.management.remote.[SubjectDelegationPermission](SubjectDelegationPermission.md "class in javax.management.remote")
  + javax.management.remote.[TargetedNotification](TargetedNotification.md "class in javax.management.remote") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.io.[IOException](../../../../java.base/java/io/IOException.md "class in java.io")
        + javax.management.remote.[JMXProviderException](JMXProviderException.md "class in javax.management.remote")
        + javax.management.remote.[JMXServerErrorException](JMXServerErrorException.md "class in javax.management.remote")

## Interface Hierarchy

* java.lang.[AutoCloseable](../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")
  + java.io.[Closeable](../../../../java.base/java/io/Closeable.md "interface in java.io")
    - javax.management.remote.[JMXConnector](JMXConnector.md "interface in javax.management.remote")
* javax.management.remote.[JMXAddressable](JMXAddressable.md "interface in javax.management.remote")
* javax.management.remote.[JMXAuthenticator](JMXAuthenticator.md "interface in javax.management.remote")
* javax.management.remote.[JMXConnectorProvider](JMXConnectorProvider.md "interface in javax.management.remote")
* javax.management.remote.[JMXConnectorServerMBean](JMXConnectorServerMBean.md "interface in javax.management.remote")
* javax.management.remote.[JMXConnectorServerProvider](JMXConnectorServerProvider.md "interface in javax.management.remote")
* javax.management.[MBeanServerConnection](../MBeanServerConnection.md "interface in javax.management")
  + javax.management.[MBeanServer](../MBeanServer.md "interface in javax.management")
    - javax.management.remote.[MBeanServerForwarder](MBeanServerForwarder.md "interface in javax.management.remote")