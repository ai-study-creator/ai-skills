Module [java.desktop](../../../module-summary.md)

Package [javax.swing.undo](package-summary.md)

# Class StateEdit

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.undo.AbstractUndoableEdit](AbstractUndoableEdit.md "class in javax.swing.undo")

javax.swing.undo.StateEdit

All Implemented Interfaces:
:   `Serializable`, `UndoableEdit`

---

public class StateEdit
extends [AbstractUndoableEdit](AbstractUndoableEdit.md "class in javax.swing.undo")

StateEdit is a general edit for objects that change state.
Objects being edited must conform to the StateEditable interface.

This edit class works by asking an object to store it's state in
Hashtables before and after editing occurs. Upon undo or redo the
object is told to restore it's state from these Hashtables.

A state edit is used as follows:

```
      // Create the edit during the "before" state of the object
      StateEdit newEdit = new StateEdit(myObject);
      // Modify the object
      myObject.someStateModifyingMethod();
      // "end" the edit when you are done modifying the object
      newEdit.end();
```

*Note that when a StateEdit ends, it removes redundant state from
the Hashtables - A state Hashtable is not guaranteed to contain all
keys/values placed into it when the state is stored!*

See Also:
:   * [`StateEditable`](StateEditable.md "interface in javax.swing.undo")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected StateEditable`

  `object`

  The object being edited

  `protected Hashtable<Object,Object>`

  `postState`

  The state information after the edit

  `protected Hashtable<Object,Object>`

  `preState`

  The state information prior to the edit

  `protected static final String`

  `RCSID`

  Obsolete RCS version identity.

  `protected String`

  `undoRedoName`

  The undo/redo presentation name

  ### Fields inherited from class javax.swing.undo.[AbstractUndoableEdit](AbstractUndoableEdit.md "class in javax.swing.undo")

  `RedoName, UndoName`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StateEdit(StateEditable anObject)`

  Create and return a new StateEdit.

  `StateEdit(StateEditable anObject,
  String name)`

  Create and return a new StateEdit with a presentation name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `end()`

  Gets the post-edit state of the StateEditable object and
  ends the edit.

  `String`

  `getPresentationName()`

  Gets the presentation name for this edit

  `protected void`

  `init(StateEditable anObject,
  String name)`

  Initialize the state edit.

  `void`

  `redo()`

  Tells the edited object to apply the state after the edit

  `protected void`

  `removeRedundantState()`

  Remove redundant key/values in state hashtables.

  `void`

  `undo()`

  Tells the edited object to apply the state prior to the edit

  ### Methods inherited from class javax.swing.undo.[AbstractUndoableEdit](AbstractUndoableEdit.md "class in javax.swing.undo")

  `addEdit, canRedo, canUndo, die, getRedoPresentationName, getUndoPresentationName, isSignificant, replaceEdit, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### RCSID

    protected static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RCSID

    Obsolete RCS version identity.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.undo.StateEdit.RCSID)
  + ### object

    protected [StateEditable](StateEditable.md "interface in javax.swing.undo") object

    The object being edited
  + ### preState

    protected [Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang"),[Object](../../../../java.base/java/lang/Object.md "class in java.lang")> preState

    The state information prior to the edit
  + ### postState

    protected [Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang"),[Object](../../../../java.base/java/lang/Object.md "class in java.lang")> postState

    The state information after the edit
  + ### undoRedoName

    protected [String](../../../../java.base/java/lang/String.md "class in java.lang") undoRedoName

    The undo/redo presentation name
* ## Constructor Details

  + ### StateEdit

    public StateEdit([StateEditable](StateEditable.md "interface in javax.swing.undo") anObject)

    Create and return a new StateEdit.

    Parameters:
    :   `anObject` - The object to watch for changing state

    See Also:
    :   - [`StateEdit`](StateEdit.md "class in javax.swing.undo")
  + ### StateEdit

    public StateEdit([StateEditable](StateEditable.md "interface in javax.swing.undo") anObject,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Create and return a new StateEdit with a presentation name.

    Parameters:
    :   `anObject` - The object to watch for changing state
    :   `name` - The presentation name to be used for this edit

    See Also:
    :   - [`StateEdit`](StateEdit.md "class in javax.swing.undo")
* ## Method Details

  + ### init

    protected void init([StateEditable](StateEditable.md "interface in javax.swing.undo") anObject,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Initialize the state edit.

    Parameters:
    :   `anObject` - The object to watch for changing state
    :   `name` - The presentation name to be used for this edit
  + ### end

    public void end()

    Gets the post-edit state of the StateEditable object and
    ends the edit.
  + ### undo

    public void undo()

    Tells the edited object to apply the state prior to the edit

    Specified by:
    :   `undo` in interface `UndoableEdit`

    Overrides:
    :   `undo` in class `AbstractUndoableEdit`

    See Also:
    :   - [`AbstractUndoableEdit.canUndo()`](AbstractUndoableEdit.md#canUndo())
  + ### redo

    public void redo()

    Tells the edited object to apply the state after the edit

    Specified by:
    :   `redo` in interface `UndoableEdit`

    Overrides:
    :   `redo` in class `AbstractUndoableEdit`

    See Also:
    :   - [`AbstractUndoableEdit.canRedo()`](AbstractUndoableEdit.md#canRedo())
  + ### getPresentationName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getPresentationName()

    Gets the presentation name for this edit

    Specified by:
    :   `getPresentationName` in interface `UndoableEdit`

    Overrides:
    :   `getPresentationName` in class `AbstractUndoableEdit`

    Returns:
    :   the empty string ""

    See Also:
    :   - [`AbstractUndoableEdit.getUndoPresentationName()`](AbstractUndoableEdit.md#getUndoPresentationName())
        - [`AbstractUndoableEdit.getRedoPresentationName()`](AbstractUndoableEdit.md#getRedoPresentationName())
  + ### removeRedundantState

    protected void removeRedundantState()

    Remove redundant key/values in state hashtables.