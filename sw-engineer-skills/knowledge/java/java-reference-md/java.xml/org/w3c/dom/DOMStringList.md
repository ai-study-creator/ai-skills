Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface DOMStringList

---

public interface DOMStringList

The `DOMStringList` interface provides the abstraction of an
ordered collection of `DOMString` values, without defining or
constraining how this collection is implemented. The items in the
`DOMStringList` are accessible via an integral index, starting
from 0.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

Since:
:   1.5, DOM Level 3

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `contains(String str)`

  Test if a string is part of this `DOMStringList`.

  `int`

  `getLength()`

  The number of `DOMString`s in the list.

  `String`

  `item(int index)`

  Returns the `index`th item in the collection.

* ## Method Details

  + ### item

    [String](../../../../java.base/java/lang/String.md "class in java.lang") item(int index)

    Returns the `index`th item in the collection. If
    `index` is greater than or equal to the number of
    `DOMString`s in the list, this returns `null`.

    Parameters:
    :   `index` - Index into the collection.

    Returns:
    :   The `DOMString` at the `index`th
        position in the `DOMStringList`, or `null` if
        that is not a valid index.
  + ### getLength

    int getLength()

    The number of `DOMString`s in the list. The range of valid
    child node indices is 0 to `length-1` inclusive.
  + ### contains

    boolean contains([String](../../../../java.base/java/lang/String.md "class in java.lang") str)

    Test if a string is part of this `DOMStringList`.

    Parameters:
    :   `str` - The string to look for.

    Returns:
    :   `true` if the string has been found,
        `false` otherwise.