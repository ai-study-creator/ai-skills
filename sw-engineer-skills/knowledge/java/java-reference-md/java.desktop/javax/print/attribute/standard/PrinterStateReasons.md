Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class PrinterStateReasons

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.AbstractMap](../../../../../java.base/java/util/AbstractMap.md "class in java.util")<[PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard"),[Severity](Severity.md "class in javax.print.attribute.standard")>

[java.util.HashMap](../../../../../java.base/java/util/HashMap.md "class in java.util")<[PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard"),[Severity](Severity.md "class in javax.print.attribute.standard")>

javax.print.attribute.standard.PrinterStateReasons

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Map<PrinterStateReason,Severity>`, `Attribute`, `PrintServiceAttribute`

---

public final class PrinterStateReasons
extends [HashMap](../../../../../java.base/java/util/HashMap.md "class in java.util")<[PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard"),[Severity](Severity.md "class in javax.print.attribute.standard")>
implements [PrintServiceAttribute](../PrintServiceAttribute.md "interface in javax.print.attribute")

Class `PrinterStateReasons` is a printing attribute class, a set of
enumeration values, that provides additional information about the printer's
current state, i.e., information that augments the value of the printer's
[`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") attribute.

Instances of [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") do not appear in a
Print Service's attribute set directly. Rather, a `PrinterStateReasons`
attribute appears in the Print Service's attribute set. The
`PrinterStateReasons` attribute contains zero, one, or more than one
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") objects which pertain to the
Print Service's status, and each
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") object is associated with a
[`Severity`](Severity.md "class in javax.print.attribute.standard") level of `REPORT` (least severe),
`WARNING`, or `ERROR` (most severe). The printer adds a
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") object to the Print Service's
`PrinterStateReasons` attribute when the corresponding condition
becomes true of the printer, and the printer removes the
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") object again when the
corresponding condition becomes false, regardless of whether the Print
Service's overall [`PrinterState`](PrinterState.md "class in javax.print.attribute.standard") also changed.

Class PrinterStateReasons inherits its implementation from class
[`java.util.HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util"). Each entry in the map consists of a
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") object (key) mapping to a
[`Severity`](Severity.md "class in javax.print.attribute.standard") object (value):

Unlike most printing attributes which are immutable once constructed, class
`PrinterStateReasons` is designed to be mutable; you can add
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") objects to an existing
`PrinterStateReasons` object and remove them again. However, like class
[`java.util.HashMap`](../../../../../java.base/java/util/HashMap.md "class in java.util"), class `PrinterStateReasons` is not
multiple thread safe. If a `PrinterStateReasons` object will be used by
multiple threads, be sure to synchronize its operations (e.g., using a
synchronized map view obtained from class [`java.util.Collections`](../../../../../java.base/java/util/Collections.md "class in java.util")).

**IPP Compatibility:** The string values returned by each individual
[`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") object's and the associated
[`Severity`](Severity.md "class in javax.print.attribute.standard") object's `toString()` methods, concatenated
together with a hyphen (`"-"`) in between, gives the IPP keyword value.
The category name returned by `getName()` gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.PrinterStateReasons)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.util.[AbstractMap](../../../../../java.base/java/util/AbstractMap.md "class in java.util")

  `AbstractMap.SimpleEntry<K,V>, AbstractMap.SimpleImmutableEntry<K,V>`

  ## Nested classes/interfaces inherited from interface java.util.[Map](../../../../../java.base/java/util/Map.md "interface in java.util")

  `Map.Entry<K,V>`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PrinterStateReasons()`

  Construct a new, empty printer state reasons attribute; the underlying
  hash map has the default initial capacity and load factor.

  `PrinterStateReasons(int initialCapacity)`

  Construct a new, empty printer state reasons attribute; the underlying
  hash map has the given initial capacity and the default load factor.

  `PrinterStateReasons(int initialCapacity,
  float loadFactor)`

  Construct a new, empty printer state reasons attribute; the underlying
  hash map has the given initial capacity and load factor.

  `PrinterStateReasons(Map<PrinterStateReason,Severity> map)`

  Construct a new printer state reasons attribute that contains the same
  [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard")-to-[`Severity`](Severity.md "class in javax.print.attribute.standard") mappings as the given map.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `Set<PrinterStateReason>`

  `printerStateReasonSet(Severity severity)`

  Obtain an unmodifiable set view of the individual printer state reason
  attributes at the given severity level in this
  `PrinterStateReasons` attribute.

  `Severity`

  `put(PrinterStateReason reason,
  Severity severity)`

  Adds the given printer state reason to this printer state reasons
  attribute, associating it with the given severity level.

  ### Methods inherited from class java.util.[HashMap](../../../../../java.base/java/util/HashMap.md "class in java.util")

  `clear, clone, compute, computeIfAbsent, computeIfPresent, containsKey, containsValue, entrySet, forEach, get, getOrDefault, isEmpty, keySet, merge, newHashMap, putAll, putIfAbsent, remove, remove, replace, replace, replaceAll, size, values`

  ### Methods inherited from class java.util.[AbstractMap](../../../../../java.base/java/util/AbstractMap.md "class in java.util")

  `equals, hashCode, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.util.[Map](../../../../../java.base/java/util/Map.md "interface in java.util")

  `equals, hashCode`

* ## Constructor Details

  + ### PrinterStateReasons

    public PrinterStateReasons()

    Construct a new, empty printer state reasons attribute; the underlying
    hash map has the default initial capacity and load factor.
  + ### PrinterStateReasons

    public PrinterStateReasons(int initialCapacity)

    Construct a new, empty printer state reasons attribute; the underlying
    hash map has the given initial capacity and the default load factor.

    Parameters:
    :   `initialCapacity` - initial capacity

    Throws:
    :   `IllegalArgumentException` - if the initial capacity is negative
  + ### PrinterStateReasons

    public PrinterStateReasons(int initialCapacity,
    float loadFactor)

    Construct a new, empty printer state reasons attribute; the underlying
    hash map has the given initial capacity and load factor.

    Parameters:
    :   `initialCapacity` - initial capacity
    :   `loadFactor` - load factor

    Throws:
    :   `IllegalArgumentException` - if the initial capacity is negative
  + ### PrinterStateReasons

    public PrinterStateReasons([Map](../../../../../java.base/java/util/Map.md "interface in java.util")<[PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard"),[Severity](Severity.md "class in javax.print.attribute.standard")> map)

    Construct a new printer state reasons attribute that contains the same
    [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard")-to-[`Severity`](Severity.md "class in javax.print.attribute.standard") mappings as the given map. The underlying hash map's initial
    capacity and load factor are as specified in the superclass constructor
    [`HashMap(Map)`](../../../../../java.base/java/util/HashMap.md#%3Cinit%3E(java.util.Map)).

    Parameters:
    :   `map` - map to copy

    Throws:
    :   `NullPointerException` - if `map` is `null` or if any key
        or value in `map` is `null`
    :   `ClassCastException` - if any key in `map` is not an instance
        of class [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") or if any
        value in `map` is not an instance of class
        [`Severity`](Severity.md "class in javax.print.attribute.standard")
* ## Method Details

  + ### put

    public [Severity](Severity.md "class in javax.print.attribute.standard") put([PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard") reason,
    [Severity](Severity.md "class in javax.print.attribute.standard") severity)

    Adds the given printer state reason to this printer state reasons
    attribute, associating it with the given severity level. If this printer
    state reasons attribute previously contained a mapping for the given
    printer state reason, the old value is replaced.

    Specified by:
    :   `put` in interface `Map<PrinterStateReason,Severity>`

    Overrides:
    :   `put` in class `HashMap<PrinterStateReason,Severity>`

    Parameters:
    :   `reason` - printer state reason. This must be an instance of class
        [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard")
    :   `severity` - severity of the printer state reason. This must be an
        instance of class [`Severity`](Severity.md "class in javax.print.attribute.standard")

    Returns:
    :   previous severity associated with the given printer state reason,
        or `null` if the given printer state reason was not
        present

    Throws:
    :   `NullPointerException` - if `reason` is `null` or
        `severity` is `null`
    :   `ClassCastException` - if `reason` is not an instance of class
        [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") or if
        `severity` is not an instance of class
        [`Severity`](Severity.md "class in javax.print.attribute.standard")

    Since:
    :   1.5
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `PrinterStateReasons`, the category is class
    `PrinterStateReasons` itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `PrinterStateReasons`, the category name is
    `"printer-state-reasons"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name
  + ### printerStateReasonSet

    public [Set](../../../../../java.base/java/util/Set.md "interface in java.util")<[PrinterStateReason](PrinterStateReason.md "class in javax.print.attribute.standard")> printerStateReasonSet([Severity](Severity.md "class in javax.print.attribute.standard") severity)

    Obtain an unmodifiable set view of the individual printer state reason
    attributes at the given severity level in this
    `PrinterStateReasons` attribute. Each element in the set view is a
    [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") object. The only elements
    in the set view are the [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard")
    objects that map to the given severity value. The set view is backed by
    this `PrinterStateReasons` attribute, so changes to this
    `PrinterStateReasons` attribute are reflected in the set view. The
    set view does not support element insertion or removal. The set view's
    iterator does not support element removal.

    Parameters:
    :   `severity` - severity level

    Returns:
    :   set view of the individual
        [`PrinterStateReason`](PrinterStateReason.md "class in javax.print.attribute.standard") attributes at the
        given [`Severity`](Severity.md "class in javax.print.attribute.standard") level

    Throws:
    :   `NullPointerException` - if `severity` is `null`