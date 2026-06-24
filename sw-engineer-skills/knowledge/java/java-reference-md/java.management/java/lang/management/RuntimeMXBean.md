Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Interface RuntimeMXBean

All Superinterfaces:
:   `PlatformManagedObject`

---

public interface RuntimeMXBean
extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

The management interface for the runtime system of
the Java virtual machine.

A Java virtual machine has a single instance of the implementation
class of this interface. This instance implementing this interface is
an [MXBean](ManagementFactory.md#MXBean)
that can be obtained by calling
the [`ManagementFactory.getRuntimeMXBean()`](ManagementFactory.md#getRuntimeMXBean()) method or
from the [`platform MBeanServer`](ManagementFactory.md#getPlatformMBeanServer()) method.

The `ObjectName` for uniquely identifying the MXBean for
the runtime system within an MBeanServer is:
> [`java.lang:type=Runtime`](ManagementFactory.md#RUNTIME_MXBEAN_NAME)

It can be obtained by calling the
[`PlatformManagedObject.getObjectName()`](PlatformManagedObject.md#getObjectName()) method.

This interface defines several convenient methods for accessing
system properties about the Java virtual machine.

Since:
:   1.5

See Also:
:   * [`ManagementFactory.getPlatformMXBeans(Class)`](ManagementFactory.md#getPlatformMXBeans(java.lang.Class))
    * [JMX Specification.](../../../javax/management/package-summary.md)
    * [Ways to Access MXBeans](package-summary.md#examples)

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `String`

  `getBootClassPath()`

  Returns the boot class path that is used by the bootstrap class loader
  to search for class files.

  `String`

  `getClassPath()`

  Returns the Java class path that is used by the system class loader
  to search for class files.

  `List<String>`

  `getInputArguments()`

  Returns the input arguments passed to the Java virtual machine
  which does not include the arguments to the `main` method.

  `String`

  `getLibraryPath()`

  Returns the Java library path.

  `String`

  `getManagementSpecVersion()`

  Returns the version of the specification for the management interface
  implemented by the running Java virtual machine.

  `String`

  `getName()`

  Returns the name representing the running Java virtual machine.

  `default long`

  `getPid()`

  Returns the [process ID](../../../../java.base/java/lang/ProcessHandle.md#pid()) representing
  the running Java virtual machine.

  `String`

  `getSpecName()`

  Returns the Java virtual machine specification name.

  `String`

  `getSpecVendor()`

  Returns the Java virtual machine specification vendor.

  `String`

  `getSpecVersion()`

  Returns the Java virtual machine specification version.

  `long`

  `getStartTime()`

  Returns the start time of the Java virtual machine in milliseconds.

  `Map<String,String>`

  `getSystemProperties()`

  Returns a map of names and values of all system properties.

  `long`

  `getUptime()`

  Returns the uptime of the Java virtual machine in milliseconds.

  `String`

  `getVmName()`

  Returns the Java virtual machine implementation name.

  `String`

  `getVmVendor()`

  Returns the Java virtual machine implementation vendor.

  `String`

  `getVmVersion()`

  Returns the Java virtual machine implementation version.

  `boolean`

  `isBootClassPathSupported()`

  Tests if the Java virtual machine supports the boot class path
  mechanism used by the bootstrap class loader to search for class
  files.

  ### Methods inherited from interface java.lang.management.[PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")

  `getObjectName`

* ## Method Details

  + ### getPid

    default long getPid()

    Returns the [process ID](../../../../java.base/java/lang/ProcessHandle.md#pid()) representing
    the running Java virtual machine.

    Returns:
    :   the process ID representing the running Java virtual machine.

    Since:
    :   10
  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name representing the running Java virtual machine.
    The returned name string can be any arbitrary string and
    a Java virtual machine implementation can choose
    to embed platform-specific useful information in the
    returned name string. Each running virtual machine could have
    a different name.

    Returns:
    :   the name representing the running Java virtual machine.
  + ### getVmName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getVmName()

    Returns the Java virtual machine implementation name.
    This method is equivalent to [`System.getProperty("java.vm.name")`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String)).

    Returns:
    :   the Java virtual machine implementation name.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### getVmVendor

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getVmVendor()

    Returns the Java virtual machine implementation vendor.
    This method is equivalent to [`System.getProperty("java.vm.vendor")`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String)).

    Returns:
    :   the Java virtual machine implementation vendor.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### getVmVersion

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getVmVersion()

    Returns the Java virtual machine implementation version.
    This method is equivalent to [`System.getProperty("java.vm.version")`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String)).

    Returns:
    :   the Java virtual machine implementation version.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### getSpecName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getSpecName()

    Returns the Java virtual machine specification name.
    This method is equivalent to [`System.getProperty("java.vm.specification.name")`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String)).

    Returns:
    :   the Java virtual machine specification name.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### getSpecVendor

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getSpecVendor()

    Returns the Java virtual machine specification vendor.
    This method is equivalent to [`System.getProperty("java.vm.specification.vendor")`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String)).

    Returns:
    :   the Java virtual machine specification vendor.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### getSpecVersion

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getSpecVersion()

    Returns the Java virtual machine specification version.
    This method is equivalent to [`System.getProperty("java.vm.specification.version")`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String)).

    Returns:
    :   the Java virtual machine specification version.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### getManagementSpecVersion

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getManagementSpecVersion()

    Returns the version of the specification for the management interface
    implemented by the running Java virtual machine.

    Returns:
    :   the version of the specification for the management interface
        implemented by the running Java virtual machine.
  + ### getClassPath

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getClassPath()

    Returns the Java class path that is used by the system class loader
    to search for class files.
    This method is equivalent to [`System.getProperty("java.class.path")`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String)).

    Multiple paths in the Java class path are separated by the
    path separator character of the platform of the Java virtual machine
    being monitored.

    Returns:
    :   the Java class path.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### getLibraryPath

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getLibraryPath()

    Returns the Java library path.
    This method is equivalent to [`System.getProperty("java.library.path")`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String)).

    Multiple paths in the Java library path are separated by the
    path separator character of the platform of the Java virtual machine
    being monitored.

    Returns:
    :   the Java library path.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to this system property.

    See Also:
    :   - [`SecurityManager.checkPropertyAccess(java.lang.String)`](../../../../java.base/java/lang/SecurityManager.md#checkPropertyAccess(java.lang.String))
        - [`System.getProperty(java.lang.String)`](../../../../java.base/java/lang/System.md#getProperty(java.lang.String))
  + ### isBootClassPathSupported

    boolean isBootClassPathSupported()

    Tests if the Java virtual machine supports the boot class path
    mechanism used by the bootstrap class loader to search for class
    files.

    Returns:
    :   `true` if the Java virtual machine supports the
        class path mechanism; `false` otherwise.
  + ### getBootClassPath

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getBootClassPath()

    Returns the boot class path that is used by the bootstrap class loader
    to search for class files.

    Multiple paths in the boot class path are separated by the
    path separator character of the platform on which the Java
    virtual machine is running.

    A Java virtual machine implementation may not support
    the boot class path mechanism for the bootstrap class loader
    to search for class files.
    The [`isBootClassPathSupported()`](#isBootClassPathSupported()) method can be used
    to determine if the Java virtual machine supports this method.

    Returns:
    :   the boot class path.

    Throws:
    :   `UnsupportedOperationException` - if the Java virtual machine does not support this operation.
    :   `SecurityException` - if a security manager exists and the caller does not have
        ManagementPermission("monitor").
  + ### getInputArguments

    [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getInputArguments()

    Returns the input arguments passed to the Java virtual machine
    which does not include the arguments to the `main` method.
    This method returns an empty list if there is no input argument
    to the Java virtual machine.

    Some Java virtual machine implementations may take input arguments
    from multiple different sources: for examples, arguments passed from
    the application that launches the Java virtual machine such as
    the 'java' command, environment variables, configuration files, etc.

    Typically, not all command-line options to the 'java' command
    are passed to the Java virtual machine.
    Thus, the returned input arguments may not
    include all command-line options.

    **MBeanServer access**:  
    The mapped type of `List<String>` is `String[]`.

    Returns:
    :   a list of `String` objects; each element
        is an argument passed to the Java virtual machine.

    Throws:
    :   `SecurityException` - if a security manager exists and the caller does not have
        ManagementPermission("monitor").
  + ### getUptime

    long getUptime()

    Returns the uptime of the Java virtual machine in milliseconds.

    Returns:
    :   uptime of the Java virtual machine in milliseconds.
  + ### getStartTime

    long getStartTime()

    Returns the start time of the Java virtual machine in milliseconds.
    This method returns the approximate time when the Java virtual
    machine started.

    Returns:
    :   start time of the Java virtual machine in milliseconds.
  + ### getSystemProperties

    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),[String](../../../../java.base/java/lang/String.md "class in java.lang")> getSystemProperties()

    Returns a map of names and values of all system properties.
    This method calls [`System.getProperties()`](../../../../java.base/java/lang/System.md#getProperties()) to get all
    system properties. Properties whose name or value is not
    a `String` are omitted.

    **MBeanServer access**:  
    The mapped type of `Map<String,String>` is
    [`TabularData`](../../../javax/management/openmbean/TabularData.md "interface in javax.management.openmbean")
    with two items in each row as follows:

    Name and Type for each item

    | Item Name | Item Type |
    | --- | --- |
    | `key` | `String` |
    | `value` | `String` |

    Returns:
    :   a map of names and values of all system properties.

    Throws:
    :   `SecurityException` - if a security manager exists and its
        `checkPropertiesAccess` method doesn't allow access
        to the system properties.