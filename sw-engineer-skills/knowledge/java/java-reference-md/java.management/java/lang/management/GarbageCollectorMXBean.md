Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Interface GarbageCollectorMXBean

All Superinterfaces:
:   `MemoryManagerMXBean`, `PlatformManagedObject`

---

public interface GarbageCollectorMXBean
extends [MemoryManagerMXBean](MemoryManagerMXBean.md "interface in java.lang.management")

The management interface for the garbage collection of
the Java virtual machine. Garbage collection is the process
that the Java virtual machine uses to find and reclaim unreachable
objects to free up memory space. A garbage collector is one type of
[`memory manager`](MemoryManagerMXBean.md "interface in java.lang.management").

A Java virtual machine may have one or more instances of
the implementation class of this interface.
An instance implementing this interface is
an [MXBean](ManagementFactory.md#MXBean)
that can be obtained by calling
the [`ManagementFactory.getGarbageCollectorMXBeans()`](ManagementFactory.md#getGarbageCollectorMXBeans()) method or
from the [`platform MBeanServer`](ManagementFactory.md#getPlatformMBeanServer()) method.

The `ObjectName` for uniquely identifying the MXBean for
a garbage collector within an MBeanServer is:
> [`java.lang:type=GarbageCollector`](ManagementFactory.md#GARBAGE_COLLECTOR_MXBEAN_DOMAIN_TYPE)`,name=`*collector's name*

It can be obtained by calling the
[`PlatformManagedObject.getObjectName()`](PlatformManagedObject.md#getObjectName()) method.
A platform usually includes additional platform-dependent information
specific to a garbage collection algorithm for monitoring.

Since:
:   1.5

See Also:
:   * [`ManagementFactory.getPlatformMXBeans(Class)`](ManagementFactory.md#getPlatformMXBeans(java.lang.Class))
    * [`MemoryMXBean`](MemoryMXBean.md "interface in java.lang.management")
    * [JMX Specification.](../../../javax/management/package-summary.md)
    * [Ways to Access MXBeans](package-summary.md#examples)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `long`

  `getCollectionCount()`

  Returns the total number of collections that have occurred.

  `long`

  `getCollectionTime()`

  Returns the approximate accumulated collection elapsed time
  in milliseconds.

  ### Methods inherited from interface java.lang.management.[MemoryManagerMXBean](MemoryManagerMXBean.md "interface in java.lang.management")

  `getMemoryPoolNames, getName, isValid`

  ### Methods inherited from interface java.lang.management.[PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

  `getObjectName`

* ## Method Details

  + ### getCollectionCount

    long getCollectionCount()

    Returns the total number of collections that have occurred.
    This method returns `-1` if the collection count is undefined for
    this collector.

    Returns:
    :   the total number of collections that have occurred.
  + ### getCollectionTime

    long getCollectionTime()

    Returns the approximate accumulated collection elapsed time
    in milliseconds. This method returns `-1` if the collection
    elapsed time is undefined for this collector.

    The Java virtual machine implementation may use a high resolution
    timer to measure the elapsed time. This method may return the
    same value even if the collection count has been incremented
    if the collection elapsed time is very short.

    Returns:
    :   the approximate accumulated collection elapsed time
        in milliseconds.