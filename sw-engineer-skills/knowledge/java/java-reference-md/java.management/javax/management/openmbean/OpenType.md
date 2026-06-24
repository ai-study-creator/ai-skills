Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class OpenType<T>

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.management.openmbean.OpenType<T>

Type Parameters:
:   `T` - the Java type that instances described by this type must
    have. For example, [`SimpleType.INTEGER`](SimpleType.md#INTEGER) is a `SimpleType<Integer>` which is a subclass of `OpenType<Integer>`,
    meaning that an attribute, parameter, or return value that is described
    as a `SimpleType.INTEGER` must have Java type
    [`Integer`](../../../../java.base/java/lang/Integer.md "class in java.lang").

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `ArrayType`, `CompositeType`, `SimpleType`, `TabularType`

---

public abstract class OpenType<T>
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

The `OpenType` class is the parent abstract class of all classes which describe the actual *open type*
of open data values.

An *open type* is defined by:

* the fully qualified Java class name of the open data values this type describes;
  note that only a limited set of Java classes is allowed for open data values
  (see [`ALLOWED_CLASSNAMES_LIST`](#ALLOWED_CLASSNAMES_LIST)),
* its name,
* its description.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.OpenType)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String[]`

  `ALLOWED_CLASSNAMES`

  Deprecated.

  Use [`ALLOWED_CLASSNAMES_LIST`](#ALLOWED_CLASSNAMES_LIST) instead.

  `static final List<String>`

  `ALLOWED_CLASSNAMES_LIST`

  List of the fully qualified names of the Java classes allowed for open
  data values.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `OpenType(String className,
  String typeName,
  String description)`

  Constructs an `OpenType` instance (actually a subclass instance as `OpenType` is abstract),
  checking for the validity of the given parameters.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract boolean`

  `equals(Object obj)`

  Compares the specified `obj` parameter with this
  open type instance for equality.

  `String`

  `getClassName()`

  Returns the fully qualified Java class name of the open data values
  this open type describes.

  `String`

  `getDescription()`

  Returns the text description of this `OpenType` instance.

  `String`

  `getTypeName()`

  Returns the name of this `OpenType` instance.

  `abstract int`

  `hashCode()`

  Returns a hash code value for the object.

  `boolean`

  `isArray()`

  Returns `true` if the open data values this open
  type describes are arrays, `false` otherwise.

  `abstract boolean`

  `isValue(Object obj)`

  Tests whether obj is a value for this open type.

  `abstract String`

  `toString()`

  Returns a string representation of this open type instance.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### ALLOWED\_CLASSNAMES\_LIST

    public static final [List](../../../../java.base/java/util/List.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> ALLOWED\_CLASSNAMES\_LIST

    List of the fully qualified names of the Java classes allowed for open
    data values. A multidimensional array of any one of these classes or
    their corresponding primitive types is also an allowed class for open
    data values.

    ```
    ALLOWED_CLASSNAMES_LIST = {
            "java.lang.Void",
            "java.lang.Boolean",
            "java.lang.Character",
            "java.lang.Byte",
            "java.lang.Short",
            "java.lang.Integer",
            "java.lang.Long",
            "java.lang.Float",
            "java.lang.Double",
            "java.lang.String",
            "java.math.BigDecimal",
            "java.math.BigInteger",
            "java.util.Date",
            "javax.management.ObjectName",
            CompositeData.class.getName(),
            TabularData.class.getName() } ;
    ```
  + ### ALLOWED\_CLASSNAMES

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang")[] ALLOWED\_CLASSNAMES

    Deprecated.

    Use [`ALLOWED_CLASSNAMES_LIST`](#ALLOWED_CLASSNAMES_LIST) instead.
* ## Constructor Details

  + ### OpenType

    protected OpenType([String](../../../../java.base/java/lang/String.md "class in java.lang") className,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") typeName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description)
    throws [OpenDataException](OpenDataException.md "class in javax.management.openmbean")

    Constructs an `OpenType` instance (actually a subclass instance as `OpenType` is abstract),
    checking for the validity of the given parameters.
    The validity constraints are described below for each parameter.

    Parameters:
    :   `className` - The fully qualified Java class name of the open data values this open type describes.
        The valid Java class names allowed for open data values are listed in
        [`ALLOWED_CLASSNAMES_LIST`](#ALLOWED_CLASSNAMES_LIST).
        A multidimensional array of any one of these classes
        or their corresponding primitive types is also an allowed class,
        in which case the class name follows the rules defined by the method
        [`getName()`](../../../../java.base/java/lang/Class.md#getName()) of `java.lang.Class`.
        For example, a 3-dimensional array of Strings has for class name
        "`[[[Ljava.lang.String;`" (without the quotes).
    :   `typeName` - The name given to the open type this instance represents; cannot be a null or empty string.
    :   `description` - The human readable description of the open type this instance represents;
        cannot be a null or empty string.

    Throws:
    :   `IllegalArgumentException` - if className, typeName or description
        is a null or empty string
    :   `OpenDataException` - if className is not one of the allowed Java class names for open data
* ## Method Details

  + ### getClassName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getClassName()

    Returns the fully qualified Java class name of the open data values
    this open type describes.
    The only possible Java class names for open data values are listed in
    [`ALLOWED_CLASSNAMES_LIST`](#ALLOWED_CLASSNAMES_LIST).
    A multidimensional array of any one of these classes or their
    corresponding primitive types is also an allowed class,
    in which case the class name follows the rules defined by the method
    [`getName()`](../../../../java.base/java/lang/Class.md#getName()) of `java.lang.Class`.
    For example, a 3-dimensional array of Strings has for class name
    "`[[[Ljava.lang.String;`" (without the quotes),
    a 3-dimensional array of Integers has for class name
    "`[[[Ljava.lang.Integer;`" (without the quotes),
    and a 3-dimensional array of int has for class name
    "`[[[I`" (without the quotes)

    Returns:
    :   the class name.
  + ### getTypeName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getTypeName()

    Returns the name of this `OpenType` instance.

    Returns:
    :   the type name.
  + ### getDescription

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription()

    Returns the text description of this `OpenType` instance.

    Returns:
    :   the description.
  + ### isArray

    public boolean isArray()

    Returns `true` if the open data values this open
    type describes are arrays, `false` otherwise.

    Returns:
    :   true if this is an array type.
  + ### isValue

    public abstract boolean isValue([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Tests whether obj is a value for this open type.

    Parameters:
    :   `obj` - the object to be tested for validity.

    Returns:
    :   `true` if obj is a value for this
        open type, `false` otherwise.
  + ### equals

    public abstract boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified `obj` parameter with this
    open type instance for equality.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare to.

    Returns:
    :   true if this object and `obj` are equal.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public abstract int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public abstract [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this open type instance.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation.