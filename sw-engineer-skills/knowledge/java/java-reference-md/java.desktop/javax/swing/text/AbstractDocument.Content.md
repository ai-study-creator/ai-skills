Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface AbstractDocument.Content

All Known Implementing Classes:
:   `GapContent`, `StringContent`

Enclosing class:
:   `AbstractDocument`

---

public static interface AbstractDocument.Content

Interface to describe a sequence of character content that
can be edited. Implementations may or may not support a
history mechanism which will be reflected by whether or not
mutations return an UndoableEdit implementation.

See Also:
:   * [`AbstractDocument`](AbstractDocument.md "class in javax.swing.text")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Position`

  `createPosition(int offset)`

  Creates a position within the content that will
  track change as the content is mutated.

  `void`

  `getChars(int where,
  int len,
  Segment txt)`

  Gets a sequence of characters and copies them into a Segment.

  `String`

  `getString(int where,
  int len)`

  Fetches a string of characters contained in the sequence.

  `UndoableEdit`

  `insertString(int where,
  String str)`

  Inserts a string of characters into the sequence.

  `int`

  `length()`

  Current length of the sequence of character content.

  `UndoableEdit`

  `remove(int where,
  int nitems)`

  Removes some portion of the sequence.

* ## Method Details

  + ### createPosition

    [Position](Position.md "interface in javax.swing.text") createPosition(int offset)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Creates a position within the content that will
    track change as the content is mutated.

    Parameters:
    :   `offset` - the offset in the content >= 0

    Returns:
    :   a Position

    Throws:
    :   `BadLocationException` - for an invalid offset
  + ### length

    int length()

    Current length of the sequence of character content.

    Returns:
    :   the length >= 0
  + ### insertString

    [UndoableEdit](../undo/UndoableEdit.md "interface in javax.swing.undo") insertString(int where,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") str)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Inserts a string of characters into the sequence.

    Parameters:
    :   `where` - offset into the sequence to make the insertion >= 0
    :   `str` - string to insert

    Returns:
    :   if the implementation supports a history mechanism,
        a reference to an `Edit` implementation will be returned,
        otherwise returns `null`

    Throws:
    :   `BadLocationException` - thrown if the area covered by
        the arguments is not contained in the character sequence
  + ### remove

    [UndoableEdit](../undo/UndoableEdit.md "interface in javax.swing.undo") remove(int where,
    int nitems)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Removes some portion of the sequence.

    Parameters:
    :   `where` - The offset into the sequence to make the
        insertion >= 0.
    :   `nitems` - The number of items in the sequence to remove >= 0.

    Returns:
    :   If the implementation supports a history mechanism,
        a reference to an Edit implementation will be returned,
        otherwise null.

    Throws:
    :   `BadLocationException` - Thrown if the area covered by
        the arguments is not contained in the character sequence.
  + ### getString

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getString(int where,
    int len)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Fetches a string of characters contained in the sequence.

    Parameters:
    :   `where` - Offset into the sequence to fetch >= 0.
    :   `len` - number of characters to copy >= 0.

    Returns:
    :   the string

    Throws:
    :   `BadLocationException` - Thrown if the area covered by
        the arguments is not contained in the character sequence.
  + ### getChars

    void getChars(int where,
    int len,
    [Segment](Segment.md "class in javax.swing.text") txt)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Gets a sequence of characters and copies them into a Segment.

    Parameters:
    :   `where` - the starting offset >= 0
    :   `len` - the number of characters >= 0
    :   `txt` - the target location to copy into

    Throws:
    :   `BadLocationException` - Thrown if the area covered by
        the arguments is not contained in the character sequence.