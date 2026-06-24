Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class HashDocAttributeSet

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")

javax.print.attribute.HashDocAttributeSet

All Implemented Interfaces:
:   `Serializable`, `AttributeSet`, `DocAttributeSet`

---

public class HashDocAttributeSet
extends [HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")
implements [DocAttributeSet](DocAttributeSet.md "interface in javax.print.attribute"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Class `HashDocAttributeSet` provides an attribute set which inherits
its implementation from class [`HashAttributeSet`](HashAttributeSet.md "class in javax.print.attribute") and
enforces the semantic restrictions of interface
[`DocAttributeSet`](DocAttributeSet.md "interface in javax.print.attribute").

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.attribute.HashDocAttributeSet)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HashDocAttributeSet()`

  Construct a new, empty hash doc attribute set.

  `HashDocAttributeSet(DocAttribute attribute)`

  Construct a new hash doc attribute set, initially populated with the
  given value.

  `HashDocAttributeSet(DocAttribute[] attributes)`

  Construct a new hash doc attribute set, initially populated with the
  values from the given array.

  `HashDocAttributeSet(DocAttributeSet attributes)`

  Construct a new attribute set, initially populated with the values from
  the given set where the members of the attribute set are restricted to
  the `DocAttribute` interface.
* ## Method Summary

  ### Methods inherited from class javax.print.attribute.[HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")

  `add, addAll, clear, containsKey, containsValue, equals, get, hashCode, isEmpty, remove, remove, size, toArray`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.print.attribute.[AttributeSet](AttributeSet.md "interface in javax.print.attribute")

  `clear, containsKey, containsValue, equals, get, hashCode, isEmpty, remove, remove, size, toArray`

  ### Methods inherited from interface javax.print.attribute.[DocAttributeSet](DocAttributeSet.md "interface in javax.print.attribute")

  `add, addAll`

* ## Constructor Details

  + ### HashDocAttributeSet

    public HashDocAttributeSet()

    Construct a new, empty hash doc attribute set.
  + ### HashDocAttributeSet

    public HashDocAttributeSet([DocAttribute](DocAttribute.md "interface in javax.print.attribute") attribute)

    Construct a new hash doc attribute set, initially populated with the
    given value.

    Parameters:
    :   `attribute` - attribute value to add to the set

    Throws:
    :   `NullPointerException` - if `attribute` is `null`
  + ### HashDocAttributeSet

    public HashDocAttributeSet([DocAttribute](DocAttribute.md "interface in javax.print.attribute")[] attributes)

    Construct a new hash doc attribute set, initially populated with the
    values from the given array. The new attribute set is populated by adding
    the elements of `attributes` array to the set in sequence, starting
    at index 0. Thus, later array elements may replace earlier array elements
    if the array contains duplicate attribute values or attribute categories.

    Parameters:
    :   `attributes` - array of attribute values to add to the set. If
        `null`, an empty attribute set is constructed.

    Throws:
    :   `NullPointerException` - if any element of `attributes` is
        `null`
  + ### HashDocAttributeSet

    public HashDocAttributeSet([DocAttributeSet](DocAttributeSet.md "interface in javax.print.attribute") attributes)

    Construct a new attribute set, initially populated with the values from
    the given set where the members of the attribute set are restricted to
    the `DocAttribute` interface.

    Parameters:
    :   `attributes` - set of attribute values to initialise the set. If
        `null`, an empty attribute set is constructed.

    Throws:
    :   `ClassCastException` - if any element of `attributes` is not an
        instance of `DocAttribute`