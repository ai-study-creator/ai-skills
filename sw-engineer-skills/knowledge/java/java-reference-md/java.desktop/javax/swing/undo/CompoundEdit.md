Module [java.desktop](../../../module-summary.md)

Package [javax.swing.undo](package-summary.md)

# Class CompoundEdit

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.undo.AbstractUndoableEdit](AbstractUndoableEdit.md "class in javax.swing.undo")

javax.swing.undo.CompoundEdit

All Implemented Interfaces:
:   `Serializable`, `UndoableEdit`

Direct Known Subclasses:
:   `AbstractDocument.DefaultDocumentEvent`, `UndoManager`

---

public class CompoundEdit
extends [AbstractUndoableEdit](AbstractUndoableEdit.md "class in javax.swing.undo")

A concrete subclass of AbstractUndoableEdit, used to assemble little
UndoableEdits into great big ones.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Vector<UndoableEdit>`

  `edits`

  The collection of `UndoableEdit`s
  undone/redone en masse by this `CompoundEdit`.

  ### Fields inherited from class javax.swing.undo.[AbstractUndoableEdit](AbstractUndoableEdit.md "class in javax.swing.undo")

  `RedoName, UndoName`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CompoundEdit()`

  Constructs a `CompoundEdit`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `addEdit(UndoableEdit anEdit)`

  If this edit is `inProgress`,
  accepts `anEdit` and returns true.

  `boolean`

  `canRedo()`

  Returns false if `isInProgress` or if super
  returns false.

  `boolean`

  `canUndo()`

  Returns false if `isInProgress` or if super
  returns false.

  `void`

  `die()`

  Sends `die` to each subedit,
  in the reverse of the order that they were added.

  `void`

  `end()`

  Sets `inProgress` to false.

  `String`

  `getPresentationName()`

  Returns `getPresentationName` from the
  last `UndoableEdit` added to
  `edits`.

  `String`

  `getRedoPresentationName()`

  Returns `getRedoPresentationName`
  from the last `UndoableEdit`
  added to `edits`.

  `String`

  `getUndoPresentationName()`

  Returns `getUndoPresentationName`
  from the last `UndoableEdit`
  added to `edits`.

  `boolean`

  `isInProgress()`

  Returns true if this edit is in progress--that is, it has not
  received end.

  `boolean`

  `isSignificant()`

  Returns true if any of the `UndoableEdit`s
  in `edits` do.

  `protected UndoableEdit`

  `lastEdit()`

  Returns the last `UndoableEdit` in
  `edits`, or `null`
  if `edits` is empty.

  `void`

  `redo()`

  Sends `redo` to all contained
  `UndoableEdit`s in the order in
  which they were added.

  `String`

  `toString()`

  Returns a string that displays and identifies this
  object's properties.

  `void`

  `undo()`

  Sends `undo` to all contained
  `UndoableEdits` in the reverse of
  the order in which they were added.

  ### Methods inherited from class javax.swing.undo.[AbstractUndoableEdit](AbstractUndoableEdit.md "class in javax.swing.undo")

  `replaceEdit`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### edits

    protected [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[UndoableEdit](UndoableEdit.md "interface in javax.swing.undo")> edits

    The collection of `UndoableEdit`s
    undone/redone en masse by this `CompoundEdit`.
* ## Constructor Details

  + ### CompoundEdit

    public CompoundEdit()

    Constructs a `CompoundEdit`.
* ## Method Details

  + ### undo

    public void undo()
    throws [CannotUndoException](CannotUndoException.md "class in javax.swing.undo")

    Sends `undo` to all contained
    `UndoableEdits` in the reverse of
    the order in which they were added.

    Specified by:
    :   `undo` in interface `UndoableEdit`

    Overrides:
    :   `undo` in class `AbstractUndoableEdit`

    Throws:
    :   `CannotUndoException` - if `canUndo`
        returns `false`

    See Also:
    :   - [`AbstractUndoableEdit.canUndo()`](AbstractUndoableEdit.md#canUndo())
  + ### redo

    public void redo()
    throws [CannotRedoException](CannotRedoException.md "class in javax.swing.undo")

    Sends `redo` to all contained
    `UndoableEdit`s in the order in
    which they were added.

    Specified by:
    :   `redo` in interface `UndoableEdit`

    Overrides:
    :   `redo` in class `AbstractUndoableEdit`

    Throws:
    :   `CannotRedoException` - if `canRedo`
        returns `false`

    See Also:
    :   - [`AbstractUndoableEdit.canRedo()`](AbstractUndoableEdit.md#canRedo())
  + ### lastEdit

    protected [UndoableEdit](UndoableEdit.md "interface in javax.swing.undo") lastEdit()

    Returns the last `UndoableEdit` in
    `edits`, or `null`
    if `edits` is empty.

    Returns:
    :   the last `UndoableEdit` in `edits`,
        or `null` if `edits` is empty.
  + ### die

    public void die()

    Sends `die` to each subedit,
    in the reverse of the order that they were added.

    Specified by:
    :   `die` in interface `UndoableEdit`

    Overrides:
    :   `die` in class `AbstractUndoableEdit`

    See Also:
    :   - [`die()`](#die())
  + ### addEdit

    public boolean addEdit([UndoableEdit](UndoableEdit.md "interface in javax.swing.undo") anEdit)

    If this edit is `inProgress`,
    accepts `anEdit` and returns true.

    The last edit added to this `CompoundEdit`
    is given a chance to `addEdit(anEdit)`.
    If it refuses (returns false), `anEdit` is
    given a chance to `replaceEdit` the last edit.
    If `anEdit` returns false here,
    it is added to `edits`.

    Specified by:
    :   `addEdit` in interface `UndoableEdit`

    Overrides:
    :   `addEdit` in class `AbstractUndoableEdit`

    Parameters:
    :   `anEdit` - the edit to be added

    Returns:
    :   true if the edit is `inProgress`;
        otherwise returns false

    See Also:
    :   - [`UndoableEdit.addEdit(javax.swing.undo.UndoableEdit)`](UndoableEdit.md#addEdit(javax.swing.undo.UndoableEdit))
  + ### end

    public void end()

    Sets `inProgress` to false.

    See Also:
    :   - [`canUndo()`](#canUndo())
        - [`canRedo()`](#canRedo())
  + ### canUndo

    public boolean canUndo()

    Returns false if `isInProgress` or if super
    returns false.

    Specified by:
    :   `canUndo` in interface `UndoableEdit`

    Overrides:
    :   `canUndo` in class `AbstractUndoableEdit`

    Returns:
    :   true if this edit is `alive`
        and `hasBeenDone` is `true`

    See Also:
    :   - [`isInProgress()`](#isInProgress())
  + ### canRedo

    public boolean canRedo()

    Returns false if `isInProgress` or if super
    returns false.

    Specified by:
    :   `canRedo` in interface `UndoableEdit`

    Overrides:
    :   `canRedo` in class `AbstractUndoableEdit`

    Returns:
    :   `true` if this edit is `alive`
        and `hasBeenDone` is `false`

    See Also:
    :   - [`isInProgress()`](#isInProgress())
  + ### isInProgress

    public boolean isInProgress()

    Returns true if this edit is in progress--that is, it has not
    received end. This generally means that edits are still being
    added to it.

    Returns:
    :   whether this edit is in progress

    See Also:
    :   - [`end()`](#end())
  + ### isSignificant

    public boolean isSignificant()

    Returns true if any of the `UndoableEdit`s
    in `edits` do.
    Returns false if they all return false.

    Specified by:
    :   `isSignificant` in interface `UndoableEdit`

    Overrides:
    :   `isSignificant` in class `AbstractUndoableEdit`

    Returns:
    :   true

    See Also:
    :   - [`UndoableEdit.isSignificant()`](UndoableEdit.md#isSignificant())
  + ### getPresentationName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getPresentationName()

    Returns `getPresentationName` from the
    last `UndoableEdit` added to
    `edits`. If `edits` is empty,
    calls super.

    Specified by:
    :   `getPresentationName` in interface `UndoableEdit`

    Overrides:
    :   `getPresentationName` in class `AbstractUndoableEdit`

    Returns:
    :   the empty string ""

    See Also:
    :   - [`AbstractUndoableEdit.getUndoPresentationName()`](AbstractUndoableEdit.md#getUndoPresentationName())
        - [`AbstractUndoableEdit.getRedoPresentationName()`](AbstractUndoableEdit.md#getRedoPresentationName())
  + ### getUndoPresentationName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getUndoPresentationName()

    Returns `getUndoPresentationName`
    from the last `UndoableEdit`
    added to `edits`.
    If `edits` is empty, calls super.

    Specified by:
    :   `getUndoPresentationName` in interface `UndoableEdit`

    Overrides:
    :   `getUndoPresentationName` in class `AbstractUndoableEdit`

    Returns:
    :   the value from the defaults table with key
        `AbstractUndoableEdit.undoText`, followed
        by a space, followed by `getPresentationName`
        unless `getPresentationName` is "" in which
        case, the defaults value is returned alone.

    See Also:
    :   - [`AbstractUndoableEdit.getPresentationName()`](AbstractUndoableEdit.md#getPresentationName())
  + ### getRedoPresentationName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRedoPresentationName()

    Returns `getRedoPresentationName`
    from the last `UndoableEdit`
    added to `edits`.
    If `edits` is empty, calls super.

    Specified by:
    :   `getRedoPresentationName` in interface `UndoableEdit`

    Overrides:
    :   `getRedoPresentationName` in class `AbstractUndoableEdit`

    Returns:
    :   the value from the defaults table with key
        `AbstractUndoableEdit.redoText`, followed
        by a space, followed by `getPresentationName`
        unless `getPresentationName` is "" in which
        case, the defaults value is returned alone.

    See Also:
    :   - [`AbstractUndoableEdit.getPresentationName()`](AbstractUndoableEdit.md#getPresentationName())
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string that displays and identifies this
    object's properties.

    Overrides:
    :   `toString` in class `AbstractUndoableEdit`

    Returns:
    :   a String representation of this object