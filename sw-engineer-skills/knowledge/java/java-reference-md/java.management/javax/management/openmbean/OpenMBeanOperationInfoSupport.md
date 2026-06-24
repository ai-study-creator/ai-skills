Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class OpenMBeanOperationInfoSupport

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

[javax.management.MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management")

javax.management.openmbean.OpenMBeanOperationInfoSupport

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorRead`, `OpenMBeanOperationInfo`

---

public class OpenMBeanOperationInfoSupport
extends [MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management")
implements [OpenMBeanOperationInfo](OpenMBeanOperationInfo.md "interface in javax.management.openmbean")

Describes an operation of an Open MBean.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.OpenMBeanOperationInfoSupport)

* ## Field Summary

  ### Fields inherited from class javax.management.[MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management")

  `ACTION, ACTION_INFO, INFO, UNKNOWN`

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OpenMBeanOperationInfoSupport(String name,
  String description,
  OpenMBeanParameterInfo[] signature,
  OpenType<?> returnOpenType,
  int impact)`

  Constructs an `OpenMBeanOperationInfoSupport`
  instance, which describes the operation of a class of open
  MBeans, with the specified `name`, `description`,
  `signature`, `returnOpenType` and `impact`.

  `OpenMBeanOperationInfoSupport(String name,
  String description,
  OpenMBeanParameterInfo[] signature,
  OpenType<?> returnOpenType,
  int impact,
  Descriptor descriptor)`

  Constructs an `OpenMBeanOperationInfoSupport`
  instance, which describes the operation of a class of open
  MBeans, with the specified `name`, `description`,
  `signature`, `returnOpenType`, `impact`, and `descriptor`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified `obj` parameter with this
  `OpenMBeanOperationInfoSupport` instance for
  equality.

  `OpenType<?>`

  `getReturnOpenType()`

  Returns the *open type* of the values returned by the
  operation described by this `OpenMBeanOperationInfo`
  instance.

  `int`

  `hashCode()`

  Returns the hash code value for this `OpenMBeanOperationInfoSupport` instance.

  `String`

  `toString()`

  Returns a string representation of this `OpenMBeanOperationInfoSupport` instance.

  ### Methods inherited from class javax.management.[MBeanOperationInfo](../MBeanOperationInfo.md "class in javax.management")

  `clone, getImpact, getReturnType, getSignature`

  ### Methods inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `getDescription, getDescriptor, getName`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface javax.management.openmbean.[OpenMBeanOperationInfo](OpenMBeanOperationInfo.md "interface in javax.management.openmbean")

  `getDescription, getImpact, getName, getReturnType, getSignature`

* ## Constructor Details

  + ### OpenMBeanOperationInfoSupport

    public OpenMBeanOperationInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenMBeanParameterInfo](OpenMBeanParameterInfo.md "interface in javax.management.openmbean")[] signature,
    [OpenType](OpenType.md "class in javax.management.openmbean")<?> returnOpenType,
    int impact)

    Constructs an `OpenMBeanOperationInfoSupport`
    instance, which describes the operation of a class of open
    MBeans, with the specified `name`, `description`,
    `signature`, `returnOpenType` and `impact`.

    The `signature` array parameter is internally copied,
    so that subsequent changes to the array referenced by `signature` have no effect on this instance.

    Parameters:
    :   `name` - cannot be a null or empty string.
    :   `description` - cannot be a null or empty string.
    :   `signature` - can be null or empty if there are no
        parameters to describe.
    :   `returnOpenType` - cannot be null: use `SimpleType.VOID` for operations that return nothing.
    :   `impact` - must be one of `ACTION`, `ACTION_INFO`, `INFO`, or `UNKNOWN`.

    Throws:
    :   `IllegalArgumentException` - if `name` or `description` are null or empty string, or `returnOpenType` is null, or `impact` is not one of `ACTION`, `ACTION_INFO`, `INFO`, or `UNKNOWN`.
    :   `ArrayStoreException` - If `signature` is not an
        array of instances of a subclass of `MBeanParameterInfo`.
  + ### OpenMBeanOperationInfoSupport

    public OpenMBeanOperationInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenMBeanParameterInfo](OpenMBeanParameterInfo.md "interface in javax.management.openmbean")[] signature,
    [OpenType](OpenType.md "class in javax.management.openmbean")<?> returnOpenType,
    int impact,
    [Descriptor](../Descriptor.md "interface in javax.management") descriptor)

    Constructs an `OpenMBeanOperationInfoSupport`
    instance, which describes the operation of a class of open
    MBeans, with the specified `name`, `description`,
    `signature`, `returnOpenType`, `impact`, and `descriptor`.

    The `signature` array parameter is internally copied,
    so that subsequent changes to the array referenced by `signature` have no effect on this instance.

    Parameters:
    :   `name` - cannot be a null or empty string.
    :   `description` - cannot be a null or empty string.
    :   `signature` - can be null or empty if there are no
        parameters to describe.
    :   `returnOpenType` - cannot be null: use `SimpleType.VOID` for operations that return nothing.
    :   `impact` - must be one of `ACTION`, `ACTION_INFO`, `INFO`, or `UNKNOWN`.
    :   `descriptor` - The descriptor for the operation. This may
        be null, which is equivalent to an empty descriptor.

    Throws:
    :   `IllegalArgumentException` - if `name` or `description` are null or empty string, or `returnOpenType` is null, or `impact` is not one of `ACTION`, `ACTION_INFO`, `INFO`, or `UNKNOWN`.
    :   `ArrayStoreException` - If `signature` is not an
        array of instances of a subclass of `MBeanParameterInfo`.

    Since:
    :   1.6
* ## Method Details

  + ### getReturnOpenType

    public [OpenType](OpenType.md "class in javax.management.openmbean")<?> getReturnOpenType()

    Returns the *open type* of the values returned by the
    operation described by this `OpenMBeanOperationInfo`
    instance.

    Specified by:
    :   `getReturnOpenType` in interface `OpenMBeanOperationInfo`

    Returns:
    :   the return type.
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified `obj` parameter with this
    `OpenMBeanOperationInfoSupport` instance for
    equality.

    Returns `true` if and only if all of the following
    statements are true:
    - `obj` is non null,
    - `obj` also implements the `OpenMBeanOperationInfo` interface,
    - their names are equal
    - their signatures are equal
    - their return open types are equal
    - their impacts are equalThis ensures that this `equals` method works properly for
    `obj` parameters which are different implementations of
    the `OpenMBeanOperationInfo` interface.

    Specified by:
    :   `equals` in interface `OpenMBeanOperationInfo`

    Overrides:
    :   `equals` in class `MBeanOperationInfo`

    Parameters:
    :   `obj` - the object to be compared for equality with this
        `OpenMBeanOperationInfoSupport` instance;

    Returns:
    :   `true` if the specified object is equal to this
        `OpenMBeanOperationInfoSupport` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this `OpenMBeanOperationInfoSupport` instance.

    The hash code of an `OpenMBeanOperationInfoSupport`
    instance is the sum of the hash codes of all elements of
    information used in `equals` comparisons (ie: its name,
    return open type, impact and signature, where the signature
    hashCode is calculated by a call to `java.util.Arrays.asList(this.getSignature).hashCode()`).

    This ensures that `t1.equals(t2)`  implies that `t1.hashCode()==t2.hashCode()`  for any two `OpenMBeanOperationInfoSupport` instances `t1` and `t2`, as required by the general contract of the method [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    However, note that another instance of a class implementing
    the `OpenMBeanOperationInfo` interface may be equal to
    this `OpenMBeanOperationInfoSupport` instance as defined
    by [`equals(java.lang.Object)`](#equals(java.lang.Object)), but may have a different
    hash code if it is calculated differently.

    As `OpenMBeanOperationInfoSupport` instances are
    immutable, the hash code for this instance is calculated once,
    on the first call to `hashCode`, and then the same value
    is returned for subsequent calls.

    Specified by:
    :   `hashCode` in interface `OpenMBeanOperationInfo`

    Overrides:
    :   `hashCode` in class `MBeanOperationInfo`

    Returns:
    :   the hash code value for this `OpenMBeanOperationInfoSupport` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `OpenMBeanOperationInfoSupport` instance.

    The string representation consists of the name of this class
    (ie `javax.management.openmbean.OpenMBeanOperationInfoSupport`), and
    the name, signature, return open type and impact of the
    described operation and the string representation of its descriptor.

    As `OpenMBeanOperationInfoSupport` instances are
    immutable, the string representation for this instance is
    calculated once, on the first call to `toString`, and
    then the same value is returned for subsequent calls.

    Specified by:
    :   `toString` in interface `OpenMBeanOperationInfo`

    Overrides:
    :   `toString` in class `MBeanOperationInfo`

    Returns:
    :   a string representation of this `OpenMBeanOperationInfoSupport` instance