Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class Segment

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.Segment

All Implemented Interfaces:
:   `CharSequence`, `Cloneable`, `CharacterIterator`

---

public class Segment
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang"), [CharacterIterator](../../../../java.base/java/text/CharacterIterator.md "interface in java.text"), [CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang")

A segment of a character array representing a fragment
of text. It should be treated as immutable even though
the array is directly accessible. This gives fast access
to fragments of text without the overhead of copying
around characters. This is effectively an unprotected
String.

The Segment implements the java.text.CharacterIterator
interface to support use with the i18n support without
copying text into a string.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `char[]`

  `array`

  This is the array containing the text of
  interest.

  `int`

  `count`

  This is the number of array elements that
  make up the text of interest.

  `int`

  `offset`

  This is the offset into the array that
  the desired text begins.

  ### Fields inherited from interface java.text.[CharacterIterator](../../../../java.base/java/text/CharacterIterator.md "interface in java.text")

  `DONE`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Segment()`

  Creates a new segment.

  `Segment(char[] array,
  int offset,
  int count)`

  Creates a new segment referring to an existing array.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `char`

  `charAt(int index)`

  Returns the `char` value at the specified index.

  `Object`

  `clone()`

  Creates a shallow copy.

  `char`

  `current()`

  Gets the character at the current position (as returned by getIndex()).

  `char`

  `first()`

  Sets the position to getBeginIndex() and returns the character at that
  position.

  `int`

  `getBeginIndex()`

  Returns the start index of the text.

  `int`

  `getEndIndex()`

  Returns the end index of the text.

  `int`

  `getIndex()`

  Returns the current index.

  `boolean`

  `isPartialReturn()`

  Flag to indicate that partial returns are valid.

  `char`

  `last()`

  Sets the position to getEndIndex()-1 (getEndIndex() if the text is empty)
  and returns the character at that position.

  `int`

  `length()`

  Returns the length of this character sequence.

  `char`

  `next()`

  Increments the iterator's index by one and returns the character
  at the new index.

  `char`

  `previous()`

  Decrements the iterator's index by one and returns the character
  at the new index.

  `char`

  `setIndex(int position)`

  Sets the position to the specified position in the text and returns that
  character.

  `void`

  `setPartialReturn(boolean p)`

  Flag to indicate that partial returns are valid.

  `CharSequence`

  `subSequence(int start,
  int end)`

  Returns a `CharSequence` that is a subsequence of this sequence.

  `String`

  `toString()`

  Converts a segment into a String.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

  ### Methods inherited from interface java.lang.[CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang")

  `chars, codePoints, isEmpty`

* ## Field Details

  + ### array

    public char[] array

    This is the array containing the text of
    interest. This array should never be modified;
    it is available only for efficiency.
  + ### offset

    public int offset

    This is the offset into the array that
    the desired text begins.
  + ### count

    public int count

    This is the number of array elements that
    make up the text of interest.
* ## Constructor Details

  + ### Segment

    public Segment()

    Creates a new segment.
  + ### Segment

    public Segment(char[] array,
    int offset,
    int count)

    Creates a new segment referring to an existing array.

    Parameters:
    :   `array` - the array to refer to
    :   `offset` - the offset into the array
    :   `count` - the number of characters
* ## Method Details

  + ### setPartialReturn

    public void setPartialReturn(boolean p)

    Flag to indicate that partial returns are valid. If the flag is true,
    an implementation of the interface method Document.getText(position,length,Segment)
    should return as much text as possible without making a copy. The default
    state of the flag is false which will cause Document.getText(position,length,Segment)
    to provide the same return behavior it always had, which may or may not
    make a copy of the text depending upon the request.

    Parameters:
    :   `p` - whether or not partial returns are valid.

    Since:
    :   1.4
  + ### isPartialReturn

    public boolean isPartialReturn()

    Flag to indicate that partial returns are valid.

    Returns:
    :   whether or not partial returns are valid.

    Since:
    :   1.4
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Converts a segment into a String.

    Specified by:
    :   `toString` in interface `CharSequence`

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string
  + ### first

    public char first()

    Sets the position to getBeginIndex() and returns the character at that
    position.

    Specified by:
    :   `first` in interface `CharacterIterator`

    Returns:
    :   the first character in the text, or DONE if the text is empty

    Since:
    :   1.3

    See Also:
    :   - [`getBeginIndex()`](#getBeginIndex())
  + ### last

    public char last()

    Sets the position to getEndIndex()-1 (getEndIndex() if the text is empty)
    and returns the character at that position.

    Specified by:
    :   `last` in interface `CharacterIterator`

    Returns:
    :   the last character in the text, or DONE if the text is empty

    Since:
    :   1.3

    See Also:
    :   - [`getEndIndex()`](#getEndIndex())
  + ### current

    public char current()

    Gets the character at the current position (as returned by getIndex()).

    Specified by:
    :   `current` in interface `CharacterIterator`

    Returns:
    :   the character at the current position or DONE if the current
        position is off the end of the text.

    Since:
    :   1.3

    See Also:
    :   - [`getIndex()`](#getIndex())
  + ### next

    public char next()

    Increments the iterator's index by one and returns the character
    at the new index. If the resulting index is greater or equal
    to getEndIndex(), the current index is reset to getEndIndex() and
    a value of DONE is returned.

    Specified by:
    :   `next` in interface `CharacterIterator`

    Returns:
    :   the character at the new position or DONE if the new
        position is off the end of the text range.

    Since:
    :   1.3
  + ### previous

    public char previous()

    Decrements the iterator's index by one and returns the character
    at the new index. If the current index is getBeginIndex(), the index
    remains at getBeginIndex() and a value of DONE is returned.

    Specified by:
    :   `previous` in interface `CharacterIterator`

    Returns:
    :   the character at the new position or DONE if the current
        position is equal to getBeginIndex().

    Since:
    :   1.3
  + ### setIndex

    public char setIndex(int position)

    Sets the position to the specified position in the text and returns that
    character.

    Specified by:
    :   `setIndex` in interface `CharacterIterator`

    Parameters:
    :   `position` - the position within the text. Valid values range from
        getBeginIndex() to getEndIndex(). An IllegalArgumentException is thrown
        if an invalid value is supplied.

    Returns:
    :   the character at the specified position or DONE if the specified position is equal to getEndIndex()

    Since:
    :   1.3
  + ### getBeginIndex

    public int getBeginIndex()

    Returns the start index of the text.

    Specified by:
    :   `getBeginIndex` in interface `CharacterIterator`

    Returns:
    :   the index at which the text begins.

    Since:
    :   1.3
  + ### getEndIndex

    public int getEndIndex()

    Returns the end index of the text. This index is the index of the first
    character following the end of the text.

    Specified by:
    :   `getEndIndex` in interface `CharacterIterator`

    Returns:
    :   the index after the last character in the text

    Since:
    :   1.3
  + ### getIndex

    public int getIndex()

    Returns the current index.

    Specified by:
    :   `getIndex` in interface `CharacterIterator`

    Returns:
    :   the current index.

    Since:
    :   1.3
  + ### charAt

    public char charAt(int index)

    Returns the `char` value at the specified index. An index ranges from zero
    to `length() - 1`. The first `char` value of the sequence is at
    index zero, the next at index one, and so on, as for array
    indexing.

    If the `char` value specified by the index is a
    [surrogate](../../../../java.base/java/lang/Character.md#unicode), the surrogate value
    is returned.

    Specified by:
    :   `charAt` in interface `CharSequence`

    Parameters:
    :   `index` - the index of the `char` value to be returned

    Returns:
    :   the specified `char` value

    Since:
    :   1.6
  + ### length

    public int length()

    Returns the length of this character sequence. The length is the number
    of 16-bit `char`s in the sequence.

    Specified by:
    :   `length` in interface `CharSequence`

    Returns:
    :   the number of `char`s in this sequence

    Since:
    :   1.6
  + ### subSequence

    public [CharSequence](../../../../java.base/java/lang/CharSequence.md "interface in java.lang") subSequence(int start,
    int end)

    Returns a `CharSequence` that is a subsequence of this sequence.
    The subsequence starts with the `char` value at the specified index and
    ends with the `char` value at index `end - 1`. The length
    (in `char`s) of the
    returned sequence is `end - start`, so if `start == end`
    then an empty sequence is returned.

    Specified by:
    :   `subSequence` in interface `CharSequence`

    Parameters:
    :   `start` - the start index, inclusive
    :   `end` - the end index, exclusive

    Returns:
    :   the specified subsequence

    Since:
    :   1.6
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates a shallow copy.

    Specified by:
    :   `clone` in interface `CharacterIterator`

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the copy

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")