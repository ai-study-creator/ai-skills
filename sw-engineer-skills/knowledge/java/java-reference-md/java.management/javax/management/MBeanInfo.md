Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.MBeanInfo

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorRead`

Direct Known Subclasses:
:   `ModelMBeanInfoSupport`, `OpenMBeanInfoSupport`

---

public class MBeanInfo
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"), [DescriptorRead](DescriptorRead.md "interface in javax.management")

Describes the management interface exposed by an MBean; that is,
the set of attributes and operations which are available for
management operations. Instances of this class are immutable.
Subclasses may be mutable but this is not recommended.

Usually the `MBeanInfo` for any given MBean does
not change over the lifetime of that MBean. Dynamic MBeans can change their
`MBeanInfo` and in that case it is recommended that they emit a [`Notification`](Notification.md "class in javax.management") with a [type](Notification.md#getType()) of `"jmx.mbean.info.changed"` and a [userData](Notification.md#getUserData()) that is the new `MBeanInfo`. This is not required, but
provides a conventional way for clients of the MBean to discover the change.
See also the [immutableInfo](Descriptor.md#immutableInfo) and
[infoTimeout](Descriptor.md#infoTimeout) fields in the `MBeanInfo` [`Descriptor`](Descriptor.md "interface in javax.management").

The contents of the `MBeanInfo` for a Dynamic MBean
are determined by its [`getMBeanInfo()`](DynamicMBean.md#getMBeanInfo()) method. This includes Open MBeans and Model
MBeans, which are kinds of Dynamic MBeans.

The contents of the `MBeanInfo` for a Standard MBean
are determined by the MBean server as follows:

* [`getClassName()`](#getClassName()) returns the Java class name of the MBean
  object;* [`getConstructors()`](#getConstructors()) returns the list of all public
    constructors in that object;* [`getAttributes()`](#getAttributes()) returns the list of all attributes
      whose existence is deduced from the presence in the MBean interface
      of a `getName`, `isName`, or
      `setName` method that conforms to the conventions
      for Standard MBeans;* [`getOperations()`](#getOperations()) returns the list of all methods in
        the MBean interface that do not represent attributes;* [`getNotifications()`](#getNotifications()) returns an empty array if the MBean
          does not implement the [`NotificationBroadcaster`](NotificationBroadcaster.md "interface in javax.management") interface,
          otherwise the result of calling [`NotificationBroadcaster.getNotificationInfo()`](NotificationBroadcaster.md#getNotificationInfo()) on it;* [`getDescriptor()`](#getDescriptor()) returns a descriptor containing the contents
            of any descriptor annotations in the MBean interface (see
            [`@DescriptorKey`](DescriptorKey.md "annotation interface in javax.management")).

The description returned by [`getDescription()`](#getDescription()) and the
descriptions of the contained attributes and operations are not specified.

The remaining details of the `MBeanInfo` for a
Standard MBean are not specified. This includes the description of
any contained constructors, and notifications; the names
of parameters to constructors and operations; and the descriptions of
constructor parameters.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanInfo)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanInfo(String className,
  String description,
  MBeanAttributeInfo[] attributes,
  MBeanConstructorInfo[] constructors,
  MBeanOperationInfo[] operations,
  MBeanNotificationInfo[] notifications)`

  Constructs an `MBeanInfo`.

  `MBeanInfo(String className,
  String description,
  MBeanAttributeInfo[] attributes,
  MBeanConstructorInfo[] constructors,
  MBeanOperationInfo[] operations,
  MBeanNotificationInfo[] notifications,
  Descriptor descriptor)`

  Constructs an `MBeanInfo`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Returns a shallow clone of this instance.

  `boolean`

  `equals(Object o)`

  Compare this MBeanInfo to another.

  `MBeanAttributeInfo[]`

  `getAttributes()`

  Returns the list of attributes exposed for management.

  `String`

  `getClassName()`

  Returns the name of the Java class of the MBean described by
  this `MBeanInfo`.

  `MBeanConstructorInfo[]`

  `getConstructors()`

  Returns the list of the public constructors of the MBean.

  `String`

  `getDescription()`

  Returns a human readable description of the MBean.

  `Descriptor`

  `getDescriptor()`

  Get the descriptor of this MBeanInfo.

  `MBeanNotificationInfo[]`

  `getNotifications()`

  Returns the list of the notifications emitted by the MBean.

  `MBeanOperationInfo[]`

  `getOperations()`

  Returns the list of operations of the MBean.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MBeanInfo

    public MBeanInfo([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [MBeanAttributeInfo](MBeanAttributeInfo.md "class in javax.management")[] attributes,
    [MBeanConstructorInfo](MBeanConstructorInfo.md "class in javax.management")[] constructors,
    [MBeanOperationInfo](MBeanOperationInfo.md "class in javax.management")[] operations,
    [MBeanNotificationInfo](MBeanNotificationInfo.md "class in javax.management")[] notifications)
    throws [IllegalArgumentException](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Constructs an `MBeanInfo`.

    Parameters:
    :   `className` - The name of the Java class of the MBean described
        by this `MBeanInfo`. This value may be any
        syntactically legal Java class name. It does not have to be a
        Java class known to the MBean server or to the MBean's
        ClassLoader. If it is a Java class known to the MBean's
        ClassLoader, it is recommended but not required that the
        class's public methods include those that would appear in a
        Standard MBean implementing the attributes and operations in
        this MBeanInfo.
    :   `description` - A human readable description of the MBean (optional).
    :   `attributes` - The list of exposed attributes of the MBean.
        This may be null with the same effect as a zero-length array.
    :   `constructors` - The list of public constructors of the
        MBean. This may be null with the same effect as a zero-length
        array.
    :   `operations` - The list of operations of the MBean. This
        may be null with the same effect as a zero-length array.
    :   `notifications` - The list of notifications emitted. This
        may be null with the same effect as a zero-length array.

    Throws:
    :   `IllegalArgumentException`
  + ### MBeanInfo

    public MBeanInfo([String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [MBeanAttributeInfo](MBeanAttributeInfo.md "class in javax.management")[] attributes,
    [MBeanConstructorInfo](MBeanConstructorInfo.md "class in javax.management")[] constructors,
    [MBeanOperationInfo](MBeanOperationInfo.md "class in javax.management")[] operations,
    [MBeanNotificationInfo](MBeanNotificationInfo.md "class in javax.management")[] notifications,
    [Descriptor](Descriptor.md "interface in javax.management") descriptor)
    throws [IllegalArgumentException](../../../java.base/java/lang/IllegalArgumentException.md "class in java.lang")

    Constructs an `MBeanInfo`.

    Parameters:
    :   `className` - The name of the Java class of the MBean described
        by this `MBeanInfo`. This value may be any
        syntactically legal Java class name. It does not have to be a
        Java class known to the MBean server or to the MBean's
        ClassLoader. If it is a Java class known to the MBean's
        ClassLoader, it is recommended but not required that the
        class's public methods include those that would appear in a
        Standard MBean implementing the attributes and operations in
        this MBeanInfo.
    :   `description` - A human readable description of the MBean (optional).
    :   `attributes` - The list of exposed attributes of the MBean.
        This may be null with the same effect as a zero-length array.
    :   `constructors` - The list of public constructors of the
        MBean. This may be null with the same effect as a zero-length
        array.
    :   `operations` - The list of operations of the MBean. This
        may be null with the same effect as a zero-length array.
    :   `notifications` - The list of notifications emitted. This
        may be null with the same effect as a zero-length array.
    :   `descriptor` - The descriptor for the MBean. This may be null
        which is equivalent to an empty descriptor.

    Throws:
    :   `IllegalArgumentException`

    Since:
    :   1.6
* ## Method Details

  + ### clone

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Returns a shallow clone of this instance.
    The clone is obtained by simply calling `super.clone()`,
    thus calling the default native shallow cloning mechanism
    implemented by `Object.clone()`.
    No deeper cloning of any internal field is made.

    Since this class is immutable, the clone method is chiefly of
    interest to subclasses.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getClassName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getClassName()

    Returns the name of the Java class of the MBean described by
    this `MBeanInfo`.

    Returns:
    :   the class name.
  + ### getDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns a human readable description of the MBean.

    Returns:
    :   the description.
  + ### getAttributes

    public [MBeanAttributeInfo](MBeanAttributeInfo.md "class in javax.management")[] getAttributes()

    Returns the list of attributes exposed for management.
    Each attribute is described by an `MBeanAttributeInfo` object.
    The returned array is a shallow copy of the internal array,
    which means that it is a copy of the internal array of
    references to the `MBeanAttributeInfo` objects
    but that each referenced `MBeanAttributeInfo` object is not copied.

    Returns:
    :   An array of `MBeanAttributeInfo` objects.
  + ### getOperations

    public [MBeanOperationInfo](MBeanOperationInfo.md "class in javax.management")[] getOperations()

    Returns the list of operations of the MBean.
    Each operation is described by an `MBeanOperationInfo` object.
    The returned array is a shallow copy of the internal array,
    which means that it is a copy of the internal array of
    references to the `MBeanOperationInfo` objects
    but that each referenced `MBeanOperationInfo` object is not copied.

    Returns:
    :   An array of `MBeanOperationInfo` objects.
  + ### getConstructors

    public [MBeanConstructorInfo](MBeanConstructorInfo.md "class in javax.management")[] getConstructors()

    Returns the list of the public constructors of the MBean.
    Each constructor is described by an
    `MBeanConstructorInfo` object.

    The returned array is a shallow copy of the internal array,
    which means that it is a copy of the internal array of
    references to the `MBeanConstructorInfo` objects but
    that each referenced `MBeanConstructorInfo` object
    is not copied.

    The returned list is not necessarily exhaustive. That is,
    the MBean may have a public constructor that is not in the
    list. In this case, the MBean server can construct another
    instance of this MBean's class using that constructor, even
    though it is not listed here.

    Returns:
    :   An array of `MBeanConstructorInfo` objects.
  + ### getNotifications

    public [MBeanNotificationInfo](MBeanNotificationInfo.md "class in javax.management")[] getNotifications()

    Returns the list of the notifications emitted by the MBean.
    Each notification is described by an `MBeanNotificationInfo` object.
    The returned array is a shallow copy of the internal array,
    which means that it is a copy of the internal array of
    references to the `MBeanNotificationInfo` objects
    but that each referenced `MBeanNotificationInfo` object is not copied.

    Returns:
    :   An array of `MBeanNotificationInfo` objects.
  + ### getDescriptor

    public [Descriptor](Descriptor.md "interface in javax.management") getDescriptor()

    Get the descriptor of this MBeanInfo. Changing the returned value
    will have no affect on the original descriptor.

    Specified by:
    :   `getDescriptor` in interface `DescriptorRead`

    Returns:
    :   a descriptor that is either immutable or a copy of the original.

    Since:
    :   1.6
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") o)

    Compare this MBeanInfo to another. Two MBeanInfo objects
    are equal if and only if they return equal values for [`getClassName()`](#getClassName()), for [`getDescription()`](#getDescription()), and for
    [`getDescriptor()`](#getDescriptor()), and the
    arrays returned by the two objects for [`getAttributes()`](#getAttributes()), [`getOperations()`](#getOperations()), [`getConstructors()`](#getConstructors()), and [`getNotifications()`](#getNotifications()) are
    pairwise equal. Here "equal" means [`Object.equals(Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object)), not identity.

    If two MBeanInfo objects return the same values in one of
    their arrays but in a different order then they are not equal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the object to compare to.

    Returns:
    :   true if and only if `o` is an MBeanInfo that is equal
        to this one according to the rules above.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))