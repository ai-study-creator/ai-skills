Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class ConcurrentHashMap.KeySetView<K,V>

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.concurrent.ConcurrentHashMap.KeySetView<K,V>

Type Parameters:
:   `K` - the type of keys
:   `V` - the type of values in the backing map

All Implemented Interfaces:
:   `Serializable`, `Iterable<K>`, `Collection<K>`, `Set<K>`

Enclosing class:
:   `ConcurrentHashMap<K,V>`

---

public static final class ConcurrentHashMap.KeySetView<K,V>
extends [Object](../../lang/Object.md "class in java.lang")
implements [Set](../Set.md "interface in java.util")<K>, [Serializable](../../io/Serializable.md "interface in java.io")

A view of a ConcurrentHashMap as a [`Set`](../Set.md "interface in java.util") of keys, in
which additions may optionally be enabled by mapping to a
common value. This class cannot be directly instantiated.
See [`keySet()`](ConcurrentHashMap.md#keySet()),
[`keySet(V)`](ConcurrentHashMap.md#keySet(V)),
[`newKeySet()`](ConcurrentHashMap.md#newKeySet()),
[`newKeySet(int)`](ConcurrentHashMap.md#newKeySet(int)).

Since:
:   1.8

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.concurrent.ConcurrentHashMap.KeySetView)

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `add(K e)`

  Adds the specified key to this set view by mapping the key to
  the default mapped value in the backing map, if defined.

  `boolean`

  `addAll(Collection<? extends K> c)`

  Adds all of the elements in the specified collection to this set,
  as if by calling [`add(K)`](#add(K)) on each one.

  `final void`

  `clear()`

  Removes all of the elements from this view, by removing all
  the mappings from the map backing this view.

  `boolean`

  `contains(Object o)`

  Returns `true` if this collection contains the specified element.

  `final boolean`

  `containsAll(Collection<?> c)`

  Returns `true` if this collection contains all of the elements
  in the specified collection.

  `boolean`

  `equals(Object o)`

  Indicates whether some other object is "equal to" this one.

  `void`

  `forEach(Consumer<? super K> action)`

  Performs the given action for each element of the `Iterable`
  until all elements have been processed or the action throws an
  exception.

  `ConcurrentHashMap<K,V>`

  `getMap()`

  Returns the map backing this view.

  `V`

  `getMappedValue()`

  Returns the default mapped value for additions,
  or `null` if additions are not supported.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `final boolean`

  `isEmpty()`

  Returns `true` if this collection contains no elements.

  `Iterator<K>`

  `iterator()`

  Returns an iterator over the elements in this collection.

  `boolean`

  `remove(Object o)`

  Removes the key from this map view, by removing the key (and its
  corresponding value) from the backing map.

  `boolean`

  `removeAll(Collection<?> c)`

  Removes all of this collection's elements that are also contained in the
  specified collection (optional operation).

  `final boolean`

  `retainAll(Collection<?> c)`

  Retains only the elements in this collection that are contained in the
  specified collection (optional operation).

  `final int`

  `size()`

  Returns the number of elements in this collection.

  `Spliterator<K>`

  `spliterator()`

  Creates a `Spliterator` over the elements in this set.

  `final Object[]`

  `toArray()`

  Returns an array containing all of the elements in this collection.

  `final <T> T[]`

  `toArray(T[] a)`

  Returns an array containing all of the elements in this collection;
  the runtime type of the returned array is that of the specified array.

  `final String`

  `toString()`

  Returns a string representation of this collection.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.util.[Collection](../Collection.md "interface in java.util")

  `parallelStream, removeIf, stream, toArray`

  ### Methods inherited from interface java.util.[Set](../Set.md "interface in java.util")

  `clear, containsAll, isEmpty, removeAll, retainAll, size, toArray, toArray`

* ## Method Details

  + ### getMappedValue

    public [V](ConcurrentHashMap.KeySetView.md "type parameter in ConcurrentHashMap.KeySetView") getMappedValue()

    Returns the default mapped value for additions,
    or `null` if additions are not supported.

    Returns:
    :   the default mapped value for additions, or `null`
        if not supported
  + ### contains

    public boolean contains([Object](../../lang/Object.md "class in java.lang") o)

    Returns `true` if this collection contains the specified element.
    More formally, returns `true` if and only if this collection
    contains at least one element `e` such that
    `Objects.equals(o, e)`.

    Specified by:
    :   `contains` in interface `Collection<K>`

    Specified by:
    :   `contains` in interface `Set<K>`

    Parameters:
    :   `o` - element whose presence in this collection is to be tested

    Returns:
    :   `true` if this collection contains the specified
        element

    Throws:
    :   `NullPointerException` - if the specified key is null
  + ### remove

    public boolean remove([Object](../../lang/Object.md "class in java.lang") o)

    Removes the key from this map view, by removing the key (and its
    corresponding value) from the backing map. This method does
    nothing if the key is not in the map.

    Specified by:
    :   `remove` in interface `Collection<K>`

    Specified by:
    :   `remove` in interface `Set<K>`

    Parameters:
    :   `o` - the key to be removed from the backing map

    Returns:
    :   `true` if the backing map contained the specified key

    Throws:
    :   `NullPointerException` - if the specified key is null
  + ### iterator

    public [Iterator](../Iterator.md "interface in java.util")<[K](ConcurrentHashMap.KeySetView.md "type parameter in ConcurrentHashMap.KeySetView")> iterator()

    Returns an iterator over the elements in this collection.

    The returned iterator is
    [*weakly consistent*](package-summary.md#Weakly).

    Specified by:
    :   `iterator` in interface `Collection<K>`

    Specified by:
    :   `iterator` in interface `Iterable<K>`

    Specified by:
    :   `iterator` in interface `Set<K>`

    Returns:
    :   an iterator over the keys of the backing map
  + ### add

    public boolean add([K](ConcurrentHashMap.KeySetView.md "type parameter in ConcurrentHashMap.KeySetView") e)

    Adds the specified key to this set view by mapping the key to
    the default mapped value in the backing map, if defined.

    Specified by:
    :   `add` in interface `Collection<K>`

    Specified by:
    :   `add` in interface `Set<K>`

    Parameters:
    :   `e` - key to be added

    Returns:
    :   `true` if this set changed as a result of the call

    Throws:
    :   `NullPointerException` - if the specified key is null
    :   `UnsupportedOperationException` - if no default mapped value
        for additions was provided
  + ### addAll

    public boolean addAll([Collection](../Collection.md "interface in java.util")<? extends [K](ConcurrentHashMap.KeySetView.md "type parameter in ConcurrentHashMap.KeySetView")> c)

    Adds all of the elements in the specified collection to this set,
    as if by calling [`add(K)`](#add(K)) on each one.

    Specified by:
    :   `addAll` in interface `Collection<K>`

    Specified by:
    :   `addAll` in interface `Set<K>`

    Parameters:
    :   `c` - the elements to be inserted into this set

    Returns:
    :   `true` if this set changed as a result of the call

    Throws:
    :   `NullPointerException` - if the collection or any of its
        elements are `null`
    :   `UnsupportedOperationException` - if no default mapped value
        for additions was provided

    See Also:
    :   - [`Set.add(Object)`](../Set.md#add(E))
  + ### hashCode

    public int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](../../lang/Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](../../lang/Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Specified by:
    :   `hashCode` in interface `Collection<K>`

    Specified by:
    :   `hashCode` in interface `Set<K>`

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../lang/Object.md "class in java.lang") o)

    Description copied from class: `Object`

    Indicates whether some other object is "equal to" this one.

    The `equals` method implements an equivalence relation
    on non-null object references:
    - It is *reflexive*: for any non-null reference value
      `x`, `x.equals(x)` should return
      `true`.- It is *symmetric*: for any non-null reference values
        `x` and `y`, `x.equals(y)`
        should return `true` if and only if
        `y.equals(x)` returns `true`.- It is *transitive*: for any non-null reference values
          `x`, `y`, and `z`, if
          `x.equals(y)` returns `true` and
          `y.equals(z)` returns `true`, then
          `x.equals(z)` should return `true`.- It is *consistent*: for any non-null reference values
            `x` and `y`, multiple invocations of
            `x.equals(y)` consistently return `true`
            or consistently return `false`, provided no
            information used in `equals` comparisons on the
            objects is modified.- For any non-null reference value `x`,
              `x.equals(null)` should return `false`.

    An equivalence relation partitions the elements it operates on
    into *equivalence classes*; all the members of an
    equivalence class are equal to each other. Members of an
    equivalence class are substitutable for each other, at least
    for some purposes.

    Specified by:
    :   `equals` in interface `Collection<K>`

    Specified by:
    :   `equals` in interface `Set<K>`

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `o` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../lang/Object.md#hashCode())
        - [`HashMap`](../HashMap.md "class in java.util")
  + ### spliterator

    public [Spliterator](../Spliterator.md "interface in java.util")<[K](ConcurrentHashMap.KeySetView.md "type parameter in ConcurrentHashMap.KeySetView")> spliterator()

    Description copied from interface: `Set`

    Creates a `Spliterator` over the elements in this set.

    The `Spliterator` reports [`Spliterator.DISTINCT`](../Spliterator.md#DISTINCT).
    Implementations should document the reporting of additional
    characteristic values.

    Specified by:
    :   `spliterator` in interface `Collection<K>`

    Specified by:
    :   `spliterator` in interface `Iterable<K>`

    Specified by:
    :   `spliterator` in interface `Set<K>`

    Returns:
    :   a `Spliterator` over the elements in this set
  + ### forEach

    public void forEach([Consumer](../function/Consumer.md "interface in java.util.function")<? super [K](ConcurrentHashMap.KeySetView.md "type parameter in ConcurrentHashMap.KeySetView")> action)

    Description copied from interface: `Iterable`

    Performs the given action for each element of the `Iterable`
    until all elements have been processed or the action throws an
    exception. Actions are performed in the order of iteration, if that
    order is specified. Exceptions thrown by the action are relayed to the
    caller.

    The behavior of this method is unspecified if the action performs
    side-effects that modify the underlying source of elements, unless an
    overriding class has specified a concurrent modification policy.

    Specified by:
    :   `forEach` in interface `Iterable<K>`

    Parameters:
    :   `action` - The action to be performed for each element
  + ### getMap

    public [ConcurrentHashMap](ConcurrentHashMap.md "class in java.util.concurrent")<[K](ConcurrentHashMap.KeySetView.md "type parameter in ConcurrentHashMap.KeySetView"),[V](ConcurrentHashMap.KeySetView.md "type parameter in ConcurrentHashMap.KeySetView")> getMap()

    Returns the map backing this view.

    Returns:
    :   the map backing this view
  + ### clear

    public final void clear()

    Removes all of the elements from this view, by removing all
    the mappings from the map backing this view.

    Specified by:
    :   `clear` in interface `Collection<K>`
  + ### size

    public final int size()

    Description copied from interface: `Collection`

    Returns the number of elements in this collection. If this collection
    contains more than `Integer.MAX_VALUE` elements, returns
    `Integer.MAX_VALUE`.

    Specified by:
    :   `size` in interface `Collection<K>`

    Returns:
    :   the number of elements in this collection
  + ### isEmpty

    public final boolean isEmpty()

    Description copied from interface: `Collection`

    Returns `true` if this collection contains no elements.

    Specified by:
    :   `isEmpty` in interface `Collection<K>`

    Returns:
    :   `true` if this collection contains no elements
  + ### toArray

    public final [Object](../../lang/Object.md "class in java.lang")[] toArray()

    Description copied from interface: `Collection`

    Returns an array containing all of the elements in this collection.
    If this collection makes any guarantees as to what order its elements
    are returned by its iterator, this method must return the elements in
    the same order. The returned array's [runtime component type](../../lang/Class.md#getComponentType()) is `Object`.

    The returned array will be "safe" in that no references to it are
    maintained by this collection. (In other words, this method must
    allocate a new array even if this collection is backed by an array).
    The caller is thus free to modify the returned array.

    Specified by:
    :   `toArray` in interface `Collection<K>`

    Returns:
    :   an array, whose [runtime component
        type](../../lang/Class.md#getComponentType()) is `Object`, containing all of the elements in this collection
  + ### toArray

    public final <T> T[] toArray(T[] a)

    Description copied from interface: `Collection`

    Returns an array containing all of the elements in this collection;
    the runtime type of the returned array is that of the specified array.
    If the collection fits in the specified array, it is returned therein.
    Otherwise, a new array is allocated with the runtime type of the
    specified array and the size of this collection.

    If this collection fits in the specified array with room to spare
    (i.e., the array has more elements than this collection), the element
    in the array immediately following the end of the collection is set to
    `null`. (This is useful in determining the length of this
    collection *only* if the caller knows that this collection does
    not contain any `null` elements.)

    If this collection makes any guarantees as to what order its elements
    are returned by its iterator, this method must return the elements in
    the same order.

    Specified by:
    :   `toArray` in interface `Collection<K>`

    Type Parameters:
    :   `T` - the component type of the array to contain the collection

    Parameters:
    :   `a` - the array into which the elements of this collection are to be
        stored, if it is big enough; otherwise, a new array of the same
        runtime type is allocated for this purpose.

    Returns:
    :   an array containing all of the elements in this collection
  + ### toString

    public final [String](../../lang/String.md "class in java.lang") toString()

    Returns a string representation of this collection.
    The string representation consists of the string representations
    of the collection's elements in the order they are returned by
    its iterator, enclosed in square brackets (`"[]"`).
    Adjacent elements are separated by the characters `", "`
    (comma and space). Elements are converted to strings as by
    [`String.valueOf(Object)`](../../lang/String.md#valueOf(java.lang.Object)).

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this collection
  + ### containsAll

    public final boolean containsAll([Collection](../Collection.md "interface in java.util")<?> c)

    Description copied from interface: `Collection`

    Returns `true` if this collection contains all of the elements
    in the specified collection.

    Specified by:
    :   `containsAll` in interface `Collection<K>`

    Parameters:
    :   `c` - collection to be checked for containment in this collection

    Returns:
    :   `true` if this collection contains all of the elements
        in the specified collection

    See Also:
    :   - [`Collection.contains(Object)`](../Collection.md#contains(java.lang.Object))
  + ### removeAll

    public boolean removeAll([Collection](../Collection.md "interface in java.util")<?> c)

    Description copied from interface: `Collection`

    Removes all of this collection's elements that are also contained in the
    specified collection (optional operation). After this call returns,
    this collection will contain no elements in common with the specified
    collection.

    Specified by:
    :   `removeAll` in interface `Collection<K>`

    Parameters:
    :   `c` - collection containing elements to be removed from this collection

    Returns:
    :   `true` if this collection changed as a result of the
        call

    See Also:
    :   - [`Collection.remove(Object)`](../Collection.md#remove(java.lang.Object))
        - [`Collection.contains(Object)`](../Collection.md#contains(java.lang.Object))
  + ### retainAll

    public final boolean retainAll([Collection](../Collection.md "interface in java.util")<?> c)

    Description copied from interface: `Collection`

    Retains only the elements in this collection that are contained in the
    specified collection (optional operation). In other words, removes from
    this collection all of its elements that are not contained in the
    specified collection.

    Specified by:
    :   `retainAll` in interface `Collection<K>`

    Parameters:
    :   `c` - collection containing elements to be retained in this collection

    Returns:
    :   `true` if this collection changed as a result of the call

    See Also:
    :   - [`Collection.remove(Object)`](../Collection.md#remove(java.lang.Object))
        - [`Collection.contains(Object)`](../Collection.md#contains(java.lang.Object))