Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Interface OpenMBeanParameterInfo

All Known Subinterfaces:
:   `OpenMBeanAttributeInfo`

All Known Implementing Classes:
:   `OpenMBeanAttributeInfoSupport`, `OpenMBeanParameterInfoSupport`

---

public interface OpenMBeanParameterInfo

Describes a parameter used in one or more operations or
constructors of an open MBean.

This interface declares the same methods as the class [`MBeanParameterInfo`](../MBeanParameterInfo.md "class in javax.management"). A class implementing this
interface (typically [`OpenMBeanParameterInfoSupport`](OpenMBeanParameterInfoSupport.md "class in javax.management.openmbean")) should
extend [`MBeanParameterInfo`](../MBeanParameterInfo.md "class in javax.management").

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified obj parameter with this `OpenMBeanParameterInfo` instance for equality.

  `Object`

  `getDefaultValue()`

  Returns the default value for this parameter, if it has one, or
  `null` otherwise.

  `String`

  `getDescription()`

  Returns a human readable description of the parameter
  described by this `OpenMBeanParameterInfo` instance.

  `Set<?>`

  `getLegalValues()`

  Returns the set of legal values for this parameter, if it has
  one, or `null` otherwise.

  `Comparable<?>`

  `getMaxValue()`

  Returns the maximal value for this parameter, if it has one, or
  `null` otherwise.

  `Comparable<?>`

  `getMinValue()`

  Returns the minimal value for this parameter, if it has one, or
  `null` otherwise.

  `String`

  `getName()`

  Returns the name of the parameter
  described by this `OpenMBeanParameterInfo` instance.

  `OpenType<?>`

  `getOpenType()`

  Returns the *open type* of the values of the parameter
  described by this `OpenMBeanParameterInfo` instance.

  `boolean`

  `hasDefaultValue()`

  Returns `true` if this parameter has a specified default
  value, or `false` otherwise.

  `int`

  `hashCode()`

  Returns the hash code value for this `OpenMBeanParameterInfo` instance.

  `boolean`

  `hasLegalValues()`

  Returns `true` if this parameter has a specified set of
  legal values, or `false` otherwise.

  `boolean`

  `hasMaxValue()`

  Returns `true` if this parameter has a specified maximal
  value, or `false` otherwise.

  `boolean`

  `hasMinValue()`

  Returns `true` if this parameter has a specified minimal
  value, or `false` otherwise.

  `boolean`

  `isValue(Object obj)`

  Tests whether obj is a valid value for the parameter
  described by this `OpenMBeanParameterInfo` instance.

  `String`

  `toString()`

  Returns a string representation of this `OpenMBeanParameterInfo` instance.

* ## Method Details

  + ### getDescription

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns a human readable description of the parameter
    described by this `OpenMBeanParameterInfo` instance.

    Returns:
    :   the description.
  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of the parameter
    described by this `OpenMBeanParameterInfo` instance.

    Returns:
    :   the name.
  + ### getOpenType

    [OpenType](OpenType.md "class in javax.management.openmbean")<?> getOpenType()

    Returns the *open type* of the values of the parameter
    described by this `OpenMBeanParameterInfo` instance.

    Returns:
    :   the open type.
  + ### getDefaultValue

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getDefaultValue()

    Returns the default value for this parameter, if it has one, or
    `null` otherwise.

    Returns:
    :   the default value.
  + ### getLegalValues

    [Set](../../../../java.base/java/util/Set.md "interface in java.util")<?> getLegalValues()

    Returns the set of legal values for this parameter, if it has
    one, or `null` otherwise.

    Returns:
    :   the set of legal values.
  + ### getMinValue

    [Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<?> getMinValue()

    Returns the minimal value for this parameter, if it has one, or
    `null` otherwise.

    Returns:
    :   the minimum value.
  + ### getMaxValue

    [Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<?> getMaxValue()

    Returns the maximal value for this parameter, if it has one, or
    `null` otherwise.

    Returns:
    :   the maximum value.
  + ### hasDefaultValue

    boolean hasDefaultValue()

    Returns `true` if this parameter has a specified default
    value, or `false` otherwise.

    Returns:
    :   true if there is a default value.
  + ### hasLegalValues

    boolean hasLegalValues()

    Returns `true` if this parameter has a specified set of
    legal values, or `false` otherwise.

    Returns:
    :   true if there is a set of legal values.
  + ### hasMinValue

    boolean hasMinValue()

    Returns `true` if this parameter has a specified minimal
    value, or `false` otherwise.

    Returns:
    :   true if there is a minimum value.
  + ### hasMaxValue

    boolean hasMaxValue()

    Returns `true` if this parameter has a specified maximal
    value, or `false` otherwise.

    Returns:
    :   true if there is a maximum value.
  + ### isValue

    boolean isValue([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Tests whether obj is a valid value for the parameter
    described by this `OpenMBeanParameterInfo` instance.

    Parameters:
    :   `obj` - the object to be tested.

    Returns:
    :   `true` if obj is a valid value
        for the parameter described by this
        `OpenMBeanParameterInfo` instance,
        `false` otherwise.
  + ### equals

    boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified obj parameter with this `OpenMBeanParameterInfo` instance for equality.

    Returns `true` if and only if all of the following statements are true:
    - obj is non null,
    - obj also implements the `OpenMBeanParameterInfo` interface,
    - their names are equal
    - their open types are equal
    - their default, min, max and legal values are equal.This ensures that this `equals` method works properly for obj parameters which are
    different implementations of the `OpenMBeanParameterInfo` interface.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared for equality with this `OpenMBeanParameterInfo` instance;

    Returns:
    :   `true` if the specified object is equal to this `OpenMBeanParameterInfo` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns the hash code value for this `OpenMBeanParameterInfo` instance.

    The hash code of an `OpenMBeanParameterInfo` instance is the sum of the hash codes
    of all elements of information used in `equals` comparisons
    (ie: its name, its *open type*, and its default, min, max and legal values).

    This ensures that `t1.equals(t2)` implies that `t1.hashCode()==t2.hashCode()`
    for any two `OpenMBeanParameterInfo` instances `t1` and `t2`,
    as required by the general contract of the method
    [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this `OpenMBeanParameterInfo` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `OpenMBeanParameterInfo` instance.

    The string representation consists of the name of this class (ie `javax.management.openmbean.OpenMBeanParameterInfo`),
    the string representation of the name and open type of the described parameter,
    and the string representation of its default, min, max and legal values.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `OpenMBeanParameterInfo` instance