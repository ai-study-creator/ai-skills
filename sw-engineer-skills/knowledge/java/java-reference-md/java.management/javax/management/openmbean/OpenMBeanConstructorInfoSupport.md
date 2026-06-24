Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class OpenMBeanConstructorInfoSupport

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

[javax.management.MBeanConstructorInfo](../MBeanConstructorInfo.md "class in javax.management")

javax.management.openmbean.OpenMBeanConstructorInfoSupport

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorRead`, `OpenMBeanConstructorInfo`

---

public class OpenMBeanConstructorInfoSupport
extends [MBeanConstructorInfo](../MBeanConstructorInfo.md "class in javax.management")
implements [OpenMBeanConstructorInfo](OpenMBeanConstructorInfo.md "interface in javax.management.openmbean")

Describes a constructor of an Open MBean.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.OpenMBeanConstructorInfoSupport)

* ## Field Summary

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `OpenMBeanConstructorInfoSupport(String name,
  String description,
  OpenMBeanParameterInfo[] signature)`

  Constructs an `OpenMBeanConstructorInfoSupport`
  instance, which describes the constructor of a class of open
  MBeans with the specified `name`, `description` and
  `signature`.

  `OpenMBeanConstructorInfoSupport(String name,
  String description,
  OpenMBeanParameterInfo[] signature,
  Descriptor descriptor)`

  Constructs an `OpenMBeanConstructorInfoSupport`
  instance, which describes the constructor of a class of open
  MBeans with the specified `name`, `description`,
  `signature`, and `descriptor`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Compares the specified `obj` parameter with this
  `OpenMBeanConstructorInfoSupport` instance for
  equality.

  `int`

  `hashCode()`

  Returns the hash code value for this `OpenMBeanConstructorInfoSupport` instance.

  `String`

  `toString()`

  Returns a string representation of this `OpenMBeanConstructorInfoSupport` instance.

  ### Methods inherited from class javax.management.[MBeanConstructorInfo](../MBeanConstructorInfo.md "class in javax.management")

  `clone, getSignature`

  ### Methods inherited from class javax.management.[MBeanFeatureInfo](../MBeanFeatureInfo.md "class in javax.management")

  `getDescription, getDescriptor, getName`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface javax.management.openmbean.[OpenMBeanConstructorInfo](OpenMBeanConstructorInfo.md "interface in javax.management.openmbean")

  `getDescription, getName, getSignature`

* ## Constructor Details

  + ### OpenMBeanConstructorInfoSupport

    public OpenMBeanConstructorInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenMBeanParameterInfo](OpenMBeanParameterInfo.md "interface in javax.management.openmbean")[] signature)

    Constructs an `OpenMBeanConstructorInfoSupport`
    instance, which describes the constructor of a class of open
    MBeans with the specified `name`, `description` and
    `signature`.

    The `signature` array parameter is internally copied,
    so that subsequent changes to the array referenced by `signature` have no effect on this instance.

    Parameters:
    :   `name` - cannot be a null or empty string.
    :   `description` - cannot be a null or empty string.
    :   `signature` - can be null or empty if there are no
        parameters to describe.

    Throws:
    :   `IllegalArgumentException` - if `name` or `description` are null or empty string.
    :   `ArrayStoreException` - If `signature` is not an
        array of instances of a subclass of `MBeanParameterInfo`.
  + ### OpenMBeanConstructorInfoSupport

    public OpenMBeanConstructorInfoSupport([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [OpenMBeanParameterInfo](OpenMBeanParameterInfo.md "interface in javax.management.openmbean")[] signature,
    [Descriptor](../Descriptor.md "interface in javax.management") descriptor)

    Constructs an `OpenMBeanConstructorInfoSupport`
    instance, which describes the constructor of a class of open
    MBeans with the specified `name`, `description`,
    `signature`, and `descriptor`.

    The `signature` array parameter is internally copied,
    so that subsequent changes to the array referenced by `signature` have no effect on this instance.

    Parameters:
    :   `name` - cannot be a null or empty string.
    :   `description` - cannot be a null or empty string.
    :   `signature` - can be null or empty if there are no
        parameters to describe.
    :   `descriptor` - The descriptor for the constructor. This may
        be null which is equivalent to an empty descriptor.

    Throws:
    :   `IllegalArgumentException` - if `name` or `description` are null or empty string.
    :   `ArrayStoreException` - If `signature` is not an
        array of instances of a subclass of `MBeanParameterInfo`.

    Since:
    :   1.6
* ## Method Details

  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified `obj` parameter with this
    `OpenMBeanConstructorInfoSupport` instance for
    equality.

    Returns `true` if and only if all of the following
    statements are true:
    - `obj` is non null,
    - `obj` also implements the `OpenMBeanConstructorInfo` interface,
    - their names are equal
    - their signatures are equal.This ensures that this `equals` method works properly for
    `obj` parameters which are different implementations of
    the `OpenMBeanConstructorInfo` interface.

    Specified by:
    :   `equals` in interface `OpenMBeanConstructorInfo`

    Overrides:
    :   `equals` in class `MBeanConstructorInfo`

    Parameters:
    :   `obj` - the object to be compared for equality with this
        `OpenMBeanConstructorInfoSupport` instance;

    Returns:
    :   `true` if the specified object is equal to this
        `OpenMBeanConstructorInfoSupport` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this `OpenMBeanConstructorInfoSupport` instance.

    The hash code of an `OpenMBeanConstructorInfoSupport`
    instance is the sum of the hash codes of all elements of
    information used in `equals` comparisons (ie: its name
    and signature, where the signature hashCode is calculated by a
    call to `java.util.Arrays.asList(this.getSignature).hashCode()`).

    This ensures that `t1.equals(t2)` implies that `t1.hashCode()==t2.hashCode()` for any two `OpenMBeanConstructorInfoSupport` instances `t1` and
    `t2`, as required by the general contract of the method
    [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    However, note that another instance of a class implementing
    the `OpenMBeanConstructorInfo` interface may be equal to
    this `OpenMBeanConstructorInfoSupport` instance as
    defined by [`equals(java.lang.Object)`](#equals(java.lang.Object)), but may have a
    different hash code if it is calculated differently.

    As `OpenMBeanConstructorInfoSupport` instances are
    immutable, the hash code for this instance is calculated once,
    on the first call to `hashCode`, and then the same value
    is returned for subsequent calls.

    Specified by:
    :   `hashCode` in interface `OpenMBeanConstructorInfo`

    Overrides:
    :   `hashCode` in class `MBeanConstructorInfo`

    Returns:
    :   the hash code value for this `OpenMBeanConstructorInfoSupport` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `OpenMBeanConstructorInfoSupport` instance.

    The string representation consists of the name of this class
    (ie `javax.management.openmbean.OpenMBeanConstructorInfoSupport`),
    the name and signature of the described constructor and the
    string representation of its descriptor.

    As `OpenMBeanConstructorInfoSupport` instances are
    immutable, the string representation for this instance is
    calculated once, on the first call to `toString`, and
    then the same value is returned for subsequent calls.

    Specified by:
    :   `toString` in interface `OpenMBeanConstructorInfo`

    Overrides:
    :   `toString` in class `MBeanConstructorInfo`

    Returns:
    :   a string representation of this `OpenMBeanConstructorInfoSupport` instance