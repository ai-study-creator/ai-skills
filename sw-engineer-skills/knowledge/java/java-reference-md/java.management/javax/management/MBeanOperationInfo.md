Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanOperationInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

javax.management.MBeanOperationInfo

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorRead`

Direct Known Subclasses:
:   `ModelMBeanOperationInfo`, `OpenMBeanOperationInfoSupport`

---

public class MBeanOperationInfo
extends [MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")
implements [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang")

Describes a management operation exposed by an MBean. Instances of
this class are immutable. Subclasses may be mutable but this is
not recommended.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanOperationInfo)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ACTION`

  Indicates that the operation is write-like: it has an effect but does
  not return any information from the MBean.

  `static final int`

  `ACTION_INFO`

  Indicates that the operation is both read-like and write-like:
  it has an effect, and it also returns information from the MBean.

  `static final int`

  `INFO`

  Indicates that the operation is read-like:
  it returns information but does not change any state.

  `static final int`

  `UNKNOWN`

  Indicates that the impact of the operation is unknown or cannot be
  expressed using one of the other values.

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanOperationInfo(String description,
  Method method)`

  Constructs an `MBeanOperationInfo` object.

  `MBeanOperationInfo(String name,
  String description,
  MBeanParameterInfo[] signature,
  String type,
  int impact)`

  Constructs an `MBeanOperationInfo` object.

  `MBeanOperationInfo(String name,
  String description,
  MBeanParameterInfo[] signature,
  String type,
  int impact,
  Descriptor descriptor)`

  Constructs an `MBeanOperationInfo` object.
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

  Compare this MBeanOperationInfo to another.

  `int`

  `getImpact()`

  Returns the impact of the method, one of
  `INFO, ACTION, ACTION_INFO, UNKNOWN`.

  `String`

  `getReturnType()`

  Returns the type of the method's return value.

  `MBeanParameterInfo[]`

  `getSignature()`

  Returns the list of parameters for this operation.

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

* ## Field Details

  + ### INFO

    public static final int INFO

    Indicates that the operation is read-like:
    it returns information but does not change any state.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.MBeanOperationInfo.INFO)
  + ### ACTION

    public static final int ACTION

    Indicates that the operation is write-like: it has an effect but does
    not return any information from the MBean.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.MBeanOperationInfo.ACTION)
  + ### ACTION\_INFO

    public static final int ACTION\_INFO

    Indicates that the operation is both read-like and write-like:
    it has an effect, and it also returns information from the MBean.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.MBeanOperationInfo.ACTION_INFO)
  + ### UNKNOWN

    public static final int UNKNOWN

    Indicates that the impact of the operation is unknown or cannot be
    expressed using one of the other values.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.management.MBeanOperationInfo.UNKNOWN)
* ## Constructor Details

  + ### MBeanOperationInfo

    public MBeanOperationInfo([String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") method)

    Constructs an `MBeanOperationInfo` object. The
    [`Descriptor`](Descriptor.md "interface in javax.management") of the constructed object will include
    fields contributed by any annotations on the `Method`
    object that contain the [`DescriptorKey`](DescriptorKey.md "annotation interface in javax.management") meta-annotation.

    Parameters:
    :   `description` - A human readable description of the operation.
    :   `method` - The `java.lang.reflect.Method` object
        describing the MBean operation.
  + ### MBeanOperationInfo

    public MBeanOperationInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management")[] signature,
    [String](../../../java.base/java/lang/String.md "class in java.lang") type,
    int impact)

    Constructs an `MBeanOperationInfo` object.

    Parameters:
    :   `name` - The name of the method.
    :   `description` - A human readable description of the operation.
    :   `signature` - `MBeanParameterInfo` objects
        describing the parameters(arguments) of the method. This may be
        null with the same effect as a zero-length array.
    :   `type` - The type of the method's return value.
    :   `impact` - The impact of the method, one of
        [`INFO`](#INFO), [`ACTION`](#ACTION), [`ACTION_INFO`](#ACTION_INFO),
        [`UNKNOWN`](#UNKNOWN).
  + ### MBeanOperationInfo

    public MBeanOperationInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management")[] signature,
    [String](../../../java.base/java/lang/String.md "class in java.lang") type,
    int impact,
    [Descriptor](Descriptor.md "interface in javax.management") descriptor)

    Constructs an `MBeanOperationInfo` object.

    Parameters:
    :   `name` - The name of the method.
    :   `description` - A human readable description of the operation.
    :   `signature` - `MBeanParameterInfo` objects
        describing the parameters(arguments) of the method. This may be
        null with the same effect as a zero-length array.
    :   `type` - The type of the method's return value.
    :   `impact` - The impact of the method, one of
        [`INFO`](#INFO), [`ACTION`](#ACTION), [`ACTION_INFO`](#ACTION_INFO),
        [`UNKNOWN`](#UNKNOWN).
    :   `descriptor` - The descriptor for the operation. This may be null
        which is equivalent to an empty descriptor.

    Throws:
    :   `IllegalArgumentException` - if `impact` is not one of
        [ACTION](#ACTION), [ACTION\_INFO](#ACTION_INFO), [INFO](#INFO) or [UNKNOWN](#UNKNOWN).

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

    Since this class is immutable, cloning is chiefly of interest
    to subclasses.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getReturnType

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getReturnType()

    Returns the type of the method's return value.

    Returns:
    :   the return type.
  + ### getSignature

    public [MBeanParameterInfo](MBeanParameterInfo.md "class in javax.management")[] getSignature()

    Returns the list of parameters for this operation. Each
    parameter is described by an `MBeanParameterInfo`
    object.

    The returned array is a shallow copy of the internal array,
    which means that it is a copy of the internal array of
    references to the `MBeanParameterInfo` objects but
    that each referenced `MBeanParameterInfo` object is
    not copied.

    Returns:
    :   An array of `MBeanParameterInfo` objects.
  + ### getImpact

    public int getImpact()

    Returns the impact of the method, one of
    `INFO, ACTION, ACTION_INFO, UNKNOWN`.

    Returns:
    :   the impact code.
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

    Compare this MBeanOperationInfo to another.

    Overrides:
    :   `equals` in class `MBeanFeatureInfo`

    Parameters:
    :   `o` - the object to compare to.

    Returns:
    :   true if and only if `o` is an MBeanOperationInfo such
        that its [`MBeanFeatureInfo.getName()`](MBeanFeatureInfo.md#getName()), [`getReturnType()`](#getReturnType()), [`MBeanFeatureInfo.getDescription()`](MBeanFeatureInfo.md#getDescription()), [`getImpact()`](#getImpact()), [`MBeanFeatureInfo.getDescriptor()`](MBeanFeatureInfo.md#getDescriptor())
        and [`getSignature()`](#getSignature()) values are equal (not necessarily identical)
        to those of this MBeanConstructorInfo. Two signature arrays
        are equal if their elements are pairwise equal.

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