Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Interface MemoryManagerMXBean

All Superinterfaces:
:   `PlatformManagedObject`

All Known Subinterfaces:
:   `GarbageCollectorMXBean`

---

public interface MemoryManagerMXBean
extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

The management interface for a memory manager.
A memory manager manages one or more memory pools of the
Java virtual machine.

A Java virtual machine has one or more memory managers.
An instance implementing this interface is
an [MXBean](ManagementFactory.md#MXBean)
that can be obtained by calling
the [`ManagementFactory.getMemoryManagerMXBeans()`](ManagementFactory.md#getMemoryManagerMXBeans()) method or
from the [`platform MBeanServer`](ManagementFactory.md#getPlatformMBeanServer()) method.

The `ObjectName` for uniquely identifying the MXBean for
a memory manager within an MBeanServer is:
> [`java.lang:type=MemoryManager`](ManagementFactory.md#MEMORY_MANAGER_MXBEAN_DOMAIN_TYPE)`,name=`*manager's name*

It can be obtained by calling the
[`PlatformManagedObject.getObjectName()`](PlatformManagedObject.md#getObjectName()) method.

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

  `String[]`

  `getMemoryPoolNames()`

  Returns the name of memory pools that this memory manager manages.

  `String`

  `getName()`

  Returns the name representing this memory manager.

  `boolean`

  `isValid()`

  Tests if this memory manager is valid in the Java virtual
  machine.

  ### Methods inherited from interface java.lang.management.[PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

  `getObjectName`

* ## Method Details

  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name representing this memory manager.

    Returns:
    :   the name of this memory manager.
  + ### isValid

    boolean isValid()

    Tests if this memory manager is valid in the Java virtual
    machine. A memory manager becomes invalid once the Java virtual
    machine removes it from the memory system.

    Returns:
    :   `true` if the memory manager is valid in the
        Java virtual machine;
        `false` otherwise.
  + ### getMemoryPoolNames

    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getMemoryPoolNames()

    Returns the name of memory pools that this memory manager manages.

    Returns:
    :   an array of `String` objects, each is
        the name of a memory pool that this memory manager manages.