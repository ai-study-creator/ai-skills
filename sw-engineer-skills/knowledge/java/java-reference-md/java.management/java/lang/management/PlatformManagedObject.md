Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Interface PlatformManagedObject

All Known Subinterfaces:
:   `BufferPoolMXBean`, `ClassLoadingMXBean`, `CompilationMXBean`, `GarbageCollectorMXBean`, `MemoryManagerMXBean`, `MemoryMXBean`, `MemoryPoolMXBean`, `OperatingSystemMXBean`, `PlatformLoggingMXBean`, `RuntimeMXBean`, `ThreadMXBean`

---

public interface PlatformManagedObject

A platform managed object is a [JMX MXBean](../../../javax/management/MXBean.md "annotation interface in javax.management")
for monitoring and managing a component in the Java platform.
Each platform managed object has a unique
[object name](ManagementFactory.md#MXBean)
for the [platform MBeanServer](ManagementFactory.md#getPlatformMBeanServer()) access.
All platform MXBeans will implement this interface.

Note:
The platform MXBean interfaces (i.e. all subinterfaces
of `PlatformManagedObject`) are implemented
by the Java platform only. New methods may be added in these interfaces
in future Java SE releases.
In addition, this `PlatformManagedObject` interface is only
intended for the management interfaces for the platform to extend but
not for applications.

Since:
:   1.7

See Also:
:   * [`ManagementFactory`](ManagementFactory.md "class in java.lang.management")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ObjectName`

  `getObjectName()`

  Returns an [`ObjectName`](../../../javax/management/ObjectName.md "class in javax.management") instance representing
  the object name of this platform managed object.

* ## Method Details

  + ### getObjectName

    [ObjectName](../../../javax/management/ObjectName.md "class in javax.management") getObjectName()

    Returns an [`ObjectName`](../../../javax/management/ObjectName.md "class in javax.management") instance representing
    the object name of this platform managed object.

    Returns:
    :   an [`ObjectName`](../../../javax/management/ObjectName.md "class in javax.management") instance representing
        the object name of this platform managed object.