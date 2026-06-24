Module [java.desktop](../../../module-summary.md)

Package [javax.swing.undo](package-summary.md)

# Class UndoableEditSupport

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.undo.UndoableEditSupport

---

public class UndoableEditSupport
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A support class used for managing `UndoableEdit` listeners.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected CompoundEdit`

  `compoundEdit`

  The compound edit.

  `protected Vector<UndoableEditListener>`

  `listeners`

  The list of listeners.

  `protected Object`

  `realSource`

  The real source.

  `protected int`

  `updateLevel`

  The update level.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UndoableEditSupport()`

  Constructs an `UndoableEditSupport` object.

  `UndoableEditSupport(Object r)`

  Constructs an `UndoableEditSupport` object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected void`

  `_postEdit(UndoableEdit e)`

  Called only from `postEdit` and `endUpdate`.

  `void`

  `addUndoableEditListener(UndoableEditListener l)`

  Registers an `UndoableEditListener`.

  `void`

  `beginUpdate()`

  Starts a compound edit update.

  `protected CompoundEdit`

  `createCompoundEdit()`

  Called only from `beginUpdate`.

  `void`

  `endUpdate()`

  DEADLOCK WARNING: Calling this method may call
  `undoableEditHappened` in all listeners.

  `UndoableEditListener[]`

  `getUndoableEditListeners()`

  Returns an array of all the `UndoableEditListener`s added
  to this UndoableEditSupport with addUndoableEditListener().

  `int`

  `getUpdateLevel()`

  Returns the update level value.

  `void`

  `postEdit(UndoableEdit e)`

  DEADLOCK WARNING: Calling this method may call
  `undoableEditHappened` in all listeners.

  `void`

  `removeUndoableEditListener(UndoableEditListener l)`

  Removes an `UndoableEditListener`.

  `String`

  `toString()`

  Returns a string that displays and identifies this
  object's properties.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### updateLevel

    protected int updateLevel

    The update level.
  + ### compoundEdit

    protected [CompoundEdit](CompoundEdit.md "class in javax.swing.undo") compoundEdit

    The compound edit.
  + ### listeners

    protected [Vector](../../../../java.base/java/util/Vector.md "class in java.util")<[UndoableEditListener](../event/UndoableEditListener.md "interface in javax.swing.event")> listeners

    The list of listeners.
  + ### realSource

    protected [Object](../../../../java.base/java/lang/Object.md "class in java.lang") realSource

    The real source.
* ## Constructor Details

  + ### UndoableEditSupport

    public UndoableEditSupport()

    Constructs an `UndoableEditSupport` object.
  + ### UndoableEditSupport

    public UndoableEditSupport([Object](../../../../java.base/java/lang/Object.md "class in java.lang") r)

    Constructs an `UndoableEditSupport` object.

    Parameters:
    :   `r` - an `Object`
* ## Method Details

  + ### addUndoableEditListener

    public void addUndoableEditListener([UndoableEditListener](../event/UndoableEditListener.md "interface in javax.swing.event") l)

    Registers an `UndoableEditListener`.
    The listener is notified whenever an edit occurs which can be undone.

    Parameters:
    :   `l` - an `UndoableEditListener` object

    See Also:
    :   - [`removeUndoableEditListener(javax.swing.event.UndoableEditListener)`](#removeUndoableEditListener(javax.swing.event.UndoableEditListener))
  + ### removeUndoableEditListener

    public void removeUndoableEditListener([UndoableEditListener](../event/UndoableEditListener.md "interface in javax.swing.event") l)

    Removes an `UndoableEditListener`.

    Parameters:
    :   `l` - the `UndoableEditListener` object to be removed

    See Also:
    :   - [`addUndoableEditListener(javax.swing.event.UndoableEditListener)`](#addUndoableEditListener(javax.swing.event.UndoableEditListener))
  + ### getUndoableEditListeners

    public [UndoableEditListener](../event/UndoableEditListener.md "interface in javax.swing.event")[] getUndoableEditListeners()

    Returns an array of all the `UndoableEditListener`s added
    to this UndoableEditSupport with addUndoableEditListener().

    Returns:
    :   all of the `UndoableEditListener`s added or an empty
        array if no listeners have been added

    Since:
    :   1.4
  + ### \_postEdit

    protected void \_postEdit([UndoableEdit](UndoableEdit.md "interface in javax.swing.undo") e)

    Called only from `postEdit` and `endUpdate`. Calls
    `undoableEditHappened` in all listeners. No synchronization
    is performed here, since the two calling methods are synchronized.

    Parameters:
    :   `e` - edit to be verified
  + ### postEdit

    public void postEdit([UndoableEdit](UndoableEdit.md "interface in javax.swing.undo") e)

    DEADLOCK WARNING: Calling this method may call
    `undoableEditHappened` in all listeners.
    It is unwise to call this method from one of its listeners.

    Parameters:
    :   `e` - edit to be posted
  + ### getUpdateLevel

    public int getUpdateLevel()

    Returns the update level value.

    Returns:
    :   an integer representing the update level
  + ### beginUpdate

    public void beginUpdate()

    Starts a compound edit update.
  + ### createCompoundEdit

    protected [CompoundEdit](CompoundEdit.md "class in javax.swing.undo") createCompoundEdit()

    Called only from `beginUpdate`.
    Exposed here for subclasses' use.

    Returns:
    :   new created `CompoundEdit` object
  + ### endUpdate

    public void endUpdate()

    DEADLOCK WARNING: Calling this method may call
    `undoableEditHappened` in all listeners.
    It is unwise to call this method from one of its listeners.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string that displays and identifies this
    object's properties.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a `String` representation of this object