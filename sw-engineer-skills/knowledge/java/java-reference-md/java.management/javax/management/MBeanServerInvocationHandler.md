Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanServerInvocationHandler

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.MBeanServerInvocationHandler

All Implemented Interfaces:
:   `InvocationHandler`

---

public class MBeanServerInvocationHandler
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [InvocationHandler](../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect")

[`InvocationHandler`](../../../java.base/java/lang/reflect/InvocationHandler.md "interface in java.lang.reflect") that forwards methods in an MBean's
management interface through the MBean server to the MBean.

Given an [`MBeanServerConnection`](MBeanServerConnection.md "interface in javax.management"), the [`ObjectName`](ObjectName.md "class in javax.management")
of an MBean within that MBean server, and a Java interface
`Intf` that describes the management interface of the
MBean using the patterns for a Standard MBean or an MXBean, this
class can be used to construct a proxy for the MBean. The proxy
implements the interface `Intf` such that all of its
methods are forwarded through the MBean server to the MBean.

If the `InvocationHandler` is for an MXBean, then the parameters of
a method are converted from the type declared in the MXBean
interface into the corresponding mapped type, and the return value
is converted from the mapped type into the declared type. For
example, with the method  
`public List<String> reverse(List<String> list);`  
and given that the mapped type for `List<String>` is `String[]`, a call to `proxy.reverse(someList)` will convert
`someList` from a `List<String>` to a `String[]`,
call the MBean operation `reverse`, then convert the returned
`String[]` into a `List<String>`.

The method Object.toString(), Object.hashCode(), or
Object.equals(Object), when invoked on a proxy using this
invocation handler, is forwarded to the MBean server as a method on
the proxied MBean only if it appears in one of the proxy's
interfaces. For a proxy created with [`JMX.newMBeanProxy`](JMX.md#newMBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class)) or [`JMX.newMXBeanProxy`](JMX.md#newMXBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class)), this means that the method must appear in the
Standard MBean or MXBean interface. Otherwise these methods have
the following behavior:

* toString() returns a string representation of the proxy* hashCode() returns a hash code for the proxy such
    that two equal proxies have the same hash code* equals(Object)
      returns true if and only if the Object argument is of the same
      proxy class as this proxy, with an MBeanServerInvocationHandler
      that has the same MBeanServerConnection and ObjectName; if one
      of the `MBeanServerInvocationHandler`s was constructed with
      a `Class` argument then the other must have been constructed
      with the same `Class` for `equals` to return true.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanServerInvocationHandler(MBeanServerConnection connection,
  ObjectName objectName)`

  Invocation handler that forwards methods through an MBean
  server to a Standard MBean.

  `MBeanServerInvocationHandler(MBeanServerConnection connection,
  ObjectName objectName,
  boolean isMXBean)`

  Invocation handler that can forward methods through an MBean
  server to a Standard MBean or MXBean.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `MBeanServerConnection`

  `getMBeanServerConnection()`

  The MBean server connection through which the methods of
  a proxy using this handler are forwarded.

  `ObjectName`

  `getObjectName()`

  The name of the MBean within the MBean server to which methods
  are forwarded.

  `Object`

  `invoke(Object proxy,
  Method method,
  Object[] args)`

  Processes a method invocation on a proxy instance and returns
  the result.

  `boolean`

  `isMXBean()`

  If true, the proxy is for an MXBean, and appropriate mappings
  are applied to method parameters and return values.

  `static <T> T`

  `newProxyInstance(MBeanServerConnection connection,
  ObjectName objectName,
  Class<T> interfaceClass,
  boolean notificationBroadcaster)`

  Return a proxy that implements the given interface by
  forwarding its methods through the given MBean server to the
  named MBean.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MBeanServerInvocationHandler

    public MBeanServerInvocationHandler([MBeanServerConnection](MBeanServerConnection.md "interface in javax.management") connection,
    [ObjectName](ObjectName.md "class in javax.management") objectName)

    Invocation handler that forwards methods through an MBean
    server to a Standard MBean. This constructor may be called
    instead of relying on [`JMX.newMBeanProxy`](JMX.md#newMBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class)), for instance if you need to supply a
    different [`ClassLoader`](../../../java.base/java/lang/ClassLoader.md "class in java.lang") to [`Proxy.newProxyInstance`](../../../java.base/java/lang/reflect/Proxy.md#newProxyInstance(java.lang.ClassLoader,java.lang.Class%5B%5D,java.lang.reflect.InvocationHandler)).

    This constructor is not appropriate for an MXBean. Use
    [`MBeanServerInvocationHandler(MBeanServerConnection, ObjectName, boolean)`](#%3Cinit%3E(javax.management.MBeanServerConnection,javax.management.ObjectName,boolean)) for that. This constructor is equivalent
    to `new MBeanServerInvocationHandler(connection,
    objectName, false)`.

    Parameters:
    :   `connection` - the MBean server connection through which all
        methods of a proxy using this handler will be forwarded.
    :   `objectName` - the name of the MBean within the MBean server
        to which methods will be forwarded.
  + ### MBeanServerInvocationHandler

    public MBeanServerInvocationHandler([MBeanServerConnection](MBeanServerConnection.md "interface in javax.management") connection,
    [ObjectName](ObjectName.md "class in javax.management") objectName,
    boolean isMXBean)

    Invocation handler that can forward methods through an MBean
    server to a Standard MBean or MXBean. This constructor may be called
    instead of relying on [`JMX.newMXBeanProxy`](JMX.md#newMXBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class)), for instance if you need to supply a
    different [`ClassLoader`](../../../java.base/java/lang/ClassLoader.md "class in java.lang") to [`Proxy.newProxyInstance`](../../../java.base/java/lang/reflect/Proxy.md#newProxyInstance(java.lang.ClassLoader,java.lang.Class%5B%5D,java.lang.reflect.InvocationHandler)).

    Parameters:
    :   `connection` - the MBean server connection through which all
        methods of a proxy using this handler will be forwarded.
    :   `objectName` - the name of the MBean within the MBean server
        to which methods will be forwarded.
    :   `isMXBean` - if true, the proxy is for an [`MXBean`](MXBean.md "annotation interface in javax.management"), and
        appropriate mappings will be applied to method parameters and return
        values.

    Since:
    :   1.6
* ## Method Details

  + ### getMBeanServerConnection

    public [MBeanServerConnection](MBeanServerConnection.md "interface in javax.management") getMBeanServerConnection()

    The MBean server connection through which the methods of
    a proxy using this handler are forwarded.

    Returns:
    :   the MBean server connection.

    Since:
    :   1.6
  + ### getObjectName

    public [ObjectName](ObjectName.md "class in javax.management") getObjectName()

    The name of the MBean within the MBean server to which methods
    are forwarded.

    Returns:
    :   the object name.

    Since:
    :   1.6
  + ### isMXBean

    public boolean isMXBean()

    If true, the proxy is for an MXBean, and appropriate mappings
    are applied to method parameters and return values.

    Returns:
    :   whether the proxy is for an MXBean.

    Since:
    :   1.6
  + ### newProxyInstance

    public static <T> T newProxyInstance([MBeanServerConnection](MBeanServerConnection.md "interface in javax.management") connection,
    [ObjectName](ObjectName.md "class in javax.management") objectName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> interfaceClass,
    boolean notificationBroadcaster)

    Return a proxy that implements the given interface by
    forwarding its methods through the given MBean server to the
    named MBean. As of 1.6, the methods [`JMX.newMBeanProxy(MBeanServerConnection, ObjectName, Class)`](JMX.md#newMBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class)) and
    [`JMX.newMBeanProxy(MBeanServerConnection, ObjectName, Class, boolean)`](JMX.md#newMBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class,boolean)) are preferred to this method.

    This method is equivalent to [`Proxy.newProxyInstance`](../../../java.base/java/lang/reflect/Proxy.md#newProxyInstance(java.lang.ClassLoader,java.lang.Class%5B%5D,java.lang.reflect.InvocationHandler))`(interfaceClass.getClassLoader(),
    interfaces, handler)`. Here `handler` is the
    result of [`new
    MBeanServerInvocationHandler(connection, objectName)`](#%3Cinit%3E(javax.management.MBeanServerConnection,javax.management.ObjectName,boolean)), and
    `interfaces` is an array that has one element if
    `notificationBroadcaster` is false and two if it is
    true. The first element of `interfaces` is
    `interfaceClass` and the second, if present, is
    `NotificationEmitter.class`.

    Type Parameters:
    :   `T` - allows the compiler to know that if the `interfaceClass` parameter is `MyMBean.class`, for example,
        then the return type is `MyMBean`.

    Parameters:
    :   `connection` - the MBean server to forward to.
    :   `objectName` - the name of the MBean within
        `connection` to forward to.
    :   `interfaceClass` - the management interface that the MBean
        exports, which will also be implemented by the returned proxy.
    :   `notificationBroadcaster` - make the returned proxy
        implement [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management") by forwarding its methods
        via `connection`. A call to [`NotificationBroadcaster.addNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](NotificationBroadcaster.md#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)) on the proxy will
        result in a call to [`MBeanServerConnection.addNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)), and likewise
        for the other methods of [`NotificationBroadcaster`](NotificationBroadcaster.md "interface in javax.management") and [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management").

    Returns:
    :   the new proxy instance.

    See Also:
    :   - [`JMX.newMBeanProxy(MBeanServerConnection, ObjectName, Class, boolean)`](JMX.md#newMBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class,boolean))
  + ### invoke

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") invoke([Object](../../../java.base/java/lang/Object.md "class in java.lang") proxy,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") method,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] args)
    throws [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

    Description copied from interface: `InvocationHandler`

    Processes a method invocation on a proxy instance and returns
    the result. This method will be invoked on an invocation handler
    when a method is invoked on a proxy instance that it is
    associated with.

    Specified by:
    :   `invoke` in interface `InvocationHandler`

    Parameters:
    :   `proxy` - the proxy instance that the method was invoked on
    :   `method` - the `Method` instance corresponding to
        the interface method invoked on the proxy instance. The declaring
        class of the `Method` object will be the interface that
        the method was declared in, which may be a superinterface of the
        proxy interface that the proxy class inherits the method through.
    :   `args` - an array of objects containing the values of the
        arguments passed in the method invocation on the proxy instance,
        or `null` if interface method takes no arguments.
        Arguments of primitive types are wrapped in instances of the
        appropriate primitive wrapper class, such as
        `java.lang.Integer` or `java.lang.Boolean`.

    Returns:
    :   the value to return from the method invocation on the
        proxy instance. If the declared return type of the interface
        method is a primitive type, then the value returned by
        this method must be an instance of the corresponding primitive
        wrapper class; otherwise, it must be a type assignable to the
        declared return type. If the value returned by this method is
        `null` and the interface method's return type is
        primitive, then a `NullPointerException` will be
        thrown by the method invocation on the proxy instance. If the
        value returned by this method is otherwise not compatible with
        the interface method's declared return type as described above,
        a `ClassCastException` will be thrown by the method
        invocation on the proxy instance.

    Throws:
    :   `Throwable` - the exception to throw from the method
        invocation on the proxy instance. The exception's type must be
        assignable either to any of the exception types declared in the
        `throws` clause of the interface method or to the
        unchecked exception types `java.lang.RuntimeException`
        or `java.lang.Error`. If a checked exception is
        thrown by this method that is not assignable to any of the
        exception types declared in the `throws` clause of
        the interface method, then an
        [`UndeclaredThrowableException`](../../../java.base/java/lang/reflect/UndeclaredThrowableException.md "class in java.lang.reflect") containing the
        exception that was thrown by this method will be thrown by the
        method invocation on the proxy instance.

    See Also:
    :   - [`UndeclaredThrowableException`](../../../java.base/java/lang/reflect/UndeclaredThrowableException.md "class in java.lang.reflect")