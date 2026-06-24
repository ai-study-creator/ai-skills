# Hierarchy For Package java.rmi.server

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.rmi.server.[ObjID](ObjID.md "class in java.rmi.server") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.rmi.server.[Operation](Operation.md "class in java.rmi.server")
  + java.io.[OutputStream](../../../../java.base/java/io/OutputStream.md "class in java.io") (implements java.io.[Closeable](../../../../java.base/java/io/Closeable.md "interface in java.io"), java.io.[Flushable](../../../../java.base/java/io/Flushable.md "interface in java.io"))
    - java.io.[FilterOutputStream](../../../../java.base/java/io/FilterOutputStream.md "class in java.io")
      * java.io.[PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io") (implements java.lang.[Appendable](../../../../java.base/java/lang/Appendable.md "interface in java.lang"), java.io.[Closeable](../../../../java.base/java/io/Closeable.md "interface in java.io"))
        + java.rmi.server.[LogStream](LogStream.md "class in java.rmi.server")
  + java.rmi.server.[RemoteObject](RemoteObject.md "class in java.rmi.server") (implements java.rmi.[Remote](../Remote.md "interface in java.rmi"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.rmi.server.[RemoteObjectInvocationHandler](RemoteObjectInvocationHandler.md "class in java.rmi.server") (implements java.lang.reflect.[InvocationHandler](../../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect"))
    - java.rmi.server.[RemoteServer](RemoteServer.md "class in java.rmi.server")
      * java.rmi.server.[UnicastRemoteObject](UnicastRemoteObject.md "class in java.rmi.server")
    - java.rmi.server.[RemoteStub](RemoteStub.md "class in java.rmi.server")
  + java.rmi.server.[RMIClassLoader](RMIClassLoader.md "class in java.rmi.server")
  + java.rmi.server.[RMIClassLoaderSpi](RMIClassLoaderSpi.md "class in java.rmi.server")
  + java.rmi.server.[RMISocketFactory](RMISocketFactory.md "class in java.rmi.server") (implements java.rmi.server.[RMIClientSocketFactory](RMIClientSocketFactory.md "interface in java.rmi.server"), java.rmi.server.[RMIServerSocketFactory](RMIServerSocketFactory.md "interface in java.rmi.server"))
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.lang.[CloneNotSupportedException](../../../../java.base/java/lang/CloneNotSupportedException.md "class in java.lang")
        + java.rmi.server.[ServerCloneException](ServerCloneException.md "class in java.rmi.server")
      * java.io.[IOException](../../../../java.base/java/io/IOException.md "class in java.io")
        + java.rmi.[RemoteException](../RemoteException.md "class in java.rmi")
          - java.rmi.server.[ExportException](ExportException.md "class in java.rmi.server")
            * java.rmi.server.[SocketSecurityException](SocketSecurityException.md "class in java.rmi.server")
          - java.rmi.server.[SkeletonMismatchException](SkeletonMismatchException.md "class in java.rmi.server")
          - java.rmi.server.[SkeletonNotFoundException](SkeletonNotFoundException.md "class in java.rmi.server")
      * java.rmi.server.[ServerNotActiveException](ServerNotActiveException.md "class in java.rmi.server")
  + java.rmi.server.[UID](UID.md "class in java.rmi.server") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))

## Interface Hierarchy

* java.rmi.server.[LoaderHandler](LoaderHandler.md "interface in java.rmi.server")
* java.rmi.server.[RemoteCall](RemoteCall.md "interface in java.rmi.server")
* java.rmi.server.[RMIClientSocketFactory](RMIClientSocketFactory.md "interface in java.rmi.server")
* java.rmi.server.[RMIFailureHandler](RMIFailureHandler.md "interface in java.rmi.server")
* java.rmi.server.[RMIServerSocketFactory](RMIServerSocketFactory.md "interface in java.rmi.server")
* java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")
  + java.io.[Externalizable](../../../../java.base/java/io/Externalizable.md "interface in java.io")
    - java.rmi.server.[RemoteRef](RemoteRef.md "interface in java.rmi.server")
      * java.rmi.server.[ServerRef](ServerRef.md "interface in java.rmi.server")
* java.rmi.server.[Skeleton](Skeleton.md "interface in java.rmi.server")
* java.rmi.server.[Unreferenced](Unreferenced.md "interface in java.rmi.server")