Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface SequencedSet<E>

Type Parameters:
:   `E` - the type of elements in this sequenced set

All Superinterfaces:
:   `Collection<E>`, `Iterable<E>`, `SequencedCollection<E>`, `Set<E>`

All Known Subinterfaces:
:   `NavigableSet<E>`, `SortedSet<E>`

All Known Implementing Classes:
:   `ConcurrentSkipListSet`, `LinkedHashSet`, `TreeSet`

---

public interface SequencedSet<E>
extends [SequencedCollection](SequencedCollection.md "interface in java.util")<E>, [Set](Set.md "interface in java.util")<E>

A collection that is both a [`SequencedCollection`](SequencedCollection.md "interface in java.util") and a [`Set`](Set.md "interface in java.util"). As such,
it can be thought of either as a `Set` that also has a well-defined
[encounter order](SequencedCollection.md#encounter), or as a
`SequencedCollection` that also has unique elements.

This interface has the same requirements on the `equals` and `hashCode`
methods as defined by [`Set.equals`](Set.md#equals(java.lang.Object)) and [`Set.hashCode`](Set.md#hashCode()).
Thus, a `Set` and a `SequencedSet` will compare equals if and only
if they have equal elements, irrespective of ordering.

`SequencedSet` defines the [`reversed()`](#reversed()) method, which provides a
reverse-ordered [view](Collection.md#view) of this set. The only difference
from the [`SequencedCollection.reversed`](SequencedCollection.md#reversed()) method is
that the return type of `SequencedSet.reversed` is `SequencedSet`.

This class is a member of the
[Java Collections Framework](../../../java.base/java/util/package-summary.md#CollectionsFramework).

Since:
:   21

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `SequencedSet<E>`

  `reversed()`

  Returns a reverse-ordered [view](Collection.md#view) of this collection.

  ### Methods inherited from interface java.util.[Collection](Collection.md "interface in java.util")

  `parallelStream, removeIf, stream, toArray`

  ### Methods inherited from interface java.lang.[Iterable](../lang/Iterable.md "interface in java.lang")

  `forEach`

  ### Methods inherited from interface java.util.[SequencedCollection](SequencedCollection.md "interface in java.util")

  `addFirst, addLast, getFirst, getLast, removeFirst, removeLast`

  ### Methods inherited from interface java.util.[Set](Set.md "interface in java.util")

  `add, addAll, clear, contains, containsAll, equals, hashCode, isEmpty, iterator, remove, removeAll, retainAll, size, spliterator, toArray, toArray`

* ## Method Details

  + ### reversed

    [SequencedSet](SequencedSet.md "interface in java.util")<[E](SequencedSet.md "type parameter in SequencedSet")> reversed()

    Returns a reverse-ordered [view](Collection.md#view) of this collection.
    The encounter order of elements in the returned view is the inverse of the encounter
    order of elements in this collection. The reverse ordering affects all order-sensitive
    operations, including those on the view collections of the returned view. If the collection
    implementation permits modifications to this view, the modifications "write through" to the
    underlying collection. Changes to the underlying collection might or might not be visible
    in this reversed view, depending upon the implementation.

    Specified by:
    :   `reversed` in interface `SequencedCollection<E>`

    Returns:
    :   a reverse-ordered view of this collection, as a `SequencedSet`