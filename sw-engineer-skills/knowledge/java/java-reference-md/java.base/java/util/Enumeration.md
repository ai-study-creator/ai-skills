Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Interface Enumeration<E>

Type Parameters:
:   `E` - the type of elements returned by this enumeration

All Known Subinterfaces:
:   `NamingEnumeration<T>`

All Known Implementing Classes:
:   `StringTokenizer`

---

public interface Enumeration<E>

An object that implements the Enumeration interface generates a
series of elements, one at a time. Successive calls to the
`nextElement` method return successive elements of the
series.

For example, to print all elements of a `Vector<E>` *v*:

```
   for (Enumeration<E> e = v.elements(); e.hasMoreElements();)
       System.out.println(e.nextElement());
```

Methods are provided to enumerate through the elements of a
vector, the keys of a hashtable, and the values in a hashtable.
Enumerations are also used to specify the input streams to a
`SequenceInputStream`.

Since:
:   1.0

See Also:
:   * [`Iterator`](Iterator.md "interface in java.util")
    * [`SequenceInputStream`](../io/SequenceInputStream.md "class in java.io")
    * [`nextElement()`](#nextElement())
    * [`Hashtable`](Hashtable.md "class in java.util")
    * [`Hashtable.elements()`](Hashtable.md#elements())
    * [`Hashtable.keys()`](Hashtable.md#keys())
    * [`Vector`](Vector.md "class in java.util")
    * [`Vector.elements()`](Vector.md#elements())

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default Iterator<E>`

  `asIterator()`

  Returns an [`Iterator`](Iterator.md "interface in java.util") that traverses the remaining elements
  covered by this enumeration.

  `boolean`

  `hasMoreElements()`

  Tests if this enumeration contains more elements.

  `E`

  `nextElement()`

  Returns the next element of this enumeration if this enumeration
  object has at least one more element to provide.

* ## Method Details

  + ### hasMoreElements

    boolean hasMoreElements()

    Tests if this enumeration contains more elements.

    Returns:
    :   `true` if and only if this enumeration object
        contains at least one more element to provide;
        `false` otherwise.
  + ### nextElement

    [E](Enumeration.md "type parameter in Enumeration") nextElement()

    Returns the next element of this enumeration if this enumeration
    object has at least one more element to provide.

    Returns:
    :   the next element of this enumeration.

    Throws:
    :   `NoSuchElementException` - if no more elements exist.
  + ### asIterator

    default [Iterator](Iterator.md "interface in java.util")<[E](Enumeration.md "type parameter in Enumeration")> asIterator()

    Returns an [`Iterator`](Iterator.md "interface in java.util") that traverses the remaining elements
    covered by this enumeration. Traversal is undefined if any methods
    are called on this enumeration after the call to `asIterator`.

    Returns:
    :   an Iterator representing the remaining elements of this Enumeration

    Since:
    :   9