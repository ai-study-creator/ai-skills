Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanFeatureInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.MBeanFeatureInfo

All Implemented Interfaces:
:   `Serializable`, `DescriptorRead`

Direct Known Subclasses:
:   `MBeanAttributeInfo`, `MBeanConstructorInfo`, `MBeanNotificationInfo`, `MBeanOperationInfo`, `MBeanParameterInfo`

---

public class MBeanFeatureInfo
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"), [DescriptorRead](DescriptorRead.md "interface in javax.management")

Provides general information for an MBean descriptor object.
The feature described can be an attribute, an operation, a
parameter, or a notification. Instances of this class are
immutable. Subclasses may be mutable but this is not
recommended.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanFeatureInfo)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected String`

  `description`

  The human-readable description of the feature.

  `protected String`

  `name`

  The name of the feature.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanFeatureInfo(String name,
  String description)`

  Constructs an `MBeanFeatureInfo` object.

  `MBeanFeatureInfo(String name,
  String description,
  Descriptor descriptor)`

  Constructs an `MBeanFeatureInfo` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object o)`

  Compare this MBeanFeatureInfo to another.

  `String`

  `getDescription()`

  Returns the human-readable description of the feature.

  `Descriptor`

  `getDescriptor()`

  Returns the descriptor for the feature.

  `String`

  `getName()`

  Returns the name of the feature.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### name

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") name

    The name of the feature. It is recommended that subclasses call
    [`getName()`](#getName()) rather than reading this field, and that they
    not change it.
  + ### description

    protected [String](../../../java.base/java/lang/String.md "class in java.lang") description

    The human-readable description of the feature. It is
    recommended that subclasses call [`getDescription()`](#getDescription()) rather
    than reading this field, and that they not change it.
* ## Constructor Details

  + ### MBeanFeatureInfo

    public MBeanFeatureInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description)

    Constructs an `MBeanFeatureInfo` object. This
    constructor is equivalent to `MBeanFeatureInfo(name,
    description, (Descriptor) null`.

    Parameters:
    :   `name` - The name of the feature.
    :   `description` - A human readable description of the feature.
  + ### MBeanFeatureInfo

    public MBeanFeatureInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [Descriptor](Descriptor.md "interface in javax.management") descriptor)

    Constructs an `MBeanFeatureInfo` object.

    Parameters:
    :   `name` - The name of the feature.
    :   `description` - A human readable description of the feature.
    :   `descriptor` - The descriptor for the feature. This may be null
        which is equivalent to an empty descriptor.

    Since:
    :   1.6
* ## Method Details

  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of the feature.

    Returns:
    :   the name of the feature.
  + ### getDescription

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns the human-readable description of the feature.

    Returns:
    :   the human-readable description of the feature.
  + ### getDescriptor

    public [Descriptor](Descriptor.md "interface in javax.management") getDescriptor()

    Returns the descriptor for the feature. Changing the returned value
    will have no affect on the original descriptor.

    Specified by:
    :   `getDescriptor` in interface `DescriptorRead`

    Returns:
    :   a descriptor that is either immutable or a copy of the original.

    Since:
    :   1.6
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") o)

    Compare this MBeanFeatureInfo to another.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the object to compare to.

    Returns:
    :   true if and only if `o` is an MBeanFeatureInfo such
        that its [`getName()`](#getName()), [`getDescription()`](#getDescription()), and
        [`getDescriptor()`](#getDescriptor())
        values are equal (not necessarily identical) to those of this
        MBeanFeatureInfo.

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