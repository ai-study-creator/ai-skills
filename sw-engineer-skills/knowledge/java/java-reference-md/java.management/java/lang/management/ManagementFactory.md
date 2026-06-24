Module [java.management](../../../module-summary.md)

Package [java.lang.management](package-summary.md)

# Class ManagementFactory

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.lang.management.ManagementFactory

---

public class ManagementFactory
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

The `ManagementFactory` class is a factory class for getting
managed beans for the Java platform.
This class consists of static methods each of which returns
one or more *platform MXBeans* representing
the management interface of a component of the Java virtual
machine.

## Platform MXBeans

A platform MXBean is a *managed bean* that
conforms to the [JMX](../../../javax/management/package-summary.md)
Instrumentation Specification and only uses a set of basic data types.
A JMX management application and the [platform MBeanServer](#getPlatformMBeanServer())
can interoperate without requiring classes for MXBean specific
data types.
The data types being transmitted between the JMX connector
server and the connector client are
[open types](../../../javax/management/openmbean/OpenType.md "class in javax.management.openmbean")
and this allows interoperation across versions.
See [the specification of MXBeans](../../../javax/management/MXBean.md#MXBean-spec) for details.

Each platform MXBean is a [`PlatformManagedObject`](PlatformManagedObject.md "interface in java.lang.management")
and it has a unique
[`ObjectName`](../../../javax/management/ObjectName.md "class in javax.management") for
registration in the platform `MBeanServer` as returned by
by the [`getObjectName`](PlatformManagedObject.md#getObjectName())
method.

An application can access a platform MXBean in the following ways:

### 1. Direct access to an MXBean interface

> * Get an MXBean instance by calling the
>   [`getPlatformMXBean`](#getPlatformMXBean(java.lang.Class)) or
>   [`getPlatformMXBeans`](#getPlatformMXBeans(java.lang.Class)) method
>   and access the MXBean locally in the running
>   virtual machine.
> * Construct an MXBean proxy instance that forwards the
>   method calls to a given [`MBeanServer`](../../../javax/management/MBeanServer.md "interface in javax.management") by calling
>   the [`getPlatformMXBean(MBeanServerConnection, Class)`](#getPlatformMXBean(javax.management.MBeanServerConnection,java.lang.Class)) or
>   [`getPlatformMXBeans(MBeanServerConnection, Class)`](#getPlatformMXBeans(javax.management.MBeanServerConnection,java.lang.Class)) method.
>   The [`newPlatformMXBeanProxy`](#newPlatformMXBeanProxy(javax.management.MBeanServerConnection,java.lang.String,java.lang.Class)) method
>   can also be used to construct an MXBean proxy instance of
>   a given `ObjectName`.
>   A proxy is typically constructed to remotely access
>   an MXBean of another running virtual machine.
>
> ### 2. Indirect access to an MXBean interface via MBeanServer
>
> * Go through the platform `MBeanServer` to access MXBeans
>   locally or a specific `MBeanServerConnection` to access
>   MXBeans remotely.
>   The attributes and operations of an MXBean use only
>   *JMX open types* which include basic data types,
>   [`CompositeData`](../../../javax/management/openmbean/CompositeData.md "interface in javax.management.openmbean"),
>   and [`TabularData`](../../../javax/management/openmbean/TabularData.md "interface in javax.management.openmbean")
>   defined in
>   [`OpenType`](../../../javax/management/openmbean/OpenType.md "class in javax.management.openmbean").
>   The mapping is specified in
>   the [MXBean](../../../javax/management/MXBean.md "annotation interface in javax.management") specification
>   for details.

The [`getPlatformManagementInterfaces`](#getPlatformManagementInterfaces())
method returns all management interfaces supported in the Java virtual machine
including the standard management interfaces listed in the tables
below as well as the management interfaces extended by the JDK implementation.

A Java virtual machine has a single instance of the following management
interfaces:

The list of Management Interfaces and their single instances

| Management Interface | ObjectName |
| --- | --- |
| [`ClassLoadingMXBean`](ClassLoadingMXBean.md "interface in java.lang.management") | [`java.lang:type=ClassLoading`](#CLASS_LOADING_MXBEAN_NAME) |
| [`MemoryMXBean`](MemoryMXBean.md "interface in java.lang.management") | [`java.lang:type=Memory`](#MEMORY_MXBEAN_NAME) |
| [`ThreadMXBean`](ThreadMXBean.md "interface in java.lang.management") | [`java.lang:type=Threading`](#THREAD_MXBEAN_NAME) |
| [`RuntimeMXBean`](RuntimeMXBean.md "interface in java.lang.management") | [`java.lang:type=Runtime`](#RUNTIME_MXBEAN_NAME) |
| [`OperatingSystemMXBean`](OperatingSystemMXBean.md "interface in java.lang.management") | [`java.lang:type=OperatingSystem`](#OPERATING_SYSTEM_MXBEAN_NAME) |
| [`PlatformLoggingMXBean`](PlatformLoggingMXBean.md "interface in java.lang.management") | [`java.util.logging:type=Logging`](../../../../java.logging/java/util/logging/LogManager.md#LOGGING_MXBEAN_NAME) |

A Java virtual machine has zero or a single instance of
the following management interfaces.

The list of Management Interfaces and their single instances

| Management Interface | ObjectName |
| --- | --- |
| [`CompilationMXBean`](CompilationMXBean.md "interface in java.lang.management") | [`java.lang:type=Compilation`](#COMPILATION_MXBEAN_NAME) |

A Java virtual machine may have one or more instances of the following
management interfaces.

The list of Management Interfaces and their single instances

| Management Interface | ObjectName |
| --- | --- |
| [`GarbageCollectorMXBean`](GarbageCollectorMXBean.md "interface in java.lang.management") | [`java.lang:type=GarbageCollector`](#GARBAGE_COLLECTOR_MXBEAN_DOMAIN_TYPE)`,name=`*collector's name* |
| [`MemoryManagerMXBean`](MemoryManagerMXBean.md "interface in java.lang.management") | [`java.lang:type=MemoryManager`](#MEMORY_MANAGER_MXBEAN_DOMAIN_TYPE)`,name=`*manager's name* |
| [`MemoryPoolMXBean`](MemoryPoolMXBean.md "interface in java.lang.management") | [`java.lang:type=MemoryPool`](#MEMORY_POOL_MXBEAN_DOMAIN_TYPE)`,name=`*pool's name* |
| [`BufferPoolMXBean`](BufferPoolMXBean.md "interface in java.lang.management") | `java.nio:type=BufferPool,name=`*pool name* |

Since:
:   1.5

See Also:
:   * [JMX Specification](../../../javax/management/package-summary.md)
    * [Ways to Access Management Metrics](package-summary.md#examples)
    * [`MXBean`](../../../javax/management/MXBean.md "annotation interface in javax.management")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `CLASS_LOADING_MXBEAN_NAME`

  String representation of the
  `ObjectName` for the [`ClassLoadingMXBean`](ClassLoadingMXBean.md "interface in java.lang.management").

  `static final String`

  `COMPILATION_MXBEAN_NAME`

  String representation of the
  `ObjectName` for the [`CompilationMXBean`](CompilationMXBean.md "interface in java.lang.management").

  `static final String`

  `GARBAGE_COLLECTOR_MXBEAN_DOMAIN_TYPE`

  The domain name and the type key property in
  the `ObjectName` for a [`GarbageCollectorMXBean`](GarbageCollectorMXBean.md "interface in java.lang.management").

  `static final String`

  `MEMORY_MANAGER_MXBEAN_DOMAIN_TYPE`

  The domain name and the type key property in
  the `ObjectName` for a [`MemoryManagerMXBean`](MemoryManagerMXBean.md "interface in java.lang.management").

  `static final String`

  `MEMORY_MXBEAN_NAME`

  String representation of the
  `ObjectName` for the [`MemoryMXBean`](MemoryMXBean.md "interface in java.lang.management").

  `static final String`

  `MEMORY_POOL_MXBEAN_DOMAIN_TYPE`

  The domain name and the type key property in
  the `ObjectName` for a [`MemoryPoolMXBean`](MemoryPoolMXBean.md "interface in java.lang.management").

  `static final String`

  `OPERATING_SYSTEM_MXBEAN_NAME`

  String representation of the
  `ObjectName` for the [`OperatingSystemMXBean`](OperatingSystemMXBean.md "interface in java.lang.management").

  `static final String`

  `RUNTIME_MXBEAN_NAME`

  String representation of the
  `ObjectName` for the [`RuntimeMXBean`](RuntimeMXBean.md "interface in java.lang.management").

  `static final String`

  `THREAD_MXBEAN_NAME`

  String representation of the
  `ObjectName` for the [`ThreadMXBean`](ThreadMXBean.md "interface in java.lang.management").
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ClassLoadingMXBean`

  `getClassLoadingMXBean()`

  Returns the managed bean for the class loading system of
  the Java virtual machine.

  `static CompilationMXBean`

  `getCompilationMXBean()`

  Returns the managed bean for the compilation system of
  the Java virtual machine.

  `static List<GarbageCollectorMXBean>`

  `getGarbageCollectorMXBeans()`

  Returns a list of [`GarbageCollectorMXBean`](GarbageCollectorMXBean.md "interface in java.lang.management") objects
  in the Java virtual machine.

  `static List<MemoryManagerMXBean>`

  `getMemoryManagerMXBeans()`

  Returns a list of [`MemoryManagerMXBean`](MemoryManagerMXBean.md "interface in java.lang.management") objects
  in the Java virtual machine.

  `static MemoryMXBean`

  `getMemoryMXBean()`

  Returns the managed bean for the memory system of
  the Java virtual machine.

  `static List<MemoryPoolMXBean>`

  `getMemoryPoolMXBeans()`

  Returns a list of [`MemoryPoolMXBean`](MemoryPoolMXBean.md "interface in java.lang.management") objects in the
  Java virtual machine.

  `static OperatingSystemMXBean`

  `getOperatingSystemMXBean()`

  Returns the managed bean for the operating system on which
  the Java virtual machine is running.

  `static Set<Class<? extends PlatformManagedObject>>`

  `getPlatformManagementInterfaces()`

  Returns the set of `Class` objects, subinterface of
  [`PlatformManagedObject`](PlatformManagedObject.md "interface in java.lang.management"), representing
  all management interfaces for
  monitoring and managing the Java platform.

  `static MBeanServer`

  `getPlatformMBeanServer()`

  Returns the platform [`MBeanServer`](../../../javax/management/MBeanServer.md "interface in javax.management").

  `static <T extends PlatformManagedObject>  
  T`

  `getPlatformMXBean(Class<T> mxbeanInterface)`

  Returns the platform MXBean implementing
  the given `mxbeanInterface` which is specified
  to have one single instance in the Java virtual machine.

  `static <T extends PlatformManagedObject>  
  T`

  `getPlatformMXBean(MBeanServerConnection connection,
  Class<T> mxbeanInterface)`

  Returns the platform MXBean proxy for
  `mxbeanInterface` which is specified to have one single
  instance in a Java virtual machine and the proxy will
  forward the method calls through the given `MBeanServerConnection`.

  `static <T extends PlatformManagedObject>  
  List<T>`

  `getPlatformMXBeans(Class<T> mxbeanInterface)`

  Returns the list of platform MXBeans implementing
  the given `mxbeanInterface` in the Java
  virtual machine.

  `static <T extends PlatformManagedObject>  
  List<T>`

  `getPlatformMXBeans(MBeanServerConnection connection,
  Class<T> mxbeanInterface)`

  Returns the list of the platform MXBean proxies for
  forwarding the method calls of the `mxbeanInterface`
  through the given `MBeanServerConnection`.

  `static RuntimeMXBean`

  `getRuntimeMXBean()`

  Returns the managed bean for the runtime system of
  the Java virtual machine.

  `static ThreadMXBean`

  `getThreadMXBean()`

  Returns the managed bean for the thread system of
  the Java virtual machine.

  `static <T> T`

  `newPlatformMXBeanProxy(MBeanServerConnection connection,
  String mxbeanName,
  Class<T> mxbeanInterface)`

  Returns a proxy for a platform MXBean interface of a
  given [MXBean name](#MXBeanNames)
  that forwards its method calls through the given
  `MBeanServerConnection`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### CLASS\_LOADING\_MXBEAN\_NAME

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") CLASS\_LOADING\_MXBEAN\_NAME

    String representation of the
    `ObjectName` for the [`ClassLoadingMXBean`](ClassLoadingMXBean.md "interface in java.lang.management").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.management.ManagementFactory.CLASS_LOADING_MXBEAN_NAME)
  + ### COMPILATION\_MXBEAN\_NAME

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") COMPILATION\_MXBEAN\_NAME

    String representation of the
    `ObjectName` for the [`CompilationMXBean`](CompilationMXBean.md "interface in java.lang.management").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.management.ManagementFactory.COMPILATION_MXBEAN_NAME)
  + ### MEMORY\_MXBEAN\_NAME

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") MEMORY\_MXBEAN\_NAME

    String representation of the
    `ObjectName` for the [`MemoryMXBean`](MemoryMXBean.md "interface in java.lang.management").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.management.ManagementFactory.MEMORY_MXBEAN_NAME)
  + ### OPERATING\_SYSTEM\_MXBEAN\_NAME

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OPERATING\_SYSTEM\_MXBEAN\_NAME

    String representation of the
    `ObjectName` for the [`OperatingSystemMXBean`](OperatingSystemMXBean.md "interface in java.lang.management").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.management.ManagementFactory.OPERATING_SYSTEM_MXBEAN_NAME)
  + ### RUNTIME\_MXBEAN\_NAME

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RUNTIME\_MXBEAN\_NAME

    String representation of the
    `ObjectName` for the [`RuntimeMXBean`](RuntimeMXBean.md "interface in java.lang.management").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.management.ManagementFactory.RUNTIME_MXBEAN_NAME)
  + ### THREAD\_MXBEAN\_NAME

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") THREAD\_MXBEAN\_NAME

    String representation of the
    `ObjectName` for the [`ThreadMXBean`](ThreadMXBean.md "interface in java.lang.management").

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.management.ManagementFactory.THREAD_MXBEAN_NAME)
  + ### GARBAGE\_COLLECTOR\_MXBEAN\_DOMAIN\_TYPE

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") GARBAGE\_COLLECTOR\_MXBEAN\_DOMAIN\_TYPE

    The domain name and the type key property in
    the `ObjectName` for a [`GarbageCollectorMXBean`](GarbageCollectorMXBean.md "interface in java.lang.management").
    The unique `ObjectName` for a `GarbageCollectorMXBean`
    can be formed by appending this string with
    "`,name=`*collector's name*".

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.management.ManagementFactory.GARBAGE_COLLECTOR_MXBEAN_DOMAIN_TYPE)
  + ### MEMORY\_MANAGER\_MXBEAN\_DOMAIN\_TYPE

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") MEMORY\_MANAGER\_MXBEAN\_DOMAIN\_TYPE

    The domain name and the type key property in
    the `ObjectName` for a [`MemoryManagerMXBean`](MemoryManagerMXBean.md "interface in java.lang.management").
    The unique `ObjectName` for a `MemoryManagerMXBean`
    can be formed by appending this string with
    "`,name=`*manager's name*".

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.management.ManagementFactory.MEMORY_MANAGER_MXBEAN_DOMAIN_TYPE)
  + ### MEMORY\_POOL\_MXBEAN\_DOMAIN\_TYPE

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") MEMORY\_POOL\_MXBEAN\_DOMAIN\_TYPE

    The domain name and the type key property in
    the `ObjectName` for a [`MemoryPoolMXBean`](MemoryPoolMXBean.md "interface in java.lang.management").
    The unique `ObjectName` for a `MemoryPoolMXBean`
    can be formed by appending this string with
    `,name=`*pool's name*.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.lang.management.ManagementFactory.MEMORY_POOL_MXBEAN_DOMAIN_TYPE)
* ## Method Details

  + ### getClassLoadingMXBean

    public static [ClassLoadingMXBean](ClassLoadingMXBean.md "interface in java.lang.management") getClassLoadingMXBean()

    Returns the managed bean for the class loading system of
    the Java virtual machine.

    Returns:
    :   a [`ClassLoadingMXBean`](ClassLoadingMXBean.md "interface in java.lang.management") object for
        the Java virtual machine.
  + ### getMemoryMXBean

    public static [MemoryMXBean](MemoryMXBean.md "interface in java.lang.management") getMemoryMXBean()

    Returns the managed bean for the memory system of
    the Java virtual machine.

    Returns:
    :   a [`MemoryMXBean`](MemoryMXBean.md "interface in java.lang.management") object for the Java virtual machine.
  + ### getThreadMXBean

    public static [ThreadMXBean](ThreadMXBean.md "interface in java.lang.management") getThreadMXBean()

    Returns the managed bean for the thread system of
    the Java virtual machine.

    Returns:
    :   a [`ThreadMXBean`](ThreadMXBean.md "interface in java.lang.management") object for the Java virtual machine.
  + ### getRuntimeMXBean

    public static [RuntimeMXBean](RuntimeMXBean.md "interface in java.lang.management") getRuntimeMXBean()

    Returns the managed bean for the runtime system of
    the Java virtual machine.

    Returns:
    :   a [`RuntimeMXBean`](RuntimeMXBean.md "interface in java.lang.management") object for the Java virtual machine.
  + ### getCompilationMXBean

    public static [CompilationMXBean](CompilationMXBean.md "interface in java.lang.management") getCompilationMXBean()

    Returns the managed bean for the compilation system of
    the Java virtual machine. This method returns `null`
    if the Java virtual machine has no compilation system.

    Returns:
    :   a [`CompilationMXBean`](CompilationMXBean.md "interface in java.lang.management") object for the Java virtual
        machine or `null` if the Java virtual machine has
        no compilation system.
  + ### getOperatingSystemMXBean

    public static [OperatingSystemMXBean](OperatingSystemMXBean.md "interface in java.lang.management") getOperatingSystemMXBean()

    Returns the managed bean for the operating system on which
    the Java virtual machine is running.

    Returns:
    :   an [`OperatingSystemMXBean`](OperatingSystemMXBean.md "interface in java.lang.management") object for
        the Java virtual machine.
  + ### getMemoryPoolMXBeans

    public static [List](../../../../java.base/java/util/List.md "interface in java.util")<[MemoryPoolMXBean](MemoryPoolMXBean.md "interface in java.lang.management")> getMemoryPoolMXBeans()

    Returns a list of [`MemoryPoolMXBean`](MemoryPoolMXBean.md "interface in java.lang.management") objects in the
    Java virtual machine.
    The Java virtual machine can have one or more memory pools.
    It may add or remove memory pools during execution.

    Returns:
    :   a list of `MemoryPoolMXBean` objects.
  + ### getMemoryManagerMXBeans

    public static [List](../../../../java.base/java/util/List.md "interface in java.util")<[MemoryManagerMXBean](MemoryManagerMXBean.md "interface in java.lang.management")> getMemoryManagerMXBeans()

    Returns a list of [`MemoryManagerMXBean`](MemoryManagerMXBean.md "interface in java.lang.management") objects
    in the Java virtual machine.
    The Java virtual machine can have one or more memory managers.
    It may add or remove memory managers during execution.

    Returns:
    :   a list of `MemoryManagerMXBean` objects.
  + ### getGarbageCollectorMXBeans

    public static [List](../../../../java.base/java/util/List.md "interface in java.util")<[GarbageCollectorMXBean](GarbageCollectorMXBean.md "interface in java.lang.management")> getGarbageCollectorMXBeans()

    Returns a list of [`GarbageCollectorMXBean`](GarbageCollectorMXBean.md "interface in java.lang.management") objects
    in the Java virtual machine.
    The Java virtual machine may have one or more
    `GarbageCollectorMXBean` objects.
    It may add or remove `GarbageCollectorMXBean`
    during execution.

    Returns:
    :   a list of `GarbageCollectorMXBean` objects.
  + ### getPlatformMBeanServer

    public static [MBeanServer](../../../javax/management/MBeanServer.md "interface in javax.management") getPlatformMBeanServer()

    Returns the platform [`MBeanServer`](../../../javax/management/MBeanServer.md "interface in javax.management").
    On the first call to this method, it first creates the platform
    `MBeanServer` by calling the
    [`MBeanServerFactory.createMBeanServer`](../../../javax/management/MBeanServerFactory.md#createMBeanServer())
    method and registers each platform MXBean in this platform
    `MBeanServer` with its
    [`ObjectName`](PlatformManagedObject.md#getObjectName()).
    This method, in subsequent calls, will simply return the
    initially created platform `MBeanServer`.

    MXBeans that get created and destroyed dynamically, for example,
    memory [`pools`](MemoryPoolMXBean.md "interface in java.lang.management") and
    [`managers`](MemoryManagerMXBean.md "interface in java.lang.management"),
    will automatically be registered and deregistered into the platform
    `MBeanServer`.

    If the system property `javax.management.builder.initial`
    is set, the platform `MBeanServer` creation will be done
    by the specified [`MBeanServerBuilder`](../../../javax/management/MBeanServerBuilder.md "class in javax.management").

    It is recommended that this platform MBeanServer also be used
    to register other application managed beans
    besides the platform MXBeans.
    This will allow all MBeans to be published through the same
    `MBeanServer` and hence allow for easier network publishing
    and discovery.
    Name conflicts with the platform MXBeans should be avoided.

    Returns:
    :   the platform `MBeanServer`; the platform
        MXBeans are registered into the platform `MBeanServer`
        at the first time this method is called.

    Throws:
    :   `SecurityException` - if there is a security manager
        and the caller does not have the permission required by
        [`MBeanServerFactory.createMBeanServer()`](../../../javax/management/MBeanServerFactory.md#createMBeanServer()).

    See Also:
    :   - [`MBeanServerFactory`](../../../javax/management/MBeanServerFactory.md "class in javax.management")
        - [`MBeanServerFactory.createMBeanServer()`](../../../javax/management/MBeanServerFactory.md#createMBeanServer())
  + ### newPlatformMXBeanProxy

    public static <T> T newPlatformMXBeanProxy([MBeanServerConnection](../../../javax/management/MBeanServerConnection.md "interface in javax.management") connection,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") mxbeanName,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> mxbeanInterface)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns a proxy for a platform MXBean interface of a
    given [MXBean name](#MXBeanNames)
    that forwards its method calls through the given
    `MBeanServerConnection`.

    This method is equivalent to:
    > [`Proxy.newProxyInstance`](../../../../java.base/java/lang/reflect/Proxy.md#newProxyInstance(java.lang.ClassLoader,java.lang.Class%5B%5D,java.lang.reflect.InvocationHandler))`(mxbeanInterface.getClassLoader(),
    > new Class[] { mxbeanInterface }, handler)`

    where `handler` is an [`InvocationHandler`](../../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect") to which method invocations to the MXBean interface
    are dispatched. This `handler` converts an input parameter
    from an MXBean data type to its mapped open type before forwarding
    to the `MBeanServer` and converts a return value from
    an MXBean method call through the `MBeanServer`
    from an open type to the corresponding return type declared in
    the MXBean interface.

    If the MXBean is a notification emitter (i.e.,
    it implements
    [`NotificationEmitter`](../../../javax/management/NotificationEmitter.md "interface in javax.management")),
    both the `mxbeanInterface` and `NotificationEmitter`
    will be implemented by this proxy.

    **Notes:**
    1. Using an MXBean proxy is a convenience remote access to
       a platform MXBean of a running virtual machine. All method
       calls to the MXBean proxy are forwarded to an
       `MBeanServerConnection` where
       [`IOException`](../../../../java.base/java/io/IOException.md "class in java.io") may be thrown
       when the communication problem occurs with the connector server.
       If thrown, [`IOException`](../../../../java.base/java/io/IOException.md "class in java.io") will be wrappped in
       [`UndeclaredThrowableException`](../../../../java.base/java/lang/reflect/UndeclaredThrowableException.md "class in java.lang.reflect").
       An application remotely accessing the platform MXBeans using
       proxy should prepare to catch `UndeclaredThrowableException` and
       handle its [cause](../../../../java.base/java/lang/Throwable.md#getCause())
       as if that cause had been thrown by the `MBeanServerConnection`
       interface.
    2. When a client application is designed to remotely access MXBeans
       for a running virtual machine whose version is different than
       the version on which the application is running,
       it should prepare to catch
       [`InvalidObjectException`](../../../../java.base/java/io/InvalidObjectException.md "class in java.io")
       which is thrown when an MXBean proxy receives a name of an
       enum constant which is missing in the enum class loaded in
       the client application. If thrown,
       [`InvalidObjectException`](../../../../java.base/java/io/InvalidObjectException.md "class in java.io") will be
       wrappped in
       [`UndeclaredThrowableException`](../../../../java.base/java/lang/reflect/UndeclaredThrowableException.md "class in java.lang.reflect").
    3. [`MBeanServerInvocationHandler`](../../../javax/management/MBeanServerInvocationHandler.md "class in javax.management") or its
       [`newProxyInstance`](../../../javax/management/MBeanServerInvocationHandler.md#newProxyInstance(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class,boolean)) method cannot be used to create
       a proxy for a platform MXBean. The proxy object created
       by `MBeanServerInvocationHandler` does not handle
       the properties of the platform MXBeans described in
       the [class specification](#MXBean).

    Type Parameters:
    :   `T` - an `mxbeanInterface` type parameter

    Parameters:
    :   `connection` - the `MBeanServerConnection` to forward to.
    :   `mxbeanName` - the name of a platform MXBean within
        `connection` to forward to. `mxbeanName` must be
        in the format of [`ObjectName`](../../../javax/management/ObjectName.md "class in javax.management").
    :   `mxbeanInterface` - the MXBean interface to be implemented
        by the proxy.

    Returns:
    :   a proxy for a platform MXBean interface of a
        given [MXBean name](#MXBeanNames)
        that forwards its method calls through the given
        `MBeanServerConnection`, or `null` if not exist.

    Throws:
    :   `IllegalArgumentException` - if
        - `mxbeanName` is not with a valid
          [`ObjectName`](../../../javax/management/ObjectName.md "class in javax.management") format, or
        - the named MXBean in the `connection` is
          not a MXBean provided by the platform, or
        - the named MXBean is not registered in the
          `MBeanServerConnection`, or
        - the named MXBean is not an instance of the given
          `mxbeanInterface`
    :   `IOException` - if a communication problem
        occurred when accessing the `MBeanServerConnection`.
  + ### getPlatformMXBean

    public static <T extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")> T getPlatformMXBean([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> mxbeanInterface)

    Returns the platform MXBean implementing
    the given `mxbeanInterface` which is specified
    to have one single instance in the Java virtual machine.
    This method may return `null` if the management interface
    is not implemented in the Java virtual machine (for example,
    a Java virtual machine with no compilation system does not
    implement [`CompilationMXBean`](CompilationMXBean.md "interface in java.lang.management"));
    otherwise, this method is equivalent to calling:

    ```
        getPlatformMXBeans(mxbeanInterface).get(0);
    ```

    Type Parameters:
    :   `T` - an `mxbeanInterface` type parameter

    Parameters:
    :   `mxbeanInterface` - a management interface for a platform
        MXBean with one single instance in the Java virtual machine
        if implemented.

    Returns:
    :   the platform MXBean that implements
        `mxbeanInterface`, or `null` if not exist.

    Throws:
    :   `IllegalArgumentException` - if `mxbeanInterface`
        is not a platform management interface or
        not a singleton platform MXBean.

    Since:
    :   1.7
  + ### getPlatformMXBeans

    public static <T extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")>
    [List](../../../../java.base/java/util/List.md "interface in java.util")<T> getPlatformMXBeans([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> mxbeanInterface)

    Returns the list of platform MXBeans implementing
    the given `mxbeanInterface` in the Java
    virtual machine.
    The returned list may contain zero, one, or more instances.
    The number of instances in the returned list is defined
    in the specification of the given management interface.
    The order is undefined and there is no guarantee that
    the list returned is in the same order as previous invocations.

    Type Parameters:
    :   `T` - an `mxbeanInterface` type parameter

    Parameters:
    :   `mxbeanInterface` - a management interface for a platform
        MXBean

    Returns:
    :   the list of platform MXBeans that implement
        `mxbeanInterface`.

    Throws:
    :   `IllegalArgumentException` - if `mxbeanInterface`
        is not a platform management interface.

    Since:
    :   1.7
  + ### getPlatformMXBean

    public static <T extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")> T getPlatformMXBean([MBeanServerConnection](../../../javax/management/MBeanServerConnection.md "interface in javax.management") connection,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> mxbeanInterface)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns the platform MXBean proxy for
    `mxbeanInterface` which is specified to have one single
    instance in a Java virtual machine and the proxy will
    forward the method calls through the given `MBeanServerConnection`.
    This method may return `null` if the management interface
    is not implemented in the Java virtual machine being monitored
    (for example, a Java virtual machine with no compilation system
    does not implement [`CompilationMXBean`](CompilationMXBean.md "interface in java.lang.management"));
    otherwise, this method is equivalent to calling:

    ```
         getPlatformMXBeans(connection, mxbeanInterface).get(0);
    ```

    Type Parameters:
    :   `T` - an `mxbeanInterface` type parameter

    Parameters:
    :   `connection` - the `MBeanServerConnection` to forward to.
    :   `mxbeanInterface` - a management interface for a platform
        MXBean with one single instance in the Java virtual machine
        being monitored, if implemented.

    Returns:
    :   the platform MXBean proxy for
        forwarding the method calls of the `mxbeanInterface`
        through the given `MBeanServerConnection`,
        or `null` if not exist.

    Throws:
    :   `IllegalArgumentException` - if `mxbeanInterface`
        is not a platform management interface or
        not a singleton platform MXBean.
    :   `IOException` - if a communication problem
        occurred when accessing the `MBeanServerConnection`.

    Since:
    :   1.7

    See Also:
    :   - [`newPlatformMXBeanProxy(javax.management.MBeanServerConnection, java.lang.String, java.lang.Class<T>)`](#newPlatformMXBeanProxy(javax.management.MBeanServerConnection,java.lang.String,java.lang.Class))
  + ### getPlatformMXBeans

    public static <T extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")>
    [List](../../../../java.base/java/util/List.md "interface in java.util")<T> getPlatformMXBeans([MBeanServerConnection](../../../javax/management/MBeanServerConnection.md "interface in javax.management") connection,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> mxbeanInterface)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Returns the list of the platform MXBean proxies for
    forwarding the method calls of the `mxbeanInterface`
    through the given `MBeanServerConnection`.
    The returned list may contain zero, one, or more instances.
    The number of instances in the returned list is defined
    in the specification of the given management interface.
    The order is undefined and there is no guarantee that
    the list returned is in the same order as previous invocations.

    Type Parameters:
    :   `T` - an `mxbeanInterface` type parameter

    Parameters:
    :   `connection` - the `MBeanServerConnection` to forward to.
    :   `mxbeanInterface` - a management interface for a platform
        MXBean

    Returns:
    :   the list of platform MXBean proxies for
        forwarding the method calls of the `mxbeanInterface`
        through the given `MBeanServerConnection`.

    Throws:
    :   `IllegalArgumentException` - if `mxbeanInterface`
        is not a platform management interface.
    :   `IOException` - if a communication problem
        occurred when accessing the `MBeanServerConnection`.

    Since:
    :   1.7

    See Also:
    :   - [`newPlatformMXBeanProxy(javax.management.MBeanServerConnection, java.lang.String, java.lang.Class<T>)`](#newPlatformMXBeanProxy(javax.management.MBeanServerConnection,java.lang.String,java.lang.Class))
  + ### getPlatformManagementInterfaces

    public static [Set](../../../../java.base/java/util/Set.md "interface in java.util")<[Class](../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [PlatformManagedObject](PlatformManagedObject.md "interface in java.lang.management")>> getPlatformManagementInterfaces()

    Returns the set of `Class` objects, subinterface of
    [`PlatformManagedObject`](PlatformManagedObject.md "interface in java.lang.management"), representing
    all management interfaces for
    monitoring and managing the Java platform.

    Returns:
    :   the set of `Class` objects, subinterface of
        [`PlatformManagedObject`](PlatformManagedObject.md "interface in java.lang.management") representing
        the management interfaces for
        monitoring and managing the Java platform.

    Since:
    :   1.7