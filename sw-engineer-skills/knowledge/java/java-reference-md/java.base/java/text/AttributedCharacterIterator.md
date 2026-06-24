Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Interface AttributedCharacterIterator

All Superinterfaces:
:   `CharacterIterator`, `Cloneable`

---

public interface AttributedCharacterIterator
extends [CharacterIterator](CharacterIterator.md "interface in java.text")

An `AttributedCharacterIterator` allows iteration through both text and
related attribute information.

An attribute is a key/value pair, identified by the key. No two
attributes on a given character can have the same key.

The values for an attribute are immutable, or must not be mutated
by clients or storage. They are always passed by reference, and not
cloned.

A *run with respect to an attribute* is a maximum text range for
which:

* the attribute is undefined or `null` for the entire range, or* the attribute value is defined and has the same non-`null` value for the
    entire range.

A *run with respect to a set of attributes* is a maximum text range for
which this condition is met for each member attribute.

When getting a run with no explicit attributes specified (i.e.,
calling [`getRunStart()`](#getRunStart()) and [`getRunLimit()`](#getRunLimit())), any
contiguous text segments having the same attributes (the same set
of attribute/value pairs) are treated as separate runs if the
attributes have been given to those text segments separately.

The returned indexes are limited to the range of the iterator.

The returned attribute information is limited to runs that contain
the current character.

Attribute keys are instances of [`AttributedCharacterIterator.Attribute`](AttributedCharacterIterator.Attribute.md "class in java.text") and its
subclasses, such as [`TextAttribute`](../../../java.desktop/java/awt/font/TextAttribute.md "class in java.awt.font").

Since:
:   1.2

See Also:
:   * [`AttributedCharacterIterator.Attribute`](AttributedCharacterIterator.Attribute.md "class in java.text")
    * [`TextAttribute`](../../../java.desktop/java/awt/font/TextAttribute.md "class in java.awt.font")
    * [`AttributedString`](AttributedString.md "class in java.text")
    * [`Annotation`](Annotation.md "class in java.text")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static class`

  `AttributedCharacterIterator.Attribute`

  Defines attribute keys that are used to identify text attributes.
* ## Field Summary

  ### Fields inherited from interface java.text.[CharacterIterator](CharacterIterator.md "interface in java.text")

  `DONE`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Set<AttributedCharacterIterator.Attribute>`

  `getAllAttributeKeys()`

  Returns the keys of all attributes defined on the
  iterator's text range.

  `Object`

  `getAttribute(AttributedCharacterIterator.Attribute attribute)`

  Returns the value of the named `attribute` for the current character.

  `Map<AttributedCharacterIterator.Attribute,Object>`

  `getAttributes()`

  Returns a map with the attributes defined on the current
  character.

  `int`

  `getRunLimit()`

  Returns the index of the first character following the run
  with respect to all attributes containing the current character.

  `int`

  `getRunLimit(AttributedCharacterIterator.Attribute attribute)`

  Returns the index of the first character following the run
  with respect to the given `attribute` containing the current character.

  `int`

  `getRunLimit(Set<? extends AttributedCharacterIterator.Attribute> attributes)`

  Returns the index of the first character following the run
  with respect to the given `attributes` containing the current character.

  `int`

  `getRunStart()`

  Returns the index of the first character of the run
  with respect to all attributes containing the current character.

  `int`

  `getRunStart(AttributedCharacterIterator.Attribute attribute)`

  Returns the index of the first character of the run
  with respect to the given `attribute` containing the current character.

  `int`

  `getRunStart(Set<? extends AttributedCharacterIterator.Attribute> attributes)`

  Returns the index of the first character of the run
  with respect to the given `attributes` containing the current character.

  ### Methods inherited from interface java.text.[CharacterIterator](CharacterIterator.md "interface in java.text")

  `clone, current, first, getBeginIndex, getEndIndex, getIndex, last, next, previous, setIndex`

* ## Method Details

  + ### getRunStart

    int getRunStart()

    Returns the index of the first character of the run
    with respect to all attributes containing the current character.

    Any contiguous text segments having the same attributes (the
    same set of attribute/value pairs) are treated as separate runs
    if the attributes have been given to those text segments separately.

    Returns:
    :   the index of the first character of the run
  + ### getRunStart

    int getRunStart([AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text") attribute)

    Returns the index of the first character of the run
    with respect to the given `attribute` containing the current character.

    Parameters:
    :   `attribute` - the desired attribute.

    Returns:
    :   the index of the first character of the run
  + ### getRunStart

    int getRunStart([Set](../util/Set.md "interface in java.util")<? extends [AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")> attributes)

    Returns the index of the first character of the run
    with respect to the given `attributes` containing the current character.

    Parameters:
    :   `attributes` - a set of the desired attributes.

    Returns:
    :   the index of the first character of the run
  + ### getRunLimit

    int getRunLimit()

    Returns the index of the first character following the run
    with respect to all attributes containing the current character.

    Any contiguous text segments having the same attributes (the
    same set of attribute/value pairs) are treated as separate runs
    if the attributes have been given to those text segments separately.

    Returns:
    :   the index of the first character following the run
  + ### getRunLimit

    int getRunLimit([AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text") attribute)

    Returns the index of the first character following the run
    with respect to the given `attribute` containing the current character.

    Parameters:
    :   `attribute` - the desired attribute

    Returns:
    :   the index of the first character following the run
  + ### getRunLimit

    int getRunLimit([Set](../util/Set.md "interface in java.util")<? extends [AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")> attributes)

    Returns the index of the first character following the run
    with respect to the given `attributes` containing the current character.

    Parameters:
    :   `attributes` - a set of the desired attributes

    Returns:
    :   the index of the first character following the run
  + ### getAttributes

    [Map](../util/Map.md "interface in java.util")<[AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text"),[Object](../lang/Object.md "class in java.lang")> getAttributes()

    Returns a map with the attributes defined on the current
    character.

    Returns:
    :   a map with the attributes defined on the current character
  + ### getAttribute

    [Object](../lang/Object.md "class in java.lang") getAttribute([AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text") attribute)

    Returns the value of the named `attribute` for the current character.
    Returns `null` if the `attribute` is not defined.

    Parameters:
    :   `attribute` - the desired attribute

    Returns:
    :   the value of the named `attribute` or `null`
  + ### getAllAttributeKeys

    [Set](../util/Set.md "interface in java.util")<[AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")> getAllAttributeKeys()

    Returns the keys of all attributes defined on the
    iterator's text range. The set is empty if no
    attributes are defined.

    Returns:
    :   the keys of all attributes