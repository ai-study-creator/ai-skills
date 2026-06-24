Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class JobStateReasons

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.util.AbstractCollection](../../../../../java.base/java/util/AbstractCollection.md "class in java.util")<[JobStateReason](JobStateReason.md "class in javax.print.attribute.standard")>

[java.util.AbstractSet](../../../../../java.base/java/util/AbstractSet.md "class in java.util")<[JobStateReason](JobStateReason.md "class in javax.print.attribute.standard")>

[java.util.HashSet](../../../../../java.base/java/util/HashSet.md "class in java.util")<[JobStateReason](JobStateReason.md "class in javax.print.attribute.standard")>

javax.print.attribute.standard.JobStateReasons

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Iterable<JobStateReason>`, `Collection<JobStateReason>`, `Set<JobStateReason>`, `Attribute`, `PrintJobAttribute`

---

public final class JobStateReasons
extends [HashSet](../../../../../java.base/java/util/HashSet.md "class in java.util")<[JobStateReason](JobStateReason.md "class in javax.print.attribute.standard")>
implements [PrintJobAttribute](../PrintJobAttribute.md "interface in javax.print.attribute")

Class `JobStateReasons` is a printing attribute class, a set of
enumeration values, that provides additional information about the job's
current state, i.e., information that augments the value of the job's
[`JobState`](JobState.md "class in javax.print.attribute.standard") attribute.

Instances of [`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard") do not appear in a Print
Job's attribute set directly. Rather, a `JobStateReasons` attribute
appears in the Print Job's attribute set. The `JobStateReasons`
attribute contains zero, one, or more than one
[`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard") objects which pertain to the Print
Job's status. The printer adds a [`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard") object
to the Print Job's JobStateReasons attribute when the corresponding condition
becomes true of the Print Job, and the printer removes the
[`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard") object again when the corresponding
condition becomes false, regardless of whether the Print Job's overall
[`JobState`](JobState.md "class in javax.print.attribute.standard") also changed.

Class `JobStateReasons` inherits its implementation from class
[`java.util.HashSet`](../../../../../java.base/java/util/HashSet.md "class in java.util"). Unlike most printing attributes
which are immutable once constructed, class `JobStateReasons` is
designed to be mutable; you can add [`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard")
objects to an existing `JobStateReasons` object and remove them again.
However, like class [`java.util.HashSet`](../../../../../java.base/java/util/HashSet.md "class in java.util"), class
`JobStateReasons` is not multiple thread safe. If a
`JobStateReasons` object will be used by multiple threads, be sure to
synchronize its operations (e.g., using a synchronized set view obtained
from class [`java.util.Collections`](../../../../../java.base/java/util/Collections.md "class in java.util")).

**IPP Compatibility:** The string value returned by each individual
[`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard") object's `toString()` method
gives the IPP keyword value. The category name returned by `getName()`
gives the IPP attribute name.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.JobStateReasons)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobStateReasons()`

  Construct a new, empty job state reasons attribute; the underlying hash
  set has the default initial capacity and load factor.

  `JobStateReasons(int initialCapacity)`

  Construct a new, empty job state reasons attribute; the underlying hash
  set has the given initial capacity and the default load factor.

  `JobStateReasons(int initialCapacity,
  float loadFactor)`

  Construct a new, empty job state reasons attribute; the underlying hash
  set has the given initial capacity and load factor.

  `JobStateReasons(Collection<JobStateReason> collection)`

  Construct a new job state reasons attribute that contains the same
  [`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard") objects as the given collection.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `add(JobStateReason o)`

  Adds the specified element to this job state reasons attribute if it is
  not already present.

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  ### Methods inherited from class java.util.[HashSet](../../../../../java.base/java/util/HashSet.md "class in java.util")

  `clear, clone, contains, isEmpty, iterator, newHashSet, remove, size, spliterator, toArray, toArray`

  ### Methods inherited from class java.util.[AbstractSet](../../../../../java.base/java/util/AbstractSet.md "class in java.util")

  `equals, hashCode, removeAll`

  ### Methods inherited from class java.util.[AbstractCollection](../../../../../java.base/java/util/AbstractCollection.md "class in java.util")

  `addAll, containsAll, retainAll, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.util.[Collection](../../../../../java.base/java/util/Collection.md "interface in java.util")

  `parallelStream, removeIf, stream, toArray`

  ### Methods inherited from interface java.lang.[Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach`

  ### Methods inherited from interface java.util.[Set](../../../../../java.base/java/util/Set.md "interface in java.util")

  `addAll, containsAll, equals, hashCode, removeAll, retainAll`

* ## Constructor Details

  + ### JobStateReasons

    public JobStateReasons()

    Construct a new, empty job state reasons attribute; the underlying hash
    set has the default initial capacity and load factor.
  + ### JobStateReasons

    public JobStateReasons(int initialCapacity)

    Construct a new, empty job state reasons attribute; the underlying hash
    set has the given initial capacity and the default load factor.

    Parameters:
    :   `initialCapacity` - initial capacity

    Throws:
    :   `IllegalArgumentException` - if the initial capacity is negative
  + ### JobStateReasons

    public JobStateReasons(int initialCapacity,
    float loadFactor)

    Construct a new, empty job state reasons attribute; the underlying hash
    set has the given initial capacity and load factor.

    Parameters:
    :   `initialCapacity` - initial capacity
    :   `loadFactor` - load factor

    Throws:
    :   `IllegalArgumentException` - if the initial capacity is negative
  + ### JobStateReasons

    public JobStateReasons([Collection](../../../../../java.base/java/util/Collection.md "interface in java.util")<[JobStateReason](JobStateReason.md "class in javax.print.attribute.standard")> collection)

    Construct a new job state reasons attribute that contains the same
    [`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard") objects as the given collection.
    The underlying hash set's initial capacity and load factor are as
    specified in the superclass constructor
    [`HashSet(Collection)`](../../../../../java.base/java/util/HashSet.md#%3Cinit%3E(java.util.Collection)).

    Parameters:
    :   `collection` - collection to copy

    Throws:
    :   `NullPointerException` - if `collection` is `null` or if
        any element in `collection` is `null`
    :   `ClassCastException` - if any element in `collection` is not an
        instance of class [`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard")
* ## Method Details

  + ### add

    public boolean add([JobStateReason](JobStateReason.md "class in javax.print.attribute.standard") o)

    Adds the specified element to this job state reasons attribute if it is
    not already present. The element to be added must be an instance of class
    [`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard"). If this job state reasons
    attribute already contains the specified element, the call leaves this
    job state reasons attribute unchanged and returns `false`.

    Specified by:
    :   `add` in interface `Collection<JobStateReason>`

    Specified by:
    :   `add` in interface `Set<JobStateReason>`

    Overrides:
    :   `add` in class `HashSet<JobStateReason>`

    Parameters:
    :   `o` - element to be added to this job state reasons attribute

    Returns:
    :   `true` if this job state reasons attribute did not already
        contain the specified element

    Throws:
    :   `NullPointerException` - if the specified element is `null`
    :   `ClassCastException` - if the specified element is not an instance of
        class [`JobStateReason`](JobStateReason.md "class in javax.print.attribute.standard")

    Since:
    :   1.5
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `JobStateReasons`, the category is class
    JobStateReasons itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class JobStateReasons, the category name is
    `"job-state-reasons"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name