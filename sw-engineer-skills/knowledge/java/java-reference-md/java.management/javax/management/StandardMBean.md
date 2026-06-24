Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class StandardMBean

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.StandardMBean

All Implemented Interfaces:
:   `DynamicMBean`, `MBeanRegistration`

Direct Known Subclasses:
:   `StandardEmitterMBean`

---

public class StandardMBean
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [DynamicMBean](DynamicMBean.md "interface in javax.management"), [MBeanRegistration](MBeanRegistration.md "interface in javax.management")

An MBean whose management interface is determined by reflection
on a Java interface.

This class brings more flexibility to the notion of Management
Interface in the use of Standard MBeans. Straightforward use of
the patterns for Standard MBeans described in the JMX Specification
means that there is a fixed relationship between the implementation
class of an MBean and its management interface (i.e., if the
implementation class is Thing, the management interface must be
ThingMBean). This class makes it possible to keep the convenience
of specifying the management interface with a Java interface,
without requiring that there be any naming relationship between the
implementation and interface classes.

By making a DynamicMBean out of an MBean, this class makes
it possible to select any interface implemented by the MBean as its
management interface, provided that it complies with JMX patterns
(i.e., attributes defined by getter/setter etc...).

This class also provides hooks that make it possible to supply
custom descriptions and names for the [`MBeanInfo`](MBeanInfo.md "class in javax.management") returned by
the DynamicMBean interface.

Using this class, an MBean can be created with any
implementation class name *Impl* and with a management
interface defined (as for current Standard MBeans) by any interface
*Intf*, in one of two general ways:

* Using the public constructor
  [`StandardMBean(impl,interface)`](#%3Cinit%3E(T,java.lang.Class,boolean)):

  ```
       MBeanServer mbs;
       ...
       Impl impl = new Impl(...);
       StandardMBean mbean = new StandardMBean(impl, Intf.class, false);
       mbs.registerMBean(mbean, objectName);
  ```
* Subclassing StandardMBean:

  ```
       public class Impl extends StandardMBean implements Intf {
          public Impl() {
            super(Intf.class, false);
         }
         // implement methods of Intf
       }

       [...]

       MBeanServer mbs;
       ....
       Impl impl = new Impl();
       mbs.registerMBean(impl, objectName);
  ```

In either case, the class *Impl* must implement the
interface *Intf*.

Standard MBeans based on the naming relationship between
implementation and interface classes are of course still
available.

This class may also be used to construct MXBeans. The usage
is exactly the same as for Standard MBeans except that in the
examples above, the `false` parameter to the constructor or
`super(...)` invocation is instead `true`.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `StandardMBean(Class<?> mbeanInterface)`

  Make a DynamicMBean out of this, using the specified
  mbeanInterface class.

  `protected`

  `StandardMBean(Class<?> mbeanInterface,
  boolean isMXBean)`

  Make a DynamicMBean out of this, using the specified
  mbeanInterface class, and choosing whether the resulting
  MBean is an MXBean.

  `StandardMBean(T implementation,
  Class<T> mbeanInterface)`

  Make a DynamicMBean out of the object
  implementation, using the specified
  mbeanInterface class.

  `StandardMBean(T implementation,
  Class<T> mbeanInterface,
  boolean isMXBean)`

  Make a DynamicMBean out of the object
  implementation, using the specified
  mbeanInterface class, and choosing whether the
  resultant MBean is an MXBean.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `cacheMBeanInfo(MBeanInfo info)`

  Customization hook:
  cache the MBeanInfo built for this object.

  `Object`

  `getAttribute(String attribute)`

  Obtain the value of a specific attribute of the Dynamic MBean.

  `AttributeList`

  `getAttributes(String[] attributes)`

  Get the values of several attributes of the Dynamic MBean.

  `protected MBeanInfo`

  `getCachedMBeanInfo()`

  Customization hook:
  Return the MBeanInfo cached for this object.

  `protected String`

  `getClassName(MBeanInfo info)`

  Customization hook:
  Get the className that will be used in the MBeanInfo returned by
  this MBean.

  `protected MBeanConstructorInfo[]`

  `getConstructors(MBeanConstructorInfo[] ctors,
  Object impl)`

  Customization hook:
  Get the MBeanConstructorInfo[] that will be used in the MBeanInfo
  returned by this MBean.

  `protected String`

  `getDescription(MBeanAttributeInfo info)`

  Customization hook:
  Get the description that will be used in the MBeanAttributeInfo
  returned by this MBean.

  `protected String`

  `getDescription(MBeanConstructorInfo info)`

  Customization hook:
  Get the description that will be used in the MBeanConstructorInfo
  returned by this MBean.

  `protected String`

  `getDescription(MBeanConstructorInfo ctor,
  MBeanParameterInfo param,
  int sequence)`

  Customization hook:
  Get the description that will be used for the sequence
  MBeanParameterInfo of the MBeanConstructorInfo returned by this MBean.

  `protected String`

  `getDescription(MBeanFeatureInfo info)`

  Customization hook:
  Get the description that will be used in the MBeanFeatureInfo
  returned by this MBean.

  `protected String`

  `getDescription(MBeanInfo info)`

  Customization hook:
  Get the description that will be used in the MBeanInfo returned by
  this MBean.

  `protected String`

  `getDescription(MBeanOperationInfo info)`

  Customization hook:
  Get the description that will be used in the MBeanOperationInfo
  returned by this MBean.

  `protected String`

  `getDescription(MBeanOperationInfo op,
  MBeanParameterInfo param,
  int sequence)`

  Customization hook:
  Get the description that will be used for the sequence
  MBeanParameterInfo of the MBeanOperationInfo returned by this MBean.

  `protected int`

  `getImpact(MBeanOperationInfo info)`

  Customization hook:
  Get the impact flag of the operation that will be used in
  the MBeanOperationInfo returned by this MBean.

  `Object`

  `getImplementation()`

  Get the implementation of this Standard MBean (or MXBean).

  `Class<?>`

  `getImplementationClass()`

  Get the class of the implementation of this Standard MBean (or MXBean).

  `MBeanInfo`

  `getMBeanInfo()`

  Get the [`MBeanInfo`](MBeanInfo.md "class in javax.management") for this MBean.

  `final Class<?>`

  `getMBeanInterface()`

  Get the Management Interface of this Standard MBean (or MXBean).

  `protected String`

  `getParameterName(MBeanConstructorInfo ctor,
  MBeanParameterInfo param,
  int sequence)`

  Customization hook:
  Get the name that will be used for the sequence
  MBeanParameterInfo of the MBeanConstructorInfo returned by this MBean.

  `protected String`

  `getParameterName(MBeanOperationInfo op,
  MBeanParameterInfo param,
  int sequence)`

  Customization hook:
  Get the name that will be used for the sequence
  MBeanParameterInfo of the MBeanOperationInfo returned by this MBean.

  `Object`

  `invoke(String actionName,
  Object[] params,
  String[] signature)`

  Allows an action to be invoked on the Dynamic MBean.

  `void`

  `postDeregister()`

  Allows the MBean to perform any operations needed after having been
  unregistered in the MBean server.

  `void`

  `postRegister(Boolean registrationDone)`

  Allows the MBean to perform any operations needed after having been
  registered in the MBean server or after the registration has failed.

  `void`

  `preDeregister()`

  Allows the MBean to perform any operations it needs before
  being unregistered by the MBean server.

  `ObjectName`

  `preRegister(MBeanServer server,
  ObjectName name)`

  Allows the MBean to perform any operations it needs before
  being registered in the MBean server.

  `void`

  `setAttribute(Attribute attribute)`

  Set the value of a specific attribute of the Dynamic MBean.

  `AttributeList`

  `setAttributes(AttributeList attributes)`

  Sets the values of several attributes of the Dynamic MBean.

  `void`

  `setImplementation(Object implementation)`

  Replace the implementation object wrapped in this object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### StandardMBean

    public StandardMBean(T implementation,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> mbeanInterface)
    throws [NotCompliantMBeanException](NotCompliantMBeanException.md "class in javax.management")

    Make a DynamicMBean out of the object
    implementation, using the specified
    mbeanInterface class.

    Type Parameters:
    :   `T` - Allows the compiler to check
        that `implementation` does indeed implement the class
        described by `mbeanInterface`. The compiler can only
        check this if `mbeanInterface` is a class literal such
        as `MyMBean.class`.

    Parameters:
    :   `implementation` - The implementation of this MBean.
    :   `mbeanInterface` - The Management Interface exported by this
        MBean's implementation. If `null`, then this
        object will use standard JMX design pattern to determine
        the management interface associated with the given
        implementation.

    Throws:
    :   `IllegalArgumentException` - if the given
        implementation is null.
    :   `NotCompliantMBeanException` - if the mbeanInterface
        does not follow JMX design patterns for Management Interfaces, or
        if the given implementation does not implement the
        specified interface.
  + ### StandardMBean

    protected StandardMBean([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> mbeanInterface)
    throws [NotCompliantMBeanException](NotCompliantMBeanException.md "class in javax.management")

    Make a DynamicMBean out of this, using the specified
    mbeanInterface class.

    Calls [`this(this,mbeanInterface)`](#%3Cinit%3E(T,java.lang.Class)).
    This constructor is reserved to subclasses.

    Parameters:
    :   `mbeanInterface` - The Management Interface exported by this
        MBean.

    Throws:
    :   `NotCompliantMBeanException` - if the mbeanInterface
        does not follow JMX design patterns for Management Interfaces, or
        if this does not implement the specified interface.
  + ### StandardMBean

    public StandardMBean(T implementation,
    [Class](../../../java.base/java/lang/Class.md "class in java.lang")<T> mbeanInterface,
    boolean isMXBean)

    Make a DynamicMBean out of the object
    implementation, using the specified
    mbeanInterface class, and choosing whether the
    resultant MBean is an MXBean. This constructor can be used
    to make either Standard MBeans or MXBeans. Unlike the
    constructor [`StandardMBean(Object, Class)`](#%3Cinit%3E(T,java.lang.Class)), it
    does not throw NotCompliantMBeanException.

    Type Parameters:
    :   `T` - Allows the compiler to check
        that `implementation` does indeed implement the class
        described by `mbeanInterface`. The compiler can only
        check this if `mbeanInterface` is a class literal such
        as `MyMBean.class`.

    Parameters:
    :   `implementation` - The implementation of this MBean.
    :   `mbeanInterface` - The Management Interface exported by this
        MBean's implementation. If `null`, then this
        object will use standard JMX design pattern to determine
        the management interface associated with the given
        implementation.
    :   `isMXBean` - If true, the `mbeanInterface` parameter
        names an MXBean interface and the resultant MBean is an MXBean.

    Throws:
    :   `IllegalArgumentException` - if the given
        implementation is null, or if the mbeanInterface
        does not follow JMX design patterns for Management Interfaces, or
        if the given implementation does not implement the
        specified interface.

    Since:
    :   1.6
  + ### StandardMBean

    protected StandardMBean([Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> mbeanInterface,
    boolean isMXBean)

    Make a DynamicMBean out of this, using the specified
    mbeanInterface class, and choosing whether the resulting
    MBean is an MXBean. This constructor can be used
    to make either Standard MBeans or MXBeans. Unlike the
    constructor [`StandardMBean(Object, Class)`](#%3Cinit%3E(T,java.lang.Class)), it
    does not throw NotCompliantMBeanException.

    Calls [`this(this, mbeanInterface, isMXBean)`](#%3Cinit%3E(T,java.lang.Class,boolean)).
    This constructor is reserved to subclasses.

    Parameters:
    :   `mbeanInterface` - The Management Interface exported by this
        MBean.
    :   `isMXBean` - If true, the `mbeanInterface` parameter
        names an MXBean interface and the resultant MBean is an MXBean.

    Throws:
    :   `IllegalArgumentException` - if the mbeanInterface
        does not follow JMX design patterns for Management Interfaces, or
        if this does not implement the specified interface.

    Since:
    :   1.6
* ## Method Details

  + ### setImplementation

    public void setImplementation([Object](../../../java.base/java/lang/Object.md "class in java.lang") implementation)
    throws [NotCompliantMBeanException](NotCompliantMBeanException.md "class in javax.management")

    Replace the implementation object wrapped in this object.

    Parameters:
    :   `implementation` - The new implementation of this Standard MBean
        (or MXBean). The `implementation` object must implement
        the Standard MBean (or MXBean) interface that was supplied when this
        `StandardMBean` was constructed.

    Throws:
    :   `IllegalArgumentException` - if the given
        implementation is null.
    :   `NotCompliantMBeanException` - if the given
        implementation does not implement the
        Standard MBean (or MXBean) interface that was
        supplied at construction.

    See Also:
    :   - [`getImplementation()`](#getImplementation())
  + ### getImplementation

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getImplementation()

    Get the implementation of this Standard MBean (or MXBean).

    Returns:
    :   The implementation of this Standard MBean (or MXBean).

    See Also:
    :   - [`setImplementation(java.lang.Object)`](#setImplementation(java.lang.Object))
  + ### getMBeanInterface

    public final [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> getMBeanInterface()

    Get the Management Interface of this Standard MBean (or MXBean).

    Returns:
    :   The management interface of this Standard MBean (or MXBean).
  + ### getImplementationClass

    public [Class](../../../java.base/java/lang/Class.md "class in java.lang")<?> getImplementationClass()

    Get the class of the implementation of this Standard MBean (or MXBean).

    Returns:
    :   The class of the implementation of this Standard MBean (or MXBean).
  + ### getAttribute

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([String](../../../java.base/java/lang/String.md "class in java.lang") attribute)
    throws [AttributeNotFoundException](AttributeNotFoundException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Description copied from interface: `DynamicMBean`

    Obtain the value of a specific attribute of the Dynamic MBean.

    Specified by:
    :   `getAttribute` in interface `DynamicMBean`

    Parameters:
    :   `attribute` - The name of the attribute to be retrieved

    Returns:
    :   The value of the attribute retrieved.

    Throws:
    :   `AttributeNotFoundException` - if specified attribute does not exist or cannot be retrieved
    :   `MBeanException` - Wraps a `java.lang.Exception` thrown by the MBean's getter.
    :   `ReflectionException` - Wraps a `java.lang.Exception` thrown while trying to invoke the getter.

    See Also:
    :   - [`DynamicMBean.setAttribute(javax.management.Attribute)`](DynamicMBean.md#setAttribute(javax.management.Attribute))
  + ### setAttribute

    public void setAttribute([Attribute](Attribute.md "class in javax.management") attribute)
    throws [AttributeNotFoundException](AttributeNotFoundException.md "class in javax.management"),
    [InvalidAttributeValueException](InvalidAttributeValueException.md "class in javax.management"),
    [MBeanException](MBeanException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Description copied from interface: `DynamicMBean`

    Set the value of a specific attribute of the Dynamic MBean.

    Specified by:
    :   `setAttribute` in interface `DynamicMBean`

    Parameters:
    :   `attribute` - The identification of the attribute to
        be set and the value it is to be set to.

    Throws:
    :   `AttributeNotFoundException` - if specified attribute does not exist or cannot be retrieved
    :   `InvalidAttributeValueException` - if value specified is not valid for the attribute
    :   `MBeanException` - Wraps a `java.lang.Exception` thrown by the MBean's setter.
    :   `ReflectionException` - Wraps a `java.lang.Exception` thrown while trying to invoke the MBean's setter.

    See Also:
    :   - [`DynamicMBean.getAttribute(java.lang.String)`](DynamicMBean.md#getAttribute(java.lang.String))
  + ### getAttributes

    public [AttributeList](AttributeList.md "class in javax.management") getAttributes([String](../../../java.base/java/lang/String.md "class in java.lang")[] attributes)

    Description copied from interface: `DynamicMBean`

    Get the values of several attributes of the Dynamic MBean.

    Specified by:
    :   `getAttributes` in interface `DynamicMBean`

    Parameters:
    :   `attributes` - A list of the attributes to be retrieved.

    Returns:
    :   The list of attributes retrieved.

    See Also:
    :   - [`DynamicMBean.setAttributes(javax.management.AttributeList)`](DynamicMBean.md#setAttributes(javax.management.AttributeList))
  + ### setAttributes

    public [AttributeList](AttributeList.md "class in javax.management") setAttributes([AttributeList](AttributeList.md "class in javax.management") attributes)

    Description copied from interface: `DynamicMBean`

    Sets the values of several attributes of the Dynamic MBean.

    Specified by:
    :   `setAttributes` in interface `DynamicMBean`

    Parameters:
    :   `attributes` - A list of attributes: The identification of the
        attributes to be set and the values they are to be set to.

    Returns:
    :   The list of attributes that were set, with their new values.

    See Also:
    :   - [`DynamicMBean.getAttributes(java.lang.String[])`](DynamicMBean.md#getAttributes(java.lang.String%5B%5D))
  + ### invoke

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") invoke([String](../../../java.base/java/lang/String.md "class in java.lang") actionName,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang")[] params,
    [String](../../../java.base/java/lang/String.md "class in java.lang")[] signature)
    throws [MBeanException](MBeanException.md "class in javax.management"),
    [ReflectionException](ReflectionException.md "class in javax.management")

    Description copied from interface: `DynamicMBean`

    Allows an action to be invoked on the Dynamic MBean.

    Specified by:
    :   `invoke` in interface `DynamicMBean`

    Parameters:
    :   `actionName` - The name of the action to be invoked.
    :   `params` - An array containing the parameters to be set when the action is
        invoked.
    :   `signature` - An array containing the signature of the action. The class objects will
        be loaded through the same class loader as the one used for loading the
        MBean on which the action is invoked.

    Returns:
    :   The object returned by the action, which represents the result of
        invoking the action on the MBean specified.

    Throws:
    :   `MBeanException` - Wraps a `java.lang.Exception` thrown by the MBean's invoked method.
    :   `ReflectionException` - Wraps a `java.lang.Exception` thrown while trying to invoke the method
  + ### getMBeanInfo

    public [MBeanInfo](MBeanInfo.md "class in javax.management") getMBeanInfo()

    Get the [`MBeanInfo`](MBeanInfo.md "class in javax.management") for this MBean.

    This method implements
    [`DynamicMBean.getMBeanInfo()`](DynamicMBean.md#getMBeanInfo()).

    This method first calls [`getCachedMBeanInfo()`](#getCachedMBeanInfo()) in order to
    retrieve the cached MBeanInfo for this MBean, if any. If the
    MBeanInfo returned by [`getCachedMBeanInfo()`](#getCachedMBeanInfo()) is not null,
    then it is returned.  
    Otherwise, this method builds a default MBeanInfo for this MBean,
    using the Management Interface specified for this MBean.

    While building the MBeanInfo, this method calls the customization
    hooks that make it possible for subclasses to supply their custom
    descriptions, parameter names, etc...  
    Finally, it calls [`cacheMBeanInfo()`](#cacheMBeanInfo(javax.management.MBeanInfo)) in order to cache the new MBeanInfo.

    Specified by:
    :   `getMBeanInfo` in interface `DynamicMBean`

    Returns:
    :   The cached MBeanInfo for that MBean, if not null, or a
        newly built MBeanInfo if none was cached.
  + ### getClassName

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getClassName([MBeanInfo](MBeanInfo.md "class in javax.management") info)

    Customization hook:
    Get the className that will be used in the MBeanInfo returned by
    this MBean.
      
    Subclasses may redefine this method in order to supply their
    custom class name. The default implementation returns
    [`info.getClassName()`](MBeanInfo.md#getClassName()).

    Parameters:
    :   `info` - The default MBeanInfo derived by reflection.

    Returns:
    :   the class name for the new MBeanInfo.
  + ### getDescription

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription([MBeanInfo](MBeanInfo.md "class in javax.management") info)

    Customization hook:
    Get the description that will be used in the MBeanInfo returned by
    this MBean.
      
    Subclasses may redefine this method in order to supply their
    custom MBean description. The default implementation returns
    [`info.getDescription()`](MBeanInfo.md#getDescription()).

    Parameters:
    :   `info` - The default MBeanInfo derived by reflection.

    Returns:
    :   the description for the new MBeanInfo.
  + ### getDescription

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription([MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management") info)

    Customization hook:
    Get the description that will be used in the MBeanFeatureInfo
    returned by this MBean.

    Subclasses may redefine this method in order to supply
    their custom description. The default implementation returns
    [`info.getDescription()`](MBeanFeatureInfo.md#getDescription()).

    This method is called by
    [`getDescription(MBeanAttributeInfo)`](#getDescription(javax.management.MBeanAttributeInfo)),
    [`getDescription(MBeanOperationInfo)`](#getDescription(javax.management.MBeanOperationInfo)),
    [`getDescription(MBeanConstructorInfo)`](#getDescription(javax.management.MBeanConstructorInfo)).

    Parameters:
    :   `info` - The default MBeanFeatureInfo derived by reflection.

    Returns:
    :   the description for the given MBeanFeatureInfo.
  + ### getDescription

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription([MBeanAttributeInfo](MBeanAttributeInfo.md "class in javax.management") info)

    Customization hook:
    Get the description that will be used in the MBeanAttributeInfo
    returned by this MBean.

    Subclasses may redefine this method in order to supply their
    custom description. The default implementation returns [`getDescription((MBeanFeatureInfo) info)`](#getDescription(javax.management.MBeanFeatureInfo)).

    Parameters:
    :   `info` - The default MBeanAttributeInfo derived by reflection.

    Returns:
    :   the description for the given MBeanAttributeInfo.
  + ### getDescription

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription([MBeanConstructorInfo](MBeanConstructorInfo.md "class in javax.management") info)

    Customization hook:
    Get the description that will be used in the MBeanConstructorInfo
    returned by this MBean.
      
    Subclasses may redefine this method in order to supply their
    custom description.
    The default implementation returns [`getDescription((MBeanFeatureInfo) info)`](#getDescription(javax.management.MBeanFeatureInfo)).

    Parameters:
    :   `info` - The default MBeanConstructorInfo derived by reflection.

    Returns:
    :   the description for the given MBeanConstructorInfo.
  + ### getDescription

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription([MBeanConstructorInfo](MBeanConstructorInfo.md "class in javax.management") ctor,
    [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management") param,
    int sequence)

    Customization hook:
    Get the description that will be used for the sequence
    MBeanParameterInfo of the MBeanConstructorInfo returned by this MBean.
      
    Subclasses may redefine this method in order to supply their
    custom description. The default implementation returns
    [`param.getDescription()`](MBeanFeatureInfo.md#getDescription()).

    Parameters:
    :   `ctor` - The default MBeanConstructorInfo derived by reflection.
    :   `param` - The default MBeanParameterInfo derived by reflection.
    :   `sequence` - The sequence number of the parameter considered
        ("0" for the first parameter, "1" for the second parameter,
        etc...).

    Returns:
    :   the description for the given MBeanParameterInfo.
  + ### getParameterName

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getParameterName([MBeanConstructorInfo](MBeanConstructorInfo.md "class in javax.management") ctor,
    [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management") param,
    int sequence)

    Customization hook:
    Get the name that will be used for the sequence
    MBeanParameterInfo of the MBeanConstructorInfo returned by this MBean.
      
    Subclasses may redefine this method in order to supply their
    custom parameter name. The default implementation returns
    [`param.getName()`](MBeanFeatureInfo.md#getName()).

    Parameters:
    :   `ctor` - The default MBeanConstructorInfo derived by reflection.
    :   `param` - The default MBeanParameterInfo derived by reflection.
    :   `sequence` - The sequence number of the parameter considered
        ("0" for the first parameter, "1" for the second parameter,
        etc...).

    Returns:
    :   the name for the given MBeanParameterInfo.
  + ### getDescription

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription([MBeanOperationInfo](MBeanOperationInfo.md "class in javax.management") info)

    Customization hook:
    Get the description that will be used in the MBeanOperationInfo
    returned by this MBean.
      
    Subclasses may redefine this method in order to supply their
    custom description. The default implementation returns
    [`getDescription((MBeanFeatureInfo) info)`](#getDescription(javax.management.MBeanFeatureInfo)).

    Parameters:
    :   `info` - The default MBeanOperationInfo derived by reflection.

    Returns:
    :   the description for the given MBeanOperationInfo.
  + ### getImpact

    protected int getImpact([MBeanOperationInfo](MBeanOperationInfo.md "class in javax.management") info)

    Customization hook:
    Get the impact flag of the operation that will be used in
    the MBeanOperationInfo returned by this MBean.
      
    Subclasses may redefine this method in order to supply their
    custom impact flag. The default implementation returns
    [`info.getImpact()`](MBeanOperationInfo.md#getImpact()).

    Parameters:
    :   `info` - The default MBeanOperationInfo derived by reflection.

    Returns:
    :   the impact flag for the given MBeanOperationInfo.
  + ### getParameterName

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getParameterName([MBeanOperationInfo](MBeanOperationInfo.md "class in javax.management") op,
    [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management") param,
    int sequence)

    Customization hook:
    Get the name that will be used for the sequence
    MBeanParameterInfo of the MBeanOperationInfo returned by this MBean.
      
    Subclasses may redefine this method in order to supply their
    custom parameter name. The default implementation returns
    [`param.getName()`](MBeanFeatureInfo.md#getName()).

    Parameters:
    :   `op` - The default MBeanOperationInfo derived by reflection.
    :   `param` - The default MBeanParameterInfo derived by reflection.
    :   `sequence` - The sequence number of the parameter considered
        ("0" for the first parameter, "1" for the second parameter,
        etc...).

    Returns:
    :   the name to use for the given MBeanParameterInfo.
  + ### getDescription

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription([MBeanOperationInfo](MBeanOperationInfo.md "class in javax.management") op,
    [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management") param,
    int sequence)

    Customization hook:
    Get the description that will be used for the sequence
    MBeanParameterInfo of the MBeanOperationInfo returned by this MBean.
      
    Subclasses may redefine this method in order to supply their
    custom description. The default implementation returns
    [`param.getDescription()`](MBeanFeatureInfo.md#getDescription()).

    Parameters:
    :   `op` - The default MBeanOperationInfo derived by reflection.
    :   `param` - The default MBeanParameterInfo derived by reflection.
    :   `sequence` - The sequence number of the parameter considered
        ("0" for the first parameter, "1" for the second parameter,
        etc...).

    Returns:
    :   the description for the given MBeanParameterInfo.
  + ### getConstructors

    protected [MBeanConstructorInfo](MBeanConstructorInfo.md "class in javax.management")[] getConstructors([MBeanConstructorInfo](MBeanConstructorInfo.md "class in javax.management")[] ctors,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") impl)

    Customization hook:
    Get the MBeanConstructorInfo[] that will be used in the MBeanInfo
    returned by this MBean.
      
    By default, this method returns `null` if the wrapped
    implementation is not this. Indeed, if the wrapped
    implementation is not this object itself, it will not be possible
    to recreate a wrapped implementation by calling the implementation
    constructors through `MBeanServer.createMBean(...)`.  
    Otherwise, if the wrapped implementation is this,
    ctors is returned.
      
    Subclasses may redefine this method in order to modify this
    behavior, if needed.

    Parameters:
    :   `ctors` - The default MBeanConstructorInfo[] derived by reflection.
    :   `impl` - The wrapped implementation. If `null` is
        passed, the wrapped implementation is ignored and
        ctors is returned.

    Returns:
    :   the MBeanConstructorInfo[] for the new MBeanInfo.
  + ### getCachedMBeanInfo

    protected [MBeanInfo](MBeanInfo.md "class in javax.management") getCachedMBeanInfo()

    Customization hook:
    Return the MBeanInfo cached for this object.

    Subclasses may redefine this method in order to implement their
    own caching policy. The default implementation stores one
    [`MBeanInfo`](MBeanInfo.md "class in javax.management") object per instance.

    Returns:
    :   The cached MBeanInfo, or null if no MBeanInfo is cached.

    See Also:
    :   - [`cacheMBeanInfo(MBeanInfo)`](#cacheMBeanInfo(javax.management.MBeanInfo))
  + ### cacheMBeanInfo

    protected void cacheMBeanInfo([MBeanInfo](MBeanInfo.md "class in javax.management") info)

    Customization hook:
    cache the MBeanInfo built for this object.

    Subclasses may redefine this method in order to implement
    their own caching policy. The default implementation stores
    `info` in this instance. A subclass can define
    other policies, such as not saving `info` (so it is
    reconstructed every time [`getMBeanInfo()`](#getMBeanInfo()) is called) or
    sharing a unique [`MBeanInfo`](MBeanInfo.md "class in javax.management") object when several
    `StandardMBean` instances have equal [`MBeanInfo`](MBeanInfo.md "class in javax.management") values.

    Parameters:
    :   `info` - the new `MBeanInfo` to cache. Any
        previously cached value is discarded. This parameter may be
        null, in which case there is no new cached value.
  + ### preRegister

    public [ObjectName](ObjectName.md "class in javax.management") preRegister([MBeanServer](MBeanServer.md "interface in javax.management") server,
    [ObjectName](ObjectName.md "class in javax.management") name)
    throws [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

    Allows the MBean to perform any operations it needs before
    being registered in the MBean server. If the name of the MBean
    is not specified, the MBean can provide a name for its
    registration. If any exception is raised, the MBean will not be
    registered in the MBean server.

    The default implementation of this method returns the `name`
    parameter. It does nothing else for
    Standard MBeans. For MXBeans, it records the `MBeanServer`
    and `ObjectName` parameters so they can be used to translate
    inter-MXBean references.

    It is good practice for a subclass that overrides this method
    to call the overridden method via `super.preRegister(...)`.
    This is necessary if this object is an MXBean that is referenced
    by attributes or operations in other MXBeans.

    Specified by:
    :   `preRegister` in interface `MBeanRegistration`

    Parameters:
    :   `server` - The MBean server in which the MBean will be registered.
    :   `name` - The object name of the MBean. This name is null if
        the name parameter to one of the `createMBean` or
        `registerMBean` methods in the [`MBeanServer`](MBeanServer.md "interface in javax.management")
        interface is null. In that case, this method must return a
        non-null ObjectName for the new MBean.

    Returns:
    :   The name under which the MBean is to be registered.
        This value must not be null. If the `name`
        parameter is not null, it will usually but not necessarily be
        the returned value.

    Throws:
    :   `IllegalArgumentException` - if this is an MXBean and
        `name` is null.
    :   `InstanceAlreadyExistsException` - if this is an MXBean and
        it has already been registered under another name (in this
        MBean Server or another).
    :   `Exception` - no other checked exceptions are thrown by
        this method but `Exception` is declared so that subclasses
        can override the method and throw their own exceptions.

    Since:
    :   1.6
  + ### postRegister

    public void postRegister([Boolean](../../../java.base/java/lang/Boolean.md "class in java.lang") registrationDone)

    Allows the MBean to perform any operations needed after having been
    registered in the MBean server or after the registration has failed.

    The default implementation of this method does nothing for
    Standard MBeans. For MXBeans, it undoes any work done by
    [`preRegister`](#preRegister(javax.management.MBeanServer,javax.management.ObjectName)) if registration fails.

    It is good practice for a subclass that overrides this method
    to call the overridden method via `super.postRegister(...)`.
    This is necessary if this object is an MXBean that is referenced
    by attributes or operations in other MXBeans.

    Specified by:
    :   `postRegister` in interface `MBeanRegistration`

    Parameters:
    :   `registrationDone` - Indicates whether or not the MBean has
        been successfully registered in the MBean server. The value
        false means that the registration phase has failed.

    Since:
    :   1.6
  + ### preDeregister

    public void preDeregister()
    throws [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

    Allows the MBean to perform any operations it needs before
    being unregistered by the MBean server.

    The default implementation of this method does nothing.

    It is good practice for a subclass that overrides this method
    to call the overridden method via `super.preDeregister(...)`.

    Specified by:
    :   `preDeregister` in interface `MBeanRegistration`

    Throws:
    :   `Exception` - no checked exceptions are throw by this method
        but `Exception` is declared so that subclasses can override
        this method and throw their own exceptions.

    Since:
    :   1.6
  + ### postDeregister

    public void postDeregister()

    Allows the MBean to perform any operations needed after having been
    unregistered in the MBean server.

    The default implementation of this method does nothing for
    Standard MBeans. For MXBeans, it removes any information that
    was recorded by the [`preRegister`](#preRegister(javax.management.MBeanServer,javax.management.ObjectName)) method.

    It is good practice for a subclass that overrides this method
    to call the overridden method via `super.postRegister(...)`.
    This is necessary if this object is an MXBean that is referenced
    by attributes or operations in other MXBeans.

    Specified by:
    :   `postDeregister` in interface `MBeanRegistration`

    Since:
    :   1.6