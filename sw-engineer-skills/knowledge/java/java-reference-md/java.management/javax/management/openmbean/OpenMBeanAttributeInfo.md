Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Interface OpenMBeanAttributeInfo

All Superinterfaces:
:   `OpenMBeanParameterInfo`

All Known Implementing Classes:
:   `OpenMBeanAttributeInfoSupport`

---

public interface OpenMBeanAttributeInfo
extends [OpenMBeanParameterInfo](OpenMBeanParameterInfo.md "interface in javax.management.openmbean")

Describes an attribute of an open MBean.

This interface declares the same methods as the class [`MBeanAttributeInfo`](../MBeanAttributeInfo.md "class in javax.management"). A class implementing this
interface (typically [`OpenMBeanAttributeInfoSupport`](OpenMBeanAttributeInfoSupport.md "class in javax.management.openmbean")) should
extend [`MBeanAttributeInfo`](../MBeanAttributeInfo.md "class in javax.management").

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified obj parameter with this
  `OpenMBeanAttributeInfo` instance for equality.

  `int`

  `hashCode()`

  Returns the hash code value for this `OpenMBeanAttributeInfo` instance.

  `boolean`

  `isIs()`

  Returns `true` if the attribute described by this `OpenMBeanAttributeInfo` instance
  is accessed through a `isXXX` getter
  (applies only to `boolean` and `Boolean` values),
  `false` otherwise.

  `boolean`

  `isReadable()`

  Returns `true` if the attribute described by this `OpenMBeanAttributeInfo`
  instance is readable, `false` otherwise.

  `boolean`

  `isWritable()`

  Returns `true` if the attribute described by this `OpenMBeanAttributeInfo`
  instance is writable, `false` otherwise.

  `String`

  `toString()`

  Returns a string representation of this `OpenMBeanAttributeInfo` instance.

  ### Methods inherited from interface javax.management.openmbean.[OpenMBeanParameterInfo](OpenMBeanParameterInfo.md "interface in javax.management.openmbean")

  `getDefaultValue, getDescription, getLegalValues, getMaxValue, getMinValue, getName, getOpenType, hasDefaultValue, hasLegalValues, hasMaxValue, hasMinValue, isValue`

* ## Method Details

  + ### isReadable

    boolean isReadable()

    Returns `true` if the attribute described by this `OpenMBeanAttributeInfo`
    instance is readable, `false` otherwise.

    Returns:
    :   true if the attribute is readable.
  + ### isWritable

    boolean isWritable()

    Returns `true` if the attribute described by this `OpenMBeanAttributeInfo`
    instance is writable, `false` otherwise.

    Returns:
    :   true if the attribute is writable.
  + ### isIs

    boolean isIs()

    Returns `true` if the attribute described by this `OpenMBeanAttributeInfo` instance
    is accessed through a `isXXX` getter
    (applies only to `boolean` and `Boolean` values),
    `false` otherwise.

    Returns:
    :   true if the attribute is accessed through `isXXX`.
  + ### equals

    boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified obj parameter with this
    `OpenMBeanAttributeInfo` instance for equality.

    Returns `true` if and only if all of the following statements are true:
    - obj is non null,
    - obj also implements the `OpenMBeanAttributeInfo` interface,
    - their names are equal
    - their open types are equal
    - their access properties (isReadable, isWritable and isIs) are equal
    - their default, min, max and legal values are equal.This ensures that this `equals` method works properly for obj parameters which are
    different implementations of the `OpenMBeanAttributeInfo` interface.

    Specified by:
    :   `equals` in interface `OpenMBeanParameterInfo`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared for equality with this `OpenMBeanAttributeInfo` instance;

    Returns:
    :   `true` if the specified object is equal to this `OpenMBeanAttributeInfo` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns the hash code value for this `OpenMBeanAttributeInfo` instance.

    The hash code of an `OpenMBeanAttributeInfo` instance is the sum of the hash codes
    of all elements of information used in `equals` comparisons
    (ie: its name, its *open type*, and its default, min, max and legal values).

    This ensures that `t1.equals(t2)` implies that `t1.hashCode()==t2.hashCode()`
    for any two `OpenMBeanAttributeInfo` instances `t1` and `t2`,
    as required by the general contract of the method
    [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    Specified by:
    :   `hashCode` in interface `OpenMBeanParameterInfo`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this `OpenMBeanAttributeInfo` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `OpenMBeanAttributeInfo` instance.

    The string representation consists of the name of this class
    (ie `javax.management.openmbean.OpenMBeanAttributeInfo`),
    the string representation of the name and open type of the described attribute,
    and the string representation of its default, min, max and legal values.

    Specified by:
    :   `toString` in interface `OpenMBeanParameterInfo`

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `OpenMBeanAttributeInfo` instance