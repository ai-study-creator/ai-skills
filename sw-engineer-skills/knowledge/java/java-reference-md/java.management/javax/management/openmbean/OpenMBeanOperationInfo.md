Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Interface OpenMBeanOperationInfo

All Known Implementing Classes:
:   `OpenMBeanOperationInfoSupport`

---

public interface OpenMBeanOperationInfo

Describes an operation of an Open MBean.

This interface declares the same methods as the class [`MBeanOperationInfo`](../MBeanOperationInfo.md "class in javax.management"). A class implementing this
interface (typically [`OpenMBeanOperationInfoSupport`](OpenMBeanOperationInfoSupport.md "class in javax.management.openmbean")) should
extend [`MBeanOperationInfo`](../MBeanOperationInfo.md "class in javax.management").

The [`getSignature()`](#getSignature()) method should return at runtime an
array of instances of a subclass of [`MBeanParameterInfo`](../MBeanParameterInfo.md "class in javax.management")
which implements the [`OpenMBeanParameterInfo`](OpenMBeanParameterInfo.md "interface in javax.management.openmbean") interface
(typically [`OpenMBeanParameterInfoSupport`](OpenMBeanParameterInfoSupport.md "class in javax.management.openmbean")).

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified obj parameter with this `OpenMBeanOperationInfo` instance for equality.

  `String`

  `getDescription()`

  Returns a human readable description of the operation
  described by this `OpenMBeanOperationInfo` instance.

  `int`

  `getImpact()`

  Returns an `int` constant qualifying the impact of the
  operation described by this `OpenMBeanOperationInfo`
  instance.

  `String`

  `getName()`

  Returns the name of the operation
  described by this `OpenMBeanOperationInfo` instance.

  `OpenType<?>`

  `getReturnOpenType()`

  Returns the *open type* of the values returned by the
  operation described by this `OpenMBeanOperationInfo`
  instance.

  `String`

  `getReturnType()`

  Returns the fully qualified Java class name of the values
  returned by the operation described by this
  `OpenMBeanOperationInfo` instance.

  `MBeanParameterInfo[]`

  `getSignature()`

  Returns an array of `OpenMBeanParameterInfo` instances
  describing each parameter in the signature of the operation
  described by this `OpenMBeanOperationInfo` instance.

  `int`

  `hashCode()`

  Returns the hash code value for this `OpenMBeanOperationInfo` instance.

  `String`

  `toString()`

  Returns a string representation of this `OpenMBeanOperationInfo` instance.

* ## Method Details

  + ### getDescription

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns a human readable description of the operation
    described by this `OpenMBeanOperationInfo` instance.

    Returns:
    :   the description.
  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of the operation
    described by this `OpenMBeanOperationInfo` instance.

    Returns:
    :   the name.
  + ### getSignature

    [MBeanParameterInfo](../MBeanParameterInfo.md "class in javax.management")[] getSignature()

    Returns an array of `OpenMBeanParameterInfo` instances
    describing each parameter in the signature of the operation
    described by this `OpenMBeanOperationInfo` instance.
    Each instance in the returned array should actually be a
    subclass of `MBeanParameterInfo` which implements the
    `OpenMBeanParameterInfo` interface (typically [`OpenMBeanParameterInfoSupport`](OpenMBeanParameterInfoSupport.md "class in javax.management.openmbean")).

    Returns:
    :   the signature.
  + ### getImpact

    int getImpact()

    Returns an `int` constant qualifying the impact of the
    operation described by this `OpenMBeanOperationInfo`
    instance.
    The returned constant is one of [`MBeanOperationInfo.INFO`](../MBeanOperationInfo.md#INFO), [`MBeanOperationInfo.ACTION`](../MBeanOperationInfo.md#ACTION), [`MBeanOperationInfo.ACTION_INFO`](../MBeanOperationInfo.md#ACTION_INFO), or [`MBeanOperationInfo.UNKNOWN`](../MBeanOperationInfo.md#UNKNOWN).

    Returns:
    :   the impact code.
  + ### getReturnType

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getReturnType()

    Returns the fully qualified Java class name of the values
    returned by the operation described by this
    `OpenMBeanOperationInfo` instance. This method should
    return the same value as a call to
    `getReturnOpenType().getClassName()`.

    Returns:
    :   the return type.
  + ### getReturnOpenType

    [OpenType](OpenType.md "class in javax.management.openmbean")<?> getReturnOpenType()

    Returns the *open type* of the values returned by the
    operation described by this `OpenMBeanOperationInfo`
    instance.

    Returns:
    :   the return type.
  + ### equals

    boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified obj parameter with this `OpenMBeanOperationInfo` instance for equality.

    Returns `true` if and only if all of the following statements are true:
    - obj is non null,
    - obj also implements the `OpenMBeanOperationInfo` interface,
    - their names are equal
    - their signatures are equal
    - their return open types are equal
    - their impacts are equalThis ensures that this `equals` method works properly for obj parameters which are
    different implementations of the `OpenMBeanOperationInfo` interface.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared for equality with this `OpenMBeanOperationInfo` instance;

    Returns:
    :   `true` if the specified object is equal to this `OpenMBeanOperationInfo` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns the hash code value for this `OpenMBeanOperationInfo` instance.

    The hash code of an `OpenMBeanOperationInfo` instance is the sum of the hash codes
    of all elements of information used in `equals` comparisons
    (ie: its name, return open type, impact and signature,
    where the signature hashCode is calculated by a call to
    `java.util.Arrays.asList(this.getSignature).hashCode()`).

    This ensures that `t1.equals(t2)` implies that `t1.hashCode()==t2.hashCode()`
    for any two `OpenMBeanOperationInfo` instances `t1` and `t2`,
    as required by the general contract of the method
    [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this `OpenMBeanOperationInfo` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `OpenMBeanOperationInfo` instance.

    The string representation consists of the name of this class
    (ie `javax.management.openmbean.OpenMBeanOperationInfo`),
    and the name, signature, return open type and impact of the described operation.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `OpenMBeanOperationInfo` instance