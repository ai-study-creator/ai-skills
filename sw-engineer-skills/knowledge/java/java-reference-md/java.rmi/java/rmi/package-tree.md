# Hierarchy For Package java.rmi

Package Hierarchies:

* [All Packages](../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")
  + java.rmi.[MarshalledObject](MarshalledObject.md "class in java.rmi")<T> (implements java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.rmi.[Naming](Naming.md "class in java.rmi")
  + java.lang.[SecurityManager](../../../java.base/java/lang/SecurityManager.md "class in java.lang")
    - java.rmi.[RMISecurityManager](RMISecurityManager.md "class in java.rmi")
  + java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.rmi.[AlreadyBoundException](AlreadyBoundException.md "class in java.rmi")
      * java.io.[IOException](../../../java.base/java/io/IOException.md "class in java.io")
        + java.rmi.[RemoteException](RemoteException.md "class in java.rmi")
          - java.rmi.[AccessException](AccessException.md "class in java.rmi")
          - java.rmi.[ConnectException](ConnectException.md "class in java.rmi")
          - java.rmi.[ConnectIOException](ConnectIOException.md "class in java.rmi")
          - java.rmi.[MarshalException](MarshalException.md "class in java.rmi")
          - java.rmi.[NoSuchObjectException](NoSuchObjectException.md "class in java.rmi")
          - java.rmi.[ServerError](ServerError.md "class in java.rmi")
          - java.rmi.[ServerException](ServerException.md "class in java.rmi")
          - java.rmi.[ServerRuntimeException](ServerRuntimeException.md "class in java.rmi")
          - java.rmi.[StubNotFoundException](StubNotFoundException.md "class in java.rmi")
          - java.rmi.[UnexpectedException](UnexpectedException.md "class in java.rmi")
          - java.rmi.[UnknownHostException](UnknownHostException.md "class in java.rmi")
          - java.rmi.[UnmarshalException](UnmarshalException.md "class in java.rmi")
      * java.rmi.[NotBoundException](NotBoundException.md "class in java.rmi")
      * java.lang.[RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang")
        + java.lang.[SecurityException](../../../java.base/java/lang/SecurityException.md "class in java.lang")
          - java.rmi.[RMISecurityException](RMISecurityException.md "class in java.rmi")

## Interface Hierarchy

* java.rmi.[Remote](Remote.md "interface in java.rmi")