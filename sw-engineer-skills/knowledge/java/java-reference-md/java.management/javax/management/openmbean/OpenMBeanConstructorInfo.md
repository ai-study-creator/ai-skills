Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Interface OpenMBeanConstructorInfo

All Known Implementing Classes:
:   `OpenMBeanConstructorInfoSupport`

---

public interface OpenMBeanConstructorInfo

Describes a constructor of an Open MBean.

This interface declares the same methods as the class [`MBeanConstructorInfo`](../MBeanConstructorInfo.md "class in javax.management"). A class implementing this
interface (typically [`OpenMBeanConstructorInfoSupport`](OpenMBeanConstructorInfoSupport.md "class in javax.management.openmbean"))
should extend [`MBeanConstructorInfo`](../MBeanConstructorInfo.md "class in javax.management").

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

  Compares the specified obj parameter with this `OpenMBeanConstructorInfo` instance for equality.

  `String`

  `getDescription()`

  Returns a human readable description of the constructor
  described by this `OpenMBeanConstructorInfo` instance.

  `String`

  `getName()`

  Returns the name of the constructor
  described by this `OpenMBeanConstructorInfo` instance.

  `MBeanParameterInfo[]`

  `getSignature()`

  Returns an array of `OpenMBeanParameterInfo` instances
  describing each parameter in the signature of the constructor
  described by this `OpenMBeanConstructorInfo` instance.

  `int`

  `hashCode()`

  Returns the hash code value for this `OpenMBeanConstructorInfo` instance.

  `String`

  `toString()`

  Returns a string representation of this `OpenMBeanConstructorInfo` instance.

* ## Method Details

  + ### getDescription

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns a human readable description of the constructor
    described by this `OpenMBeanConstructorInfo` instance.

    Returns:
    :   the description.
  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the name of the constructor
    described by this `OpenMBeanConstructorInfo` instance.

    Returns:
    :   the name.
  + ### getSignature

    [MBeanParameterInfo](../MBeanParameterInfo.md "class in javax.management")[] getSignature()

    Returns an array of `OpenMBeanParameterInfo` instances
    describing each parameter in the signature of the constructor
    described by this `OpenMBeanConstructorInfo` instance.

    Returns:
    :   the signature.
  + ### equals

    boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified obj parameter with this `OpenMBeanConstructorInfo` instance for equality.

    Returns `true` if and only if all of the following statements are true:
    - obj is non null,
    - obj also implements the `OpenMBeanConstructorInfo` interface,
    - their names are equal
    - their signatures are equal.This ensures that this `equals` method works properly for obj parameters which are
    different implementations of the `OpenMBeanConstructorInfo` interface.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared for equality with this `OpenMBeanConstructorInfo` instance;

    Returns:
    :   `true` if the specified object is equal to this `OpenMBeanConstructorInfo` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns the hash code value for this `OpenMBeanConstructorInfo` instance.

    The hash code of an `OpenMBeanConstructorInfo` instance is the sum of the hash codes
    of all elements of information used in `equals` comparisons
    (ie: its name and signature, where the signature hashCode is calculated by a call to
    `java.util.Arrays.asList(this.getSignature).hashCode()`).

    This ensures that `t1.equals(t2)` implies that `t1.hashCode()==t2.hashCode()`
    for any two `OpenMBeanConstructorInfo` instances `t1` and `t2`,
    as required by the general contract of the method
    [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this `OpenMBeanConstructorInfo` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `OpenMBeanConstructorInfo` instance.

    The string representation consists of the name of this class
    (ie `javax.management.openmbean.OpenMBeanConstructorInfo`),
    and the name and signature of the described constructor.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this `OpenMBeanConstructorInfo` instance