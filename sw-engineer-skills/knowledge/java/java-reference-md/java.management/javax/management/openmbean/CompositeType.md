Module [java.management](../../../module-summary.md)

Package [javax.management.openmbean](package-summary.md)

# Class CompositeType

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.management.openmbean.OpenType](OpenType.md "class in javax.management.openmbean")<[CompositeData](CompositeData.md "interface in javax.management.openmbean")>

javax.management.openmbean.CompositeType

All Implemented Interfaces:
:   `Serializable`

---

public class CompositeType
extends [OpenType](OpenType.md "class in javax.management.openmbean")<[CompositeData](CompositeData.md "interface in javax.management.openmbean")>

The `CompositeType` class is the *open type* class
whose instances describe the types of [`CompositeData`](CompositeData.md "interface in javax.management.openmbean") values.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.openmbean.CompositeType)

* ## Field Summary

  ### Fields inherited from class javax.management.openmbean.[OpenType](OpenType.md "class in javax.management.openmbean")

  `ALLOWED_CLASSNAMES, ALLOWED_CLASSNAMES_LIST`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CompositeType(String typeName,
  String description,
  String[] itemNames,
  String[] itemDescriptions,
  OpenType<?>[] itemTypes)`

  Constructs a `CompositeType` instance, checking for the validity of the given parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `containsKey(String itemName)`

  Returns `true` if this `CompositeType` instance defines an item
  whose name is itemName.

  `boolean`

  `equals(Object obj)`

  Compares the specified `obj` parameter with this `CompositeType` instance for equality.

  `String`

  `getDescription(String itemName)`

  Returns the description of the item whose name is itemName,
  or `null` if this `CompositeType` instance does not define any item
  whose name is itemName.

  `OpenType<?>`

  `getType(String itemName)`

  Returns the *open type* of the item whose name is itemName,
  or `null` if this `CompositeType` instance does not define any item
  whose name is itemName.

  `int`

  `hashCode()`

  Returns the hash code value for this `CompositeType` instance.

  `boolean`

  `isValue(Object obj)`

  Tests whether obj is a value which could be
  described by this `CompositeType` instance.

  `Set<String>`

  `keySet()`

  Returns an unmodifiable Set view of all the item names defined by this `CompositeType` instance.

  `String`

  `toString()`

  Returns a string representation of this `CompositeType` instance.

  ### Methods inherited from class javax.management.openmbean.[OpenType](OpenType.md "class in javax.management.openmbean")

  `getClassName, getDescription, getTypeName, isArray`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CompositeType

    public CompositeType([String](../../../../java.base/java/lang/String.md "class in java.lang") typeName,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") description,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] itemNames,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] itemDescriptions,
    [OpenType](OpenType.md "class in javax.management.openmbean")<?>[] itemTypes)
    throws [OpenDataException](OpenDataException.md "class in javax.management.openmbean")

    Constructs a `CompositeType` instance, checking for the validity of the given parameters.
    The validity constraints are described below for each parameter.

    Note that the contents of the three array parameters
    itemNames, itemDescriptions and itemTypes
    are internally copied so that any subsequent modification of these arrays by the caller of this constructor
    has no impact on the constructed `CompositeType` instance.

    The Java class name of composite data values this composite type represents
    (ie the class name returned by the [`getClassName`](OpenType.md#getClassName()) method)
    is set to the string value returned by `CompositeData.class.getName()`.

    Parameters:
    :   `typeName` - The name given to the composite type this instance represents; cannot be a null or empty string.
    :   `description` - The human readable description of the composite type this instance represents;
        cannot be a null or empty string.
    :   `itemNames` - The names of the items contained in the
        composite data values described by this `CompositeType` instance;
        cannot be null and should contain at least one element; no element can be a null or empty string.
        Note that the order in which the item names are given is not important to differentiate a
        `CompositeType` instance from another;
        the item names are internally stored sorted in ascending alphanumeric order.
    :   `itemDescriptions` - The descriptions, in the same order as itemNames, of the items contained in the
        composite data values described by this `CompositeType` instance;
        should be of the same size as itemNames;
        no element can be null or an empty string.
    :   `itemTypes` - The open type instances, in the same order as itemNames, describing the items contained
        in the composite data values described by this `CompositeType` instance;
        should be of the same size as itemNames;
        no element can be null.

    Throws:
    :   `IllegalArgumentException` - If typeName or description is a null or empty string,
        or itemNames or itemDescriptions or itemTypes is null,
        or any element of itemNames or itemDescriptions
        is a null or empty string,
        or any element of itemTypes is null,
        or itemNames or itemDescriptions or itemTypes
        are not of the same size.
    :   `OpenDataException` - If itemNames contains duplicate item names
        (case sensitive, but leading and trailing whitespaces removed).
* ## Method Details

  + ### containsKey

    public boolean containsKey([String](../../../../java.base/java/lang/String.md "class in java.lang") itemName)

    Returns `true` if this `CompositeType` instance defines an item
    whose name is itemName.

    Parameters:
    :   `itemName` - the name of the item.

    Returns:
    :   true if an item of this name is present.
  + ### getDescription

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getDescription([String](../../../../java.base/java/lang/String.md "class in java.lang") itemName)

    Returns the description of the item whose name is itemName,
    or `null` if this `CompositeType` instance does not define any item
    whose name is itemName.

    Parameters:
    :   `itemName` - the name of the item.

    Returns:
    :   the description.
  + ### getType

    public [OpenType](OpenType.md "class in javax.management.openmbean")<?> getType([String](../../../../java.base/java/lang/String.md "class in java.lang") itemName)

    Returns the *open type* of the item whose name is itemName,
    or `null` if this `CompositeType` instance does not define any item
    whose name is itemName.

    Parameters:
    :   `itemName` - the name of the time.

    Returns:
    :   the type.
  + ### keySet

    public [Set](../../../../java.base/java/util/Set.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> keySet()

    Returns an unmodifiable Set view of all the item names defined by this `CompositeType` instance.
    The set's iterator will return the item names in ascending order.

    Returns:
    :   a [`Set`](../../../../java.base/java/util/Set.md "interface in java.util") of [`String`](../../../../java.base/java/lang/String.md "class in java.lang").
  + ### isValue

    public boolean isValue([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Tests whether obj is a value which could be
    described by this `CompositeType` instance.

    If obj is null or is not an instance of
    `javax.management.openmbean.CompositeData`,
    `isValue` returns `false`.

    If obj is an instance of
    `javax.management.openmbean.CompositeData`, then let
    `ct` be its `CompositeType` as returned by [`CompositeData.getCompositeType()`](CompositeData.md#getCompositeType()). The result is true if
    `this` is *assignable from* `ct`. This
    means that:

    - [`this.getTypeName()`](OpenType.md#getTypeName()) equals
      `ct.getTypeName()`, and- there are no item names present in `this` that are
        not also present in `ct`, and- for every item in `this`, its type is assignable from
          the type of the corresponding item in `ct`.

    A `TabularType` is assignable from another `TabularType` if they have the same [typeName](OpenType.md#getTypeName()) and [index name list](TabularType.md#getIndexNames()), and the
    [row type](TabularType.md#getRowType()) of the first is
    assignable from the row type of the second.

    An `ArrayType` is assignable from another `ArrayType` if they have the same [dimension](ArrayType.md#getDimension()); and both are [primitive arrays](ArrayType.md#isPrimitiveArray()) or neither is;
    and the [element
    type](ArrayType.md#getElementOpenType()) of the first is assignable from the element type of the
    second.

    In every other case, an `OpenType` is assignable from
    another `OpenType` only if they are equal.

    These rules mean that extra items can be added to a `CompositeData` without making it invalid for a `CompositeType`
    that does not have those items.

    Specified by:
    :   `isValue` in class `OpenType<CompositeData>`

    Parameters:
    :   `obj` - the value whose open type is to be tested for compatibility
        with this `CompositeType` instance.

    Returns:
    :   `true` if obj is a value for this
        composite type, `false` otherwise.
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified `obj` parameter with this `CompositeType` instance for equality.

    Two `CompositeType` instances are equal if and only if all of the following statements are true:
    - their type names are equal
    - their items' names and types are equal

    Specified by:
    :   `equals` in class `OpenType<CompositeData>`

    Parameters:
    :   `obj` - the object to be compared for equality with this `CompositeType` instance;
        if obj is `null`, `equals` returns `false`.

    Returns:
    :   `true` if the specified object is equal to this `CompositeType` instance.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this `CompositeType` instance.

    The hash code of a `CompositeType` instance is the sum of the hash codes
    of all elements of information used in `equals` comparisons
    (ie: name, items names, items types).
    This ensures that  `t1.equals(t2)`  implies that  `t1.hashCode()==t2.hashCode()` 
    for any two `CompositeType` instances `t1` and `t2`,
    as required by the general contract of the method
    [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    As `CompositeType` instances are immutable, the hash code for this instance is calculated once,
    on the first call to `hashCode`, and then the same value is returned for subsequent calls.

    Specified by:
    :   `hashCode` in class `OpenType<CompositeData>`

    Returns:
    :   the hash code value for this `CompositeType` instance

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this `CompositeType` instance.

    The string representation consists of
    the name of this class (ie `javax.management.openmbean.CompositeType`), the type name for this instance,
    and the list of the items names and types string representation of this instance.

    As `CompositeType` instances are immutable, the string representation for this instance is calculated once,
    on the first call to `toString`, and then the same value is returned for subsequent calls.

    Specified by:
    :   `toString` in class `OpenType<CompositeData>`

    Returns:
    :   a string representation of this `CompositeType` instance