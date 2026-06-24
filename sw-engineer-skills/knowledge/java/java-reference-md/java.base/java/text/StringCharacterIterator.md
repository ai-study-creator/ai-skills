Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class StringCharacterIterator

[java.lang.Object](../lang/Object.md "class in java.lang")

java.text.StringCharacterIterator

All Implemented Interfaces:
:   `Cloneable`, `CharacterIterator`

---

public final class StringCharacterIterator
extends [Object](../lang/Object.md "class in java.lang")
implements [CharacterIterator](CharacterIterator.md "interface in java.text")

`StringCharacterIterator` implements the
`CharacterIterator` protocol for a `String`.
The `StringCharacterIterator` class iterates over the
entire `String`.

Since:
:   1.1

See Also:
:   * [`CharacterIterator`](CharacterIterator.md "interface in java.text")

* ## Field Summary

  ### Fields inherited from interface java.text.[CharacterIterator](CharacterIterator.md "interface in java.text")

  `DONE`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringCharacterIterator(String text)`

  Constructs an iterator with an initial index of 0.

  `StringCharacterIterator(String text,
  int pos)`

  Constructs an iterator with the specified initial index.

  `StringCharacterIterator(String text,
  int begin,
  int end,
  int pos)`

  Constructs an iterator over the given range of the given string, with the
  index set at the specified position.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates a copy of this iterator.

  `char`

  `current()`

  Implements CharacterIterator.current() for String.

  `boolean`

  `equals(Object obj)`

  Compares the equality of two StringCharacterIterator objects.

  `char`

  `first()`

  Implements CharacterIterator.first() for String.

  `int`

  `getBeginIndex()`

  Implements CharacterIterator.getBeginIndex() for String.

  `int`

  `getEndIndex()`

  Implements CharacterIterator.getEndIndex() for String.

  `int`

  `getIndex()`

  Implements CharacterIterator.getIndex() for String.

  `int`

  `hashCode()`

  Computes a hashcode for this iterator.

  `char`

  `last()`

  Implements CharacterIterator.last() for String.

  `char`

  `next()`

  Implements CharacterIterator.next() for String.

  `char`

  `previous()`

  Implements CharacterIterator.previous() for String.

  `char`

  `setIndex(int p)`

  Implements CharacterIterator.setIndex() for String.

  `void`

  `setText(String text)`

  Reset this iterator to point to a new string.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### StringCharacterIterator

    public StringCharacterIterator([String](../lang/String.md "class in java.lang") text)

    Constructs an iterator with an initial index of 0.

    Parameters:
    :   `text` - the `String` to be iterated over
  + ### StringCharacterIterator

    public StringCharacterIterator([String](../lang/String.md "class in java.lang") text,
    int pos)

    Constructs an iterator with the specified initial index.

    Parameters:
    :   `text` - The String to be iterated over
    :   `pos` - Initial iterator position
  + ### StringCharacterIterator

    public StringCharacterIterator([String](../lang/String.md "class in java.lang") text,
    int begin,
    int end,
    int pos)

    Constructs an iterator over the given range of the given string, with the
    index set at the specified position.

    Parameters:
    :   `text` - The String to be iterated over
    :   `begin` - Index of the first character
    :   `end` - Index of the character following the last character
    :   `pos` - Initial iterator position
* ## Method Details

  + ### setText

    public void setText([String](../lang/String.md "class in java.lang") text)

    Reset this iterator to point to a new string. This package-visible
    method is used by other java.text classes that want to avoid allocating
    new StringCharacterIterator objects every time their setText method
    is called.

    Parameters:
    :   `text` - The String to be iterated over

    Since:
    :   1.2
  + ### first

    public char first()

    Implements CharacterIterator.first() for String.

    Specified by:
    :   `first` in interface `CharacterIterator`

    Returns:
    :   the first character in the text, or DONE if the text is empty

    See Also:
    :   - [`CharacterIterator.first()`](CharacterIterator.md#first())
  + ### last

    public char last()

    Implements CharacterIterator.last() for String.

    Specified by:
    :   `last` in interface `CharacterIterator`

    Returns:
    :   the last character in the text, or DONE if the text is empty

    See Also:
    :   - [`CharacterIterator.last()`](CharacterIterator.md#last())
  + ### setIndex

    public char setIndex(int p)

    Implements CharacterIterator.setIndex() for String.

    Specified by:
    :   `setIndex` in interface `CharacterIterator`

    Parameters:
    :   `p` - the position within the text. Valid values range from
        getBeginIndex() to getEndIndex(). An IllegalArgumentException is thrown
        if an invalid value is supplied.

    Returns:
    :   the character at the specified position or DONE if the specified position is equal to getEndIndex()

    See Also:
    :   - [`CharacterIterator.setIndex(int)`](CharacterIterator.md#setIndex(int))
  + ### current

    public char current()

    Implements CharacterIterator.current() for String.

    Specified by:
    :   `current` in interface `CharacterIterator`

    Returns:
    :   the character at the current position or DONE if the current
        position is off the end of the text.

    See Also:
    :   - [`CharacterIterator.current()`](CharacterIterator.md#current())
  + ### next

    public char next()

    Implements CharacterIterator.next() for String.

    Specified by:
    :   `next` in interface `CharacterIterator`

    Returns:
    :   the character at the new position or DONE if the new
        position is off the end of the text range.

    See Also:
    :   - [`CharacterIterator.next()`](CharacterIterator.md#next())
  + ### previous

    public char previous()

    Implements CharacterIterator.previous() for String.

    Specified by:
    :   `previous` in interface `CharacterIterator`

    Returns:
    :   the character at the new position or DONE if the current
        position is equal to getBeginIndex().

    See Also:
    :   - [`CharacterIterator.previous()`](CharacterIterator.md#previous())
  + ### getBeginIndex

    public int getBeginIndex()

    Implements CharacterIterator.getBeginIndex() for String.

    Specified by:
    :   `getBeginIndex` in interface `CharacterIterator`

    Returns:
    :   the index at which the text begins.

    See Also:
    :   - [`CharacterIterator.getBeginIndex()`](CharacterIterator.md#getBeginIndex())
  + ### getEndIndex

    public int getEndIndex()

    Implements CharacterIterator.getEndIndex() for String.

    Specified by:
    :   `getEndIndex` in interface `CharacterIterator`

    Returns:
    :   the index after the last character in the text

    See Also:
    :   - [`CharacterIterator.getEndIndex()`](CharacterIterator.md#getEndIndex())
  + ### getIndex

    public int getIndex()

    Implements CharacterIterator.getIndex() for String.

    Specified by:
    :   `getIndex` in interface `CharacterIterator`

    Returns:
    :   the current index.

    See Also:
    :   - [`CharacterIterator.getIndex()`](CharacterIterator.md#getIndex())
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Compares the equality of two StringCharacterIterator objects.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the StringCharacterIterator object to be compared with.

    Returns:
    :   true if the given obj is the same as this
        StringCharacterIterator object; false otherwise.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Computes a hashcode for this iterator.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   A hash code

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### clone

    public [Object](../lang/Object.md "class in java.lang") clone()

    Creates a copy of this iterator.

    Specified by:
    :   `clone` in interface `CharacterIterator`

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   A copy of this

    See Also:
    :   - [`Cloneable`](../lang/Cloneable.md "interface in java.lang")