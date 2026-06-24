Module [java.desktop](../../../module-summary.md)

Package [java.beans.beancontext](package-summary.md)

# Class BeanContextSupport.BCSIterator

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.beans.beancontext.BeanContextSupport.BCSIterator

All Implemented Interfaces:
:   `Iterator<Object>`

Enclosing class:
:   `BeanContextSupport`

---

protected static final class BeanContextSupport.BCSIterator
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang")>

protected final subclass that encapsulates an iterator but implements
a noop remove() method.

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `hasNext()`

  Returns `true` if the iteration has more elements.

  `Object`

  `next()`

  Returns the next element in the iteration.

  `void`

  `remove()`

  Removes from the underlying collection the last element returned
  by this iterator (optional operation).

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.util.[Iterator](../../../../java.base/java/util/Iterator.md "interface in java.util")

  `forEachRemaining`

* ## Method Details

  + ### hasNext

    public boolean hasNext()

    Description copied from interface: `Iterator`

    Returns `true` if the iteration has more elements.
    (In other words, returns `true` if [`Iterator.next()`](../../../../java.base/java/util/Iterator.md#next()) would
    return an element rather than throwing an exception.)

    Specified by:
    :   `hasNext` in interface `Iterator<Object>`

    Returns:
    :   `true` if the iteration has more elements
  + ### next

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") next()

    Description copied from interface: `Iterator`

    Returns the next element in the iteration.

    Specified by:
    :   `next` in interface `Iterator<Object>`

    Returns:
    :   the next element in the iteration
  + ### remove

    public void remove()

    Description copied from interface: `Iterator`

    Removes from the underlying collection the last element returned
    by this iterator (optional operation). This method can be called
    only once per call to [`Iterator.next()`](../../../../java.base/java/util/Iterator.md#next()).

    The behavior of an iterator is unspecified if the underlying collection
    is modified while the iteration is in progress in any way other than by
    calling this method, unless an overriding class has specified a
    concurrent modification policy.

    The behavior of an iterator is unspecified if this method is called
    after a call to the [`forEachRemaining`](../../../../java.base/java/util/Iterator.md#forEachRemaining(java.util.function.Consumer)) method.

    Specified by:
    :   `remove` in interface `Iterator<Object>`