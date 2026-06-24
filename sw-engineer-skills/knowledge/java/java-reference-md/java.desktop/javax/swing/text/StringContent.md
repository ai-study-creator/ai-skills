Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class StringContent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.StringContent

All Implemented Interfaces:
:   `Serializable`, `AbstractDocument.Content`

---

public final class StringContent
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [AbstractDocument.Content](AbstractDocument.Content.md "interface in javax.swing.text"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

An implementation of the AbstractDocument.Content interface that is
a brute force implementation that is useful for relatively small
documents and/or debugging. It manages the character content
as a simple character array. It is also quite inefficient.

It is generally recommended that the gap buffer or piece table
implementations be used instead. This buffer does not scale up
to large sizes.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringContent()`

  Creates a new StringContent object.

  `StringContent(int initialLength)`

  Creates a new StringContent object, with the initial
  size specified.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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
  Segment chars)`

  Retrieves a portion of the content.

  `protected Vector`

  `getPositionsInRange(Vector v,
  int offset,
  int length)`

  Returns a Vector containing instances of UndoPosRef for the
  Positions in the range
  `offset` to `offset` + `length`.

  `String`

  `getString(int where,
  int len)`

  Retrieves a portion of the content.

  `UndoableEdit`

  `insertString(int where,
  String str)`

  Inserts a string into the content.

  `int`

  `length()`

  Returns the length of the content.

  `UndoableEdit`

  `remove(int where,
  int nitems)`

  Removes part of the content.

  `protected void`

  `updateUndoPositions(Vector positions)`

  Resets the location for all the UndoPosRef instances
  in `positions`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### StringContent

    public StringContent()

    Creates a new StringContent object. Initial size defaults to 10.
  + ### StringContent

    public StringContent(int initialLength)

    Creates a new StringContent object, with the initial
    size specified. If the length is < 1, a size of 1 is used.

    Parameters:
    :   `initialLength` - the initial size
* ## Method Details

  + ### length

    public int length()

    Returns the length of the content.

    Specified by:
    :   `length` in interface `AbstractDocument.Content`

    Returns:
    :   the length >= 1

    See Also:
    :   - [`AbstractDocument.Content.length()`](AbstractDocument.Content.md#length())
  + ### insertString

    public [UndoableEdit](../undo/UndoableEdit.md "interface in javax.swing.undo") insertString(int where,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") str)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Inserts a string into the content.

    Specified by:
    :   `insertString` in interface `AbstractDocument.Content`

    Parameters:
    :   `where` - the starting position >= 0 && < length()
    :   `str` - the non-null string to insert

    Returns:
    :   an UndoableEdit object for undoing

    Throws:
    :   `BadLocationException` - if the specified position is invalid

    See Also:
    :   - [`AbstractDocument.Content.insertString(int, java.lang.String)`](AbstractDocument.Content.md#insertString(int,java.lang.String))
  + ### remove

    public [UndoableEdit](../undo/UndoableEdit.md "interface in javax.swing.undo") remove(int where,
    int nitems)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Removes part of the content. where + nitems must be < length().

    Specified by:
    :   `remove` in interface `AbstractDocument.Content`

    Parameters:
    :   `where` - the starting position >= 0
    :   `nitems` - the number of characters to remove >= 0

    Returns:
    :   an UndoableEdit object for undoing

    Throws:
    :   `BadLocationException` - if the specified position is invalid

    See Also:
    :   - [`AbstractDocument.Content.remove(int, int)`](AbstractDocument.Content.md#remove(int,int))
  + ### getString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getString(int where,
    int len)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Retrieves a portion of the content. where + len must be <= length().

    Specified by:
    :   `getString` in interface `AbstractDocument.Content`

    Parameters:
    :   `where` - the starting position >= 0
    :   `len` - the length to retrieve >= 0

    Returns:
    :   a string representing the content; may be empty

    Throws:
    :   `BadLocationException` - if the specified position is invalid

    See Also:
    :   - [`AbstractDocument.Content.getString(int, int)`](AbstractDocument.Content.md#getString(int,int))
  + ### getChars

    public void getChars(int where,
    int len,
    [Segment](Segment.md "class in javax.swing.text") chars)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Retrieves a portion of the content. where + len must be <= length()

    Specified by:
    :   `getChars` in interface `AbstractDocument.Content`

    Parameters:
    :   `where` - the starting position >= 0
    :   `len` - the number of characters to retrieve >= 0
    :   `chars` - the Segment object to return the characters in

    Throws:
    :   `BadLocationException` - if the specified position is invalid

    See Also:
    :   - [`AbstractDocument.Content.getChars(int, int, javax.swing.text.Segment)`](AbstractDocument.Content.md#getChars(int,int,javax.swing.text.Segment))
  + ### createPosition

    public [Position](Position.md "interface in javax.swing.text") createPosition(int offset)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Creates a position within the content that will
    track change as the content is mutated.

    Specified by:
    :   `createPosition` in interface `AbstractDocument.Content`

    Parameters:
    :   `offset` - the offset to create a position for >= 0

    Returns:
    :   the position

    Throws:
    :   `BadLocationException` - if the specified position is invalid
  + ### getPositionsInRange

    protected [Vector](../../../../java.base/java/util/Vector.md "class in java.util") getPositionsInRange([Vector](../../../../java.base/java/util/Vector.md "class in java.util") v,
    int offset,
    int length)

    Returns a Vector containing instances of UndoPosRef for the
    Positions in the range
    `offset` to `offset` + `length`.
    If `v` is not null the matching Positions are placed in
    there. The vector with the resulting Positions are returned.

    This is meant for internal usage, and is generally not of interest
    to subclasses.

    Parameters:
    :   `v` - the Vector to use, with a new one created on null
    :   `offset` - the starting offset >= 0
    :   `length` - the length >= 0

    Returns:
    :   the set of instances
  + ### updateUndoPositions

    protected void updateUndoPositions([Vector](../../../../java.base/java/util/Vector.md "class in java.util") positions)

    Resets the location for all the UndoPosRef instances
    in `positions`.

    This is meant for internal usage, and is generally not of interest
    to subclasses.

    Parameters:
    :   `positions` - the positions of the instances