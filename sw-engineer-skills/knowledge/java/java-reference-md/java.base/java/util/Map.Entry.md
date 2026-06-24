Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface Map.Entry<K,V>

Type Parameters:
:   `K` - the type of the key
:   `V` - the type of the value

All Known Implementing Classes:
:   `AbstractMap.SimpleEntry`, `AbstractMap.SimpleImmutableEntry`

Enclosing interface:
:   `Map<K,V>`

---

public static interface Map.Entry<K,V>

A map entry (key-value pair). The Entry may be unmodifiable, or the
value may be modifiable if the optional `setValue` method is
implemented. The Entry may be independent of any map, or it may represent
an entry of the entry-set view of a map.

An Entry maintains a connection to its underlying map if the Entry was obtained by
iterating the [`Map.entrySet()`](Map.md#entrySet()) view of a map, either explicitly by using an
[`Iterator`](Iterator.md "interface in java.util") or implicitly via the enhanced `for` statement. This connection
to the backing map is valid *only* during iteration of the entry-set view. During
the iteration, if supported by the backing map, a change to an Entry's value via
the [`setValue`](#setValue(V)) method will be visible in the backing map.
The behavior of such an Entry is undefined outside of iteration of the map's entry-set
view. It is also undefined if the backing map has been modified after the Entry was
returned by the iterator, except through the `setValue` method. In addition,
a change to the value of a mapping in the backing map might or might not be
visible in the corresponding Entry of the entry-set view.

An Entry may also be obtained from a map's entry-set view by other means, for
example, using the
[`parallelStream`](Collection.md#parallelStream()),
[`stream`](Collection.md#stream()),
[`spliterator`](Set.md#spliterator()) methods,
any of the
[`toArray`](Set.md#toArray()) overloads,
or by copying the entry-set view into another collection. It is unspecified whether
the obtained Entry instances are connected to the underlying map, whether changes
to such an Entry will affect the underlying the map and vice-versa, and whether
such an Entry supports the optional [`setValue`](#setValue(V)) method.

In addition, an Entry may be obtained directly from a map, for example via calls
to methods directly on the [`NavigableMap`](NavigableMap.md "interface in java.util") interface. An entry thus obtained
is generally not connected to the map and is an unmodifiable snapshot of the mapping
as of the time of the call. Such an Entry also does not generally support the
`setValue` method.

An Entry obtained by direct construction of the [`AbstractMap.SimpleEntry`](AbstractMap.SimpleEntry.md "class in java.util")
or [`AbstractMap.SimpleImmutableEntry`](AbstractMap.SimpleImmutableEntry.md "class in java.util") classes or from a call to the
[`Map.entry`](Map.md#entry(K,V)) or [`Map.Entry.copyOf`](#copyOf(java.util.Map.Entry)) methods
is not connected to any map.

Since:
:   1.2

See Also:
:   * [`Map.entrySet()`](Map.md#entrySet())

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `static <K extends Comparable<? super K>,
  V>  
  Comparator<Map.Entry<K,V>>`

  `comparingByKey()`

  Returns a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") in natural order on key.

  `static <K,
  V> Comparator<Map.Entry<K,V>>`

  `comparingByKey(Comparator<? super K> cmp)`

  Returns a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") by key using the given
  [`Comparator`](Comparator.md "interface in java.util").

  `static <K,
  V extends Comparable<? super V>>  
  Comparator<Map.Entry<K,V>>`

  `comparingByValue()`

  Returns a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") in natural order on value.

  `static <K,
  V> Comparator<Map.Entry<K,V>>`

  `comparingByValue(Comparator<? super V> cmp)`

  Returns a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") by value using the given
  [`Comparator`](Comparator.md "interface in java.util").

  `static <K,
  V> Map.Entry<K,V>`

  `copyOf(Map.Entry<? extends K,? extends V> e)`

  Returns a copy of the given `Map.Entry`.

  `boolean`

  `equals(Object o)`

  Compares the specified object with this entry for equality.

  `K`

  `getKey()`

  Returns the key corresponding to this entry.

  `V`

  `getValue()`

  Returns the value corresponding to this entry.

  `int`

  `hashCode()`

  Returns the hash code value for this map entry.

  `V`

  `setValue(V value)`

  Replaces the value corresponding to this entry with the specified
  value (optional operation).

* ## Method Details

  + ### getKey

    [K](Map.Entry.md "type parameter in Map.Entry") getKey()

    Returns the key corresponding to this entry.

    Returns:
    :   the key corresponding to this entry

    Throws:
    :   `IllegalStateException` - implementations may, but are not
        required to, throw this exception if the entry has been
        removed from the backing map.
  + ### getValue

    [V](Map.Entry.md "type parameter in Map.Entry") getValue()

    Returns the value corresponding to this entry. If the mapping
    has been removed from the backing map (by the iterator's
    `remove` operation), the results of this call are undefined.

    Returns:
    :   the value corresponding to this entry

    Throws:
    :   `IllegalStateException` - implementations may, but are not
        required to, throw this exception if the entry has been
        removed from the backing map.
  + ### setValue

    [V](Map.Entry.md "type parameter in Map.Entry") setValue([V](Map.Entry.md "type parameter in Map.Entry") value)

    Replaces the value corresponding to this entry with the specified
    value (optional operation). (Writes through to the map.) The
    behavior of this call is undefined if the mapping has already been
    removed from the map (by the iterator's `remove` operation).

    Parameters:
    :   `value` - new value to be stored in this entry

    Returns:
    :   old value corresponding to the entry

    Throws:
    :   `UnsupportedOperationException` - if the `put` operation
        is not supported by the backing map
    :   `ClassCastException` - if the class of the specified value
        prevents it from being stored in the backing map
    :   `NullPointerException` - if the backing map does not permit
        null values, and the specified value is null
    :   `IllegalArgumentException` - if some property of this value
        prevents it from being stored in the backing map
    :   `IllegalStateException` - implementations may, but are not
        required to, throw this exception if the entry has been
        removed from the backing map.
  + ### equals

    boolean equals([Object](../lang/Object.md "class in java.lang") o)

    Compares the specified object with this entry for equality.
    Returns `true` if the given object is also a map entry and
    the two entries represent the same mapping. More formally, two
    entries `e1` and `e2` represent the same mapping
    if

    ```
         (e1.getKey()==null ?
          e2.getKey()==null : e1.getKey().equals(e2.getKey()))  &&
         (e1.getValue()==null ?
          e2.getValue()==null : e1.getValue().equals(e2.getValue()))
    ```

    This ensures that the `equals` method works properly across
    different implementations of the `Map.Entry` interface.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - object to be compared for equality with this map entry

    Returns:
    :   `true` if the specified object is equal to this map
        entry

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns the hash code value for this map entry. The hash code
    of a map entry `e` is defined to be:

    ```
         (e.getKey()==null   ? 0 : e.getKey().hashCode()) ^
         (e.getValue()==null ? 0 : e.getValue().hashCode())
    ```

    This ensures that `e1.equals(e2)` implies that
    `e1.hashCode()==e2.hashCode()` for any two Entries
    `e1` and `e2`, as required by the general
    contract of `Object.hashCode`.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this map entry

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`Object.equals(Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`equals(Object)`](#equals(java.lang.Object))
  + ### comparingByKey

    static <K extends [Comparable](../lang/Comparable.md "interface in java.lang")<? super K>,
    V>
    [Comparator](Comparator.md "interface in java.util")<[Map.Entry](Map.Entry.md "interface in java.util")<K,V>> comparingByKey()

    Returns a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") in natural order on key.

    The returned comparator is serializable and throws [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") when comparing an entry with a null key.

    Type Parameters:
    :   `K` - the [`Comparable`](../lang/Comparable.md "interface in java.lang") type of then map keys
    :   `V` - the type of the map values

    Returns:
    :   a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") in natural order on key.

    Since:
    :   1.8

    See Also:
    :   - [`Comparable`](../lang/Comparable.md "interface in java.lang")
  + ### comparingByValue

    static <K,
    V extends [Comparable](../lang/Comparable.md "interface in java.lang")<? super V>>
    [Comparator](Comparator.md "interface in java.util")<[Map.Entry](Map.Entry.md "interface in java.util")<K,V>> comparingByValue()

    Returns a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") in natural order on value.

    The returned comparator is serializable and throws [`NullPointerException`](../lang/NullPointerException.md "class in java.lang") when comparing an entry with null values.

    Type Parameters:
    :   `K` - the type of the map keys
    :   `V` - the [`Comparable`](../lang/Comparable.md "interface in java.lang") type of the map values

    Returns:
    :   a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") in natural order on value.

    Since:
    :   1.8

    See Also:
    :   - [`Comparable`](../lang/Comparable.md "interface in java.lang")
  + ### comparingByKey

    static <K,
    V> [Comparator](Comparator.md "interface in java.util")<[Map.Entry](Map.Entry.md "interface in java.util")<K,V>> comparingByKey([Comparator](Comparator.md "interface in java.util")<? super K> cmp)

    Returns a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") by key using the given
    [`Comparator`](Comparator.md "interface in java.util").

    The returned comparator is serializable if the specified comparator
    is also serializable.

    Type Parameters:
    :   `K` - the type of the map keys
    :   `V` - the type of the map values

    Parameters:
    :   `cmp` - the key [`Comparator`](Comparator.md "interface in java.util")

    Returns:
    :   a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") by the key.

    Since:
    :   1.8
  + ### comparingByValue

    static <K,
    V> [Comparator](Comparator.md "interface in java.util")<[Map.Entry](Map.Entry.md "interface in java.util")<K,V>> comparingByValue([Comparator](Comparator.md "interface in java.util")<? super V> cmp)

    Returns a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") by value using the given
    [`Comparator`](Comparator.md "interface in java.util").

    The returned comparator is serializable if the specified comparator
    is also serializable.

    Type Parameters:
    :   `K` - the type of the map keys
    :   `V` - the type of the map values

    Parameters:
    :   `cmp` - the value [`Comparator`](Comparator.md "interface in java.util")

    Returns:
    :   a comparator that compares [`Map.Entry`](Map.Entry.md "interface in java.util") by the value.

    Since:
    :   1.8
  + ### copyOf

    static <K,
    V> [Map.Entry](Map.Entry.md "interface in java.util")<K,V> copyOf([Map.Entry](Map.Entry.md "interface in java.util")<? extends K,? extends V> e)

    Returns a copy of the given `Map.Entry`. The returned instance is not
    associated with any map. The returned instance has the same characteristics
    as instances returned by the [`Map::entry`](Map.md#entry(K,V)) method.

    Type Parameters:
    :   `K` - the type of the key
    :   `V` - the type of the value

    Parameters:
    :   `e` - the entry to be copied

    Returns:
    :   a map entry equal to the given entry

    Throws:
    :   `NullPointerException` - if e is null or if either of its key or value is null

    Since:
    :   17