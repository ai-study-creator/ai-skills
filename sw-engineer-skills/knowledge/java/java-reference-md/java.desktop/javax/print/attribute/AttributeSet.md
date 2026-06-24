Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Interface AttributeSet

All Known Subinterfaces:
:   `DocAttributeSet`, `PrintJobAttributeSet`, `PrintRequestAttributeSet`, `PrintServiceAttributeSet`

All Known Implementing Classes:
:   `HashAttributeSet`, `HashDocAttributeSet`, `HashPrintJobAttributeSet`, `HashPrintRequestAttributeSet`, `HashPrintServiceAttributeSet`

---

public interface AttributeSet

Interface `AttributeSet` specifies the interface for a set of printing
attributes. A printing attribute is an object whose class implements
interface [`Attribute`](Attribute.md "interface in javax.print.attribute").

An attribute set contains a group of *attribute values,* where duplicate
values are not allowed in the set. Furthermore, each value in an attribute
set is a member of some *category,* and at most one value in any
particular category is allowed in the set. For an attribute set, the values
are [`Attribute`](Attribute.md "interface in javax.print.attribute") objects, and the categories are
[`Class`](../../../../java.base/java/lang/Class.md "class in java.lang") objects. An attribute's category is the class (or
interface) at the root of the class hierarchy for that kind of attribute.
Note that an attribute object's category may be a superclass of the attribute
object's class rather than the attribute object's class itself. An attribute
object's category is determined by calling the
[`getCategory()`](Attribute.md#getCategory()) method defined in interface
[`Attribute`](Attribute.md "interface in javax.print.attribute").

The interfaces of an `AttributeSet` resemble those of the Java
Collections API's `java.util.Map` interface, but is more restrictive in
the types it will accept, and combines keys and values into an
`Attribute`.

Attribute sets are used in several places in the Print Service API. In each
context, only certain kinds of attributes are allowed to appear in the
attribute set, as determined by the tagging interfaces which the attribute
class implements -- [`DocAttribute`](DocAttribute.md "interface in javax.print.attribute"),
[`PrintRequestAttribute`](PrintRequestAttribute.md "interface in javax.print.attribute"),
[`PrintJobAttribute`](PrintJobAttribute.md "interface in javax.print.attribute"), and
[`PrintServiceAttribute`](PrintServiceAttribute.md "interface in javax.print.attribute").
There are four specializations of an attribute set that are restricted to
contain just one of the four kinds of attribute --
[`DocAttributeSet`](DocAttributeSet.md "interface in javax.print.attribute"),
[`PrintRequestAttributeSet`](PrintRequestAttributeSet.md "interface in javax.print.attribute"),
[`PrintJobAttributeSet`](PrintJobAttributeSet.md "interface in javax.print.attribute"), and
[`PrintServiceAttributeSet`](PrintServiceAttributeSet.md "interface in javax.print.attribute"), respectively. Note
that many attribute classes implement more than one tagging interface and so
may appear in more than one context.

* A [`DocAttributeSet`](DocAttributeSet.md "interface in javax.print.attribute"), containing
  [`DocAttribute`](DocAttribute.md "interface in javax.print.attribute")s, specifies the characteristics of an
  individual doc and the print job settings to be applied to an individual
  doc.* A [`PrintRequestAttributeSet`](PrintRequestAttributeSet.md "interface in javax.print.attribute"), containing
    [`PrintRequestAttribute`](PrintRequestAttribute.md "interface in javax.print.attribute")s, specifies the
    settings to be applied to a whole print job and to all the docs in the
    print job.* A [`PrintJobAttributeSet`](PrintJobAttributeSet.md "interface in javax.print.attribute"), containing
      [`PrintJobAttribute`](PrintJobAttribute.md "interface in javax.print.attribute")s, reports the status of a print
      job.* A [`PrintServiceAttributeSet`](PrintServiceAttributeSet.md "interface in javax.print.attribute"), containing
        [`PrintServiceAttribute`](PrintServiceAttribute.md "interface in javax.print.attribute")s, reports the status of
        a Print Service instance.

In some contexts, the client is only allowed to examine an attribute set's
contents but not change them (the set is read-only). In other places, the
client is allowed both to examine and to change an attribute set's contents
(the set is read-write). For a read-only attribute set, calling a mutating
operation throws an `UnmodifiableSetException`.

The Print Service API provides one implementation of interface
`AttributeSet`, class [`HashAttributeSet`](HashAttributeSet.md "class in javax.print.attribute"). A
client can use class [`HashAttributeSet`](HashAttributeSet.md "class in javax.print.attribute") or provide its
own implementation of interface `AttributeSet`. The Print Service API
also provides implementations of interface `AttributeSet`'s
subinterfaces -- classes
[`HashDocAttributeSet`](HashDocAttributeSet.md "class in javax.print.attribute"),
[`HashPrintRequestAttributeSet`](HashPrintRequestAttributeSet.md "class in javax.print.attribute"),
[`HashPrintJobAttributeSet`](HashPrintJobAttributeSet.md "class in javax.print.attribute"), and
[`HashPrintServiceAttributeSet`](HashPrintServiceAttributeSet.md "class in javax.print.attribute").

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `add(Attribute attribute)`

  Adds the specified attribute to this attribute set if it is not already
  present, first removing any existing value in the same attribute category
  as the specified attribute value.

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

  Returns `true` if this attribute set contains the given attribute
  value.

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

* ## Method Details

  + ### get

    [Attribute](Attribute.md "interface in javax.print.attribute") get([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category)

    Returns the attribute value which this attribute set contains in the
    given attribute category. Returns `null` if this attribute set does
    not contain any attribute value in the given attribute category.

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

    boolean add([Attribute](Attribute.md "interface in javax.print.attribute") attribute)

    Adds the specified attribute to this attribute set if it is not already
    present, first removing any existing value in the same attribute category
    as the specified attribute value.

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

    boolean remove([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category)

    Removes any attribute for this category from this attribute set if
    present. If `category` is `null`, then `remove()` does
    nothing and returns `false`.

    Parameters:
    :   `category` - attribute category to be removed from this attribute set

    Returns:
    :   `true` if this attribute set changed as a result of the
        call, i.e., the given attribute value had been a member of this
        attribute set

    Throws:
    :   `UnmodifiableSetException` - if this attribute set does not support
        the `remove()` operation
  + ### remove

    boolean remove([Attribute](Attribute.md "interface in javax.print.attribute") attribute)

    Removes the specified attribute from this attribute set if present. If
    `attribute` is `null`, then `remove()` does nothing and
    returns `false`.

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

    boolean containsKey([Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> category)

    Returns `true` if this attribute set contains an attribute for the
    specified category.

    Parameters:
    :   `category` - whose presence in this attribute set is to be tested

    Returns:
    :   `true` if this attribute set contains an attribute value
        for the specified category
  + ### containsValue

    boolean containsValue([Attribute](Attribute.md "interface in javax.print.attribute") attribute)

    Returns `true` if this attribute set contains the given attribute
    value.

    Parameters:
    :   `attribute` - attribute value whose presence in this attribute set is
        to be tested

    Returns:
    :   `true` if this attribute set contains the given attribute
        value
  + ### addAll

    boolean addAll([AttributeSet](AttributeSet.md "interface in javax.print.attribute") attributes)

    Adds all of the elements in the specified set to this attribute. The
    outcome is the same as if the = [`add(Attribute)`](#add(javax.print.attribute.Attribute))
    operation had been applied to this attribute set successively with each
    element from the specified set. The behavior of the
    `addAll(AttributeSet)` operation is unspecified if the specified
    set is modified while the operation is in progress.

    If the `addAll(AttributeSet)` operation throws an exception, the
    effect on this attribute set's state is implementation dependent;
    elements from the specified set before the point of the exception may or
    may not have been added to this attribute set.

    Parameters:
    :   `attributes` - whose elements are to be added to this attribute set

    Returns:
    :   `true` if this attribute set changed as a result of the
        call

    Throws:
    :   `UnmodifiableSetException` - if this attribute set does not support
        the `addAll(AttributeSet)` method
    :   `NullPointerException` - if some element in the specified set is
        `null`

    See Also:
    :   - [`add(Attribute)`](#add(javax.print.attribute.Attribute))
  + ### size

    int size()

    Returns the number of attributes in this attribute set. If this attribute
    set contains more than `Integer.MAX_VALUE` elements, returns
    `Integer.MAX_VALUE`.

    Returns:
    :   the number of attributes in this attribute set
  + ### toArray

    [Attribute](Attribute.md "interface in javax.print.attribute")[] toArray()

    Returns an array of the attributes contained in this set.

    Returns:
    :   the `Attributes` contained in this set as an array, zero
        length if the `AttributeSet` is empty
  + ### clear

    void clear()

    Removes all attributes from this attribute set.

    Throws:
    :   `UnmodifiableSetException` - if this attribute set does not support
        the `clear()` operation
  + ### isEmpty

    boolean isEmpty()

    Returns `true` if this attribute set contains no attributes.

    Returns:
    :   `true` if this attribute set contains no attributes
  + ### equals

    boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") object)

    Compares the specified object with this attribute set for equality.
    Returns `true` if the given object is also an attribute set and the
    two attribute sets contain the same attribute category-attribute value
    mappings. This ensures that the `equals()` method works properly
    across different implementations of the `AttributeSet` interface.

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

    int hashCode()

    Returns the hash code value for this attribute set. The hash code of an
    attribute set is defined to be the sum of the hash codes of each entry in
    the `AttributeSet`. This ensures that `t1.equals(t2)` implies
    that `t1.hashCode()==t2.hashCode()` for any two attribute sets
    `t1` and `t2`, as required by the general contract of
    [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this attribute set

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))