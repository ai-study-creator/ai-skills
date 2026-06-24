Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class HashPrintJobAttributeSet

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")

javax.print.attribute.HashPrintJobAttributeSet

All Implemented Interfaces:
:   `Serializable`, `AttributeSet`, `PrintJobAttributeSet`

---

public class HashPrintJobAttributeSet
extends [HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")
implements [PrintJobAttributeSet](PrintJobAttributeSet.md "interface in javax.print.attribute"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Class `HashPrintJobAttributeSet` provides an attribute set which
inherits its implementation from class
[`HashAttributeSet`](HashAttributeSet.md "class in javax.print.attribute") and enforces the semantic
restrictions of interface [`PrintJobAttributeSet`](PrintJobAttributeSet.md "interface in javax.print.attribute").

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.attribute.HashPrintJobAttributeSet)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HashPrintJobAttributeSet()`

  Construct a new, empty hash print job attribute set.

  `HashPrintJobAttributeSet(PrintJobAttribute attribute)`

  Construct a new hash print job attribute set, initially populated with
  the given value.

  `HashPrintJobAttributeSet(PrintJobAttribute[] attributes)`

  Construct a new hash print job attribute set, initially populated with
  the values from the given array.

  `HashPrintJobAttributeSet(PrintJobAttributeSet attributes)`

  Construct a new attribute set, initially populated with the values from
  the given set where the members of the attribute set are restricted to
  the `PrintJobAttribute` interface.
* ## Method Summary

  ### Methods inherited from class javax.print.attribute.[HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")

  `add, addAll, clear, containsKey, containsValue, equals, get, hashCode, isEmpty, remove, remove, size, toArray`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.print.attribute.[AttributeSet](AttributeSet.md "interface in javax.print.attribute")

  `clear, containsKey, containsValue, equals, get, hashCode, isEmpty, remove, remove, size, toArray`

  ### Methods inherited from interface javax.print.attribute.[PrintJobAttributeSet](PrintJobAttributeSet.md "interface in javax.print.attribute")

  `add, addAll`

* ## Constructor Details

  + ### HashPrintJobAttributeSet

    public HashPrintJobAttributeSet()

    Construct a new, empty hash print job attribute set.
  + ### HashPrintJobAttributeSet

    public HashPrintJobAttributeSet([PrintJobAttribute](PrintJobAttribute.md "interface in javax.print.attribute") attribute)

    Construct a new hash print job attribute set, initially populated with
    the given value.

    Parameters:
    :   `attribute` - attribute value to add to the set

    Throws:
    :   `NullPointerException` - if `attribute` is `null`
  + ### HashPrintJobAttributeSet

    public HashPrintJobAttributeSet([PrintJobAttribute](PrintJobAttribute.md "interface in javax.print.attribute")[] attributes)

    Construct a new hash print job attribute set, initially populated with
    the values from the given array. The new attribute set is populated by
    adding the elements of `attributes` array to the set in sequence,
    starting at index 0. Thus, later array elements may replace earlier array
    elements if the array contains duplicate attribute values or attribute
    categories.

    Parameters:
    :   `attributes` - array of attribute values to add to the set. If
        `null`, an empty attribute set is constructed.

    Throws:
    :   `NullPointerException` - if any element of `attributes` is
        `null`
  + ### HashPrintJobAttributeSet

    public HashPrintJobAttributeSet([PrintJobAttributeSet](PrintJobAttributeSet.md "interface in javax.print.attribute") attributes)

    Construct a new attribute set, initially populated with the values from
    the given set where the members of the attribute set are restricted to
    the `PrintJobAttribute` interface.

    Parameters:
    :   `attributes` - set of attribute values to initialise the set. If
        `null`, an empty attribute set is constructed.

    Throws:
    :   `ClassCastException` - if any element of `attributes` is not an
        instance of `PrintJobAttribute`