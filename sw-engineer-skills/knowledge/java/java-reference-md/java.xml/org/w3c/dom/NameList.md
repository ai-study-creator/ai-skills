Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface NameList

---

public interface NameList

The `NameList` interface provides the abstraction of an ordered
collection of parallel pairs of name and namespace values (which could be
null values), without defining or constraining how this collection is
implemented. The items in the `NameList` are accessible via an
integral index, starting from 0.

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

  Test if a name is part of this `NameList`.

  `boolean`

  `containsNS(String namespaceURI,
  String name)`

  Test if the pair namespaceURI/name is part of this
  `NameList`.

  `int`

  `getLength()`

  The number of pairs (name and namespaceURI) in the list.

  `String`

  `getName(int index)`

  Returns the `index`th name item in the collection.

  `String`

  `getNamespaceURI(int index)`

  Returns the `index`th namespaceURI item in the collection.

* ## Method Details

  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName(int index)

    Returns the `index`th name item in the collection.

    Parameters:
    :   `index` - Index into the collection.

    Returns:
    :   The name at the `index`th position in the
        `NameList`, or `null` if there is no name for
        the specified index or if the index is out of range.
  + ### getNamespaceURI

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getNamespaceURI(int index)

    Returns the `index`th namespaceURI item in the collection.

    Parameters:
    :   `index` - Index into the collection.

    Returns:
    :   The namespace URI at the `index`th position in the
        `NameList`, or `null` if there is no name for
        the specified index or if the index is out of range.
  + ### getLength

    int getLength()

    The number of pairs (name and namespaceURI) in the list. The range of
    valid child node indices is 0 to `length-1` inclusive.
  + ### contains

    boolean contains([String](../../../../java.base/java/lang/String.md "class in java.lang") str)

    Test if a name is part of this `NameList`.

    Parameters:
    :   `str` - The name to look for.

    Returns:
    :   `true` if the name has been found,
        `false` otherwise.
  + ### containsNS

    boolean containsNS([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Test if the pair namespaceURI/name is part of this
    `NameList`.

    Parameters:
    :   `namespaceURI` - The namespace URI to look for.
    :   `name` - The name to look for.

    Returns:
    :   `true` if the pair namespaceURI/name has been
        found, `false` otherwise.