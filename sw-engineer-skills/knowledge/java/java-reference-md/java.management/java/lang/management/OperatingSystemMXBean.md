Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Interface OperatingSystemMXBean

All Superinterfaces:
:   `PlatformManagedObject`

---

public interface OperatingSystemMXBean
extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

The management interface for the operating system on which
the Java virtual machine is running.

A Java virtual machine has a single instance of the implementation
class of this interface. This instance implementing this interface is
an [MXBean](ManagementFactory.md#MXBean)
that can be obtained by calling
the [`ManagementFactory.getOperatingSystemMXBean()`](ManagementFactory.md#getOperatingSystemMXBean()) method or
from the [`platform MBeanServer`](ManagementFactory.md#getPlatformMBeanServer()) method.

The `ObjectName` for uniquely identifying the MXBean for
the operating system within an MBeanServer is:
> [`java.lang:type=OperatingSystem`](ManagementFactory.md#OPERATING_SYSTEM_MXBEAN_NAME)

It can be obtained by calling the
[`PlatformManagedObject.getObjectName()`](PlatformManagedObject.md#getObjectName()) method.

This interface defines several convenient methods for accessing
system properties about the operating system on which the Java
virtual machine is running.

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

  `getArch()`

  Returns the operating system architecture.

  `int`

  `getAvailableProcessors()`

  Returns the number of processors available to the Java virtual machine.

  `String`

  `getName()`

  Returns the operating system name.

  `double`

  `getSystemLoadAverage()`

  Returns the system load average for the last minute.

  `String`

  `getVersion()`

  Returns the operating system version.

  ### Methods inherited from interface java.lang.management.[PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

  `getObjectName`

* ## Method Details

  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the operating system name.
    This method is equivalent to `System.getProperty("os.name")`.

    Returns:
    :   the operating system name.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### getArch

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getArch()

    Returns the operating system architecture.
    This method is equivalent to `System.getProperty("os.arch")`.

    Returns:
    :   the operating system architecture.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### getVersion

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getVersion()

    Returns the operating system version.
    This method is equivalent to `System.getProperty("os.version")`.

    Returns:
    :   the operating system version.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### getAvailableProcessors

    int getAvailableProcessors()

    Returns the number of processors available to the Java virtual machine.
    This method is equivalent to the [`Runtime.availableProcessors()`](../../../../java.base/java/lang/Runtime.md#availableProcessors())
    method.

    This value may change during a particular invocation of
    the virtual machine.

    Returns:
    :   the number of processors available to the virtual
        machine; never smaller than one.
  + ### getSystemLoadAverage

    double getSystemLoadAverage()

    Returns the system load average for the last minute.
    The system load average is the sum of the number of runnable entities
    queued to the [available processors](#getAvailableProcessors())
    and the number of runnable entities running on the available processors
    averaged over a period of time.
    The way in which the load average is calculated is operating system
    specific but is typically a damped time-dependent average.

    If the load average is not available, a negative value is returned.

    This method is designed to provide a hint about the system load
    and may be queried frequently.
    The load average may be unavailable on some platform where it is
    expensive to implement this method.

    Returns:
    :   the system load average; or a negative value if not available.

    Since:
    :   1.6