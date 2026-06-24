# Hierarchy For Package java.lang.management

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.management.[LockInfo](LockInfo.md "class in java.lang.management")
    - java.lang.management.[MonitorInfo](MonitorInfo.md "class in java.lang.management")
  + java.lang.management.[ManagementFactory](ManagementFactory.md "class in java.lang.management")
  + java.lang.management.[MemoryNotificationInfo](MemoryNotificationInfo.md "class in java.lang.management")
  + java.lang.management.[MemoryUsage](MemoryUsage.md "class in java.lang.management")
  + java.security.[Permission](../../../../java.base/java/security/Permission.md "class in java.security") (implements java.security.[Guard](../../../../java.base/java/security/Guard.md "interface in java.security"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.security.[BasicPermission](../../../../java.base/java/security/BasicPermission.md "class in java.security") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
      * java.lang.management.[ManagementPermission](ManagementPermission.md "class in java.lang.management")
  + java.lang.management.[ThreadInfo](ThreadInfo.md "class in java.lang.management")

## Interface Hierarchy

* java.lang.management.[PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")
  + java.lang.management.[BufferPoolMXBean](BufferPoolMXBean.md "interface in java.lang.management")
  + java.lang.management.[ClassLoadingMXBean](ClassLoadingMXBean.md "interface in java.lang.management")
  + java.lang.management.[CompilationMXBean](CompilationMXBean.md "interface in java.lang.management")
  + java.lang.management.[MemoryManagerMXBean](MemoryManagerMXBean.md "interface in java.lang.management")
    - java.lang.management.[GarbageCollectorMXBean](GarbageCollectorMXBean.md "interface in java.lang.management")
  + java.lang.management.[MemoryMXBean](MemoryMXBean.md "interface in java.lang.management")
  + java.lang.management.[MemoryPoolMXBean](MemoryPoolMXBean.md "interface in java.lang.management")
  + java.lang.management.[OperatingSystemMXBean](OperatingSystemMXBean.md "interface in java.lang.management")
  + java.lang.management.[PlatformLoggingMXBean](PlatformLoggingMXBean.md "interface in java.lang.management")
  + java.lang.management.[RuntimeMXBean](RuntimeMXBean.md "interface in java.lang.management")
  + java.lang.management.[ThreadMXBean](ThreadMXBean.md "interface in java.lang.management")

## Enum Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../../../../java.base/java/lang/constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.management.[MemoryType](MemoryType.md "enum class in java.lang.management")