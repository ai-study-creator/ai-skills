Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface Map<K,V>

Type Parameters:
:   `K` - the type of keys maintained by this map
:   `V` - the type of mapped values

All Known Subinterfaces:
:   `Bindings`, `ConcurrentMap<K,V>`, `ConcurrentNavigableMap<K,V>`, `NavigableMap<K,V>`, `SequencedMap<K,V>`, `SortedMap<K,V>`

All Known Implementing Classes:
:   `AbstractMap`, `Attributes`, `AuthProvider`, `ConcurrentHashMap`, `ConcurrentSkipListMap`, `EnumMap`, `HashMap`, `Hashtable`, `IdentityHashMap`, `LinkedHashMap`, `PrinterStateReasons`, `Properties`, `Provider`, `RenderingHints`, `SimpleBindings`, `TabularDataSupport`, `TreeMap`, `UIDefaults`, `WeakHashMap`

---

public interface Map<K,V>

An object that maps keys to values. A map cannot contain duplicate keys;
each key can map to at most one value.

This interface takes the place of the `Dictionary` class, which
was a totally abstract class rather than an interface.

The `Map` interface provides three *collection views*, which
allow a map's contents to be viewed as a set of keys, collection of values,
or set of key-value mappings. The *order* of a map is defined as
the order in which the iterators on the map's collection views return their
elements. Some map implementations, like the `TreeMap` class, make
specific guarantees as to their encounter order; others, like the
`HashMap` class, do not. Maps with a defined
[encounter order](SequencedCollection.md#encounter)
are generally subtypes of the [`SequencedMap`](SequencedMap.md "interface in java.util") interface.

Note: great care must be exercised if mutable objects are used as map
keys. The behavior of a map is not specified if the value of an object is
changed in a manner that affects `equals` comparisons while the
object is a key in the map. A special case of this prohibition is that it
is not permissible for a map to contain itself as a key. While it is
permissible for a map to contain itself as a value, extreme caution is
advised: the `equals` and `hashCode` methods are no longer
well defined on such a map.

All general-purpose map implementation classes should provide two
"standard" constructors: a void (no arguments) constructor which creates an
empty map, and a constructor with a single argument of type `Map`,
which creates a new map with the same key-value mappings as its argument.
In effect, the latter constructor allows the user to copy any map,
producing an equivalent map of the desired class. There is no way to
enforce this recommendation (as interfaces cannot contain constructors) but
all of the general-purpose map implementations in the JDK comply.

The "destructive" methods contained in this interface, that is, the
methods that modify the map on which they operate, are specified to throw
`UnsupportedOperationException` if this map does not support the
operation. If this is the case, these methods may, but are not required
to, throw an `UnsupportedOperationException` if the invocation would
have no effect on the map. For example, invoking the [`putAll(Map)`](#putAll(java.util.Map))
method on an unmodifiable map may, but is not required to, throw the
exception if the map whose mappings are to be "superimposed" is empty.

Some map implementations have restrictions on the keys and values they
may contain. For example, some implementations prohibit null keys and
values, and some have restrictions on the types of their keys. Attempting
to insert an ineligible key or value throws an unchecked exception,
typically `NullPointerException` or `ClassCastException`.
Attempting to query the presence of an ineligible key or value may throw an
exception, or it may simply return false; some implementations will exhibit
the former behavior and some will exhibit the latter. More generally,
attempting an operation on an ineligible key or value whose completion
would not result in the insertion of an ineligible element into the map may
throw an exception or it may succeed, at the option of the implementation.
Such exceptions are marked as "optional" in the specification for this
interface.

Many methods in Collections Framework interfaces are defined
in terms of the [`equals`](../lang/Object.md#equals(java.lang.Object)) method. For
example, the specification for the [`containsKey(Object key)`](#containsKey(java.lang.Object)) method says: "returns `true` if and
only if this map contains a mapping for a key `k` such that
`(key==null ? k==null : key.equals(k))`." This specification should
*not* be construed to imply that invoking `Map.containsKey`
with a non-null argument `key` will cause `key.equals(k)` to
be invoked for any key `k`. Implementations are free to
implement optimizations whereby the `equals` invocation is avoided,
for example, by first comparing the hash codes of the two keys. (The
[`Object.hashCode()`](../lang/Object.md#hashCode()) specification guarantees that two objects with
unequal hash codes cannot be equal.) More generally, implementations of
the various Collections Framework interfaces are free to take advantage of
the specified behavior of underlying [`Object`](../lang/Object.md "class in java.lang") methods wherever the
implementor deems it appropriate.

Some map operations which perform recursive traversal of the map may fail
with an exception for self-referential instances where the map directly or
indirectly contains itself. This includes the `clone()`,
`equals()`, `hashCode()` and `toString()` methods.
Implementations may optionally handle the self-referential scenario, however
most current implementations do not do so.

## Unmodifiable Maps

The [`Map.of`](#of()),
[`Map.ofEntries`](#ofEntries(java.util.Map.Entry...)), and
[`Map.copyOf`](#copyOf(java.util.Map))
static factory methods provide a convenient way to create unmodifiable maps.
The `Map`
instances created by these methods have the following characteristics:

* They are [*unmodifiable*](Collection.md#unmodifiable). Keys and values
  cannot be added, removed, or updated. Calling any mutator method on the Map
  will always cause `UnsupportedOperationException` to be thrown.
  However, if the contained keys or values are themselves mutable, this may cause the
  Map to behave inconsistently or its contents to appear to change.* They disallow `null` keys and values. Attempts to create them with
    `null` keys or values result in `NullPointerException`.* They are serializable if all keys and values are serializable.* They reject duplicate keys at creation time. Duplicate keys
        passed to a static factory method result in `IllegalArgumentException`.* The iteration order of mappings is unspecified and is subject to change.* They are [value-based](../lang/doc-files/ValueBased.md).
            Programmers should treat instances that are [equal](#equals(java.lang.Object))
            as interchangeable and should not use them for synchronization, or
            unpredictable behavior may occur. For example, in a future release,
            synchronization may fail. Callers should make no assumptions
            about the identity of the returned instances. Factories are free to
            create new instances or reuse existing ones.* They are serialized as specified on the
              [Serialized Form](../../../serialized-form.md#java.util.CollSer)
              page.

This interface is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   1.2

See Also:
:   * [`HashMap`](HashMap.md "class in java.util")
    * [`TreeMap`](TreeMap.md "class in java.util")
    * [`Hashtable`](Hashtable.md "class in java.util")
    * [`SortedMap`](SortedMap.md "interface in java.util")
    * [`Collection`](Collection.md "interface in java.util")
    * [`Set`](Set.md "interface in java.util")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `Map.Entry<K,V>`

  A map entry (key-value pair).
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `void`

  `clear()`

  Removes all of the mappings from this map (optional operation).

  `default V`

  `compute(K key,
  BiFunction<? super K,? super V,? extends V> remappingFunction)`

  Attempts to compute a mapping for the specified key and its current
  mapped value (or `null` if there is no current mapping).

  `default V`

  `computeIfAbsent(K key,
  Function<? super K,? extends V> mappingFunction)`

  If the specified key is not already associated with a value (or is mapped
  to `null`), attempts to compute its value using the given mapping
  function and enters it into this map unless `null`.

  `default V`

  `computeIfPresent(K key,
  BiFunction<? super K,? super V,? extends V> remappingFunction)`

  If the value for the specified key is present and non-null, attempts to
  compute a new mapping given the key and its current mapped value.

  `boolean`

  `containsKey(Object key)`

  Returns `true` if this map contains a mapping for the specified
  key.

  `boolean`

  `containsValue(Object value)`

  Returns `true` if this map maps one or more keys to the
  specified value.

  `static <K,
  V> Map<K,V>`

  `copyOf(Map<? extends K,? extends V> map)`

  Returns an [unmodifiable Map](#unmodifiable) containing the entries
  of the given Map.

  `static <K,
  V> Map.Entry<K,V>`

  `entry(K k,
  V v)`

  Returns an unmodifiable [`Map.Entry`](Map.Entry.md "interface in java.util") containing the given key and value.

  `Set<Map.Entry<K,V>>`

  `entrySet()`

  Returns a [`Set`](Set.md "interface in java.util") view of the mappings contained in this map.

  `boolean`

  `equals(Object o)`

  Compares the specified object with this map for equality.

  `default void`

  `forEach(BiConsumer<? super K,? super V> action)`

  Performs the given action for each entry in this map until all entries
  have been processed or the action throws an exception.

  `V`

  `get(Object key)`

  Returns the value to which the specified key is mapped,
  or `null` if this map contains no mapping for the key.

  `default V`

  `getOrDefault(Object key,
  V defaultValue)`

  Returns the value to which the specified key is mapped, or
  `defaultValue` if this map contains no mapping for the key.

  `int`

  `hashCode()`

  Returns the hash code value for this map.

  `boolean`

  `isEmpty()`

  Returns `true` if this map contains no key-value mappings.

  `Set<K>`

  `keySet()`

  Returns a [`Set`](Set.md "interface in java.util") view of the keys contained in this map.

  `default V`

  `merge(K key,
  V value,
  BiFunction<? super V,? super V,? extends V> remappingFunction)`

  If the specified key is not already associated with a value or is
  associated with null, associates it with the given non-null value.

  `static <K,
  V> Map<K,V>`

  `of()`

  Returns an unmodifiable map containing zero mappings.

  `static <K,
  V> Map<K,V>`

  `of(K k1,
  V v1)`

  Returns an unmodifiable map containing a single mapping.

  `static <K,
  V> Map<K,V>`

  `of(K k1,
  V v1,
  K k2,
  V v2)`

  Returns an unmodifiable map containing two mappings.

  `static <K,
  V> Map<K,V>`

  `of(K k1,
  V v1,
  K k2,
  V v2,
  K k3,
  V v3)`

  Returns an unmodifiable map containing three mappings.

  `static <K,
  V> Map<K,V>`

  `of(K k1,
  V v1,
  K k2,
  V v2,
  K k3,
  V v3,
  K k4,
  V v4)`

  Returns an unmodifiable map containing four mappings.

  `static <K,
  V> Map<K,V>`

  `of(K k1,
  V v1,
  K k2,
  V v2,
  K k3,
  V v3,
  K k4,
  V v4,
  K k5,
  V v5)`

  Returns an unmodifiable map containing five mappings.

  `static <K,
  V> Map<K,V>`

  `of(K k1,
  V v1,
  K k2,
  V v2,
  K k3,
  V v3,
  K k4,
  V v4,
  K k5,
  V v5,
  K k6,
  V v6)`

  Returns an unmodifiable map containing six mappings.

  `static <K,
  V> Map<K,V>`

  `of(K k1,
  V v1,
  K k2,
  V v2,
  K k3,
  V v3,
  K k4,
  V v4,
  K k5,
  V v5,
  K k6,
  V v6,
  K k7,
  V v7)`

  Returns an unmodifiable map containing seven mappings.

  `static <K,
  V> Map<K,V>`

  `of(K k1,
  V v1,
  K k2,
  V v2,
  K k3,
  V v3,
  K k4,
  V v4,
  K k5,
  V v5,
  K k6,
  V v6,
  K k7,
  V v7,
  K k8,
  V v8)`

  Returns an unmodifiable map containing eight mappings.

  `static <K,
  V> Map<K,V>`

  `of(K k1,
  V v1,
  K k2,
  V v2,
  K k3,
  V v3,
  K k4,
  V v4,
  K k5,
  V v5,
  K k6,
  V v6,
  K k7,
  V v7,
  K k8,
  V v8,
  K k9,
  V v9)`

  Returns an unmodifiable map containing nine mappings.

  `static <K,
  V> Map<K,V>`

  `of(K k1,
  V v1,
  K k2,
  V v2,
  K k3,
  V v3,
  K k4,
  V v4,
  K k5,
  V v5,
  K k6,
  V v6,
  K k7,
  V v7,
  K k8,
  V v8,
  K k9,
  V v9,
  K k10,
  V v10)`

  Returns an unmodifiable map containing ten mappings.

  `static <K,
  V> Map<K,V>`

  `ofEntries(Map.Entry<? extends K,? extends V>... entries)`

  Returns an unmodifiable map containing keys and values extracted from the given entries.

  `V`

  `put(K key,
  V value)`

  Associates the specified value with the specified key in this map
  (optional operation).

  `void`

  `putAll(Map<? extends K,? extends V> m)`

  Copies all of the mappings from the specified map to this map
  (optional operation).

  `default V`

  `putIfAbsent(K key,
  V value)`

  If the specified key is not already associated with a value (or is mapped
  to `null`) associates it with the given value and returns
  `null`, else returns the current value.

  `V`

  `remove(Object key)`

  Removes the mapping for a key from this map if it is present
  (optional operation).

  `default boolean`

  `remove(Object key,
  Object value)`

  Removes the entry for the specified key only if it is currently
  mapped to the specified value.

  `default V`

  `replace(K key,
  V value)`

  Replaces the entry for the specified key only if it is
  currently mapped to some value.

  `default boolean`

  `replace(K key,
  V oldValue,
  V newValue)`

  Replaces the entry for the specified key only if currently
  mapped to the specified value.

  `default void`

  `replaceAll(BiFunction<? super K,? super V,? extends V> function)`

  Replaces each entry's value with the result of invoking the given
  function on that entry until all entries have been processed or the
  function throws an exception.

  `int`

  `size()`

  Returns the number of key-value mappings in this map.

  `Collection<V>`

  `values()`

  Returns a [`Collection`](Collection.md "interface in java.util") view of the values contained in this map.

* ## Method Details

  + ### size

    int size()

    Returns the number of key-value mappings in this map. If the
    map contains more than `Integer.MAX_VALUE` elements, returns
    `Integer.MAX_VALUE`.

    Returns:
    :   the number of key-value mappings in this map
  + ### isEmpty

    boolean isEmpty()

    Returns `true` if this map contains no key-value mappings.

    Returns:
    :   `true` if this map contains no key-value mappings
  + ### containsKey

    boolean containsKey([Object](../lang/Object.md "class in java.lang") key)

    Returns `true` if this map contains a mapping for the specified
    key. More formally, returns `true` if and only if
    this map contains a mapping for a key `k` such that
    `Objects.equals(key, k)`. (There can be
    at most one such mapping.)

    Parameters:
    :   `key` - key whose presence in this map is to be tested

    Returns:
    :   `true` if this map contains a mapping for the specified
        key

    Throws:
    :   `ClassCastException` - if the key is of an inappropriate type for
        this map ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified key is null and this map
        does not permit null keys ([optional](Collection.md#optional-restrictions))
  + ### containsValue

    boolean containsValue([Object](../lang/Object.md "class in java.lang") value)

    Returns `true` if this map maps one or more keys to the
    specified value. More formally, returns `true` if and only if
    this map contains at least one mapping to a value `v` such that
    `Objects.equals(value, v)`. This operation
    will probably require time linear in the map size for most
    implementations of the `Map` interface.

    Parameters:
    :   `value` - value whose presence in this map is to be tested

    Returns:
    :   `true` if this map maps one or more keys to the
        specified value

    Throws:
    :   `ClassCastException` - if the value is of an inappropriate type for
        this map ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified value is null and this
        map does not permit null values ([optional](Collection.md#optional-restrictions))
  + ### get

    [V](Map.md "type parameter in Map") get([Object](../lang/Object.md "class in java.lang") key)

    Returns the value to which the specified key is mapped,
    or `null` if this map contains no mapping for the key.

    More formally, if this map contains a mapping from a key
    `k` to a value `v` such that
    `Objects.equals(key, k)`,
    then this method returns `v`; otherwise
    it returns `null`. (There can be at most one such mapping.)

    If this map permits null values, then a return value of
    `null` does not *necessarily* indicate that the map
    contains no mapping for the key; it's also possible that the map
    explicitly maps the key to `null`. The [`containsKey`](#containsKey(java.lang.Object)) operation may be used to distinguish these two cases.

    Parameters:
    :   `key` - the key whose associated value is to be returned

    Returns:
    :   the value to which the specified key is mapped, or
        `null` if this map contains no mapping for the key

    Throws:
    :   `ClassCastException` - if the key is of an inappropriate type for
        this map ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified key is null and this map
        does not permit null keys ([optional](Collection.md#optional-restrictions))
  + ### put

    [V](Map.md "type parameter in Map") put([K](Map.md "type parameter in Map") key,
    [V](Map.md "type parameter in Map") value)

    Associates the specified value with the specified key in this map
    (optional operation). If the map previously contained a mapping for
    the key, the old value is replaced by the specified value. (A map
    `m` is said to contain a mapping for a key `k` if and only
    if [`m.containsKey(k)`](#containsKey(java.lang.Object)) would return
    `true`.)

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `value` - value to be associated with the specified key

    Returns:
    :   the previous value associated with `key`, or
        `null` if there was no mapping for `key`.
        (A `null` return can also indicate that the map
        previously associated `null` with `key`,
        if the implementation supports `null` values.)

    Throws:
    :   `UnsupportedOperationException` - if the `put` operation
        is not supported by this map
    :   `ClassCastException` - if the class of the specified key or value
        prevents it from being stored in this map
    :   `NullPointerException` - if the specified key or value is null
        and this map does not permit null keys or values
    :   `IllegalArgumentException` - if some property of the specified key
        or value prevents it from being stored in this map
  + ### remove

    [V](Map.md "type parameter in Map") remove([Object](../lang/Object.md "class in java.lang") key)

    Removes the mapping for a key from this map if it is present
    (optional operation). More formally, if this map contains a mapping
    from key `k` to value `v` such that
    `Objects.equals(key, k)`, that mapping
    is removed. (The map can contain at most one such mapping.)

    Returns the value to which this map previously associated the key,
    or `null` if the map contained no mapping for the key.

    If this map permits null values, then a return value of
    `null` does not *necessarily* indicate that the map
    contained no mapping for the key; it's also possible that the map
    explicitly mapped the key to `null`.

    The map will not contain a mapping for the specified key once the
    call returns.

    Parameters:
    :   `key` - key whose mapping is to be removed from the map

    Returns:
    :   the previous value associated with `key`, or
        `null` if there was no mapping for `key`.

    Throws:
    :   `UnsupportedOperationException` - if the `remove` operation
        is not supported by this map
    :   `ClassCastException` - if the key is of an inappropriate type for
        this map ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified key is null and this
        map does not permit null keys ([optional](Collection.md#optional-restrictions))
  + ### putAll

    void putAll([Map](Map.md "interface in java.util")<? extends [K](Map.md "type parameter in Map"),? extends [V](Map.md "type parameter in Map")> m)

    Copies all of the mappings from the specified map to this map
    (optional operation). The effect of this call is equivalent to that
    of calling [`put(k, v)`](#put(K,V)) on this map once
    for each mapping from key `k` to value `v` in the
    specified map. The behavior of this operation is undefined if the specified map
    is modified while the operation is in progress. If the specified map has a defined
    [encounter order](SequencedCollection.md#encounter),
    processing of its mappings generally occurs in that order.

    Parameters:
    :   `m` - mappings to be stored in this map

    Throws:
    :   `UnsupportedOperationException` - if the `putAll` operation
        is not supported by this map
    :   `ClassCastException` - if the class of a key or value in the
        specified map prevents it from being stored in this map
    :   `NullPointerException` - if the specified map is null, or if
        this map does not permit null keys or values, and the
        specified map contains null keys or values
    :   `IllegalArgumentException` - if some property of a key or value in
        the specified map prevents it from being stored in this map
  + ### clear

    void clear()

    Removes all of the mappings from this map (optional operation).
    The map will be empty after this call returns.

    Throws:
    :   `UnsupportedOperationException` - if the `clear` operation
        is not supported by this map
  + ### keySet

    [Set](Set.md "interface in java.util")<[K](Map.md "type parameter in Map")> keySet()

    Returns a [`Set`](Set.md "interface in java.util") view of the keys contained in this map.
    The set is backed by the map, so changes to the map are
    reflected in the set, and vice-versa. If the map is modified
    while an iteration over the set is in progress (except through
    the iterator's own `remove` operation), the results of
    the iteration are undefined. The set supports element removal,
    which removes the corresponding mapping from the map, via the
    `Iterator.remove`, `Set.remove`,
    `removeAll`, `retainAll`, and `clear`
    operations. It does not support the `add` or `addAll`
    operations.

    Returns:
    :   a set view of the keys contained in this map
  + ### values

    [Collection](Collection.md "interface in java.util")<[V](Map.md "type parameter in Map")> values()

    Returns a [`Collection`](Collection.md "interface in java.util") view of the values contained in this map.
    The collection is backed by the map, so changes to the map are
    reflected in the collection, and vice-versa. If the map is
    modified while an iteration over the collection is in progress
    (except through the iterator's own `remove` operation),
    the results of the iteration are undefined. The collection
    supports element removal, which removes the corresponding
    mapping from the map, via the `Iterator.remove`,
    `Collection.remove`, `removeAll`,
    `retainAll` and `clear` operations. It does not
    support the `add` or `addAll` operations.

    Returns:
    :   a collection view of the values contained in this map
  + ### entrySet

    [Set](Set.md "interface in java.util")<[Map.Entry](Map.Entry.md "interface in java.util")<[K](Map.md "type parameter in Map"),[V](Map.md "type parameter in Map")>> entrySet()

    Returns a [`Set`](Set.md "interface in java.util") view of the mappings contained in this map.
    The set is backed by the map, so changes to the map are
    reflected in the set, and vice-versa. If the map is modified
    while an iteration over the set is in progress (except through
    the iterator's own `remove` operation, or through the
    `setValue` operation on a map entry returned by the
    iterator) the results of the iteration are undefined. The set
    supports element removal, which removes the corresponding
    mapping from the map, via the `Iterator.remove`,
    `Set.remove`, `removeAll`, `retainAll` and
    `clear` operations. It does not support the
    `add` or `addAll` operations.

    Returns:
    :   a set view of the mappings contained in this map
  + ### equals

    boolean equals([Object](../lang/Object.md "class in java.lang") o)

    Compares the specified object with this map for equality. Returns
    `true` if the given object is also a map and the two maps
    represent the same mappings. More formally, two maps `m1` and
    `m2` represent the same mappings if
    `m1.entrySet().equals(m2.entrySet())`. This ensures that the
    `equals` method works properly across different implementations
    of the `Map` interface.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - object to be compared for equality with this map

    Returns:
    :   `true` if the specified object is equal to this map

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns the hash code value for this map. The hash code of a map is
    defined to be the sum of the hash codes of each entry in the map's
    `entrySet()` view. This ensures that `m1.equals(m2)`
    implies that `m1.hashCode()==m2.hashCode()` for any two maps
    `m1` and `m2`, as required by the general contract of
    [`Object.hashCode()`](../lang/Object.md#hashCode()).

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code value for this map

    See Also:
    :   - [`Map.Entry.hashCode()`](Map.Entry.md#hashCode())
        - [`Object.equals(Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`equals(Object)`](#equals(java.lang.Object))
  + ### getOrDefault

    default [V](Map.md "type parameter in Map") getOrDefault([Object](../lang/Object.md "class in java.lang") key,
    [V](Map.md "type parameter in Map") defaultValue)

    Returns the value to which the specified key is mapped, or
    `defaultValue` if this map contains no mapping for the key.

    Parameters:
    :   `key` - the key whose associated value is to be returned
    :   `defaultValue` - the default mapping of the key

    Returns:
    :   the value to which the specified key is mapped, or
        `defaultValue` if this map contains no mapping for the key

    Throws:
    :   `ClassCastException` - if the key is of an inappropriate type for
        this map ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified key is null and this map
        does not permit null keys ([optional](Collection.md#optional-restrictions))

    Since:
    :   1.8
  + ### forEach

    default void forEach([BiConsumer](function/BiConsumer.md "interface in java.util.function")<? super [K](Map.md "type parameter in Map"),? super [V](Map.md "type parameter in Map")> action)

    Performs the given action for each entry in this map until all entries
    have been processed or the action throws an exception. Unless
    otherwise specified by the implementing class, actions are performed in
    the order of entry set iteration (if an iteration order is specified.)
    Exceptions thrown by the action are relayed to the caller.

    Parameters:
    :   `action` - The action to be performed for each entry

    Throws:
    :   `NullPointerException` - if the specified action is null
    :   `ConcurrentModificationException` - if an entry is found to be
        removed during iteration

    Since:
    :   1.8
  + ### replaceAll

    default void replaceAll([BiFunction](function/BiFunction.md "interface in java.util.function")<? super [K](Map.md "type parameter in Map"),? super [V](Map.md "type parameter in Map"),? extends [V](Map.md "type parameter in Map")> function)

    Replaces each entry's value with the result of invoking the given
    function on that entry until all entries have been processed or the
    function throws an exception. Exceptions thrown by the function are
    relayed to the caller.

    Parameters:
    :   `function` - the function to apply to each entry

    Throws:
    :   `UnsupportedOperationException` - if the `set` operation
        is not supported by this map's entry set iterator.
    :   `ClassCastException` - if the class of a replacement value
        prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified function is null, or if a
        replacement value is null and this map does not permit null values
        ([optional](Collection.md#optional-restrictions))
    :   `IllegalArgumentException` - if some property of a replacement value
        prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))
    :   `ConcurrentModificationException` - if an entry is found to be
        removed during iteration

    Since:
    :   1.8
  + ### putIfAbsent

    default [V](Map.md "type parameter in Map") putIfAbsent([K](Map.md "type parameter in Map") key,
    [V](Map.md "type parameter in Map") value)

    If the specified key is not already associated with a value (or is mapped
    to `null`) associates it with the given value and returns
    `null`, else returns the current value.

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `value` - value to be associated with the specified key

    Returns:
    :   the previous value associated with the specified key, or
        `null` if there was no mapping for the key.
        (A `null` return can also indicate that the map
        previously associated `null` with the key,
        if the implementation supports null values.)

    Throws:
    :   `UnsupportedOperationException` - if the `put` operation
        is not supported by this map
        ([optional](Collection.md#optional-restrictions))
    :   `ClassCastException` - if the key or value is of an inappropriate
        type for this map ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified key or value is null,
        and this map does not permit null keys or values
        ([optional](Collection.md#optional-restrictions))
    :   `IllegalArgumentException` - if some property of the specified key
        or value prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))

    Since:
    :   1.8
  + ### remove

    default boolean remove([Object](../lang/Object.md "class in java.lang") key,
    [Object](../lang/Object.md "class in java.lang") value)

    Removes the entry for the specified key only if it is currently
    mapped to the specified value.

    Parameters:
    :   `key` - key with which the specified value is associated
    :   `value` - value expected to be associated with the specified key

    Returns:
    :   `true` if the value was removed

    Throws:
    :   `UnsupportedOperationException` - if the `remove` operation
        is not supported by this map
        ([optional](Collection.md#optional-restrictions))
    :   `ClassCastException` - if the key or value is of an inappropriate
        type for this map
        ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified key or value is null,
        and this map does not permit null keys or values
        ([optional](Collection.md#optional-restrictions))

    Since:
    :   1.8
  + ### replace

    default boolean replace([K](Map.md "type parameter in Map") key,
    [V](Map.md "type parameter in Map") oldValue,
    [V](Map.md "type parameter in Map") newValue)

    Replaces the entry for the specified key only if currently
    mapped to the specified value.

    Parameters:
    :   `key` - key with which the specified value is associated
    :   `oldValue` - value expected to be associated with the specified key
    :   `newValue` - value to be associated with the specified key

    Returns:
    :   `true` if the value was replaced

    Throws:
    :   `UnsupportedOperationException` - if the `put` operation
        is not supported by this map ([optional](Collection.md#optional-restrictions))
    :   `ClassCastException` - if the class of a specified key or value
        prevents it from being stored in this map
    :   `NullPointerException` - if a specified key or newValue is null,
        and this map does not permit null keys or values
    :   `NullPointerException` - if oldValue is null and this map does not
        permit null values ([optional](Collection.md#optional-restrictions))
    :   `IllegalArgumentException` - if some property of a specified key
        or value prevents it from being stored in this map

    Since:
    :   1.8
  + ### replace

    default [V](Map.md "type parameter in Map") replace([K](Map.md "type parameter in Map") key,
    [V](Map.md "type parameter in Map") value)

    Replaces the entry for the specified key only if it is
    currently mapped to some value.

    Parameters:
    :   `key` - key with which the specified value is associated
    :   `value` - value to be associated with the specified key

    Returns:
    :   the previous value associated with the specified key, or
        `null` if there was no mapping for the key.
        (A `null` return can also indicate that the map
        previously associated `null` with the key,
        if the implementation supports null values.)

    Throws:
    :   `UnsupportedOperationException` - if the `put` operation
        is not supported by this map
        ([optional](Collection.md#optional-restrictions))
    :   `ClassCastException` - if the class of the specified key or value
        prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified key or value is null,
        and this map does not permit null keys or values
    :   `IllegalArgumentException` - if some property of the specified key
        or value prevents it from being stored in this map

    Since:
    :   1.8
  + ### computeIfAbsent

    default [V](Map.md "type parameter in Map") computeIfAbsent([K](Map.md "type parameter in Map") key,
    [Function](function/Function.md "interface in java.util.function")<? super [K](Map.md "type parameter in Map"),? extends [V](Map.md "type parameter in Map")> mappingFunction)

    If the specified key is not already associated with a value (or is mapped
    to `null`), attempts to compute its value using the given mapping
    function and enters it into this map unless `null`.

    If the mapping function returns `null`, no mapping is recorded.
    If the mapping function itself throws an (unchecked) exception, the
    exception is rethrown, and no mapping is recorded. The most
    common usage is to construct a new object serving as an initial
    mapped value or memoized result, as in:

    ```
     map.computeIfAbsent(key, k -> new Value(f(k)));
    ```

    Or to implement a multi-value map, `Map<K,Collection<V>>`,
    supporting multiple values per key:

    ```
     map.computeIfAbsent(key, k -> new HashSet<V>()).add(v);
    ```

    The mapping function should not modify this map during computation.

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `mappingFunction` - the mapping function to compute a value

    Returns:
    :   the current (existing or computed) value associated with
        the specified key, or null if the computed value is null

    Throws:
    :   `NullPointerException` - if the specified key is null and
        this map does not support null keys, or the mappingFunction
        is null
    :   `UnsupportedOperationException` - if the `put` operation
        is not supported by this map
        ([optional](Collection.md#optional-restrictions))
    :   `ClassCastException` - if the class of the specified key or value
        prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))
    :   `IllegalArgumentException` - if some property of the specified key
        or value prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))

    Since:
    :   1.8
  + ### computeIfPresent

    default [V](Map.md "type parameter in Map") computeIfPresent([K](Map.md "type parameter in Map") key,
    [BiFunction](function/BiFunction.md "interface in java.util.function")<? super [K](Map.md "type parameter in Map"),? super [V](Map.md "type parameter in Map"),? extends [V](Map.md "type parameter in Map")> remappingFunction)

    If the value for the specified key is present and non-null, attempts to
    compute a new mapping given the key and its current mapped value.

    If the remapping function returns `null`, the mapping is removed.
    If the remapping function itself throws an (unchecked) exception, the
    exception is rethrown, and the current mapping is left unchanged.

    The remapping function should not modify this map during computation.

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `remappingFunction` - the remapping function to compute a value

    Returns:
    :   the new value associated with the specified key, or null if none

    Throws:
    :   `NullPointerException` - if the specified key is null and
        this map does not support null keys, or the
        remappingFunction is null
    :   `UnsupportedOperationException` - if the `put` operation
        is not supported by this map
        ([optional](Collection.md#optional-restrictions))
    :   `ClassCastException` - if the class of the specified key or value
        prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))
    :   `IllegalArgumentException` - if some property of the specified key
        or value prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))

    Since:
    :   1.8
  + ### compute

    default [V](Map.md "type parameter in Map") compute([K](Map.md "type parameter in Map") key,
    [BiFunction](function/BiFunction.md "interface in java.util.function")<? super [K](Map.md "type parameter in Map"),? super [V](Map.md "type parameter in Map"),? extends [V](Map.md "type parameter in Map")> remappingFunction)

    Attempts to compute a mapping for the specified key and its current
    mapped value (or `null` if there is no current mapping). For
    example, to either create or append a `String` msg to a value
    mapping:

    ```
     map.compute(key, (k, v) -> (v == null) ? msg : v.concat(msg))
    ```

    (Method [`merge()`](#merge(K,V,java.util.function.BiFunction)) is often simpler to use for such purposes.)

    If the remapping function returns `null`, the mapping is removed
    (or remains absent if initially absent). If the remapping function
    itself throws an (unchecked) exception, the exception is rethrown, and
    the current mapping is left unchanged.

    The remapping function should not modify this map during computation.

    Parameters:
    :   `key` - key with which the specified value is to be associated
    :   `remappingFunction` - the remapping function to compute a value

    Returns:
    :   the new value associated with the specified key, or null if none

    Throws:
    :   `NullPointerException` - if the specified key is null and
        this map does not support null keys, or the
        remappingFunction is null
    :   `UnsupportedOperationException` - if the `put` operation
        is not supported by this map
        ([optional](Collection.md#optional-restrictions))
    :   `ClassCastException` - if the class of the specified key or value
        prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))
    :   `IllegalArgumentException` - if some property of the specified key
        or value prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))

    Since:
    :   1.8
  + ### merge

    default [V](Map.md "type parameter in Map") merge([K](Map.md "type parameter in Map") key,
    [V](Map.md "type parameter in Map") value,
    [BiFunction](function/BiFunction.md "interface in java.util.function")<? super [V](Map.md "type parameter in Map"),? super [V](Map.md "type parameter in Map"),? extends [V](Map.md "type parameter in Map")> remappingFunction)

    If the specified key is not already associated with a value or is
    associated with null, associates it with the given non-null value.
    Otherwise, replaces the associated value with the results of the given
    remapping function, or removes if the result is `null`. This
    method may be of use when combining multiple mapped values for a key.
    For example, to either create or append a `String msg` to a
    value mapping:

    ```
     map.merge(key, msg, String::concat)
    ```

    If the remapping function returns `null`, the mapping is removed.
    If the remapping function itself throws an (unchecked) exception, the
    exception is rethrown, and the current mapping is left unchanged.

    The remapping function should not modify this map during computation.

    Parameters:
    :   `key` - key with which the resulting value is to be associated
    :   `value` - the non-null value to be merged with the existing value
        associated with the key or, if no existing value or a null value
        is associated with the key, to be associated with the key
    :   `remappingFunction` - the remapping function to recompute a value if
        present

    Returns:
    :   the new value associated with the specified key, or null if no
        value is associated with the key

    Throws:
    :   `UnsupportedOperationException` - if the `put` operation
        is not supported by this map
        ([optional](Collection.md#optional-restrictions))
    :   `ClassCastException` - if the class of the specified key or value
        prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))
    :   `IllegalArgumentException` - if some property of the specified key
        or value prevents it from being stored in this map
        ([optional](Collection.md#optional-restrictions))
    :   `NullPointerException` - if the specified key is null and this map
        does not support null keys or the value or remappingFunction is
        null

    Since:
    :   1.8
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of()

    Returns an unmodifiable map containing zero mappings.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Returns:
    :   an empty `Map`

    Since:
    :   9
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of(K k1,
    V v1)

    Returns an unmodifiable map containing a single mapping.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `k1` - the mapping's key
    :   `v1` - the mapping's value

    Returns:
    :   a `Map` containing the specified mapping

    Throws:
    :   `NullPointerException` - if the key or the value is `null`

    Since:
    :   9
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of(K k1,
    V v1,
    K k2,
    V v2)

    Returns an unmodifiable map containing two mappings.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `k1` - the first mapping's key
    :   `v1` - the first mapping's value
    :   `k2` - the second mapping's key
    :   `v2` - the second mapping's value

    Returns:
    :   a `Map` containing the specified mappings

    Throws:
    :   `IllegalArgumentException` - if the keys are duplicates
    :   `NullPointerException` - if any key or value is `null`

    Since:
    :   9
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of(K k1,
    V v1,
    K k2,
    V v2,
    K k3,
    V v3)

    Returns an unmodifiable map containing three mappings.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `k1` - the first mapping's key
    :   `v1` - the first mapping's value
    :   `k2` - the second mapping's key
    :   `v2` - the second mapping's value
    :   `k3` - the third mapping's key
    :   `v3` - the third mapping's value

    Returns:
    :   a `Map` containing the specified mappings

    Throws:
    :   `IllegalArgumentException` - if there are any duplicate keys
    :   `NullPointerException` - if any key or value is `null`

    Since:
    :   9
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of(K k1,
    V v1,
    K k2,
    V v2,
    K k3,
    V v3,
    K k4,
    V v4)

    Returns an unmodifiable map containing four mappings.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `k1` - the first mapping's key
    :   `v1` - the first mapping's value
    :   `k2` - the second mapping's key
    :   `v2` - the second mapping's value
    :   `k3` - the third mapping's key
    :   `v3` - the third mapping's value
    :   `k4` - the fourth mapping's key
    :   `v4` - the fourth mapping's value

    Returns:
    :   a `Map` containing the specified mappings

    Throws:
    :   `IllegalArgumentException` - if there are any duplicate keys
    :   `NullPointerException` - if any key or value is `null`

    Since:
    :   9
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of(K k1,
    V v1,
    K k2,
    V v2,
    K k3,
    V v3,
    K k4,
    V v4,
    K k5,
    V v5)

    Returns an unmodifiable map containing five mappings.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `k1` - the first mapping's key
    :   `v1` - the first mapping's value
    :   `k2` - the second mapping's key
    :   `v2` - the second mapping's value
    :   `k3` - the third mapping's key
    :   `v3` - the third mapping's value
    :   `k4` - the fourth mapping's key
    :   `v4` - the fourth mapping's value
    :   `k5` - the fifth mapping's key
    :   `v5` - the fifth mapping's value

    Returns:
    :   a `Map` containing the specified mappings

    Throws:
    :   `IllegalArgumentException` - if there are any duplicate keys
    :   `NullPointerException` - if any key or value is `null`

    Since:
    :   9
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of(K k1,
    V v1,
    K k2,
    V v2,
    K k3,
    V v3,
    K k4,
    V v4,
    K k5,
    V v5,
    K k6,
    V v6)

    Returns an unmodifiable map containing six mappings.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `k1` - the first mapping's key
    :   `v1` - the first mapping's value
    :   `k2` - the second mapping's key
    :   `v2` - the second mapping's value
    :   `k3` - the third mapping's key
    :   `v3` - the third mapping's value
    :   `k4` - the fourth mapping's key
    :   `v4` - the fourth mapping's value
    :   `k5` - the fifth mapping's key
    :   `v5` - the fifth mapping's value
    :   `k6` - the sixth mapping's key
    :   `v6` - the sixth mapping's value

    Returns:
    :   a `Map` containing the specified mappings

    Throws:
    :   `IllegalArgumentException` - if there are any duplicate keys
    :   `NullPointerException` - if any key or value is `null`

    Since:
    :   9
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of(K k1,
    V v1,
    K k2,
    V v2,
    K k3,
    V v3,
    K k4,
    V v4,
    K k5,
    V v5,
    K k6,
    V v6,
    K k7,
    V v7)

    Returns an unmodifiable map containing seven mappings.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `k1` - the first mapping's key
    :   `v1` - the first mapping's value
    :   `k2` - the second mapping's key
    :   `v2` - the second mapping's value
    :   `k3` - the third mapping's key
    :   `v3` - the third mapping's value
    :   `k4` - the fourth mapping's key
    :   `v4` - the fourth mapping's value
    :   `k5` - the fifth mapping's key
    :   `v5` - the fifth mapping's value
    :   `k6` - the sixth mapping's key
    :   `v6` - the sixth mapping's value
    :   `k7` - the seventh mapping's key
    :   `v7` - the seventh mapping's value

    Returns:
    :   a `Map` containing the specified mappings

    Throws:
    :   `IllegalArgumentException` - if there are any duplicate keys
    :   `NullPointerException` - if any key or value is `null`

    Since:
    :   9
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of(K k1,
    V v1,
    K k2,
    V v2,
    K k3,
    V v3,
    K k4,
    V v4,
    K k5,
    V v5,
    K k6,
    V v6,
    K k7,
    V v7,
    K k8,
    V v8)

    Returns an unmodifiable map containing eight mappings.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `k1` - the first mapping's key
    :   `v1` - the first mapping's value
    :   `k2` - the second mapping's key
    :   `v2` - the second mapping's value
    :   `k3` - the third mapping's key
    :   `v3` - the third mapping's value
    :   `k4` - the fourth mapping's key
    :   `v4` - the fourth mapping's value
    :   `k5` - the fifth mapping's key
    :   `v5` - the fifth mapping's value
    :   `k6` - the sixth mapping's key
    :   `v6` - the sixth mapping's value
    :   `k7` - the seventh mapping's key
    :   `v7` - the seventh mapping's value
    :   `k8` - the eighth mapping's key
    :   `v8` - the eighth mapping's value

    Returns:
    :   a `Map` containing the specified mappings

    Throws:
    :   `IllegalArgumentException` - if there are any duplicate keys
    :   `NullPointerException` - if any key or value is `null`

    Since:
    :   9
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of(K k1,
    V v1,
    K k2,
    V v2,
    K k3,
    V v3,
    K k4,
    V v4,
    K k5,
    V v5,
    K k6,
    V v6,
    K k7,
    V v7,
    K k8,
    V v8,
    K k9,
    V v9)

    Returns an unmodifiable map containing nine mappings.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `k1` - the first mapping's key
    :   `v1` - the first mapping's value
    :   `k2` - the second mapping's key
    :   `v2` - the second mapping's value
    :   `k3` - the third mapping's key
    :   `v3` - the third mapping's value
    :   `k4` - the fourth mapping's key
    :   `v4` - the fourth mapping's value
    :   `k5` - the fifth mapping's key
    :   `v5` - the fifth mapping's value
    :   `k6` - the sixth mapping's key
    :   `v6` - the sixth mapping's value
    :   `k7` - the seventh mapping's key
    :   `v7` - the seventh mapping's value
    :   `k8` - the eighth mapping's key
    :   `v8` - the eighth mapping's value
    :   `k9` - the ninth mapping's key
    :   `v9` - the ninth mapping's value

    Returns:
    :   a `Map` containing the specified mappings

    Throws:
    :   `IllegalArgumentException` - if there are any duplicate keys
    :   `NullPointerException` - if any key or value is `null`

    Since:
    :   9
  + ### of

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> of(K k1,
    V v1,
    K k2,
    V v2,
    K k3,
    V v3,
    K k4,
    V v4,
    K k5,
    V v5,
    K k6,
    V v6,
    K k7,
    V v7,
    K k8,
    V v8,
    K k9,
    V v9,
    K k10,
    V v10)

    Returns an unmodifiable map containing ten mappings.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `k1` - the first mapping's key
    :   `v1` - the first mapping's value
    :   `k2` - the second mapping's key
    :   `v2` - the second mapping's value
    :   `k3` - the third mapping's key
    :   `v3` - the third mapping's value
    :   `k4` - the fourth mapping's key
    :   `v4` - the fourth mapping's value
    :   `k5` - the fifth mapping's key
    :   `v5` - the fifth mapping's value
    :   `k6` - the sixth mapping's key
    :   `v6` - the sixth mapping's value
    :   `k7` - the seventh mapping's key
    :   `v7` - the seventh mapping's value
    :   `k8` - the eighth mapping's key
    :   `v8` - the eighth mapping's value
    :   `k9` - the ninth mapping's key
    :   `v9` - the ninth mapping's value
    :   `k10` - the tenth mapping's key
    :   `v10` - the tenth mapping's value

    Returns:
    :   a `Map` containing the specified mappings

    Throws:
    :   `IllegalArgumentException` - if there are any duplicate keys
    :   `NullPointerException` - if any key or value is `null`

    Since:
    :   9
  + ### ofEntries

    [@SafeVarargs](../lang/SafeVarargs.md "annotation interface in java.lang")
    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> ofEntries([Map.Entry](Map.Entry.md "interface in java.util")<? extends K,? extends V>... entries)

    Returns an unmodifiable map containing keys and values extracted from the given entries.
    The entries themselves are not stored in the map.
    See [Unmodifiable Maps](#unmodifiable) for details.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `entries` - `Map.Entry`s containing the keys and values from which the map is populated

    Returns:
    :   a `Map` containing the specified mappings

    Throws:
    :   `IllegalArgumentException` - if there are any duplicate keys
    :   `NullPointerException` - if any entry, key, or value is `null`, or if
        the `entries` array is `null`

    Since:
    :   9

    See Also:
    :   - [`Map.entry()`](#entry(K,V))
  + ### entry

    static <K,
    V> [Map.Entry](Map.Entry.md "interface in java.util")<K,V> entry(K k,
    V v)

    Returns an unmodifiable [`Map.Entry`](Map.Entry.md "interface in java.util") containing the given key and value.
    These entries are suitable for populating `Map` instances using the
    [`Map.ofEntries()`](#ofEntries(java.util.Map.Entry...)) method.
    The `Entry` instances created by this method have the following characteristics:
    - They disallow `null` keys and values. Attempts to create them using a `null`
      key or value result in `NullPointerException`.- They are unmodifiable. Calls to [`Entry.setValue()`](Map.Entry.md#setValue(V))
        on a returned `Entry` result in `UnsupportedOperationException`.- They are not serializable.- They are [value-based](../lang/doc-files/ValueBased.md).
            Programmers should treat instances that are [equal](#equals(java.lang.Object))
            as interchangeable and should not use them for synchronization, or
            unpredictable behavior may occur. For example, in a future release,
            synchronization may fail. Callers should make no assumptions
            about the identity of the returned instances. This method is free to
            create new instances or reuse existing ones.

    Type Parameters:
    :   `K` - the key's type
    :   `V` - the value's type

    Parameters:
    :   `k` - the key
    :   `v` - the value

    Returns:
    :   an `Entry` containing the specified key and value

    Throws:
    :   `NullPointerException` - if the key or value is `null`

    Since:
    :   9

    See Also:
    :   - [`Map.ofEntries()`](#ofEntries(java.util.Map.Entry...))
  + ### copyOf

    static <K,
    V> [Map](Map.md "interface in java.util")<K,V> copyOf([Map](Map.md "interface in java.util")<? extends K,? extends V> map)

    Returns an [unmodifiable Map](#unmodifiable) containing the entries
    of the given Map. The given Map must not be null, and it must not contain any
    null keys or values. If the given Map is subsequently modified, the returned
    Map will not reflect such modifications.

    Type Parameters:
    :   `K` - the `Map`'s key type
    :   `V` - the `Map`'s value type

    Parameters:
    :   `map` - a `Map` from which entries are drawn, must be non-null

    Returns:
    :   a `Map` containing the entries of the given `Map`

    Throws:
    :   `NullPointerException` - if map is null, or if it contains any null keys or values

    Since:
    :   10