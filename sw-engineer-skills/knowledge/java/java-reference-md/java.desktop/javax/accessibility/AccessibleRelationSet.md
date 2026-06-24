Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleRelationSet

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.accessibility.AccessibleRelationSet

---

public class AccessibleRelationSet
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Class `AccessibleRelationSet` determines a component's relation set.
The relation set of a component is a set of `AccessibleRelation`
objects that describe the component's relationships with other components.

Since:
:   1.3

See Also:
:   * [`AccessibleRelation`](AccessibleRelation.md "class in javax.accessibility")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Vector<AccessibleRelation>`

  `relations`

  Each entry in the `Vector` represents an
  `AccessibleRelation`.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleRelationSet()`

  Creates a new empty relation set.

  `AccessibleRelationSet(AccessibleRelation[] relations)`

  Creates a new relation with the initial set of relations contained in the
  array of relations passed in.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `add(AccessibleRelation relation)`

  Adds a new relation to the current relation set.

  `void`

  `addAll(AccessibleRelation[] relations)`

  Adds all of the relations to the existing relation set.

  `void`

  `clear()`

  Removes all the relations from the current relation set.

  `boolean`

  `contains(String key)`

  Returns whether the relation set contains a relation that matches the
  specified key.

  `AccessibleRelation`

  `get(String key)`

  Returns the relation that matches the specified key.

  `boolean`

  `remove(AccessibleRelation relation)`

  Removes a relation from the current relation set.

  `int`

  `size()`

  Returns the number of relations in the relation set.

  `AccessibleRelation[]`

  `toArray()`

  Returns the current relation set as an array of
  `AccessibleRelation`.

  `String`

  `toString()`

  Creates a localized string representing all the relations in the set
  using the default locale.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### relations

    protected [Vector](../../../java.base/java/util/Vector.md "class in java.util")<[AccessibleRelation](AccessibleRelation.md "class in javax.accessibility")> relations

    Each entry in the `Vector` represents an
    `AccessibleRelation`.

    See Also:
    :   - [`add(javax.accessibility.AccessibleRelation)`](#add(javax.accessibility.AccessibleRelation))
        - [`addAll(javax.accessibility.AccessibleRelation[])`](#addAll(javax.accessibility.AccessibleRelation%5B%5D))
        - [`remove(javax.accessibility.AccessibleRelation)`](#remove(javax.accessibility.AccessibleRelation))
        - [`contains(java.lang.String)`](#contains(java.lang.String))
        - [`get(java.lang.String)`](#get(java.lang.String))
        - [`size()`](#size())
        - [`toArray()`](#toArray())
        - [`clear()`](#clear())
* ## Constructor Details

  + ### AccessibleRelationSet

    public AccessibleRelationSet()

    Creates a new empty relation set.
  + ### AccessibleRelationSet

    public AccessibleRelationSet([AccessibleRelation](AccessibleRelation.md "class in javax.accessibility")[] relations)

    Creates a new relation with the initial set of relations contained in the
    array of relations passed in. Duplicate entries are ignored.

    Parameters:
    :   `relations` - an array of `AccessibleRelation` describing the
        relation set
* ## Method Details

  + ### add

    public boolean add([AccessibleRelation](AccessibleRelation.md "class in javax.accessibility") relation)

    Adds a new relation to the current relation set. If the relation is
    already in the relation set, the target(s) of the specified relation is
    merged with the target(s) of the existing relation. Otherwise, the new
    relation is added to the relation set.

    Parameters:
    :   `relation` - the relation to add to the relation set

    Returns:
    :   `true` if relation is added to the relation set;
        `false` if the relation set is unchanged
  + ### addAll

    public void addAll([AccessibleRelation](AccessibleRelation.md "class in javax.accessibility")[] relations)

    Adds all of the relations to the existing relation set. Duplicate entries
    are ignored.

    Parameters:
    :   `relations` - `AccessibleRelation` array describing the
        relation set
  + ### remove

    public boolean remove([AccessibleRelation](AccessibleRelation.md "class in javax.accessibility") relation)

    Removes a relation from the current relation set. If the relation is not
    in the set, the relation set will be unchanged and the return value will
    be `false`. If the relation is in the relation set, it will be
    removed from the set and the return value will be `true`.

    Parameters:
    :   `relation` - the relation to remove from the relation set

    Returns:
    :   `true` if the relation is in the relation set;
        `false` if the relation set is unchanged
  + ### clear

    public void clear()

    Removes all the relations from the current relation set.
  + ### size

    public int size()

    Returns the number of relations in the relation set.

    Returns:
    :   the number of relations in the relation set
  + ### contains

    public boolean contains([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Returns whether the relation set contains a relation that matches the
    specified key.

    Parameters:
    :   `key` - the `AccessibleRelation` key

    Returns:
    :   `true` if the relation is in the relation set; otherwise
        `false`
  + ### get

    public [AccessibleRelation](AccessibleRelation.md "class in javax.accessibility") get([String](../../../java.base/java/lang/String.md "class in java.lang") key)

    Returns the relation that matches the specified key.

    Parameters:
    :   `key` - the `AccessibleRelation` key

    Returns:
    :   the relation, if one exists, that matches the specified key.
        Otherwise, `null` is returned.
  + ### toArray

    public [AccessibleRelation](AccessibleRelation.md "class in javax.accessibility")[] toArray()

    Returns the current relation set as an array of
    `AccessibleRelation`.

    Returns:
    :   `AccessibleRelation` array contacting the current relation
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Creates a localized string representing all the relations in the set
    using the default locale.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   comma separated localized string

    See Also:
    :   - [`AccessibleBundle.toDisplayString(java.lang.String, java.util.Locale)`](AccessibleBundle.md#toDisplayString(java.lang.String,java.util.Locale))