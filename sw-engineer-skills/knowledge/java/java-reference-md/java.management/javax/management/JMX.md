Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class JMX

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.JMX

---

public class JMX
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Static methods from the JMX API. There are no instances of this class.

Since:
:   1.6

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `DEFAULT_VALUE_FIELD`

  The name of the [`defaultValue`](Descriptor.md#defaultValue) field.

  `static final String`

  `IMMUTABLE_INFO_FIELD`

  The name of the [`immutableInfo`](Descriptor.md#immutableInfo) field.

  `static final String`

  `INTERFACE_CLASS_NAME_FIELD`

  The name of the [`interfaceClassName`](Descriptor.md#interfaceClassName) field.

  `static final String`

  `LEGAL_VALUES_FIELD`

  The name of the [`legalValues`](Descriptor.md#legalValues) field.

  `static final String`

  `MAX_VALUE_FIELD`

  The name of the [`maxValue`](Descriptor.md#maxValue) field.

  `static final String`

  `MIN_VALUE_FIELD`

  The name of the [`minValue`](Descriptor.md#minValue) field.

  `static final String`

  `MXBEAN_FIELD`

  The name of the [`mxbean`](Descriptor.md#mxbean) field.

  `static final String`

  `OPEN_TYPE_FIELD`

  The name of the [`openType`](Descriptor.md#openType) field.

  `static final String`

  `ORIGINAL_TYPE_FIELD`

  The name of the [`originalType`](Descriptor.md#originalType) field.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static boolean`

  `isMXBeanInterface(Class<?> interfaceClass)`

  Test whether an interface is an MXBean interface.

  `static <T> T`

  `newMBeanProxy(MBeanServerConnection connection,
  ObjectName objectName,
  Class<T> interfaceClass)`

  Make a proxy for a Standard MBean in a local or remote
  MBean Server.

  `static <T> T`

  `newMBeanProxy(MBeanServerConnection connection,
  ObjectName objectName,
  Class<T> interfaceClass,
  boolean notificationEmitter)`

  Make a proxy for a Standard MBean in a local or remote MBean
  Server that may also support the methods of [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management").

  `static <T> T`

  `newMXBeanProxy(MBeanServerConnection connection,
  ObjectName objectName,
  Class<T> interfaceClass)`

  Make a proxy for an MXBean in a local or remote MBean Server.

  `static <T> T`

  `newMXBeanProxy(MBeanServerConnection connection,
  ObjectName objectName,
  Class<T> interfaceClass,
  boolean notificationEmitter)`

  Make a proxy for an MXBean in a local or remote MBean
  Server that may also support the methods of [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management").

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_VALUE\_FIELD

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") DEFAULT\_VALUE\_FIELD

    The name of the [`defaultValue`](Descriptor.md#defaultValue) field.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.JMX.DEFAULT_VALUE_FIELD)
  + ### IMMUTABLE\_INFO\_FIELD

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") IMMUTABLE\_INFO\_FIELD

    The name of the [`immutableInfo`](Descriptor.md#immutableInfo) field.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.JMX.IMMUTABLE_INFO_FIELD)
  + ### INTERFACE\_CLASS\_NAME\_FIELD

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") INTERFACE\_CLASS\_NAME\_FIELD

    The name of the [`interfaceClassName`](Descriptor.md#interfaceClassName) field.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.JMX.INTERFACE_CLASS_NAME_FIELD)
  + ### LEGAL\_VALUES\_FIELD

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") LEGAL\_VALUES\_FIELD

    The name of the [`legalValues`](Descriptor.md#legalValues) field.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.JMX.LEGAL_VALUES_FIELD)
  + ### MAX\_VALUE\_FIELD

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") MAX\_VALUE\_FIELD

    The name of the [`maxValue`](Descriptor.md#maxValue) field.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.JMX.MAX_VALUE_FIELD)
  + ### MIN\_VALUE\_FIELD

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") MIN\_VALUE\_FIELD

    The name of the [`minValue`](Descriptor.md#minValue) field.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.JMX.MIN_VALUE_FIELD)
  + ### MXBEAN\_FIELD

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") MXBEAN\_FIELD

    The name of the [`mxbean`](Descriptor.md#mxbean) field.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.JMX.MXBEAN_FIELD)
  + ### OPEN\_TYPE\_FIELD

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") OPEN\_TYPE\_FIELD

    The name of the [`openType`](Descriptor.md#openType) field.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.JMX.OPEN_TYPE_FIELD)
  + ### ORIGINAL\_TYPE\_FIELD

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ORIGINAL\_TYPE\_FIELD

    The name of the [`originalType`](Descriptor.md#originalType) field.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.JMX.ORIGINAL_TYPE_FIELD)
* ## Method Details

  + ### newMBeanProxy

    public static <T> T newMBeanProxy([MBeanServerConnection](MBeanServerConnection.md "interface in javax.management") connection,
    [ObjectName](ObjectName.md "class in javax.management") objectName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> interfaceClass)

    Make a proxy for a Standard MBean in a local or remote
    MBean Server.

    If you have an MBean Server `mbs` containing an MBean
    with [`ObjectName`](ObjectName.md "class in javax.management") `name`, and if the MBean's
    management interface is described by the Java interface
    `MyMBean`, you can construct a proxy for the MBean like
    this:

    ```
     MyMBean proxy = JMX.newMBeanProxy(mbs, name, MyMBean.class);
    ```

    Suppose, for example, `MyMBean` looks like this:

    ```
     public interface MyMBean {
         public String getSomeAttribute();
         public void setSomeAttribute(String value);
         public void someOperation(String param1, int param2);
     }
    ```

    Then you can execute:

    - `proxy.getSomeAttribute()` which will result in a
      call to `mbs.`[`getAttribute`](MBeanServerConnection.md#getAttribute(javax.management.ObjectName,java.lang.String))`(name, "SomeAttribute")`.- `proxy.setSomeAttribute("whatever")` which will result
        in a call to `mbs.`[`setAttribute`](MBeanServerConnection.md#setAttribute(javax.management.ObjectName,javax.management.Attribute))`(name, new Attribute("SomeAttribute", "whatever"))`.- `proxy.someOperation("param1", 2)` which will be
          translated into a call to `mbs.`[`invoke`](MBeanServerConnection.md#invoke(javax.management.ObjectName,java.lang.String,java.lang.Object%5B%5D,java.lang.String%5B%5D))`(name, "someOperation", <etc>)`.

    The object returned by this method is a
    [`Proxy`](../../../java.base/java/lang/reflect/Proxy.md "class in java.lang.reflect") whose `InvocationHandler` is an
    [`MBeanServerInvocationHandler`](MBeanServerInvocationHandler.md "class in javax.management").

    This method is equivalent to [`newMBeanProxy(connection, objectName, interfaceClass,
    false)`](#newMBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class,boolean)).

    Type Parameters:
    :   `T` - allows the compiler to know that if the `interfaceClass` parameter is `MyMBean.class`, for
        example, then the return type is `MyMBean`.

    Parameters:
    :   `connection` - the MBean server to forward to.
    :   `objectName` - the name of the MBean within
        `connection` to forward to.
    :   `interfaceClass` - the management interface that the MBean
        exports, which will also be implemented by the returned proxy.

    Returns:
    :   the new proxy instance.

    Throws:
    :   `IllegalArgumentException` - if `interfaceClass` is not
        a [compliant MBean
        interface](package-summary.md#mgIface)
  + ### newMBeanProxy

    public static <T> T newMBeanProxy([MBeanServerConnection](MBeanServerConnection.md "interface in javax.management") connection,
    [ObjectName](ObjectName.md "class in javax.management") objectName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> interfaceClass,
    boolean notificationEmitter)

    Make a proxy for a Standard MBean in a local or remote MBean
    Server that may also support the methods of [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management").

    This method behaves the same as [`newMBeanProxy(MBeanServerConnection, ObjectName, Class)`](#newMBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class)), but
    additionally, if `notificationEmitter` is `true`, then the MBean is assumed to be a [`NotificationBroadcaster`](NotificationBroadcaster.md "interface in javax.management") or [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management") and the
    returned proxy will implement [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management") as
    well as `interfaceClass`. A call to [`NotificationBroadcaster.addNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](NotificationBroadcaster.md#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)) on the proxy
    will result in a call to [`MBeanServerConnection.addNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)), and
    likewise for the other methods of [`NotificationBroadcaster`](NotificationBroadcaster.md "interface in javax.management") and [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management").

    Type Parameters:
    :   `T` - allows the compiler to know that if the `interfaceClass` parameter is `MyMBean.class`, for
        example, then the return type is `MyMBean`.

    Parameters:
    :   `connection` - the MBean server to forward to.
    :   `objectName` - the name of the MBean within
        `connection` to forward to.
    :   `interfaceClass` - the management interface that the MBean
        exports, which will also be implemented by the returned proxy.
    :   `notificationEmitter` - make the returned proxy
        implement [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management") by forwarding its methods
        via `connection`.

    Returns:
    :   the new proxy instance.

    Throws:
    :   `IllegalArgumentException` - if `interfaceClass` is not
        a [compliant MBean
        interface](package-summary.md#mgIface)
  + ### newMXBeanProxy

    public static <T> T newMXBeanProxy([MBeanServerConnection](MBeanServerConnection.md "interface in javax.management") connection,
    [ObjectName](ObjectName.md "class in javax.management") objectName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> interfaceClass)

    Make a proxy for an MXBean in a local or remote MBean Server.

    If you have an MBean Server `mbs` containing an
    MXBean with [`ObjectName`](ObjectName.md "class in javax.management") `name`, and if the
    MXBean's management interface is described by the Java
    interface `MyMXBean`, you can construct a proxy for
    the MXBean like this:

    ```
     MyMXBean proxy = JMX.newMXBeanProxy(mbs, name, MyMXBean.class);
    ```

    Suppose, for example, `MyMXBean` looks like this:

    ```
     public interface MyMXBean {
         public String getSimpleAttribute();
         public void setSimpleAttribute(String value);
         public MemoryUsage getMappedAttribute();
         public void setMappedAttribute(MemoryUsage memoryUsage);
         public MemoryUsage someOperation(String param1, MemoryUsage param2);
     }
    ```

    Then:

    - `proxy.getSimpleAttribute()` will result in a
      call to `mbs.`[`getAttribute`](MBeanServerConnection.md#getAttribute(javax.management.ObjectName,java.lang.String))`(name, "SimpleAttribute")`.

      - `proxy.setSimpleAttribute("whatever")` will result
        in a call to `mbs.`[`setAttribute`](MBeanServerConnection.md#setAttribute(javax.management.ObjectName,javax.management.Attribute))`(name,
        new Attribute("SimpleAttribute", "whatever"))`.

        Because `String` is a *simple type*, in the
        sense of [`SimpleType`](openmbean/SimpleType.md "class in javax.management.openmbean"), it
        is not changed in the context of an MXBean. The MXBean
        proxy behaves the same as a Standard MBean proxy (see
        [`newMBeanProxy`](#newMBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class))) for the attribute `SimpleAttribute`.

        - `proxy.getMappedAttribute()` will result in a call
          to `mbs.getAttribute("MappedAttribute")`. The MXBean
          mapping rules mean that the actual type of the attribute `MappedAttribute` will be [`CompositeData`](openmbean/CompositeData.md "interface in javax.management.openmbean") and
          that is what the `mbs.getAttribute` call will return.
          The proxy will then convert the `CompositeData` back into
          the expected type `MemoryUsage` using the MXBean mapping
          rules.

          - Similarly, `proxy.setMappedAttribute(memoryUsage)`
            will convert the `MemoryUsage` argument into a `CompositeData` before calling `mbs.setAttribute`.

            - `proxy.someOperation("whatever", memoryUsage)`
              will convert the `MemoryUsage` argument into a `CompositeData` and call `mbs.invoke`. The value returned
              by `mbs.invoke` will be also be a `CompositeData`,
              and the proxy will convert this into the expected type `MemoryUsage` using the MXBean mapping rules.

    The object returned by this method is a
    [`Proxy`](../../../java.base/java/lang/reflect/Proxy.md "class in java.lang.reflect") whose `InvocationHandler` is an
    [`MBeanServerInvocationHandler`](MBeanServerInvocationHandler.md "class in javax.management").

    This method is equivalent to [`newMXBeanProxy(connection, objectName, interfaceClass,
    false)`](#newMXBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class,boolean)).

    Type Parameters:
    :   `T` - allows the compiler to know that if the `interfaceClass` parameter is `MyMXBean.class`, for
        example, then the return type is `MyMXBean`.

    Parameters:
    :   `connection` - the MBean server to forward to.
    :   `objectName` - the name of the MBean within
        `connection` to forward to.
    :   `interfaceClass` - the MXBean interface,
        which will also be implemented by the returned proxy.

    Returns:
    :   the new proxy instance.

    Throws:
    :   `IllegalArgumentException` - if `interfaceClass` is not
        a [`compliant MXBean interface`](MXBean.md "annotation interface in javax.management")
  + ### newMXBeanProxy

    public static <T> T newMXBeanProxy([MBeanServerConnection](MBeanServerConnection.md "interface in javax.management") connection,
    [ObjectName](ObjectName.md "class in javax.management") objectName,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> interfaceClass,
    boolean notificationEmitter)

    Make a proxy for an MXBean in a local or remote MBean
    Server that may also support the methods of [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management").

    This method behaves the same as [`newMXBeanProxy(MBeanServerConnection, ObjectName, Class)`](#newMXBeanProxy(javax.management.MBeanServerConnection,javax.management.ObjectName,java.lang.Class)), but
    additionally, if `notificationEmitter` is `true`, then the MXBean is assumed to be a [`NotificationBroadcaster`](NotificationBroadcaster.md "interface in javax.management") or [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management") and the
    returned proxy will implement [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management") as
    well as `interfaceClass`. A call to [`NotificationBroadcaster.addNotificationListener(javax.management.NotificationListener, javax.management.NotificationFilter, java.lang.Object)`](NotificationBroadcaster.md#addNotificationListener(javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)) on the proxy
    will result in a call to [`MBeanServerConnection.addNotificationListener(ObjectName, NotificationListener, NotificationFilter, Object)`](MBeanServerConnection.md#addNotificationListener(javax.management.ObjectName,javax.management.NotificationListener,javax.management.NotificationFilter,java.lang.Object)), and
    likewise for the other methods of [`NotificationBroadcaster`](NotificationBroadcaster.md "interface in javax.management") and [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management").

    Type Parameters:
    :   `T` - allows the compiler to know that if the `interfaceClass` parameter is `MyMXBean.class`, for
        example, then the return type is `MyMXBean`.

    Parameters:
    :   `connection` - the MBean server to forward to.
    :   `objectName` - the name of the MBean within
        `connection` to forward to.
    :   `interfaceClass` - the MXBean interface,
        which will also be implemented by the returned proxy.
    :   `notificationEmitter` - make the returned proxy
        implement [`NotificationEmitter`](NotificationEmitter.md "interface in javax.management") by forwarding its methods
        via `connection`.

    Returns:
    :   the new proxy instance.

    Throws:
    :   `IllegalArgumentException` - if `interfaceClass` is not
        a [`compliant MXBean interface`](MXBean.md "annotation interface in javax.management")
  + ### isMXBeanInterface

    public static boolean isMXBeanInterface([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> interfaceClass)

    Test whether an interface is an MXBean interface.
    An interface is an MXBean interface if it is public,
    annotated [`@MXBean`](MXBean.md "annotation interface in javax.management") or `@MXBean(true)`
    or if it does not have an `@MXBean` annotation
    and its name ends with "`MXBean`".

    Parameters:
    :   `interfaceClass` - The candidate interface.

    Returns:
    :   true if `interfaceClass` is a
        [`compliant MXBean interface`](MXBean.md "annotation interface in javax.management")

    Throws:
    :   `NullPointerException` - if `interfaceClass` is null.