Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Class HashPrintRequestAttributeSet

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")

javax.print.attribute.HashPrintRequestAttributeSet

All Implemented Interfaces:
:   `Serializable`, `AttributeSet`, `PrintRequestAttributeSet`

---

public class HashPrintRequestAttributeSet
extends [HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")
implements [PrintRequestAttributeSet](PrintRequestAttributeSet.md "interface in javax.print.attribute"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

Class `HashPrintRequestAttributeSet` inherits its implementation from
class [`HashAttributeSet`](HashAttributeSet.md "class in javax.print.attribute") and enforces the semantic
restrictions of interface
[`PrintRequestAttributeSet`](PrintRequestAttributeSet.md "interface in javax.print.attribute").

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.print.attribute.HashPrintRequestAttributeSet)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HashPrintRequestAttributeSet()`

  Construct a new, empty print request attribute set.

  `HashPrintRequestAttributeSet(PrintRequestAttribute attribute)`

  Construct a new print request attribute set, initially populated with the
  given value.

  `HashPrintRequestAttributeSet(PrintRequestAttribute[] attributes)`

  Construct a new print request attribute set, initially populated with the
  values from the given array.

  `HashPrintRequestAttributeSet(PrintRequestAttributeSet attributes)`

  Construct a new attribute set, initially populated with the values from
  the given set where the members of the attribute set are restricted to
  the `(PrintRequestAttributeSe` interface.
* ## Method Summary

  ### Methods inherited from class javax.print.attribute.[HashAttributeSet](HashAttributeSet.md "class in javax.print.attribute")

  `add, addAll, clear, containsKey, containsValue, equals, get, hashCode, isEmpty, remove, remove, size, toArray`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.print.attribute.[AttributeSet](AttributeSet.md "interface in javax.print.attribute")

  `clear, containsKey, containsValue, equals, get, hashCode, isEmpty, remove, remove, size, toArray`

  ### Methods inherited from interface javax.print.attribute.[PrintRequestAttributeSet](PrintRequestAttributeSet.md "interface in javax.print.attribute")

  `add, addAll`

* ## Constructor Details

  + ### HashPrintRequestAttributeSet

    public HashPrintRequestAttributeSet()

    Construct a new, empty print request attribute set.
  + ### HashPrintRequestAttributeSet

    public HashPrintRequestAttributeSet([PrintRequestAttribute](PrintRequestAttribute.md "interface in javax.print.attribute") attribute)

    Construct a new print request attribute set, initially populated with the
    given value.

    Parameters:
    :   `attribute` - attribute value to add to the set

    Throws:
    :   `NullPointerException` - if `attribute` is `null`
  + ### HashPrintRequestAttributeSet

    public HashPrintRequestAttributeSet([PrintRequestAttribute](PrintRequestAttribute.md "interface in javax.print.attribute")[] attributes)

    Construct a new print request attribute set, initially populated with the
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
  + ### HashPrintRequestAttributeSet

    public HashPrintRequestAttributeSet([PrintRequestAttributeSet](PrintRequestAttributeSet.md "interface in javax.print.attribute") attributes)

    Construct a new attribute set, initially populated with the values from
    the given set where the members of the attribute set are restricted to
    the `(PrintRequestAttributeSe` interface.

    Parameters:
    :   `attributes` - set of attribute values to initialise the set. If
        `null`, an empty attribute set is constructed.

    Throws:
    :   `ClassCastException` - if any element of `attributes` is not an
        instance of `PrintRequestAttributeSe`