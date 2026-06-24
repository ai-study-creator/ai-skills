Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface SequencedMap<K,V>

Type Parameters:
:   `K` - the type of keys maintained by this map
:   `V` - the type of mapped values

All Superinterfaces:
:   `Map<K,V>`

All Known Subinterfaces:
:   `ConcurrentNavigableMap<K,V>`, `NavigableMap<K,V>`, `SortedMap<K,V>`

All Known Implementing Classes:
:   `ConcurrentSkipListMap`, `LinkedHashMap`, `TreeMap`

---

public interface SequencedMap<K,V>
extends [Map](Map.md "interface in java.util")<K,V>

A Map that has a well-defined encounter order, that supports operations at both ends, and
that is reversible. The [encounter order](SequencedCollection.md#encounter)
of a `SequencedMap` is similar to that of the elements of a [`SequencedCollection`](SequencedCollection.md "interface in java.util"),
but the ordering applies to mappings instead of individual elements.

The bulk operations on this map, including the [`forEach`](Map.md#forEach(java.util.function.BiConsumer)) and the
[`replaceAll`](Map.md#replaceAll(java.util.function.BiFunction)) methods, operate on this map's mappings in
encounter order.

The view collections provided by the
[`keySet`](Map.md#keySet()),
[`values`](Map.md#values()),
[`entrySet`](Map.md#entrySet()),
[`sequencedKeySet`](#sequencedKeySet()),
[`sequencedValues`](#sequencedValues()),
and
[`sequencedEntrySet`](#sequencedEntrySet()) methods all reflect the encounter order
of this map. Even though the return values of the `keySet`, `values`, and
`entrySet` methods are not sequenced *types*, the elements
in those view collections do reflect the encounter order of this map. Thus, the
iterators returned by the statements

Copy![Copy snippet](../../../copy.svg)

```
    var it1 = sequencedMap.entrySet().iterator();
    var it2 = sequencedMap.sequencedEntrySet().iterator();
```

both provide the mappings of `sequencedMap` in that map's encounter order.

This interface provides methods to add mappings, to retrieve mappings, and to remove
mappings at either end of the map's encounter order.

This interface also defines the [`reversed()`](#reversed()) method, which provides a
reverse-ordered [view](Collection.md#view) of this map.
In the reverse-ordered view, the concepts of first and last are inverted, as
are the concepts of successor and predecessor. The first mapping of this map
is the last mapping of the reverse-ordered view, and vice-versa. The successor of some
mapping in this map is its predecessor in the reversed view, and vice-versa. All
methods that respect the encounter order of the map operate as if the encounter order
is inverted. For instance, the [`forEach`](Map.md#forEach(java.util.function.BiConsumer)) method of the reversed view reports
the mappings in order from the last mapping of this map to the first. In addition, all of
the view collections of the reversed view also reflect the inverse of this map's
encounter order. For example,

Copy![Copy snippet](../../../copy.svg)

```
    var itr = sequencedMap.reversed().entrySet().iterator();
```

provides the mappings of this map in the inverse of the encounter order, that is, from
the last mapping to the first mapping. The availability of the `reversed` method,
and its impact on the ordering semantics of all applicable methods and views, allow convenient
iteration, searching, copying, and streaming of this map's mappings in either forward order or
reverse order.

A map's reverse-ordered view is generally not serializable, even if the original
map is serializable.

The [`Map.Entry`](Map.Entry.md "interface in java.util") instances obtained by iterating the [`Map.entrySet()`](Map.md#entrySet()) view, the
[`sequencedEntrySet()`](#sequencedEntrySet()) view, and its reverse-ordered view, maintain a connection to the
underlying map. This connection is guaranteed only during the iteration. It is unspecified
whether the connection is maintained outside of the iteration. If the underlying map permits
it, calling an Entry's [`setValue`](Map.Entry.md#setValue(V)) method will modify the value of the
underlying mapping. It is, however, unspecified whether modifications to the value in the
underlying mapping are visible in the `Entry` instance.

The methods
[`firstEntry()`](#firstEntry()),
[`lastEntry()`](#lastEntry()),
[`pollFirstEntry()`](#pollFirstEntry()), and
[`pollLastEntry()`](#pollLastEntry())
return [`Map.Entry`](Map.Entry.md "interface in java.util") instances that represent snapshots of mappings as
of the time of the call. They do *not* support mutation of the
underlying map via the optional [`setValue`](Map.Entry.md#setValue(V)) method.

Depending upon the implementation, the `Entry` instances returned by other
means might or might not be connected to the underlying map. For example, consider
an `Entry` obtained in the following manner:

Copy![Copy snippet](../../../copy.svg)

```
    var entry = sequencedMap.sequencedEntrySet().getFirst();
```

It is not specified by this interface whether the `setValue` method of the
`Entry` thus obtained will update a mapping in the underlying map, or whether
it will throw an exception, or whether changes to the underlying map are visible in
that `Entry`.

This interface has the same requirements on the `equals` and `hashCode`
methods as defined by [`Map.equals`](Map.md#equals(java.lang.Object)) and [`Map.hashCode`](Map.md#hashCode()).
Thus, a `Map` and a `SequencedMap` will compare equals if and only
if they have equal mappings, irrespective of ordering.

This class is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   21

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.[Map](Map.md "interface in java.util")

  `Map.Entry<K,V>`
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default Map.Entry<K,V>`

  `firstEntry()`

  Returns the first key-value mapping in this map,
  or `null` if the map is empty.

  `default Map.Entry<K,V>`

  `lastEntry()`

  Returns the last key-value mapping in this map,
  or `null` if the map is empty.

  `default Map.Entry<K,V>`

  `pollFirstEntry()`

  Removes and returns the first key-value mapping in this map,
  or `null` if the map is empty (optional operation).

  `default Map.Entry<K,V>`

  `pollLastEntry()`

  Removes and returns the last key-value mapping in this map,
  or `null` if the map is empty (optional operation).

  `default V`

  `putFirst(K k,
  V v)`

  Inserts the given mapping into the map if it is not already present, or replaces the
  value of a mapping if it is already present (optional operation).

  `default V`

  `putLast(K k,
  V v)`

  Inserts the given mapping into the map if it is not already present, or replaces the
  value of a mapping if it is already present (optional operation).

  `SequencedMap<K,V>`

  `reversed()`

  Returns a reverse-ordered [view](Collection.md#view) of this map.

  `default SequencedSet<Map.Entry<K,V>>`

  `sequencedEntrySet()`

  Returns a `SequencedSet` view of this map's [`entrySet`](Map.md#entrySet()).

  `default SequencedSet<K>`

  `sequencedKeySet()`

  Returns a `SequencedSet` view of this map's [`keySet`](Map.md#keySet()).

  `default SequencedCollection<V>`

  `sequencedValues()`

  Returns a `SequencedCollection` view of this map's [`values`](Map.md#values()) collection.

  ### Methods inherited from interface java.util.[Map](Map.md "interface in java.util")

  `clear, compute, computeIfAbsent, computeIfPresent, containsKey, containsValue, entrySet, equals, forEach, get, getOrDefault, hashCode, isEmpty, keySet, merge, put, putAll, putIfAbsent, remove, remove, replace, replace, replaceAll, size, values`

* ## Method Details

  + ### reversed

    [SequencedMap](SequencedMap.md "interface in java.util")<[K](SequencedMap.md "type parameter in SequencedMap"),[V](SequencedMap.md "type parameter in SequencedMap")> reversed()

    Returns a reverse-ordered [view](Collection.md#view) of this map.
    The encounter order of mappings in the returned view is the inverse of the encounter
    order of mappings in this map. The reverse ordering affects all order-sensitive operations,
    including those on the view collections of the returned view. If the implementation permits
    modifications to this view, the modifications "write through" to the underlying map.
    Changes to the underlying map might or might not be visible in this reversed view,
    depending upon the implementation.

    Returns:
    :   a reverse-ordered view of this map
  + ### firstEntry

    default [Map.Entry](Map.Entry.md "interface in java.util")<[K](SequencedMap.md "type parameter in SequencedMap"),[V](SequencedMap.md "type parameter in SequencedMap")> firstEntry()

    Returns the first key-value mapping in this map,
    or `null` if the map is empty.

    Returns:
    :   the first key-value mapping,
        or `null` if this map is empty
  + ### lastEntry

    default [Map.Entry](Map.Entry.md "interface in java.util")<[K](SequencedMap.md "type parameter in SequencedMap"),[V](SequencedMap.md "type parameter in SequencedMap")> lastEntry()

    Returns the last key-value mapping in this map,
    or `null` if the map is empty.

    Returns:
    :   the last key-value mapping,
        or `null` if this map is empty
  + ### pollFirstEntry

    default [Map.Entry](Map.Entry.md "interface in java.util")<[K](SequencedMap.md "type parameter in SequencedMap"),[V](SequencedMap.md "type parameter in SequencedMap")> pollFirstEntry()

    Removes and returns the first key-value mapping in this map,
    or `null` if the map is empty (optional operation).

    Returns:
    :   the removed first entry of this map,
        or `null` if this map is empty

    Throws:
    :   `UnsupportedOperationException` - if this collection implementation does not
        support this operation
  + ### pollLastEntry

    default [Map.Entry](Map.Entry.md "interface in java.util")<[K](SequencedMap.md "type parameter in SequencedMap"),[V](SequencedMap.md "type parameter in SequencedMap")> pollLastEntry()

    Removes and returns the last key-value mapping in this map,
    or `null` if the map is empty (optional operation).

    Returns:
    :   the removed last entry of this map,
        or `null` if this map is empty

    Throws:
    :   `UnsupportedOperationException` - if this collection implementation does not
        support this operation
  + ### putFirst

    default [V](SequencedMap.md "type parameter in SequencedMap") putFirst([K](SequencedMap.md "type parameter in SequencedMap") k,
    [V](SequencedMap.md "type parameter in SequencedMap") v)

    Inserts the given mapping into the map if it is not already present, or replaces the
    value of a mapping if it is already present (optional operation). After this operation
    completes normally, the given mapping will be present in this map, and it will be the
    first mapping in this map's encounter order.

    Parameters:
    :   `k` - the key
    :   `v` - the value

    Returns:
    :   the value previously associated with k, or null if none

    Throws:
    :   `UnsupportedOperationException` - if this collection implementation does not
        support this operation
  + ### putLast

    default [V](SequencedMap.md "type parameter in SequencedMap") putLast([K](SequencedMap.md "type parameter in SequencedMap") k,
    [V](SequencedMap.md "type parameter in SequencedMap") v)

    Inserts the given mapping into the map if it is not already present, or replaces the
    value of a mapping if it is already present (optional operation). After this operation
    completes normally, the given mapping will be present in this map, and it will be the
    last mapping in this map's encounter order.

    Parameters:
    :   `k` - the key
    :   `v` - the value

    Returns:
    :   the value previously associated with k, or null if none

    Throws:
    :   `UnsupportedOperationException` - if this collection implementation does not
        support this operation
  + ### sequencedKeySet

    default [SequencedSet](SequencedSet.md "interface in java.util")<[K](SequencedMap.md "type parameter in SequencedMap")> sequencedKeySet()

    Returns a `SequencedSet` view of this map's [`keySet`](Map.md#keySet()).

    Returns:
    :   a `SequencedSet` view of this map's `keySet`
  + ### sequencedValues

    default [SequencedCollection](SequencedCollection.md "interface in java.util")<[V](SequencedMap.md "type parameter in SequencedMap")> sequencedValues()

    Returns a `SequencedCollection` view of this map's [`values`](Map.md#values()) collection.

    Returns:
    :   a `SequencedCollection` view of this map's `values` collection
  + ### sequencedEntrySet

    default [SequencedSet](SequencedSet.md "interface in java.util")<[Map.Entry](Map.Entry.md "interface in java.util")<[K](SequencedMap.md "type parameter in SequencedMap"),[V](SequencedMap.md "type parameter in SequencedMap")>> sequencedEntrySet()

    Returns a `SequencedSet` view of this map's [`entrySet`](Map.md#entrySet()).

    Returns:
    :   a `SequencedSet` view of this map's `entrySet`