Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Interface OpenMBeanInfo

All Known Implementing Classes:
:   `OpenMBeanInfoSupport`

---

public interface OpenMBeanInfo

Describes an Open MBean: an Open MBean is recognized as such if
its [`getMBeanInfo()`](../DynamicMBean.md#getMBeanInfo()) method returns an instance of a class which
implements the [`OpenMBeanInfo`](OpenMBeanInfo.md "interface in javax.management.openmbean") interface, typically [`OpenMBeanInfoSupport`](OpenMBeanInfoSupport.md "class in javax.management.openmbean").

This interface declares the same methods as the class [`MBeanInfo`](../MBeanInfo.md "class in javax.management"). A class implementing this interface
(typically [`OpenMBeanInfoSupport`](OpenMBeanInfoSupport.md "class in javax.management.openmbean")) should extend [`MBeanInfo`](../MBeanInfo.md "class in javax.management").

The [`getAttributes()`](#getAttributes()), [`getOperations()`](#getOperations()) and
[`getConstructors()`](#getConstructors()) methods of the implementing class should
return at runtime an array of instances of a subclass of [`MBeanAttributeInfo`](../MBeanAttributeInfo.md "class in javax.management"), [`MBeanOperationInfo`](../MBeanOperationInfo.md "class in javax.management") or [`MBeanConstructorInfo`](../MBeanConstructorInfo.md "class in javax.management") respectively which implement the [`OpenMBeanAttributeInfo`](OpenMBeanAttributeInfo.md "interface in javax.management.openmbean"), [`OpenMBeanOperationInfo`](OpenMBeanOperationInfo.md "interface in javax.management.openmbean") or [`OpenMBeanConstructorInfo`](OpenMBeanConstructorInfo.md "interface in javax.management.openmbean") interface respectively.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified obj parameter with this `OpenMBeanInfo` instance for equality.

  `MBeanAttributeInfo[]`

  `getAttributes()`

  Returns an array of `OpenMBeanAttributeInfo` instances
  describing each attribute in the open MBean described by this
  `OpenMBeanInfo` instance.

  `String`

  `getClassName()`

  Returns the fully qualified Java class name of the open MBean
  instances this `OpenMBeanInfo` describes.

  `MBeanConstructorInfo[]`

  `getConstructors()`

  Returns an array of `OpenMBeanConstructorInfo` instances
  describing each constructor in the open MBean described by this
  `OpenMBeanInfo` instance.

  `String`

  `getDescription()`

  Returns a human readable description of the type of open MBean
  instances this `OpenMBeanInfo` describes.

  `MBeanNotificationInfo[]`

  `getNotifications()`

  Returns an array of `MBeanNotificationInfo` instances
  describing each notification emitted by the open MBean
  described by this `OpenMBeanInfo` instance.

  `MBeanOperationInfo[]`

  `getOperations()`

  Returns an array of `OpenMBeanOperationInfo` instances
  describing each operation in the open MBean described by this
  `OpenMBeanInfo` instance.

  `int`

  `hashCode()`

  Returns the hash code value for this `OpenMBeanInfo` instance.

  `String`

  `toString()`

  Returns a string representation of this `OpenMBeanInfo` instance.

* ## Method Details

  + ### getClassName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getClassName()

    Returns the fully qualified Java class name of the open MBean
    instances this `OpenMBeanInfo` describes.

    Returns:
    :   the class name.
  + ### getDescription

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns a human readable description of the type of open MBean
    instances this `OpenMBeanInfo` describes.

    Returns:
    :   the description.
  + ### getAttributes

    [MBeanAttributeInfo](../MBeanAttributeInfo.md "class in javax.management")[] getAttributes()

    Returns an array of `OpenMBeanAttributeInfo` instances
    describing each attribute in the open MBean described by this
    `OpenMBeanInfo` instance. Each instance in the returned
    array should actually be a subclass of
    `MBeanAttributeInfo` which implements the
    `OpenMBeanAttributeInfo` interface (typically [`OpenMBeanAttributeInfoSupport`](OpenMBeanAttributeInfoSupport.md "class in javax.management.openmbean")).

    Returns:
    :   the attribute array.
  + ### getOperations

    [MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management")[] getOperations()

    Returns an array of `OpenMBeanOperationInfo` instances
    describing each operation in the open MBean described by this
    `OpenMBeanInfo` instance. Each instance in the returned
    array should actually be a subclass of
    `MBeanOperationInfo` which implements the
    `OpenMBeanOperationInfo` interface (typically [`OpenMBeanOperationInfoSupport`](OpenMBeanOperationInfoSupport.md "class in javax.management.openmbean")).

    Returns:
    :   the operation array.
  + ### getConstructors

    [MBeanConstructorInfo](../MBeanConstructorInfo.md "class in javax.management")[] getConstructors()

    Returns an array of `OpenMBeanConstructorInfo` instances
    describing each constructor in the open MBean described by this
    `OpenMBeanInfo` instance. Each instance in the returned
    array should actually be a subclass of
    `MBeanConstructorInfo` which implements the
    `OpenMBeanConstructorInfo` interface (typically [`OpenMBeanConstructorInfoSupport`](OpenMBeanConstructorInfoSupport.md "class in javax.management.openmbean")).

    Returns:
    :   the constructor array.
  + ### getNotifications

    [MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")[] getNotifications()

    Returns an array of `MBeanNotificationInfo` instances
    describing each notification emitted by the open MBean
    described by this `OpenMBeanInfo` instance.

    Returns:
    :   the notification array.
  + ### equals

    boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified obj parameter with this `OpenMBeanInfo` instance for equality.

    Returns `true` if and only if all of the following statements are true:
    - obj is non null,
    - obj also implements the `OpenMBeanInfo` interface,
    - their class names are equal
    - their infos on attributes, constructors, operations and notifications are equalThis ensures that this `equals` method works properly for obj parameters which are
    different implementations of the `OpenMBeanInfo` interface.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared for equality with this `OpenMBeanInfo` instance;

    Returns:
    :   `true` if the specified object is equal to this `OpenMBeanInfo` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns the hash code value for this `OpenMBeanInfo` instance.

    The hash code of an `OpenMBeanInfo` instance is the sum of the hash codes
    of all elements of information used in `equals` comparisons
    (ie: its class name, and its infos on attributes, constructors, operations and notifications,
    where the hashCode of each of these arrays is calculated by a call to
    `new java.util.HashSet(java.util.Arrays.asList(this.getSignature)).hashCode()`).

    This ensures that `t1.equals(t2)` implies that `t1.hashCode()==t2.hashCode()`
    for any two `OpenMBeanInfo` instances `t1` and `t2`,
    as required by the general contract of the method
    [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this `OpenMBeanInfo` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `OpenMBeanInfo` instance.

    The string representation consists of the name of this class
    (ie `javax.management.openmbean.OpenMBeanInfo`), the MBean class name,
    and the string representation of infos on attributes, constructors,
    operations and notifications of the described MBean.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `OpenMBeanInfo` instance