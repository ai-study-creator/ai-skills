# Hierarchy For Package javax.management.remote.rmi

Package Hierarchies:

* [All Packages](../../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.management.[NotificationBroadcasterSupport](../../../../../java.management/javax/management/NotificationBroadcasterSupport.md "class in javax.management") (implements javax.management.[NotificationEmitter](../../../../../java.management/javax/management/NotificationEmitter.md "interface in javax.management"))
    - javax.management.remote.[JMXConnectorServer](../../../../../java.management/javax/management/remote/JMXConnectorServer.md "class in javax.management.remote") (implements javax.management.remote.[JMXAddressable](../../../../../java.management/javax/management/remote/JMXAddressable.md "interface in javax.management.remote"), javax.management.remote.[JMXConnectorServerMBean](../../../../../java.management/javax/management/remote/JMXConnectorServerMBean.md "interface in javax.management.remote"), javax.management.[MBeanRegistration](../../../../../java.management/javax/management/MBeanRegistration.md "interface in javax.management"))
      * javax.management.remote.rmi.[RMIConnectorServer](RMIConnectorServer.md "class in javax.management.remote.rmi")
  + java.rmi.server.[RemoteObject](../../../../../java.rmi/java/rmi/server/RemoteObject.md "class in java.rmi.server") (implements java.rmi.[Remote](../../../../../java.rmi/java/rmi/Remote.md "interface in java.rmi"), java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.rmi.server.[RemoteStub](../../../../../java.rmi/java/rmi/server/RemoteStub.md "class in java.rmi.server")
      * javax.management.remote.rmi.[RMIConnectionImpl\_Stub](RMIConnectionImpl_Stub.md "class in javax.management.remote.rmi") (implements javax.management.remote.rmi.[RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi"))
      * javax.management.remote.rmi.[RMIServerImpl\_Stub](RMIServerImpl_Stub.md "class in javax.management.remote.rmi") (implements javax.management.remote.rmi.[RMIServer](RMIServer.md "interface in javax.management.remote.rmi"))
  + javax.management.remote.rmi.[RMIConnectionImpl](RMIConnectionImpl.md "class in javax.management.remote.rmi") (implements javax.management.remote.rmi.[RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi"), java.rmi.server.[Unreferenced](../../../../../java.rmi/java/rmi/server/Unreferenced.md "interface in java.rmi.server"))
  + javax.management.remote.rmi.[RMIConnector](RMIConnector.md "class in javax.management.remote.rmi") (implements javax.management.remote.[JMXAddressable](../../../../../java.management/javax/management/remote/JMXAddressable.md "interface in javax.management.remote"), javax.management.remote.[JMXConnector](../../../../../java.management/javax/management/remote/JMXConnector.md "interface in javax.management.remote"), java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.management.remote.rmi.[RMIServerImpl](RMIServerImpl.md "class in javax.management.remote.rmi") (implements java.io.[Closeable](../../../../../java.base/java/io/Closeable.md "interface in java.io"), javax.management.remote.rmi.[RMIServer](RMIServer.md "interface in javax.management.remote.rmi"))
    - javax.management.remote.rmi.[RMIJRMPServerImpl](RMIJRMPServerImpl.md "class in javax.management.remote.rmi")

## Interface Hierarchy

* java.lang.[AutoCloseable](../../../../../java.base/java/lang/AutoCloseable.md "interface in java.lang")
  + java.io.[Closeable](../../../../../java.base/java/io/Closeable.md "interface in java.io")
    - javax.management.remote.rmi.[RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi") (also extends java.rmi.[Remote](../../../../../java.rmi/java/rmi/Remote.md "interface in java.rmi"))
* java.rmi.[Remote](../../../../../java.rmi/java/rmi/Remote.md "interface in java.rmi")
  + javax.management.remote.rmi.[RMIConnection](RMIConnection.md "interface in javax.management.remote.rmi") (also extends java.io.[Closeable](../../../../../java.base/java/io/Closeable.md "interface in java.io"))
  + javax.management.remote.rmi.[RMIServer](RMIServer.md "interface in javax.management.remote.rmi")