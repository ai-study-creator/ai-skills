Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Interface CompilationMXBean

All Superinterfaces:
:   `PlatformManagedObject`

---

public interface CompilationMXBean
extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

The management interface for the compilation system of
the Java virtual machine.

A Java virtual machine has a single instance of the implementation
class of this interface. This instance implementing this interface is
an [MXBean](ManagementFactory.md#MXBean)
that can be obtained by calling
the [`ManagementFactory.getCompilationMXBean()`](ManagementFactory.md#getCompilationMXBean()) method or
from the [`platform MBeanServer`](ManagementFactory.md#getPlatformMBeanServer()) method.

The `ObjectName` for uniquely identifying the MXBean for
the compilation system within an MBeanServer is:
> [`java.lang:type=Compilation`](ManagementFactory.md#COMPILATION_MXBEAN_NAME)

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

  `String`

  `getName()`

  Returns the name of the Just-in-time (JIT) compiler.

  `long`

  `getTotalCompilationTime()`

  Returns the approximate accumulated elapsed time (in milliseconds)
  spent in compilation.

  `boolean`

  `isCompilationTimeMonitoringSupported()`

  Tests if the Java virtual machine supports the monitoring of
  compilation time.

  ### Methods inherited from interface java.lang.management.[PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

  `getObjectName`

* ## Method Details

  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of the Just-in-time (JIT) compiler.

    Returns:
    :   the name of the JIT compiler.
  + ### isCompilationTimeMonitoringSupported

    boolean isCompilationTimeMonitoringSupported()

    Tests if the Java virtual machine supports the monitoring of
    compilation time.

    Returns:
    :   `true` if the monitoring of compilation time is
        supported; `false` otherwise.
  + ### getTotalCompilationTime

    long getTotalCompilationTime()

    Returns the approximate accumulated elapsed time (in milliseconds)
    spent in compilation.
    If multiple threads are used for compilation, this value is
    summation of the approximate time that each thread spent in compilation.

    This method is optionally supported by the platform.
    A Java virtual machine implementation may not support the compilation
    time monitoring. The [`isCompilationTimeMonitoringSupported()`](#isCompilationTimeMonitoringSupported())
    method can be used to determine if the Java virtual machine
    supports this operation.

    This value does not indicate the level of performance of
    the Java virtual machine and is not intended for performance comparisons
    of different virtual machine implementations.
    The implementations may have different definitions and different
    measurements of the compilation time.

    Returns:
    :   Compilation time in milliseconds

    Throws:
    :   `UnsupportedOperationException` - if the Java
        virtual machine does not support
        this operation.