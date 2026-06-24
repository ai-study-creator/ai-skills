Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class OpenMBeanAttributeInfoSupport

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

[javax.management.MBeanAttributeInfo](../MBeanAttributeInfo.md "class in javax.management")

javax.management.openmbean.OpenMBeanAttributeInfoSupport

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorRead`, `OpenMBeanAttributeInfo`, `OpenMBeanParameterInfo`

---

public class OpenMBeanAttributeInfoSupport
extends [MBeanAttributeInfo](../MBeanAttributeInfo.md "class in javax.management")
implements [OpenMBeanAttributeInfo](OpenMBeanAttributeInfo.md "interface in javax.management.openmbean")

Describes an attribute of an open MBean.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.OpenMBeanAttributeInfoSupport)

* ## Field Summary

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OpenMBeanAttributeInfoSupport(String name,
  String description,
  OpenType<?> openType,
  boolean isReadable,
  boolean isWritable,
  boolean isIs)`

  Constructs an `OpenMBeanAttributeInfoSupport` instance,
  which describes the attribute of an open MBean with the
  specified `name`, `openType` and `description`, and the specified read/write access properties.

  `OpenMBeanAttributeInfoSupport(String name,
  String description,
  OpenType<?> openType,
  boolean isReadable,
  boolean isWritable,
  boolean isIs,
  Descriptor descriptor)`

  Constructs an `OpenMBeanAttributeInfoSupport` instance,
  which describes the attribute of an open MBean with the
  specified `name`, `openType`, `description`, read/write access properties, and `Descriptor`.

  `OpenMBeanAttributeInfoSupport(String name,
  String description,
  OpenType<T> openType,
  boolean isReadable,
  boolean isWritable,
  boolean isIs,
  T defaultValue)`

  Constructs an `OpenMBeanAttributeInfoSupport` instance,
  which describes the attribute of an open MBean with the
  specified `name`, `openType`, `description`
  and `defaultValue`, and the specified read/write access
  properties.

  `OpenMBeanAttributeInfoSupport(String name,
  String description,
  OpenType<T> openType,
  boolean isReadable,
  boolean isWritable,
  boolean isIs,
  T defaultValue,
  Comparable<T> minValue,
  Comparable<T> maxValue)`

  Constructs an `OpenMBeanAttributeInfoSupport` instance,
  which describes the attribute of an open MBean, with the
  specified `name`, `openType`, `description`,
  `defaultValue`, `minValue` and `maxValue`.

  `OpenMBeanAttributeInfoSupport(String name,
  String description,
  OpenType<T> openType,
  boolean isReadable,
  boolean isWritable,
  boolean isIs,
  T defaultValue,
  T[] legalValues)`

  Constructs an `OpenMBeanAttributeInfoSupport` instance,
  which describes the attribute of an open MBean with the
  specified `name`, `openType`, `description`,
  `defaultValue` and `legalValues`, and the specified
  read/write access properties.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified `obj` parameter with this `OpenMBeanAttributeInfoSupport` instance for equality.

  `Object`

  `getDefaultValue()`

  Returns the default value for the attribute described by this
  `OpenMBeanAttributeInfoSupport` instance, if specified,
  or `null` otherwise.

  `Set<?>`

  `getLegalValues()`

  Returns an unmodifiable Set of legal values for the attribute
  described by this `OpenMBeanAttributeInfoSupport`
  instance, if specified, or `null` otherwise.

  `Comparable<?>`

  `getMaxValue()`

  Returns the maximal value for the attribute described by this
  `OpenMBeanAttributeInfoSupport` instance, if specified,
  or `null` otherwise.

  `Comparable<?>`

  `getMinValue()`

  Returns the minimal value for the attribute described by this
  `OpenMBeanAttributeInfoSupport` instance, if specified,
  or `null` otherwise.

  `OpenType<?>`

  `getOpenType()`

  Returns the open type for the values of the attribute described
  by this `OpenMBeanAttributeInfoSupport` instance.

  `boolean`

  `hasDefaultValue()`

  Returns `true` if this `OpenMBeanAttributeInfoSupport` instance specifies a non-null
  default value for the described attribute, `false`
  otherwise.

  `int`

  `hashCode()`

  Returns the hash code value for this `OpenMBeanAttributeInfoSupport` instance.

  `boolean`

  `hasLegalValues()`

  Returns `true` if this `OpenMBeanAttributeInfoSupport` instance specifies a non-null
  set of legal values for the described attribute, `false`
  otherwise.

  `boolean`

  `hasMaxValue()`

  Returns `true` if this `OpenMBeanAttributeInfoSupport` instance specifies a non-null
  maximal value for the described attribute, `false`
  otherwise.

  `boolean`

  `hasMinValue()`

  Returns `true` if this `OpenMBeanAttributeInfoSupport` instance specifies a non-null
  minimal value for the described attribute, `false`
  otherwise.

  `boolean`

  `isValue(Object obj)`

  Tests whether `obj` is a valid value for the attribute
  described by this `OpenMBeanAttributeInfoSupport`
  instance.

  `String`

  `toString()`

  Returns a string representation of this
  `OpenMBeanAttributeInfoSupport` instance.

  ### Methods inherited from class javax.management.[MBeanAttributeInfo](../MBeanAttributeInfo.md "class in javax.management")

  `clone, getType, isIs, isReadable, isWritable`

  ### Methods inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `getDescription, getDescriptor, getName`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface javax.management.openmbean.[OpenMBeanAttributeInfo](OpenMBeanAttributeInfo.md "interface in javax.management.openmbean")

  `isIs, isReadable, isWritable`

  ### Methods inherited from interface javax.management.openmbean.[OpenMBeanParameterInfo](OpenMBeanParameterInfo.md "interface in javax.management.openmbean")

  `getDescription, getName`

* ## Constructor Details

  + ### OpenMBeanAttributeInfoSupport

    public OpenMBeanAttributeInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenType](OpenType.md "class in javax.management.openmbean")<?> openType,
    boolean isReadable,
    boolean isWritable,
    boolean isIs)

    Constructs an `OpenMBeanAttributeInfoSupport` instance,
    which describes the attribute of an open MBean with the
    specified `name`, `openType` and `description`, and the specified read/write access properties.

    Parameters:
    :   `name` - cannot be a null or empty string.
    :   `description` - cannot be a null or empty string.
    :   `openType` - cannot be null.
    :   `isReadable` - `true` if the attribute has a getter
        exposed for management.
    :   `isWritable` - `true` if the attribute has a setter
        exposed for management.
    :   `isIs` - `true` if the attribute's getter is of the
        form `isXXX`.

    Throws:
    :   `IllegalArgumentException` - if `name` or `description` are null or empty string, or `openType` is
        null.
  + ### OpenMBeanAttributeInfoSupport

    public OpenMBeanAttributeInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenType](OpenType.md "class in javax.management.openmbean")<?> openType,
    boolean isReadable,
    boolean isWritable,
    boolean isIs,
    [Descriptor](../Descriptor.md "interface in javax.management") descriptor)

    Constructs an `OpenMBeanAttributeInfoSupport` instance,
    which describes the attribute of an open MBean with the
    specified `name`, `openType`, `description`, read/write access properties, and `Descriptor`.

    The `descriptor` can contain entries that will define
    the values returned by certain methods of this class, as
    explained in the [package description](package-summary.md#constraints).

    Parameters:
    :   `name` - cannot be a null or empty string.
    :   `description` - cannot be a null or empty string.
    :   `openType` - cannot be null.
    :   `isReadable` - `true` if the attribute has a getter
        exposed for management.
    :   `isWritable` - `true` if the attribute has a setter
        exposed for management.
    :   `isIs` - `true` if the attribute's getter is of the
        form `isXXX`.
    :   `descriptor` - The descriptor for the attribute. This may be null
        which is equivalent to an empty descriptor.

    Throws:
    :   `IllegalArgumentException` - if `name` or `description` are null or empty string, or `openType` is
        null, or the descriptor entries are invalid as described in the
        [package description](package-summary.md#constraints).

    Since:
    :   1.6
  + ### OpenMBeanAttributeInfoSupport

    public OpenMBeanAttributeInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenType](OpenType.md "class in javax.management.openmbean")<T> openType,
    boolean isReadable,
    boolean isWritable,
    boolean isIs,
    T defaultValue)
    throws [OpenDataException](OpenDataException.md "class in javax.management.openmbean")

    Constructs an `OpenMBeanAttributeInfoSupport` instance,
    which describes the attribute of an open MBean with the
    specified `name`, `openType`, `description`
    and `defaultValue`, and the specified read/write access
    properties.

    Type Parameters:
    :   `T` - allows the compiler to check that the `defaultValue`,
        if non-null, has the correct Java type for the given `openType`.

    Parameters:
    :   `name` - cannot be a null or empty string.
    :   `description` - cannot be a null or empty string.
    :   `openType` - cannot be null.
    :   `isReadable` - `true` if the attribute has a getter
        exposed for management.
    :   `isWritable` - `true` if the attribute has a setter
        exposed for management.
    :   `isIs` - `true` if the attribute's getter is of the
        form `isXXX`.
    :   `defaultValue` - must be a valid value for the `openType` specified for this attribute; default value not
        supported for `ArrayType` and `TabularType`; can
        be null, in which case it means that no default value is set.

    Throws:
    :   `IllegalArgumentException` - if `name` or `description` are null or empty string, or `openType` is
        null.
    :   `OpenDataException` - if `defaultValue` is not a
        valid value for the specified `openType`, or `defaultValue` is non null and `openType` is an `ArrayType` or a `TabularType`.
  + ### OpenMBeanAttributeInfoSupport

    public OpenMBeanAttributeInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenType](OpenType.md "class in javax.management.openmbean")<T> openType,
    boolean isReadable,
    boolean isWritable,
    boolean isIs,
    T defaultValue,
    T[] legalValues)
    throws [OpenDataException](OpenDataException.md "class in javax.management.openmbean")

    Constructs an `OpenMBeanAttributeInfoSupport` instance,
    which describes the attribute of an open MBean with the
    specified `name`, `openType`, `description`,
    `defaultValue` and `legalValues`, and the specified
    read/write access properties.

    The contents of `legalValues` are copied, so subsequent
    modifications of the array referenced by `legalValues`
    have no impact on this `OpenMBeanAttributeInfoSupport`
    instance.

    Type Parameters:
    :   `T` - allows the compiler to check that the `defaultValue` and `legalValues`, if non-null, have the
        correct Java type for the given `openType`.

    Parameters:
    :   `name` - cannot be a null or empty string.
    :   `description` - cannot be a null or empty string.
    :   `openType` - cannot be null.
    :   `isReadable` - `true` if the attribute has a getter
        exposed for management.
    :   `isWritable` - `true` if the attribute has a setter
        exposed for management.
    :   `isIs` - `true` if the attribute's getter is of the
        form `isXXX`.
    :   `defaultValue` - must be a valid value
        for the `openType` specified for this attribute; default value not
        supported for `ArrayType` and `TabularType`; can
        be null, in which case it means that no default value is set.
    :   `legalValues` - each contained value must be valid for the
        `openType` specified for this attribute; legal values
        not supported for `ArrayType` and `TabularType`;
        can be null or empty.

    Throws:
    :   `IllegalArgumentException` - if `name` or `description` are null or empty string, or `openType` is
        null.
    :   `OpenDataException` - if `defaultValue` is not a
        valid value for the specified `openType`, or one value in
        `legalValues` is not valid for the specified `openType`, or `defaultValue` is non null and `openType` is an `ArrayType` or a `TabularType`, or
        `legalValues` is non null and non empty and `openType` is an `ArrayType` or a `TabularType`, or
        `legalValues` is non null and non empty and `defaultValue` is not contained in `legalValues`.
  + ### OpenMBeanAttributeInfoSupport

    public OpenMBeanAttributeInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenType](OpenType.md "class in javax.management.openmbean")<T> openType,
    boolean isReadable,
    boolean isWritable,
    boolean isIs,
    T defaultValue,
    [Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<T> minValue,
    [Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<T> maxValue)
    throws [OpenDataException](OpenDataException.md "class in javax.management.openmbean")

    Constructs an `OpenMBeanAttributeInfoSupport` instance,
    which describes the attribute of an open MBean, with the
    specified `name`, `openType`, `description`,
    `defaultValue`, `minValue` and `maxValue`.
    It is possible to specify minimal and maximal values only for
    an open type whose values are `Comparable`.

    Type Parameters:
    :   `T` - allows the compiler to check that the `defaultValue`, `minValue`, and `maxValue`, if
        non-null, have the correct Java type for the given `openType`.

    Parameters:
    :   `name` - cannot be a null or empty string.
    :   `description` - cannot be a null or empty string.
    :   `openType` - cannot be null.
    :   `isReadable` - `true` if the attribute has a getter
        exposed for management.
    :   `isWritable` - `true` if the attribute has a setter
        exposed for management.
    :   `isIs` - `true` if the attribute's getter is of the
        form `isXXX`.
    :   `defaultValue` - must be a valid value for the `openType` specified for this attribute; default value not
        supported for `ArrayType` and `TabularType`; can be
        null, in which case it means that no default value is set.
    :   `minValue` - must be valid for the `openType`
        specified for this attribute; can be null, in which case it
        means that no minimal value is set.
    :   `maxValue` - must be valid for the `openType`
        specified for this attribute; can be null, in which case it
        means that no maximal value is set.

    Throws:
    :   `IllegalArgumentException` - if `name` or `description` are null or empty string, or `openType` is
        null.
    :   `OpenDataException` - if `defaultValue`, `minValue` or `maxValue` is not a valid value for the
        specified `openType`, or `defaultValue` is non null
        and `openType` is an `ArrayType` or a `TabularType`, or both `minValue` and `maxValue` are
        non-null and `minValue.compareTo(maxValue) > 0` is `true`, or both `defaultValue` and `minValue` are
        non-null and `minValue.compareTo(defaultValue) > 0` is
        `true`, or both `defaultValue` and `maxValue`
        are non-null and `defaultValue.compareTo(maxValue) > 0`
        is `true`.
* ## Method Details

  + ### getOpenType

    public [OpenType](OpenType.md "class in javax.management.openmbean")<?> getOpenType()

    Returns the open type for the values of the attribute described
    by this `OpenMBeanAttributeInfoSupport` instance.

    Specified by:
    :   `getOpenType` in interface `OpenMBeanParameterInfo`

    Returns:
    :   the open type.
  + ### getDefaultValue

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getDefaultValue()

    Returns the default value for the attribute described by this
    `OpenMBeanAttributeInfoSupport` instance, if specified,
    or `null` otherwise.

    Specified by:
    :   `getDefaultValue` in interface `OpenMBeanParameterInfo`

    Returns:
    :   the default value.
  + ### getLegalValues

    public [Set](../../../../java.base/java/util/Set.md "interface in java.util")<?> getLegalValues()

    Returns an unmodifiable Set of legal values for the attribute
    described by this `OpenMBeanAttributeInfoSupport`
    instance, if specified, or `null` otherwise.

    Specified by:
    :   `getLegalValues` in interface `OpenMBeanParameterInfo`

    Returns:
    :   the set of legal values.
  + ### getMinValue

    public [Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<?> getMinValue()

    Returns the minimal value for the attribute described by this
    `OpenMBeanAttributeInfoSupport` instance, if specified,
    or `null` otherwise.

    Specified by:
    :   `getMinValue` in interface `OpenMBeanParameterInfo`

    Returns:
    :   the minimum value.
  + ### getMaxValue

    public [Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<?> getMaxValue()

    Returns the maximal value for the attribute described by this
    `OpenMBeanAttributeInfoSupport` instance, if specified,
    or `null` otherwise.

    Specified by:
    :   `getMaxValue` in interface `OpenMBeanParameterInfo`

    Returns:
    :   the maximum value.
  + ### hasDefaultValue

    public boolean hasDefaultValue()

    Returns `true` if this `OpenMBeanAttributeInfoSupport` instance specifies a non-null
    default value for the described attribute, `false`
    otherwise.

    Specified by:
    :   `hasDefaultValue` in interface `OpenMBeanParameterInfo`

    Returns:
    :   true if there is a default value.
  + ### hasLegalValues

    public boolean hasLegalValues()

    Returns `true` if this `OpenMBeanAttributeInfoSupport` instance specifies a non-null
    set of legal values for the described attribute, `false`
    otherwise.

    Specified by:
    :   `hasLegalValues` in interface `OpenMBeanParameterInfo`

    Returns:
    :   true if there is a set of legal values.
  + ### hasMinValue

    public boolean hasMinValue()

    Returns `true` if this `OpenMBeanAttributeInfoSupport` instance specifies a non-null
    minimal value for the described attribute, `false`
    otherwise.

    Specified by:
    :   `hasMinValue` in interface `OpenMBeanParameterInfo`

    Returns:
    :   true if there is a minimum value.
  + ### hasMaxValue

    public boolean hasMaxValue()

    Returns `true` if this `OpenMBeanAttributeInfoSupport` instance specifies a non-null
    maximal value for the described attribute, `false`
    otherwise.

    Specified by:
    :   `hasMaxValue` in interface `OpenMBeanParameterInfo`

    Returns:
    :   true if there is a maximum value.
  + ### isValue

    public boolean isValue([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Tests whether `obj` is a valid value for the attribute
    described by this `OpenMBeanAttributeInfoSupport`
    instance.

    Specified by:
    :   `isValue` in interface `OpenMBeanParameterInfo`

    Parameters:
    :   `obj` - the object to be tested.

    Returns:
    :   `true` if `obj` is a valid value for
        the parameter described by this `OpenMBeanAttributeInfoSupport` instance, `false`
        otherwise.
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified `obj` parameter with this `OpenMBeanAttributeInfoSupport` instance for equality.

    Returns `true` if and only if all of the following statements are true:
    - `obj` is non null,
    - `obj` also implements the `OpenMBeanAttributeInfo` interface,
    - their names are equal
    - their open types are equal
    - their access properties (isReadable, isWritable and isIs) are equal
    - their default, min, max and legal values are equal.This ensures that this `equals` method works properly for
    `obj` parameters which are different implementations of
    the `OpenMBeanAttributeInfo` interface.

    If `obj` also implements [`DescriptorRead`](../DescriptorRead.md "interface in javax.management"), then its
    [`getDescriptor()`](../DescriptorRead.md#getDescriptor()) method must
    also return the same value as for this object.

    Specified by:
    :   `equals` in interface `OpenMBeanAttributeInfo`

    Specified by:
    :   `equals` in interface `OpenMBeanParameterInfo`

    Overrides:
    :   `equals` in class `MBeanAttributeInfo`

    Parameters:
    :   `obj` - the object to be compared for equality with this
        `OpenMBeanAttributeInfoSupport` instance.

    Returns:
    :   `true` if the specified object is equal to this
        `OpenMBeanAttributeInfoSupport` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this `OpenMBeanAttributeInfoSupport` instance.

    The hash code of an `OpenMBeanAttributeInfoSupport`
    instance is the sum of the hash codes of all elements of
    information used in `equals` comparisons (ie: its name,
    its *open type*, its default, min, max and legal
    values, and its Descriptor).

    This ensures that `t1.equals(t2)` implies that `t1.hashCode()==t2.hashCode()` for any two `OpenMBeanAttributeInfoSupport` instances `t1` and `t2`, as required by the general contract of the method [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    However, note that another instance of a class implementing
    the `OpenMBeanAttributeInfo` interface may be equal to
    this `OpenMBeanAttributeInfoSupport` instance as defined
    by [`equals(java.lang.Object)`](#equals(java.lang.Object)), but may have a different
    hash code if it is calculated differently.

    As `OpenMBeanAttributeInfoSupport` instances are
    immutable, the hash code for this instance is calculated once,
    on the first call to `hashCode`, and then the same value
    is returned for subsequent calls.

    Specified by:
    :   `hashCode` in interface `OpenMBeanAttributeInfo`

    Specified by:
    :   `hashCode` in interface `OpenMBeanParameterInfo`

    Overrides:
    :   `hashCode` in class `MBeanAttributeInfo`

    Returns:
    :   the hash code value for this `OpenMBeanAttributeInfoSupport` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this
    `OpenMBeanAttributeInfoSupport` instance.

    The string representation consists of the name of this class (i.e.
    `javax.management.openmbean.OpenMBeanAttributeInfoSupport`),
    the string representation of the name and open type of the
    described parameter, the string representation of its
    default, min, max and legal values and the string
    representation of its descriptor.

    As `OpenMBeanAttributeInfoSupport` instances are
    immutable, the string representation for this instance is
    calculated once, on the first call to `toString`, and
    then the same value is returned for subsequent calls.

    Specified by:
    :   `toString` in interface `OpenMBeanAttributeInfo`

    Specified by:
    :   `toString` in interface `OpenMBeanParameterInfo`

    Overrides:
    :   `toString` in class `MBeanAttributeInfo`

    Returns:
    :   a string representation of this
        `OpenMBeanAttributeInfoSupport` instance.