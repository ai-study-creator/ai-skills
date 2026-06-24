Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultStyledDocument.AttributeUndoableEdit

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.undo.AbstractUndoableEdit](../undo/AbstractUndoableEdit.md "class in javax.swing.undo")

javax.swing.text.DefaultStyledDocument.AttributeUndoableEdit

All Implemented Interfaces:
:   `Serializable`, `UndoableEdit`

Enclosing class:
:   `DefaultStyledDocument`

---

public static class DefaultStyledDocument.AttributeUndoableEdit
extends [AbstractUndoableEdit](../undo/AbstractUndoableEdit.md "class in javax.swing.undo")

An UndoableEdit used to remember AttributeSet changes to an
Element.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected AttributeSet`

  `copy`

  Copy of the AttributeSet the Element contained.

  `protected Element`

  `element`

  Affected Element.

  `protected boolean`

  `isReplacing`

  true if all the attributes in the element were removed first.

  `protected AttributeSet`

  `newAttributes`

  AttributeSet containing additional entries, must be non-mutable!

  ### Fields inherited from class javax.swing.undo.[AbstractUndoableEdit](../undo/AbstractUndoableEdit.md "class in javax.swing.undo")

  `RedoName, UndoName`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributeUndoableEdit(Element element,
  AttributeSet newAttributes,
  boolean isReplacing)`

  Constructs an `AttributeUndoableEdit`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

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

* ## Field Details

  + ### newAttributes

    protected [AttributeSet](AttributeSet.md "interface in javax.swing.text") newAttributes

    AttributeSet containing additional entries, must be non-mutable!
  + ### copy

    protected [AttributeSet](AttributeSet.md "interface in javax.swing.text") copy

    Copy of the AttributeSet the Element contained.
  + ### isReplacing

    protected boolean isReplacing

    true if all the attributes in the element were removed first.
  + ### element

    protected [Element](Element.md "interface in javax.swing.text") element

    Affected Element.
* ## Constructor Details

  + ### AttributeUndoableEdit

    public AttributeUndoableEdit([Element](Element.md "interface in javax.swing.text") element,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") newAttributes,
    boolean isReplacing)

    Constructs an `AttributeUndoableEdit`.

    Parameters:
    :   `element` - the element
    :   `newAttributes` - the new attributes
    :   `isReplacing` - true if all the attributes in the element were removed first.
* ## Method Details

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