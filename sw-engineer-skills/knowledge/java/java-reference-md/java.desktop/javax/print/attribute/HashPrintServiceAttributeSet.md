Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class HashPrintServiceAttributeSet

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")

javax.print.attribute.HashPrintServiceAttributeSet

All Implemented Interfaces:
:   `Serializable`, `AttributeSet`, `PrintServiceAttributeSet`

---

public class HashPrintServiceAttributeSet
extends [HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")
implements [PrintServiceAttributeSet](PrintServiceAttributeSet.md "interface in javax.print.attribute"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Class `HashPrintServiceAttributeSet` provides an attribute set which
inherits its implementation from class
[`HashAttributeSet`](HashAttributeSet.md "class in javax.print.attribute") and enforces the semantic
restrictions of interface
[`PrintServiceAttributeSet`](PrintServiceAttributeSet.md "interface in javax.print.attribute").

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.attribute.HashPrintServiceAttributeSet)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HashPrintServiceAttributeSet()`

  Construct a new, empty hash print service attribute set.

  `HashPrintServiceAttributeSet(PrintServiceAttribute attribute)`

  Construct a new hash print service attribute set, initially populated
  with the given value.

  `HashPrintServiceAttributeSet(PrintServiceAttribute[] attributes)`

  Construct a new print service attribute set, initially populated with the
  values from the given array.

  `HashPrintServiceAttributeSet(PrintServiceAttributeSet attributes)`

  Construct a new attribute set, initially populated with the values from
  the given set where the members of the attribute set are restricted to
  the `PrintServiceAttribute` interface.
* ## Method Summary

  ### Methods inherited from class javax.print.attribute.[HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")

  `add, addAll, clear, containsKey, containsValue, equals, get, hashCode, isEmpty, remove, remove, size, toArray`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.print.attribute.[AttributeSet](AttributeSet.md "interface in javax.print.attribute")

  `clear, containsKey, containsValue, equals, get, hashCode, isEmpty, remove, remove, size, toArray`

  ### Methods inherited from interface javax.print.attribute.[PrintServiceAttributeSet](PrintServiceAttributeSet.md "interface in javax.print.attribute")

  `add, addAll`

* ## Constructor Details

  + ### HashPrintServiceAttributeSet

    public HashPrintServiceAttributeSet()

    Construct a new, empty hash print service attribute set.
  + ### HashPrintServiceAttributeSet

    public HashPrintServiceAttributeSet([PrintServiceAttribute](PrintServiceAttribute.md "interface in javax.print.attribute") attribute)

    Construct a new hash print service attribute set, initially populated
    with the given value.

    Parameters:
    :   `attribute` - attribute value to add to the set

    Throws:
    :   `NullPointerException` - if `attribute` is `null`
  + ### HashPrintServiceAttributeSet

    public HashPrintServiceAttributeSet([PrintServiceAttribute](PrintServiceAttribute.md "interface in javax.print.attribute")[] attributes)

    Construct a new print service attribute set, initially populated with the
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
  + ### HashPrintServiceAttributeSet

    public HashPrintServiceAttributeSet([PrintServiceAttributeSet](PrintServiceAttributeSet.md "interface in javax.print.attribute") attributes)

    Construct a new attribute set, initially populated with the values from
    the given set where the members of the attribute set are restricted to
    the `PrintServiceAttribute` interface.

    Parameters:
    :   `attributes` - set of attribute values to initialise the set. If
        `null`, an empty attribute set is constructed.

    Throws:
    :   `ClassCastException` - if any element of `attributes` is not an
        instance of `PrintServiceAttribute`