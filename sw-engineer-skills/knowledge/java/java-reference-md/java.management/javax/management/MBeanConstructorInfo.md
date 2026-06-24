Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanConstructorInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

javax.management.MBeanConstructorInfo

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorRead`

Direct Known Subclasses:
:   `ModelMBeanConstructorInfo`, `OpenMBeanConstructorInfoSupport`

---

public class MBeanConstructorInfo
extends [MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")
implements [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang")

Describes a constructor exposed by an MBean. Instances of this
class are immutable. Subclasses may be mutable but this is not
recommended.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanConstructorInfo)

* ## Field Summary

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanConstructorInfo(String description,
  Constructor<?> constructor)`

  Constructs an `MBeanConstructorInfo` object.

  `MBeanConstructorInfo(String name,
  String description,
  MBeanParameterInfo[] signature)`

  Constructs an `MBeanConstructorInfo` object.

  `MBeanConstructorInfo(String name,
  String description,
  MBeanParameterInfo[] signature,
  Descriptor descriptor)`

  Constructs an `MBeanConstructorInfo` object.
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

  Compare this MBeanConstructorInfo to another.

  `MBeanParameterInfo[]`

  `getSignature()`

  Returns the list of parameters for this constructor.

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

  + ### MBeanConstructorInfo

    public MBeanConstructorInfo([String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [Constructor](../../../java.base/java/lang/reflect/Constructor.md "class in java.lang.reflect")<?> constructor)

    Constructs an `MBeanConstructorInfo` object. The
    [`Descriptor`](Descriptor.md "interface in javax.management") of the constructed object will include
    fields contributed by any annotations on the `Constructor` object that contain the [`DescriptorKey`](DescriptorKey.md "annotation interface in javax.management")
    meta-annotation.

    Parameters:
    :   `description` - A human readable description of the operation.
    :   `constructor` - The `java.lang.reflect.Constructor`
        object describing the MBean constructor.
  + ### MBeanConstructorInfo

    public MBeanConstructorInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management")[] signature)

    Constructs an `MBeanConstructorInfo` object.

    Parameters:
    :   `name` - The name of the constructor.
    :   `description` - A human readable description of the constructor.
    :   `signature` - `MBeanParameterInfo` objects
        describing the parameters(arguments) of the constructor. This
        may be null with the same effect as a zero-length array.
  + ### MBeanConstructorInfo

    public MBeanConstructorInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management")[] signature,
    [Descriptor](Descriptor.md "interface in javax.management") descriptor)

    Constructs an `MBeanConstructorInfo` object.

    Parameters:
    :   `name` - The name of the constructor.
    :   `description` - A human readable description of the constructor.
    :   `signature` - `MBeanParameterInfo` objects
        describing the parameters(arguments) of the constructor. This
        may be null with the same effect as a zero-length array.
    :   `descriptor` - The descriptor for the constructor. This may be null
        which is equivalent to an empty descriptor.

    Since:
    :   1.6
* ## Method Details

  + ### clone

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Returns a shallow clone of this instance. The clone is
    obtained by simply calling `super.clone()`, thus calling
    the default native shallow cloning mechanism implemented by
    `Object.clone()`. No deeper cloning of any internal
    field is made.

    Since this class is immutable, cloning is chiefly of
    interest to subclasses.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getSignature

    public [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management")[] getSignature()

    Returns the list of parameters for this constructor. Each
    parameter is described by an `MBeanParameterInfo`
    object.

    The returned array is a shallow copy of the internal array,
    which means that it is a copy of the internal array of
    references to the `MBeanParameterInfo` objects but
    that each referenced `MBeanParameterInfo` object is
    not copied.

    Returns:
    :   An array of `MBeanParameterInfo` objects.
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

    Compare this MBeanConstructorInfo to another.

    Overrides:
    :   `equals` in class `MBeanFeatureInfo`

    Parameters:
    :   `o` - the object to compare to.

    Returns:
    :   true if and only if `o` is an MBeanConstructorInfo such
        that its [`MBeanFeatureInfo.getName()`](MBeanFeatureInfo.md#getName()), [`MBeanFeatureInfo.getDescription()`](MBeanFeatureInfo.md#getDescription()),
        [`getSignature()`](#getSignature()), and [`MBeanFeatureInfo.getDescriptor()`](MBeanFeatureInfo.md#getDescriptor())
        values are equal (not necessarily
        identical) to those of this MBeanConstructorInfo. Two
        signature arrays are equal if their elements are pairwise
        equal.

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