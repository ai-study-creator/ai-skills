Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class AbstractDocument.ElementEdit

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.undo.AbstractUndoableEdit](../undo/AbstractUndoableEdit.md "class in javax.swing.undo")

javax.swing.text.AbstractDocument.ElementEdit

All Implemented Interfaces:
:   `Serializable`, `DocumentEvent.ElementChange`, `UndoableEdit`

Enclosing class:
:   `AbstractDocument`

---

public static class AbstractDocument.ElementEdit
extends [AbstractUndoableEdit](../undo/AbstractUndoableEdit.md "class in javax.swing.undo")
implements [DocumentEvent.ElementChange](../event/DocumentEvent.ElementChange.md "interface in javax.swing.event")

An implementation of ElementChange that can be added to the document
event.

* ## Field Summary

  ### Fields inherited from class javax.swing.undo.[AbstractUndoableEdit](../undo/AbstractUndoableEdit.md "class in javax.swing.undo")

  `RedoName, UndoName`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ElementEdit(Element e,
  int index,
  Element[] removed,
  Element[] added)`

  Constructs an edit record.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Element[]`

  `getChildrenAdded()`

  Gets a list of children that were added.

  `Element[]`

  `getChildrenRemoved()`

  Gets a list of children that were removed.

  `Element`

  `getElement()`

  Returns the underlying element.

  `int`

  `getIndex()`

  Returns the index into the list of elements.

  `void`

  `redo()`

  Redoes a change.

  `void`

  `undo()`

  Undoes a change.

  ### Methods inherited from class javax.swing.undo.[AbstractUndoableEdit](../undo/AbstractUndoableEdit.md "class in javax.swing.undo")

  `addEdit, canRedo, canUndo, die, getPresentationName, getRedoPresentationName, getUndoPresentationName, isSignificant, replaceEdit, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ElementEdit

    public ElementEdit([Element](Element.md "interface in javax.swing.text") e,
    int index,
    [Element](Element.md "interface in javax.swing.text")[] removed,
    [Element](Element.md "interface in javax.swing.text")[] added)

    Constructs an edit record. This does not modify the element
    so it can safely be used to *catch up* a view to the
    current model state for views that just attached to a model.

    Parameters:
    :   `e` - the element
    :   `index` - the index into the model >= 0
    :   `removed` - a set of elements that were removed
    :   `added` - a set of elements that were added
* ## Method Details

  + ### getElement

    public [Element](Element.md "interface in javax.swing.text") getElement()

    Returns the underlying element.

    Specified by:
    :   `getElement` in interface `DocumentEvent.ElementChange`

    Returns:
    :   the element
  + ### getIndex

    public int getIndex()

    Returns the index into the list of elements.

    Specified by:
    :   `getIndex` in interface `DocumentEvent.ElementChange`

    Returns:
    :   the index >= 0
  + ### getChildrenRemoved

    public [Element](Element.md "interface in javax.swing.text")[] getChildrenRemoved()

    Gets a list of children that were removed.

    Specified by:
    :   `getChildrenRemoved` in interface `DocumentEvent.ElementChange`

    Returns:
    :   the list
  + ### getChildrenAdded

    public [Element](Element.md "interface in javax.swing.text")[] getChildrenAdded()

    Gets a list of children that were added.

    Specified by:
    :   `getChildrenAdded` in interface `DocumentEvent.ElementChange`

    Returns:
    :   the list
  + ### redo

    public void redo()
    throws [CannotRedoException](../undo/CannotRedoException.md "class in javax.swing.undo")

    Redoes a change.

    Specified by:
    :   `redo` in interface `UndoableEdit`

    Overrides:
    :   `redo` in class `AbstractUndoableEdit`

    Throws:
    :   `CannotRedoException` - if the change cannot be redone

    See Also:
    :   - [`AbstractUndoableEdit.canRedo()`](../undo/AbstractUndoableEdit.md#canRedo())
  + ### undo

    public void undo()
    throws [CannotUndoException](../undo/CannotUndoException.md "class in javax.swing.undo")

    Undoes a change.

    Specified by:
    :   `undo` in interface `UndoableEdit`

    Overrides:
    :   `undo` in class `AbstractUndoableEdit`

    Throws:
    :   `CannotUndoException` - if the change cannot be undone

    See Also:
    :   - [`AbstractUndoableEdit.canUndo()`](../undo/AbstractUndoableEdit.md#canUndo())