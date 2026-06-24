Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class GapContent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.GapContent

All Implemented Interfaces:
:   `Serializable`, `AbstractDocument.Content`

---

public class GapContent
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [AbstractDocument.Content](AbstractDocument.Content.md "interface in javax.swing.text"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

An implementation of the AbstractDocument.Content interface
implemented using a gapped buffer similar to that used by emacs.
The underlying storage is an array of Unicode characters with
a gap somewhere. The gap is moved to the location of changes
to take advantage of common behavior where most changes are
in the same location. Changes that occur at a gap boundary are
generally cheap and moving the gap is generally cheaper than
moving the array contents directly to accommodate the change.

The positions tracking change are also generally cheap to
maintain. The Position implementations (marks) store the array
index and can easily calculate the sequential position from
the current gap location. Changes only require updating the
marks between the old and new gap boundaries when the gap
is moved, so generally updating the marks is pretty cheap.
The marks are stored sorted so they can be located quickly
with a binary search. This increases the cost of adding a
mark, and decreases the cost of keeping the mark updated.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `GapContent()`

  Creates a new GapContent object.

  `GapContent(int initialLength)`

  Creates a new GapContent object, with the initial
  size specified.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected Object`

  `allocateArray(int len)`

  Allocate an array to store items of the type
  appropriate (which is determined by the subclass).

  `Position`

  `createPosition(int offset)`

  Creates a position within the content that will
  track change as the content is mutated.

  `protected final Object`

  `getArray()`

  Access to the array.

  `protected int`

  `getArrayLength()`

  Get the length of the allocated array.

  `void`

  `getChars(int where,
  int len,
  Segment chars)`

  Retrieves a portion of the content.

  `protected final int`

  `getGapEnd()`

  Access to the end of the gap.

  `protected final int`

  `getGapStart()`

  Access to the start of the gap.

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

  `replace(int position,
  int rmSize,
  Object addItems,
  int addSize)`

  Replace the given logical position in the storage with
  the given new items.

  `protected void`

  `resetMarksAtZero()`

  Resets all the marks that have an offset of 0 to have an index of
  zero as well.

  `protected void`

  `shiftEnd(int newSize)`

  Make the gap bigger, moving any necessary data and updating
  the appropriate marks

  `protected void`

  `shiftGap(int newGapStart)`

  Move the start of the gap to a new location,
  without changing the size of the gap.

  `protected void`

  `shiftGapEndUp(int newGapEnd)`

  Adjust the gap end upward.

  `protected void`

  `shiftGapStartDown(int newGapStart)`

  Adjust the gap end downward.

  `protected void`

  `updateUndoPositions(Vector positions,
  int offset,
  int length)`

  Resets the location for all the UndoPosRef instances
  in `positions`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### GapContent

    public GapContent()

    Creates a new GapContent object. Initial size defaults to 10.
  + ### GapContent

    public GapContent(int initialLength)

    Creates a new GapContent object, with the initial
    size specified. The initial size will not be allowed
    to go below 2, to give room for the implied break and
    the gap.

    Parameters:
    :   `initialLength` - the initial size
* ## Method Details

  + ### allocateArray

    protected [Object](../../../../java.base/java/lang/Object.md "class in java.lang") allocateArray(int len)

    Allocate an array to store items of the type
    appropriate (which is determined by the subclass).

    Parameters:
    :   `len` - the length of the array

    Returns:
    :   the java array of some type
  + ### getArrayLength

    protected int getArrayLength()

    Get the length of the allocated array.

    Returns:
    :   the length of the array
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
    :   `where` - the starting position >= 0, < length()
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

    Removes part of the content.

    Specified by:
    :   `remove` in interface `AbstractDocument.Content`

    Parameters:
    :   `where` - the starting position >= 0, where + nitems < length()
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

    Retrieves a portion of the content.

    Specified by:
    :   `getString` in interface `AbstractDocument.Content`

    Parameters:
    :   `where` - the starting position >= 0
    :   `len` - the length to retrieve >= 0

    Returns:
    :   a string representing the content

    Throws:
    :   `BadLocationException` - if the specified position is invalid

    See Also:
    :   - [`AbstractDocument.Content.getString(int, int)`](AbstractDocument.Content.md#getString(int,int))
  + ### getChars

    public void getChars(int where,
    int len,
    [Segment](Segment.md "class in javax.swing.text") chars)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Retrieves a portion of the content. If the desired content spans
    the gap, we copy the content. If the desired content does not
    span the gap, the actual store is returned to avoid the copy since
    it is contiguous.

    Specified by:
    :   `getChars` in interface `AbstractDocument.Content`

    Parameters:
    :   `where` - the starting position >= 0, where + len <= length()
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
    :   `offset` - the offset to track >= 0

    Returns:
    :   the position

    Throws:
    :   `BadLocationException` - if the specified position is invalid
  + ### shiftEnd

    protected void shiftEnd(int newSize)

    Make the gap bigger, moving any necessary data and updating
    the appropriate marks

    Parameters:
    :   `newSize` - the new capacity
  + ### shiftGap

    protected void shiftGap(int newGapStart)

    Move the start of the gap to a new location,
    without changing the size of the gap. This
    moves the data in the array and updates the
    marks accordingly.

    Parameters:
    :   `newGapStart` - the new start of the gap
  + ### resetMarksAtZero

    protected void resetMarksAtZero()

    Resets all the marks that have an offset of 0 to have an index of
    zero as well.
  + ### shiftGapStartDown

    protected void shiftGapStartDown(int newGapStart)

    Adjust the gap end downward. This doesn't move
    any data, but it does update any marks affected
    by the boundary change. All marks from the old
    gap start down to the new gap start are squeezed
    to the end of the gap (their location has been
    removed).

    Parameters:
    :   `newGapStart` - the new start of the gap
  + ### shiftGapEndUp

    protected void shiftGapEndUp(int newGapEnd)

    Adjust the gap end upward. This doesn't move
    any data, but it does update any marks affected
    by the boundary change. All marks from the old
    gap end up to the new gap end are squeezed
    to the end of the gap (their location has been
    removed).

    Parameters:
    :   `newGapEnd` - the new end of the gap
  + ### getPositionsInRange

    protected [Vector](../../../../java.base/java/util/Vector.md "class in java.util") getPositionsInRange([Vector](../../../../java.base/java/util/Vector.md "class in java.util") v,
    int offset,
    int length)

    Returns a Vector containing instances of UndoPosRef for the
    Positions in the range
    `offset` to `offset` + `length`.
    If `v` is not null the matching Positions are placed in
    there. The vector with the resulting Positions are returned.

    Parameters:
    :   `v` - the Vector to use, with a new one created on null
    :   `offset` - the starting offset >= 0
    :   `length` - the length >= 0

    Returns:
    :   the set of instances
  + ### updateUndoPositions

    protected void updateUndoPositions([Vector](../../../../java.base/java/util/Vector.md "class in java.util") positions,
    int offset,
    int length)

    Resets the location for all the UndoPosRef instances
    in `positions`.

    This is meant for internal usage, and is generally not of interest
    to subclasses.

    Parameters:
    :   `positions` - the UndoPosRef instances to reset
    :   `offset` - where the string was inserted
    :   `length` - length of inserted string
  + ### getArray

    protected final [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getArray()

    Access to the array. The actual type
    of the array is known only by the subclass.

    Returns:
    :   the java array of some type
  + ### getGapStart

    protected final int getGapStart()

    Access to the start of the gap.

    Returns:
    :   the start of the gap
  + ### getGapEnd

    protected final int getGapEnd()

    Access to the end of the gap.

    Returns:
    :   the end of the gap
  + ### replace

    protected void replace(int position,
    int rmSize,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") addItems,
    int addSize)

    Replace the given logical position in the storage with
    the given new items. This will move the gap to the area
    being changed if the gap is not currently located at the
    change location.

    Parameters:
    :   `position` - the location to make the replacement. This
        is not the location in the underlying storage array, but
        the location in the contiguous space being modeled.
    :   `rmSize` - the number of items to remove
    :   `addItems` - the new items to place in storage.
    :   `addSize` - the number of items to add