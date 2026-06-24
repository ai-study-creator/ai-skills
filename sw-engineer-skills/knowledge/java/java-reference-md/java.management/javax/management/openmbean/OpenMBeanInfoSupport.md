Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class OpenMBeanInfoSupport

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanInfo](../MBeanInfo.md "class in javax.management")

javax.management.openmbean.OpenMBeanInfoSupport

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorRead`, `OpenMBeanInfo`

---

public class OpenMBeanInfoSupport
extends [MBeanInfo](../MBeanInfo.md "class in javax.management")
implements [OpenMBeanInfo](OpenMBeanInfo.md "interface in javax.management.openmbean")

The `OpenMBeanInfoSupport` class describes the management
information of an *open MBean*: it is a subclass of [`MBeanInfo`](../MBeanInfo.md "class in javax.management"), and it implements the [`OpenMBeanInfo`](OpenMBeanInfo.md "interface in javax.management.openmbean") interface. Note that an *open MBean* is
recognized as such if its `getMBeanInfo()` method returns an
instance of a class which implements the OpenMBeanInfo interface,
typically `OpenMBeanInfoSupport`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.OpenMBeanInfoSupport)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OpenMBeanInfoSupport(String className,
  String description,
  OpenMBeanAttributeInfo[] openAttributes,
  OpenMBeanConstructorInfo[] openConstructors,
  OpenMBeanOperationInfo[] openOperations,
  MBeanNotificationInfo[] notifications)`

  Constructs an `OpenMBeanInfoSupport` instance, which
  describes a class of open MBeans with the specified `className`, `description`, `openAttributes`, `openConstructors` , `openOperations` and `notifications`.

  `OpenMBeanInfoSupport(String className,
  String description,
  OpenMBeanAttributeInfo[] openAttributes,
  OpenMBeanConstructorInfo[] openConstructors,
  OpenMBeanOperationInfo[] openOperations,
  MBeanNotificationInfo[] notifications,
  Descriptor descriptor)`

  Constructs an `OpenMBeanInfoSupport` instance, which
  describes a class of open MBeans with the specified `className`, `description`, `openAttributes`, `openConstructors` , `openOperations`, `notifications`, and `descriptor`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified `obj` parameter with this
  `OpenMBeanInfoSupport` instance for equality.

  `int`

  `hashCode()`

  Returns the hash code value for this `OpenMBeanInfoSupport` instance.

  `String`

  `toString()`

  Returns a string representation of this `OpenMBeanInfoSupport` instance.

  ### Methods inherited from class javax.management.[MBeanInfo](../MBeanInfo.md "class in javax.management")

  `clone, getAttributes, getClassName, getConstructors, getDescription, getDescriptor, getNotifications, getOperations`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface javax.management.openmbean.[OpenMBeanInfo](OpenMBeanInfo.md "interface in javax.management.openmbean")

  `getAttributes, getClassName, getConstructors, getDescription, getNotifications, getOperations`

* ## Constructor Details

  + ### OpenMBeanInfoSupport

    public OpenMBeanInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") className,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenMBeanAttributeInfo](OpenMBeanAttributeInfo.md "interface in javax.management.openmbean")[] openAttributes,
    [OpenMBeanConstructorInfo](OpenMBeanConstructorInfo.md "interface in javax.management.openmbean")[] openConstructors,
    [OpenMBeanOperationInfo](OpenMBeanOperationInfo.md "interface in javax.management.openmbean")[] openOperations,
    [MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")[] notifications)

    Constructs an `OpenMBeanInfoSupport` instance, which
    describes a class of open MBeans with the specified `className`, `description`, `openAttributes`, `openConstructors` , `openOperations` and `notifications`.

    The `openAttributes`, `openConstructors`,
    `openOperations` and `notifications`
    array parameters are internally copied, so that subsequent changes
    to the arrays referenced by these parameters have no effect on this
    instance.

    Parameters:
    :   `className` - The fully qualified Java class name of the
        open MBean described by this `OpenMBeanInfoSupport`
        instance.
    :   `description` - A human readable description of the open
        MBean described by this `OpenMBeanInfoSupport`
        instance.
    :   `openAttributes` - The list of exposed attributes of the
        described open MBean; Must be an array of instances of a
        subclass of `MBeanAttributeInfo`, typically `OpenMBeanAttributeInfoSupport`.
    :   `openConstructors` - The list of exposed public constructors
        of the described open MBean; Must be an array of instances of a
        subclass of `MBeanConstructorInfo`, typically `OpenMBeanConstructorInfoSupport`.
    :   `openOperations` - The list of exposed operations of the
        described open MBean. Must be an array of instances of a
        subclass of `MBeanOperationInfo`, typically `OpenMBeanOperationInfoSupport`.
    :   `notifications` - The list of notifications emitted by the
        described open MBean.

    Throws:
    :   `ArrayStoreException` - If `openAttributes`, `openConstructors` or `openOperations` is not an array of
        instances of a subclass of `MBeanAttributeInfo`, `MBeanConstructorInfo` or `MBeanOperationInfo`
        respectively.
  + ### OpenMBeanInfoSupport

    public OpenMBeanInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") className,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenMBeanAttributeInfo](OpenMBeanAttributeInfo.md "interface in javax.management.openmbean")[] openAttributes,
    [OpenMBeanConstructorInfo](OpenMBeanConstructorInfo.md "interface in javax.management.openmbean")[] openConstructors,
    [OpenMBeanOperationInfo](OpenMBeanOperationInfo.md "interface in javax.management.openmbean")[] openOperations,
    [MBeanNotificationInfo](../MBeanNotificationInfo.md "class in javax.management")[] notifications,
    [Descriptor](../Descriptor.md "interface in javax.management") descriptor)

    Constructs an `OpenMBeanInfoSupport` instance, which
    describes a class of open MBeans with the specified `className`, `description`, `openAttributes`, `openConstructors` , `openOperations`, `notifications`, and `descriptor`.

    The `openAttributes`, `openConstructors`, `openOperations` and `notifications` array parameters are
    internally copied, so that subsequent changes to the arrays
    referenced by these parameters have no effect on this
    instance.

    Parameters:
    :   `className` - The fully qualified Java class name of the
        open MBean described by this `OpenMBeanInfoSupport`
        instance.
    :   `description` - A human readable description of the open
        MBean described by this `OpenMBeanInfoSupport`
        instance.
    :   `openAttributes` - The list of exposed attributes of the
        described open MBean; Must be an array of instances of a
        subclass of `MBeanAttributeInfo`, typically `OpenMBeanAttributeInfoSupport`.
    :   `openConstructors` - The list of exposed public constructors
        of the described open MBean; Must be an array of instances of a
        subclass of `MBeanConstructorInfo`, typically `OpenMBeanConstructorInfoSupport`.
    :   `openOperations` - The list of exposed operations of the
        described open MBean. Must be an array of instances of a
        subclass of `MBeanOperationInfo`, typically `OpenMBeanOperationInfoSupport`.
    :   `notifications` - The list of notifications emitted by the
        described open MBean.
    :   `descriptor` - The descriptor for the MBean. This may be null
        which is equivalent to an empty descriptor.

    Throws:
    :   `ArrayStoreException` - If `openAttributes`, `openConstructors` or `openOperations` is not an array of
        instances of a subclass of `MBeanAttributeInfo`, `MBeanConstructorInfo` or `MBeanOperationInfo`
        respectively.

    Since:
    :   1.6
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified `obj` parameter with this
    `OpenMBeanInfoSupport` instance for equality.

    Returns `true` if and only if all of the following
    statements are true:
    - `obj` is non null,
    - `obj` also implements the `OpenMBeanInfo`
      interface,
    - their class names are equal
    - their infos on attributes, constructors, operations and
      notifications are equalThis ensures that this `equals` method works properly for
    `obj` parameters which are different implementations of
    the `OpenMBeanInfo` interface.

    Specified by:
    :   `equals` in interface `OpenMBeanInfo`

    Overrides:
    :   `equals` in class `MBeanInfo`

    Parameters:
    :   `obj` - the object to be compared for equality with this
        `OpenMBeanInfoSupport` instance;

    Returns:
    :   `true` if the specified object is equal to this
        `OpenMBeanInfoSupport` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this `OpenMBeanInfoSupport` instance.

    The hash code of an `OpenMBeanInfoSupport` instance is
    the sum of the hash codes of all elements of information used
    in `equals` comparisons (ie: its class name, and its
    infos on attributes, constructors, operations and
    notifications, where the hashCode of each of these arrays is
    calculated by a call to `new
    java.util.HashSet(java.util.Arrays.asList(this.getSignature)).hashCode()`).

    This ensures that `t1.equals(t2)` implies that `t1.hashCode()==t2.hashCode()` for any two `OpenMBeanInfoSupport` instances `t1` and `t2`, as
    required by the general contract of the method [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    However, note that another instance of a class implementing
    the `OpenMBeanInfo` interface may be equal to this `OpenMBeanInfoSupport` instance as defined by [`equals(java.lang.Object)`](#equals(java.lang.Object)), but may have a different hash code
    if it is calculated differently.

    As `OpenMBeanInfoSupport` instances are immutable, the
    hash code for this instance is calculated once, on the first
    call to `hashCode`, and then the same value is returned
    for subsequent calls.

    Specified by:
    :   `hashCode` in interface `OpenMBeanInfo`

    Overrides:
    :   `hashCode` in class `MBeanInfo`

    Returns:
    :   the hash code value for this `OpenMBeanInfoSupport` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `OpenMBeanInfoSupport` instance.

    The string representation consists of the name of this class
    (ie `javax.management.openmbean.OpenMBeanInfoSupport`),
    the MBean class name, the string representation of infos on
    attributes, constructors, operations and notifications of the
    described MBean and the string representation of the descriptor.

    As `OpenMBeanInfoSupport` instances are immutable, the
    string representation for this instance is calculated once, on
    the first call to `toString`, and then the same value is
    returned for subsequent calls.

    Specified by:
    :   `toString` in interface `OpenMBeanInfo`

    Overrides:
    :   `toString` in class `MBeanInfo`

    Returns:
    :   a string representation of this `OpenMBeanInfoSupport` instance