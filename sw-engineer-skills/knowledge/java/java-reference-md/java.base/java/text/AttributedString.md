Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class AttributedString

[java.lang.Object](../lang/Object.md "class in java.lang")

java.text.AttributedString

---

public class AttributedString
extends [Object](../lang/Object.md "class in java.lang")

An AttributedString holds text and related attribute information. It
may be used as the actual data storage in some cases where a text
reader wants to access attributed text through the AttributedCharacterIterator
interface.

An attribute is a key/value pair, identified by the key. No two
attributes on a given character can have the same key.

The values for an attribute are immutable, or must not be mutated
by clients or storage. They are always passed by reference, and not
cloned.

Since:
:   1.2

See Also:
:   * [`AttributedCharacterIterator`](AttributedCharacterIterator.md "interface in java.text")
    * [`Annotation`](Annotation.md "class in java.text")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributedString(String text)`

  Constructs an AttributedString instance with the given text.

  `AttributedString(String text,
  Map<? extends AttributedCharacterIterator.Attribute,?> attributes)`

  Constructs an AttributedString instance with the given text and attributes.

  `AttributedString(AttributedCharacterIterator text)`

  Constructs an AttributedString instance with the given attributed
  text represented by AttributedCharacterIterator.

  `AttributedString(AttributedCharacterIterator text,
  int beginIndex,
  int endIndex)`

  Constructs an AttributedString instance with the subrange of
  the given attributed text represented by
  AttributedCharacterIterator.

  `AttributedString(AttributedCharacterIterator text,
  int beginIndex,
  int endIndex,
  AttributedCharacterIterator.Attribute[] attributes)`

  Constructs an AttributedString instance with the subrange of
  the given attributed text represented by
  AttributedCharacterIterator.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAttribute(AttributedCharacterIterator.Attribute attribute,
  Object value)`

  Adds an attribute to the entire string.

  `void`

  `addAttribute(AttributedCharacterIterator.Attribute attribute,
  Object value,
  int beginIndex,
  int endIndex)`

  Adds an attribute to a subrange of the string.

  `void`

  `addAttributes(Map<? extends AttributedCharacterIterator.Attribute,?> attributes,
  int beginIndex,
  int endIndex)`

  Adds a set of attributes to a subrange of the string.

  `AttributedCharacterIterator`

  `getIterator()`

  Creates an AttributedCharacterIterator instance that provides access to the entire contents of
  this string.

  `AttributedCharacterIterator`

  `getIterator(AttributedCharacterIterator.Attribute[] attributes)`

  Creates an AttributedCharacterIterator instance that provides access to
  selected contents of this string.

  `AttributedCharacterIterator`

  `getIterator(AttributedCharacterIterator.Attribute[] attributes,
  int beginIndex,
  int endIndex)`

  Creates an AttributedCharacterIterator instance that provides access to
  selected contents of this string.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AttributedString

    public AttributedString([String](../lang/String.md "class in java.lang") text)

    Constructs an AttributedString instance with the given text.

    Parameters:
    :   `text` - The text for this attributed string.

    Throws:
    :   `NullPointerException` - if `text` is null.
  + ### AttributedString

    public AttributedString([String](../lang/String.md "class in java.lang") text,
    [Map](../util/Map.md "interface in java.util")<? extends [AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text"),?> attributes)

    Constructs an AttributedString instance with the given text and attributes.

    Parameters:
    :   `text` - The text for this attributed string.
    :   `attributes` - The attributes that apply to the entire string.

    Throws:
    :   `NullPointerException` - if `text` or
        `attributes` is null.
    :   `IllegalArgumentException` - if the text has length 0
        and the attributes parameter is not an empty Map (attributes
        cannot be applied to a 0-length range).
  + ### AttributedString

    public AttributedString([AttributedCharacterIterator](AttributedCharacterIterator.md "interface in java.text") text)

    Constructs an AttributedString instance with the given attributed
    text represented by AttributedCharacterIterator.

    Parameters:
    :   `text` - The text for this attributed string.

    Throws:
    :   `NullPointerException` - if `text` is null.
  + ### AttributedString

    public AttributedString([AttributedCharacterIterator](AttributedCharacterIterator.md "interface in java.text") text,
    int beginIndex,
    int endIndex)

    Constructs an AttributedString instance with the subrange of
    the given attributed text represented by
    AttributedCharacterIterator. If the given range produces an
    empty text, all attributes will be discarded. Note that any
    attributes wrapped by an Annotation object are discarded for a
    subrange of the original attribute range.

    Parameters:
    :   `text` - The text for this attributed string.
    :   `beginIndex` - Index of the first character of the range.
    :   `endIndex` - Index of the character following the last character
        of the range.

    Throws:
    :   `NullPointerException` - if `text` is null.
    :   `IllegalArgumentException` - if the subrange given by
        beginIndex and endIndex is out of the text range.

    See Also:
    :   - [`Annotation`](Annotation.md "class in java.text")
  + ### AttributedString

    public AttributedString([AttributedCharacterIterator](AttributedCharacterIterator.md "interface in java.text") text,
    int beginIndex,
    int endIndex,
    [AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")[] attributes)

    Constructs an AttributedString instance with the subrange of
    the given attributed text represented by
    AttributedCharacterIterator. Only attributes that match the
    given attributes will be incorporated into the instance. If the
    given range produces an empty text, all attributes will be
    discarded. Note that any attributes wrapped by an Annotation
    object are discarded for a subrange of the original attribute
    range.

    Parameters:
    :   `text` - The text for this attributed string.
    :   `beginIndex` - Index of the first character of the range.
    :   `endIndex` - Index of the character following the last character
        of the range.
    :   `attributes` - Specifies attributes to be extracted
        from the text. If null is specified, all available attributes will
        be used.

    Throws:
    :   `NullPointerException` - if `text` is null.
    :   `IllegalArgumentException` - if the subrange given by
        beginIndex and endIndex is out of the text range.

    See Also:
    :   - [`Annotation`](Annotation.md "class in java.text")
* ## Method Details

  + ### addAttribute

    public void addAttribute([AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text") attribute,
    [Object](../lang/Object.md "class in java.lang") value)

    Adds an attribute to the entire string.

    Parameters:
    :   `attribute` - the attribute key
    :   `value` - the value of the attribute; may be null

    Throws:
    :   `NullPointerException` - if `attribute` is null.
    :   `IllegalArgumentException` - if the AttributedString has length 0
        (attributes cannot be applied to a 0-length range).
  + ### addAttribute

    public void addAttribute([AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text") attribute,
    [Object](../lang/Object.md "class in java.lang") value,
    int beginIndex,
    int endIndex)

    Adds an attribute to a subrange of the string.

    Parameters:
    :   `attribute` - the attribute key
    :   `value` - The value of the attribute. May be null.
    :   `beginIndex` - Index of the first character of the range.
    :   `endIndex` - Index of the character following the last character of the range.

    Throws:
    :   `NullPointerException` - if `attribute` is null.
    :   `IllegalArgumentException` - if beginIndex is less than 0, endIndex is
        greater than the length of the string, or beginIndex and endIndex together don't
        define a non-empty subrange of the string.
  + ### addAttributes

    public void addAttributes([Map](../util/Map.md "interface in java.util")<? extends [AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text"),?> attributes,
    int beginIndex,
    int endIndex)

    Adds a set of attributes to a subrange of the string.

    Parameters:
    :   `attributes` - The attributes to be added to the string.
    :   `beginIndex` - Index of the first character of the range.
    :   `endIndex` - Index of the character following the last
        character of the range.

    Throws:
    :   `NullPointerException` - if `attributes` is null.
    :   `IllegalArgumentException` - if beginIndex is less than
        0, endIndex is greater than the length of the string, or
        beginIndex and endIndex together don't define a non-empty
        subrange of the string and the attributes parameter is not an
        empty Map.
  + ### getIterator

    public [AttributedCharacterIterator](AttributedCharacterIterator.md "interface in java.text") getIterator()

    Creates an AttributedCharacterIterator instance that provides access to the entire contents of
    this string.

    Returns:
    :   An iterator providing access to the text and its attributes.
  + ### getIterator

    public [AttributedCharacterIterator](AttributedCharacterIterator.md "interface in java.text") getIterator([AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")[] attributes)

    Creates an AttributedCharacterIterator instance that provides access to
    selected contents of this string.
    Information about attributes not listed in attributes that the
    implementor may have need not be made accessible through the iterator.
    If the list is null, all available attribute information should be made
    accessible.

    Parameters:
    :   `attributes` - a list of attributes that the client is interested in

    Returns:
    :   an iterator providing access to the entire text and its selected attributes
  + ### getIterator

    public [AttributedCharacterIterator](AttributedCharacterIterator.md "interface in java.text") getIterator([AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text")[] attributes,
    int beginIndex,
    int endIndex)

    Creates an AttributedCharacterIterator instance that provides access to
    selected contents of this string.
    Information about attributes not listed in attributes that the
    implementor may have need not be made accessible through the iterator.
    If the list is null, all available attribute information should be made
    accessible.

    Parameters:
    :   `attributes` - a list of attributes that the client is interested in
    :   `beginIndex` - the index of the first character
    :   `endIndex` - the index of the character following the last character

    Returns:
    :   an iterator providing access to the text and its attributes

    Throws:
    :   `IllegalArgumentException` - if beginIndex is less than 0,
        endIndex is greater than the length of the string, or beginIndex is
        greater than endIndex.