Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class HashAttributeSet

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.attribute.HashAttributeSet

All Implemented Interfaces:
:   `Serializable`, `AttributeSet`

Direct Known Subclasses:
:   `HashDocAttributeSet`, `HashPrintJobAttributeSet`, `HashPrintRequestAttributeSet`, `HashPrintServiceAttributeSet`

---

public class HashAttributeSet
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [AttributeSet](AttributeSet.md "interface in javax.print.attribute"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Class `HashAttributeSet` provides an `AttributeSet`
implementation with characteristics of a hash map.

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.attribute.HashAttributeSet)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `HashAttributeSet()`

  Construct a new, empty attribute set.

  `protected`

  `HashAttributeSet(Class<?> interfaceName)`

  Construct a new, empty attribute set, where the members of the attribute
  set are restricted to the given interface.

  `HashAttributeSet(Attribute attribute)`

  Construct a new attribute set, initially populated with the given
  attribute.

  `HashAttributeSet(Attribute[] attributes)`

  Construct a new attribute set, initially populated with the values from
  the given array.

  `protected`

  `HashAttributeSet(Attribute[] attributes,
  Class<?> interfaceName)`

  Construct a new attribute set, where the members of the attribute set are
  restricted to the given interface.

  `protected`

  `HashAttributeSet(Attribute attribute,
  Class<?> interfaceName)`

  Construct a new attribute set, initially populated with the given
  attribute, where the members of the attribute set are restricted to the
  given interface.

  `HashAttributeSet(AttributeSet attributes)`

  Construct a new attribute set, initially populated with the values from
  the given set.

  `protected`

  `HashAttributeSet(AttributeSet attributes,
  Class<?> interfaceName)`

  Construct a new attribute set, initially populated with the values from
  the given set where the members of the attribute set are restricted to
  the given interface.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `add(Attribute attribute)`

  Adds the specified attribute to this attribute set if it is not already
  present, first removing any existing in the same attribute category as
  the specified attribute value.

  `boolean`

  `addAll(AttributeSet attributes)`

  Adds all of the elements in the specified set to this attribute.

  `void`

  `clear()`

  Removes all attributes from this attribute set.

  `boolean`

  `containsKey(Class<?> category)`

  Returns `true` if this attribute set contains an attribute for the
  specified category.

  `boolean`

  `containsValue(Attribute attribute)`

  Returns `true` if this attribute set contains the given attribute.

  `boolean`

  `equals(Object object)`

  Compares the specified object with this attribute set for equality.

  `Attribute`

  `get(Class<?> category)`

  Returns the attribute value which this attribute set contains in the
  given attribute category.

  `int`

  `hashCode()`

  Returns the hash code value for this attribute set.

  `boolean`

  `isEmpty()`

  Returns `true` if this attribute set contains no attributes.

  `boolean`

  `remove(Class<?> category)`

  Removes any attribute for this category from this attribute set if
  present.

  `boolean`

  `remove(Attribute attribute)`

  Removes the specified attribute from this attribute set if present.

  `int`

  `size()`

  Returns the number of attributes in this attribute set.

  `Attribute[]`

  `toArray()`

  Returns an array of the attributes contained in this set.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### HashAttributeSet

    public HashAttributeSet()

    Construct a new, empty attribute set.
  + ### HashAttributeSet

    public HashAttributeSet([Attribute](Attribute.md "interface in javax.print.attribute") attribute)

    Construct a new attribute set, initially populated with the given
    attribute.

    Parameters:
    :   `attribute` - attribute value to add to the set

    Throws:
    :   `NullPointerException` - if `attribute` is `null`
  + ### HashAttributeSet

    public HashAttributeSet([Attribute](Attribute.md "interface in javax.print.attribute")[] attributes)

    Construct a new attribute set, initially populated with the values from
    the given array. The new attribute set is populated by adding the
    elements of `attributes` array to the set in sequence, starting at
    index 0. Thus, later array elements may replace earlier array elements if
    the array contains duplicate attribute values or attribute categories.

    Parameters:
    :   `attributes` - array of attribute values to add to the set. If
        `null`, an empty attribute set is constructed.

    Throws:
    :   `NullPointerException` - if any element of `attributes` is
        `null`
  + ### HashAttributeSet

    public HashAttributeSet([AttributeSet](AttributeSet.md "interface in javax.print.attribute") attributes)

    Construct a new attribute set, initially populated with the values from
    the given set.

    Parameters:
    :   `attributes` - set of attributes from which to initialise this set.
        If `null`, an empty attribute set is constructed.
  + ### HashAttributeSet

    protected HashAttributeSet([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> interfaceName)

    Construct a new, empty attribute set, where the members of the attribute
    set are restricted to the given interface.

    Parameters:
    :   `interfaceName` - the interface of which all members of this
        attribute set must be an instance. It is assumed to be interface
        [`Attribute`](Attribute.md "interface in javax.print.attribute") or a subinterface thereof.

    Throws:
    :   `NullPointerException` - if `interfaceName` is `null`
  + ### HashAttributeSet

    protected HashAttributeSet([Attribute](Attribute.md "interface in javax.print.attribute") attribute,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> interfaceName)

    Construct a new attribute set, initially populated with the given
    attribute, where the members of the attribute set are restricted to the
    given interface.

    Parameters:
    :   `attribute` - attribute value to add to the set
    :   `interfaceName` - the interface of which all members of this
        attribute set must be an instance. It is assumed to be interface
        [`Attribute`](Attribute.md "interface in javax.print.attribute") or a subinterface thereof.

    Throws:
    :   `NullPointerException` - if `attribute` or
        `interfaceName` are `null`
    :   `ClassCastException` - if `attribute` is not an instance of
        `interfaceName`
  + ### HashAttributeSet

    protected HashAttributeSet([Attribute](Attribute.md "interface in javax.print.attribute")[] attributes,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> interfaceName)

    Construct a new attribute set, where the members of the attribute set are
    restricted to the given interface. The new attribute set is populated by
    adding the elements of `attributes` array to the set in sequence,
    starting at index 0. Thus, later array elements may replace earlier array
    elements if the array contains duplicate attribute values or attribute
    categories.

    Parameters:
    :   `attributes` - array of attribute values to add to the set. If
        `null`, an empty attribute set is constructed.
    :   `interfaceName` - the interface of which all members of this
        attribute set must be an instance. It is assumed to be interface
        [`Attribute`](Attribute.md "interface in javax.print.attribute") or a subinterface thereof.

    Throws:
    :   `NullPointerException` - if `interfaceName` is `null`, or
        if any element of `attributes` is `null`
    :   `ClassCastException` - if any element of `attributes` is not an
        instance of `interfaceName`
  + ### HashAttributeSet

    protected HashAttributeSet([AttributeSet](AttributeSet.md "interface in javax.print.attribute") attributes,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> interfaceName)

    Construct a new attribute set, initially populated with the values from
    the given set where the members of the attribute set are restricted to
    the given interface.

    Parameters:
    :   `attributes` - set of attribute values to initialise the set. If
        `null`, an empty attribute set is constructed.
    :   `interfaceName` - The interface of which all members of this
        attribute set must be an instance. It is assumed to be interface
        [`Attribute`](Attribute.md "interface in javax.print.attribute") or a subinterface thereof.

    Throws:
    :   `ClassCastException` - if any element of `attributes` is not an
        instance of `interfaceName`
* ## Method Details

  + ### get

    public [Attribute](Attribute.md "interface in javax.print.attribute") get([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category)

    Returns the attribute value which this attribute set contains in the
    given attribute category. Returns `null` if this attribute set does
    not contain any attribute value in the given attribute category.

    Specified by:
    :   `get` in interface `AttributeSet`

    Parameters:
    :   `category` - attribute category whose associated attribute value is
        to be returned. It must be a [`Class`](../../../../java.base/java/lang/Class.md "class in java.lang") that implements
        interface [`Attribute`](Attribute.md "interface in javax.print.attribute").

    Returns:
    :   the attribute value in the given attribute category contained in
        this attribute set, or `null` if this attribute set does
        not contain any attribute value in the given attribute category

    Throws:
    :   `NullPointerException` - if the `category` is `null`
    :   `ClassCastException` - if the `category` is not a
        [`Class`](../../../../java.base/java/lang/Class.md "class in java.lang") that implements interface
        [`Attribute`](Attribute.md "interface in javax.print.attribute")
  + ### add

    public boolean add([Attribute](Attribute.md "interface in javax.print.attribute") attribute)

    Adds the specified attribute to this attribute set if it is not already
    present, first removing any existing in the same attribute category as
    the specified attribute value.

    Specified by:
    :   `add` in interface `AttributeSet`

    Parameters:
    :   `attribute` - attribute value to be added to this attribute set

    Returns:
    :   `true` if this attribute set changed as a result of the
        call, i.e., the given attribute value was not already a member of
        this attribute set

    Throws:
    :   `NullPointerException` - if the `attribute` is `null`
    :   `UnmodifiableSetException` - if this attribute set does not support
        the `add()` operation
  + ### remove

    public boolean remove([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category)

    Removes any attribute for this category from this attribute set if
    present. If `category` is `null`, then `remove()` does
    nothing and returns `false`.

    Specified by:
    :   `remove` in interface `AttributeSet`

    Parameters:
    :   `category` - attribute category to be removed from this attribute set

    Returns:
    :   `true` if this attribute set changed as a result of the
        call, i.e., the given attribute category had been a member of
        this attribute set

    Throws:
    :   `UnmodifiableSetException` - if this attribute set does not support
        the `remove()` operation
  + ### remove

    public boolean remove([Attribute](Attribute.md "interface in javax.print.attribute") attribute)

    Removes the specified attribute from this attribute set if present. If
    `attribute` is `null`, then `remove()` does nothing and
    returns `false`.

    Specified by:
    :   `remove` in interface `AttributeSet`

    Parameters:
    :   `attribute` - attribute value to be removed from this attribute set

    Returns:
    :   `true` if this attribute set changed as a result of the
        call, i.e., the given attribute value had been a member of this
        attribute set

    Throws:
    :   `UnmodifiableSetException` - if this attribute set does not support
        the `remove()` operation
  + ### containsKey

    public boolean containsKey([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category)

    Returns `true` if this attribute set contains an attribute for the
    specified category.

    Specified by:
    :   `containsKey` in interface `AttributeSet`

    Parameters:
    :   `category` - whose presence in this attribute set is to be tested

    Returns:
    :   `true` if this attribute set contains an attribute value
        for the specified category
  + ### containsValue

    public boolean containsValue([Attribute](Attribute.md "interface in javax.print.attribute") attribute)

    Returns `true` if this attribute set contains the given attribute.

    Specified by:
    :   `containsValue` in interface `AttributeSet`

    Parameters:
    :   `attribute` - value whose presence in this attribute set is to be
        tested

    Returns:
    :   `true` if this attribute set contains the given attribute
        value
  + ### addAll

    public boolean addAll([AttributeSet](AttributeSet.md "interface in javax.print.attribute") attributes)

    Adds all of the elements in the specified set to this attribute. The
    outcome is the same as if the [`add(Attribute)`](#add(javax.print.attribute.Attribute))
    operation had been applied to this attribute set successively with each
    element from the specified set. The behavior of the
    `addAll(AttributeSet)` operation is unspecified if the specified
    set is modified while the operation is in progress.

    If the `addAll(AttributeSet)` operation throws an exception, the
    effect on this attribute set's state is implementation dependent;
    elements from the specified set before the point of the exception may or
    may not have been added to this attribute set.

    Specified by:
    :   `addAll` in interface `AttributeSet`

    Parameters:
    :   `attributes` - whose elements are to be added to this attribute set

    Returns:
    :   `true` if this attribute set changed as a result of the
        call

    Throws:
    :   `UnmodifiableSetException` - if this attribute set does not support
        the `addAll(AttributeSet)` method
    :   `NullPointerException` - if some element in the specified set is
        `null`, or the set is `null`

    See Also:
    :   - [`add(Attribute)`](#add(javax.print.attribute.Attribute))
  + ### size

    public int size()

    Returns the number of attributes in this attribute set. If this attribute
    set contains more than `Integer.MAX_VALUE` elements, returns
    `Integer.MAX_VALUE`.

    Specified by:
    :   `size` in interface `AttributeSet`

    Returns:
    :   the number of attributes in this attribute set
  + ### toArray

    public [Attribute](Attribute.md "interface in javax.print.attribute")[] toArray()

    Returns an array of the attributes contained in this set.

    Specified by:
    :   `toArray` in interface `AttributeSet`

    Returns:
    :   the attributes contained in this set as an array, zero length if
        the `AttributeSet` is empty
  + ### clear

    public void clear()

    Removes all attributes from this attribute set.

    Specified by:
    :   `clear` in interface `AttributeSet`

    Throws:
    :   `UnmodifiableSetException` - if this attribute set does not support
        the `clear()` operation
  + ### isEmpty

    public boolean isEmpty()

    Returns `true` if this attribute set contains no attributes.

    Specified by:
    :   `isEmpty` in interface `AttributeSet`

    Returns:
    :   `true` if this attribute set contains no attributes
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Compares the specified object with this attribute set for equality.
    Returns `true` if the given object is also an attribute set and the
    two attribute sets contain the same attribute category-attribute value
    mappings. This ensures that the `equals()` method works properly
    across different implementations of the `AttributeSet` interface.

    Specified by:
    :   `equals` in interface `AttributeSet`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `object` - to be compared for equality with this attribute set

    Returns:
    :   `true` if the specified object is equal to this attribute
        set

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code value for this attribute set. The hash code of an
    attribute set is defined to be the sum of the hash codes of each entry in
    the `AttributeSet`. This ensures that `t1.equals(t2)` implies
    that `t1.hashCode()==t2.hashCode()` for any two attribute sets
    `t1` and `t2`, as required by the general contract of
    [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    Specified by:
    :   `hashCode` in interface `AttributeSet`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this attribute set

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))