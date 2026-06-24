# Hierarchy For Package javax.naming.event

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.naming.event.[NamingEvent](NamingEvent.md "class in javax.naming.event")
    - javax.naming.event.[NamingExceptionEvent](NamingExceptionEvent.md "class in javax.naming.event")

## Interface Hierarchy

* javax.naming.[Context](../Context.md "interface in javax.naming")
  + javax.naming.directory.[DirContext](../directory/DirContext.md "interface in javax.naming.directory")
    - javax.naming.event.[EventDirContext](EventDirContext.md "interface in javax.naming.event") (also extends javax.naming.event.[EventContext](EventContext.md "interface in javax.naming.event"))
  + javax.naming.event.[EventContext](EventContext.md "interface in javax.naming.event")
    - javax.naming.event.[EventDirContext](EventDirContext.md "interface in javax.naming.event") (also extends javax.naming.directory.[DirContext](../directory/DirContext.md "interface in javax.naming.directory"))
* java.util.[EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")
  + javax.naming.event.[NamingListener](NamingListener.md "interface in javax.naming.event")
    - javax.naming.event.[NamespaceChangeListener](NamespaceChangeListener.md "interface in javax.naming.event")
    - javax.naming.event.[ObjectChangeListener](ObjectChangeListener.md "interface in javax.naming.event")