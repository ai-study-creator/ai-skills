Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanParameterInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

javax.management.MBeanParameterInfo

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorRead`

Direct Known Subclasses:
:   `OpenMBeanParameterInfoSupport`

---

public class MBeanParameterInfo
extends [MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")
implements [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang")

Describes an argument of an operation exposed by an MBean.
Instances of this class are immutable. Subclasses may be mutable
but this is not recommended.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanParameterInfo)

* ## Field Summary

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanParameterInfo(String name,
  String type,
  String description)`

  Constructs an `MBeanParameterInfo` object.

  `MBeanParameterInfo(String name,
  String type,
  String description,
  Descriptor descriptor)`

  Constructs an `MBeanParameterInfo` object.
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

  Compare this MBeanParameterInfo to another.

  `String`

  `getType()`

  Returns the type or class name of the data.

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

  + ### MBeanParameterInfo

    public MBeanParameterInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description)

    Constructs an `MBeanParameterInfo` object.

    Parameters:
    :   `name` - The name of the data
    :   `type` - The type or class name of the data
    :   `description` - A human readable description of the data. Optional.
  + ### MBeanParameterInfo

    public MBeanParameterInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [Descriptor](Descriptor.md "interface in javax.management") descriptor)

    Constructs an `MBeanParameterInfo` object.

    Parameters:
    :   `name` - The name of the data
    :   `type` - The type or class name of the data
    :   `description` - A human readable description of the data. Optional.
    :   `descriptor` - The descriptor for the operation. This may be null
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

    Since this class is immutable, cloning is chiefly of
    interest to subclasses.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getType

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getType()

    Returns the type or class name of the data.

    Returns:
    :   the type string.
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

    Compare this MBeanParameterInfo to another.

    Overrides:
    :   `equals` in class `MBeanFeatureInfo`

    Parameters:
    :   `o` - the object to compare to.

    Returns:
    :   true if and only if `o` is an MBeanParameterInfo such
        that its [`MBeanFeatureInfo.getName()`](MBeanFeatureInfo.md#getName()), [`getType()`](#getType()),
        [`MBeanFeatureInfo.getDescriptor()`](MBeanFeatureInfo.md#getDescriptor()), and [`MBeanFeatureInfo.getDescription()`](MBeanFeatureInfo.md#getDescription()) values are equal (not necessarily identical)
        to those of this MBeanParameterInfo.

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