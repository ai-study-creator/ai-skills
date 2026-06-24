# Hierarchy For Package java.util.logging

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.util.logging.[ErrorManager](ErrorManager.md "class in java.util.logging")
  + java.util.logging.[Formatter](Formatter.md "class in java.util.logging")
    - java.util.logging.[SimpleFormatter](SimpleFormatter.md "class in java.util.logging")
    - java.util.logging.[XMLFormatter](XMLFormatter.md "class in java.util.logging")
  + java.util.logging.[Handler](Handler.md "class in java.util.logging")
    - java.util.logging.[MemoryHandler](MemoryHandler.md "class in java.util.logging")
    - java.util.logging.[StreamHandler](StreamHandler.md "class in java.util.logging")
      * java.util.logging.[ConsoleHandler](ConsoleHandler.md "class in java.util.logging")
      * java.util.logging.[FileHandler](FileHandler.md "class in java.util.logging")
      * java.util.logging.[SocketHandler](SocketHandler.md "class in java.util.logging")
  + java.util.logging.[Level](Level.md "class in java.util.logging") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.util.logging.[Logger](Logger.md "class in java.util.logging")
  + java.util.logging.[LogManager](LogManager.md "class in java.util.logging")
  + java.util.logging.[LogRecord](LogRecord.md "class in java.util.logging") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.security.[Permission](../../../../java.base/java/security/Permission.md "class in java.security") (implements java.security.[Guard](../../../../java.base/java/security/Guard.md "interface in java.security"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.security.[BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
      * java.util.logging.[LoggingPermission](LoggingPermission.md "class in java.util.logging")

## Interface Hierarchy

* java.util.logging.[Filter](Filter.md "interface in java.util.logging")
* java.util.logging.[LoggingMXBean](LoggingMXBean.md "interface in java.util.logging")