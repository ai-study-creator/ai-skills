Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Interface ClassLoadingMXBean

All Superinterfaces:
:   `PlatformManagedObject`

---

public interface ClassLoadingMXBean
extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

The management interface for the class loading system of
the Java virtual machine.

A Java virtual machine has a single instance of the implementation
class of this interface. This instance implementing this interface is
an [MXBean](ManagementFactory.md#MXBean)
that can be obtained by calling
the [`ManagementFactory.getClassLoadingMXBean()`](ManagementFactory.md#getClassLoadingMXBean()) method or
from the [`platform MBeanServer`](ManagementFactory.md#getPlatformMBeanServer()).

The `ObjectName` for uniquely identifying the MXBean for
the class loading system within an `MBeanServer` is:
> [`java.lang:type=ClassLoading`](ManagementFactory.md#CLASS_LOADING_MXBEAN_NAME)

It can be obtained by calling the
[`PlatformManagedObject.getObjectName()`](PlatformManagedObject.md#getObjectName()) method.

Since:
:   1.5

See Also:
:   * [`ManagementFactory.getPlatformMXBeans(Class)`](ManagementFactory.md#getPlatformMXBeans(java.lang.Class))
    * [JMX Specification.](../../../javax/management/package-summary.md)
    * [Ways to Access MXBeans](package-summary.md#examples)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getLoadedClassCount()`

  Returns the number of classes that are currently loaded in the
  Java virtual machine.

  `long`

  `getTotalLoadedClassCount()`

  Returns the total number of classes that have been loaded since
  the Java virtual machine has started execution.

  `long`

  `getUnloadedClassCount()`

  Returns the total number of classes unloaded since the Java virtual machine
  has started execution.

  `boolean`

  `isVerbose()`

  Tests if the verbose output for the class loading system is enabled.

  `void`

  `setVerbose(boolean value)`

  Enables or disables the verbose output for the class loading
  system.

  ### Methods inherited from interface java.lang.management.[PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

  `getObjectName`

* ## Method Details

  + ### getTotalLoadedClassCount

    long getTotalLoadedClassCount()

    Returns the total number of classes that have been loaded since
    the Java virtual machine has started execution.

    Returns:
    :   the total number of classes loaded.
  + ### getLoadedClassCount

    int getLoadedClassCount()

    Returns the number of classes that are currently loaded in the
    Java virtual machine.

    Returns:
    :   the number of currently loaded classes.
  + ### getUnloadedClassCount

    long getUnloadedClassCount()

    Returns the total number of classes unloaded since the Java virtual machine
    has started execution.

    Returns:
    :   the total number of unloaded classes.
  + ### isVerbose

    boolean isVerbose()

    Tests if the verbose output for the class loading system is enabled.

    Returns:
    :   `true` if the verbose output for the class loading
        system is enabled; `false` otherwise.
  + ### setVerbose

    void setVerbose(boolean value)

    Enables or disables the verbose output for the class loading
    system. The verbose output information and the output stream
    to which the verbose information is emitted are implementation
    dependent. Typically, a Java virtual machine implementation
    prints a message each time a class file is loaded.

    This method can be called by multiple threads concurrently.
    Each invocation of this method enables or disables the verbose
    output globally.

    Parameters:
    :   `value` - `true` to enable the verbose output;
        `false` to disable.

    Throws:
    :   `SecurityException` - if a security manager
        exists and the caller does not have
        ManagementPermission("control").