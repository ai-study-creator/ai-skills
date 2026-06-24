Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Class MBeanAttributeInfo

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

javax.management.MBeanAttributeInfo

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `DescriptorRead`

Direct Known Subclasses:
:   `ModelMBeanAttributeInfo`, `OpenMBeanAttributeInfoSupport`

---

public class MBeanAttributeInfo
extends [MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")
implements [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang")

Describes an MBean attribute exposed for management. Instances of
this class are immutable. Subclasses may be mutable but this is
not recommended.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.management.MBeanAttributeInfo)

* ## Field Summary

  ### Fields inherited from class javax.management.[MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

  `description, name`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MBeanAttributeInfo(String name,
  String description,
  Method getter,
  Method setter)`

  This constructor takes the name of a simple attribute, and Method
  objects for reading and writing the attribute.

  `MBeanAttributeInfo(String name,
  String type,
  String description,
  boolean isReadable,
  boolean isWritable,
  boolean isIs)`

  Constructs an `MBeanAttributeInfo` object.

  `MBeanAttributeInfo(String name,
  String type,
  String description,
  boolean isReadable,
  boolean isWritable,
  boolean isIs,
  Descriptor descriptor)`

  Constructs an `MBeanAttributeInfo` object.
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

  Compare this MBeanAttributeInfo to another.

  `String`

  `getType()`

  Returns the class name of the attribute.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `boolean`

  `isIs()`

  Indicates if this attribute has an "is" getter.

  `boolean`

  `isReadable()`

  Whether the value of the attribute can be read.

  `boolean`

  `isWritable()`

  Whether new values can be written to the attribute.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class javax.management.[MBeanFeatureInfo](MBeanFeatureInfo.md "class in javax.management")

  `getDescription, getDescriptor, getName`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MBeanAttributeInfo

    public MBeanAttributeInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    boolean isReadable,
    boolean isWritable,
    boolean isIs)

    Constructs an `MBeanAttributeInfo` object.

    Parameters:
    :   `name` - The name of the attribute.
    :   `type` - The type or class name of the attribute.
    :   `description` - A human readable description of the attribute.
    :   `isReadable` - True if the attribute has a getter method, false otherwise.
    :   `isWritable` - True if the attribute has a setter method, false otherwise.
    :   `isIs` - True if this attribute has an "is" getter, false otherwise.

    Throws:
    :   `IllegalArgumentException` - if `isIs` is true but
        `isReadable` is not, or if `isIs` is true and
        `type` is not `boolean` or `java.lang.Boolean`.
        (New code should always use `boolean` rather than
        `java.lang.Boolean`.)
  + ### MBeanAttributeInfo

    public MBeanAttributeInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    boolean isReadable,
    boolean isWritable,
    boolean isIs,
    [Descriptor](Descriptor.md "interface in javax.management") descriptor)

    Constructs an `MBeanAttributeInfo` object.

    Parameters:
    :   `name` - The name of the attribute.
    :   `type` - The type or class name of the attribute.
    :   `description` - A human readable description of the attribute.
    :   `isReadable` - True if the attribute has a getter method, false otherwise.
    :   `isWritable` - True if the attribute has a setter method, false otherwise.
    :   `isIs` - True if this attribute has an "is" getter, false otherwise.
    :   `descriptor` - The descriptor for the attribute. This may be null
        which is equivalent to an empty descriptor.

    Throws:
    :   `IllegalArgumentException` - if `isIs` is true but
        `isReadable` is not, or if `isIs` is true and
        `type` is not `boolean` or `java.lang.Boolean`.
        (New code should always use `boolean` rather than
        `java.lang.Boolean`.)

    Since:
    :   1.6
  + ### MBeanAttributeInfo

    public MBeanAttributeInfo([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") description,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") getter,
    [Method](../../../java.base/java/lang/reflect/Method.md "class in java.lang.reflect") setter)
    throws [IntrospectionException](IntrospectionException.md "class in javax.management")

    This constructor takes the name of a simple attribute, and Method
    objects for reading and writing the attribute. The [`Descriptor`](Descriptor.md "interface in javax.management")
    of the constructed object will include fields contributed by any
    annotations on the `Method` objects that contain the
    [`DescriptorKey`](DescriptorKey.md "annotation interface in javax.management") meta-annotation.

    Parameters:
    :   `name` - The programmatic name of the attribute.
    :   `description` - A human readable description of the attribute.
    :   `getter` - The method used for reading the attribute value.
        May be null if the property is write-only.
    :   `setter` - The method used for writing the attribute value.
        May be null if the attribute is read-only.

    Throws:
    :   `IntrospectionException` - There is a consistency
        problem in the definition of this attribute.
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

    Returns the class name of the attribute.

    Returns:
    :   the class name.
  + ### isReadable

    public boolean isReadable()

    Whether the value of the attribute can be read.

    Returns:
    :   True if the attribute can be read, false otherwise.
  + ### isWritable

    public boolean isWritable()

    Whether new values can be written to the attribute.

    Returns:
    :   True if the attribute can be written to, false otherwise.
  + ### isIs

    public boolean isIs()

    Indicates if this attribute has an "is" getter.

    Returns:
    :   true if this attribute has an "is" getter.
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

    Compare this MBeanAttributeInfo to another.

    Overrides:
    :   `equals` in class `MBeanFeatureInfo`

    Parameters:
    :   `o` - the object to compare to.

    Returns:
    :   true if and only if `o` is an MBeanAttributeInfo such
        that its [`MBeanFeatureInfo.getName()`](MBeanFeatureInfo.md#getName()), [`getType()`](#getType()), [`MBeanFeatureInfo.getDescription()`](MBeanFeatureInfo.md#getDescription()), [`isReadable()`](#isReadable()), [`isWritable()`](#isWritable()), and [`isIs()`](#isIs()) values are equal (not
        necessarily identical) to those of this MBeanAttributeInfo.

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