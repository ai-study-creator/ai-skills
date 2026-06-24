Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanNotificationInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

javax.management.MBeanNotificationInfo

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorRead`

Direct Known Subclasses:
:   `ModelMBeanNotificationInfo`

---

public class MBeanNotificationInfo
extends [MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")
implements [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang")

The `MBeanNotificationInfo` class is used to describe the
characteristics of the different notification instances
emitted by an MBean, for a given Java class of notification.
If an MBean emits notifications that can be instances of different Java classes,
then the metadata for that MBean should provide an `MBeanNotificationInfo`
object for each of these notification Java classes.

Instances of this class are immutable. Subclasses may be
mutable but this is not recommended.

This class extends `javax.management.MBeanFeatureInfo`
and thus provides `name` and `description` fields.
The `name` field should be the fully qualified Java class name of
the notification objects described by this class.

The `getNotifTypes` method returns an array of
strings containing the notification types that the MBean may
emit. The notification type is a dot-notation string which
describes what the emitted notification is about, not the Java
class of the notification. A single generic notification class can
be used to send notifications of several types. All of these types
are returned in the string array result of the
`getNotifTypes` method.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanNotificationInfo)

* ## Field Summary

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanNotificationInfo(String[] notifTypes,
  String name,
  String description)`

  Constructs an `MBeanNotificationInfo` object.

  `MBeanNotificationInfo(String[] notifTypes,
  String name,
  String description,
  Descriptor descriptor)`

  Constructs an `MBeanNotificationInfo` object.
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

  Compare this MBeanNotificationInfo to another.

  `String[]`

  `getNotifTypes()`

  Returns the array of strings (in dot notation) containing the
  notification types that the MBean may emit.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class javax.management.[MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

  `getDescription, getDescriptor, getName`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MBeanNotificationInfo

    public MBeanNotificationInfo([String](../../../java.base/java/lang/String.md "class in java.lang")[] notifTypes,
    [String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description)

    Constructs an `MBeanNotificationInfo` object.

    Parameters:
    :   `notifTypes` - The array of strings (in dot notation)
        containing the notification types that the MBean may emit.
        This may be null with the same effect as a zero-length array.
    :   `name` - The fully qualified Java class name of the
        described notifications.
    :   `description` - A human readable description of the data.
  + ### MBeanNotificationInfo

    public MBeanNotificationInfo([String](../../../java.base/java/lang/String.md "class in java.lang")[] notifTypes,
    [String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [Descriptor](Descriptor.md "interface in javax.management") descriptor)

    Constructs an `MBeanNotificationInfo` object.

    Parameters:
    :   `notifTypes` - The array of strings (in dot notation)
        containing the notification types that the MBean may emit.
        This may be null with the same effect as a zero-length array.
    :   `name` - The fully qualified Java class name of the
        described notifications.
    :   `description` - A human readable description of the data.
    :   `descriptor` - The descriptor for the notifications. This may be null
        which is equivalent to an empty descriptor.

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

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getNotifTypes

    public [String](../../../java.base/java/lang/String.md "class in java.lang")[] getNotifTypes()

    Returns the array of strings (in dot notation) containing the
    notification types that the MBean may emit.

    Returns:
    :   the array of strings. Changing the returned array has no
        effect on this MBeanNotificationInfo.
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

    Compare this MBeanNotificationInfo to another.

    Overrides:
    :   `equals` in class `MBeanFeatureInfo`

    Parameters:
    :   `o` - the object to compare to.

    Returns:
    :   true if and only if `o` is an MBeanNotificationInfo
        such that its [`MBeanFeatureInfo.getName()`](MBeanFeatureInfo.md#getName()), [`MBeanFeatureInfo.getDescription()`](MBeanFeatureInfo.md#getDescription()),
        [`MBeanFeatureInfo.getDescriptor()`](MBeanFeatureInfo.md#getDescriptor()),
        and [`getNotifTypes()`](#getNotifTypes()) values are equal (not necessarily
        identical) to those of this MBeanNotificationInfo. Two
        notification type arrays are equal if their corresponding
        elements are equal. They are not equal if they have the same
        elements but in a different order.

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
    :   `hashCode` in class `MBeanFeatureInfo`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))