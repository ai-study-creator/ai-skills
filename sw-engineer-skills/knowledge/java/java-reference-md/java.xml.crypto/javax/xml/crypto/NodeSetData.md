Module [java.xml.crypto](../../../module-summary.md)

Package [javax.xml.crypto](package-summary.md)

# Interface NodeSetData<T>

Type Parameters:
:   `T` - the type of nodes maintained by this set

All Superinterfaces:
:   `Data`, `Iterable<T>`

---

public interface NodeSetData<T>
extends [Data](Data.md "interface in javax.xml.crypto"), [Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")<T>

An abstract representation of a `Data` type containing a
node-set. The type (class) and ordering of the nodes contained in the set
are not defined by this class; instead that behavior should be
defined by `NodeSetData` subclasses.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Iterator<T>`

  `iterator()`

  Returns a read-only iterator over the nodes contained in this
  `NodeSetData` in
  [document order](http://www.w3.org/TR/1999/REC-xpath-19991116#dt-document-order).

  ### Methods inherited from interface java.lang.[Iterable](../../../../java.base/java/lang/Iterable.md "interface in java.lang")

  `forEach, spliterator`

* ## Method Details

  + ### iterator

    [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<[T](NodeSetData.md "type parameter in NodeSetData")> iterator()

    Returns a read-only iterator over the nodes contained in this
    `NodeSetData` in
    [document order](http://www.w3.org/TR/1999/REC-xpath-19991116#dt-document-order). Attempts to modify the returned iterator
    via the `remove` method throw
    `UnsupportedOperationException`.

    Specified by:
    :   `iterator` in interface `Iterable<T>`

    Returns:
    :   an `Iterator` over the nodes in this
        `NodeSetData` in document order