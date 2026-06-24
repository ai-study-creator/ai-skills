Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class AbstractDocument.DefaultDocumentEvent

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.undo.AbstractUndoableEdit](../undo/AbstractUndoableEdit.md "class in javax.swing.undo")

[javax.swing.undo.CompoundEdit](../undo/CompoundEdit.md "class in javax.swing.undo")

javax.swing.text.AbstractDocument.DefaultDocumentEvent

All Implemented Interfaces:
:   `Serializable`, `DocumentEvent`, `UndoableEdit`

Enclosing class:
:   `AbstractDocument`

---

public class AbstractDocument.DefaultDocumentEvent
extends [CompoundEdit](../undo/CompoundEdit.md "class in javax.swing.undo")
implements [DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event")

Stores document changes as the document is being
modified. Can subsequently be used for change notification
when done with the document modification transaction.
This is used by the AbstractDocument class and its extensions
for broadcasting change information to the document listeners.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.swing.event.[DocumentEvent](../event/DocumentEvent.md "interface in javax.swing.event")

  `DocumentEvent.ElementChange, DocumentEvent.EventType`
* ## Field Summary

  ### Fields inherited from class javax.swing.undo.[CompoundEdit](../undo/CompoundEdit.md "class in javax.swing.undo")

  `edits`

  ### Fields inherited from class javax.swing.undo.[AbstractUndoableEdit](../undo/AbstractUndoableEdit.md "class in javax.swing.undo")

  `RedoName, UndoName`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DefaultDocumentEvent(int offs,
  int len,
  DocumentEvent.EventType type)`

  Constructs a change record.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `addEdit(UndoableEdit anEdit)`

  Adds a document edit.

  `DocumentEvent.ElementChange`

  `getChange(Element elem)`

  Gets the changes for an element.

  `Document`

  `getDocument()`

  Gets the document that sourced the change event.

  `int`

  `getLength()`

  Returns the length of the change.

  `int`

  `getOffset()`

  Returns the offset within the document of the start of the change.

  `String`

  `getPresentationName()`

  Provides a localized, human readable description of this edit
  suitable for use in, say, a change log.

  `String`

  `getRedoPresentationName()`

  Provides a localized, human readable description of the redoable
  form of this edit, e.g.

  `DocumentEvent.EventType`

  `getType()`

  Returns the type of event.

  `String`

  `getUndoPresentationName()`

  Provides a localized, human readable description of the undoable
  form of this edit, e.g.

  `boolean`

  `isSignificant()`

  DefaultDocument events are significant.

  `void`

  `redo()`

  Redoes a change.

  `String`

  `toString()`

  Returns a string description of the change event.

  `void`

  `undo()`

  Undoes a change.

  ### Methods inherited from class javax.swing.undo.[CompoundEdit](../undo/CompoundEdit.md "class in javax.swing.undo")

  `canRedo, canUndo, die, end, isInProgress, lastEdit`

  ### Methods inherited from class javax.swing.undo.[AbstractUndoableEdit](../undo/AbstractUndoableEdit.md "class in javax.swing.undo")

  `replaceEdit`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### DefaultDocumentEvent

    public DefaultDocumentEvent(int offs,
    int len,
    [DocumentEvent.EventType](../event/DocumentEvent.EventType.md "class in javax.swing.event") type)

    Constructs a change record.

    Parameters:
    :   `offs` - the offset into the document of the change >= 0
    :   `len` - the length of the change >= 0
    :   `type` - the type of event (DocumentEvent.EventType)

    Since:
    :   1.4
* ## Method Details

  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string description of the change event.

    Overrides:
    :   `toString` in class `CompoundEdit`

    Returns:
    :   a string
  + ### addEdit

    public boolean addEdit([UndoableEdit](../undo/UndoableEdit.md "interface in javax.swing.undo") anEdit)

    Adds a document edit. If the number of edits crosses
    a threshold, this switches on a hashtable lookup for
    ElementChange implementations since access of these
    needs to be relatively quick.

    Specified by:
    :   `addEdit` in interface `UndoableEdit`

    Overrides:
    :   `addEdit` in class `CompoundEdit`

    Parameters:
    :   `anEdit` - a document edit record

    Returns:
    :   true if the edit was added

    See Also:
    :   - [`UndoableEdit.addEdit(javax.swing.undo.UndoableEdit)`](../undo/UndoableEdit.md#addEdit(javax.swing.undo.UndoableEdit))
  + ### redo

    public void redo()
    throws [CannotRedoException](../undo/CannotRedoException.md "class in javax.swing.undo")

    Redoes a change.

    Specified by:
    :   `redo` in interface `UndoableEdit`

    Overrides:
    :   `redo` in class `CompoundEdit`

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
    :   `undo` in class `CompoundEdit`

    Throws:
    :   `CannotUndoException` - if the change cannot be undone

    See Also:
    :   - [`AbstractUndoableEdit.canUndo()`](../undo/AbstractUndoableEdit.md#canUndo())
  + ### isSignificant

    public boolean isSignificant()

    DefaultDocument events are significant. If you wish to aggregate
    DefaultDocumentEvents to present them as a single edit to the user
    place them into a CompoundEdit.

    Specified by:
    :   `isSignificant` in interface `UndoableEdit`

    Overrides:
    :   `isSignificant` in class `CompoundEdit`

    Returns:
    :   whether the event is significant for edit undo purposes

    See Also:
    :   - [`UndoableEdit.isSignificant()`](../undo/UndoableEdit.md#isSignificant())
  + ### getPresentationName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getPresentationName()

    Provides a localized, human readable description of this edit
    suitable for use in, say, a change log.

    Specified by:
    :   `getPresentationName` in interface `UndoableEdit`

    Overrides:
    :   `getPresentationName` in class `CompoundEdit`

    Returns:
    :   the description

    See Also:
    :   - [`AbstractUndoableEdit.getUndoPresentationName()`](../undo/AbstractUndoableEdit.md#getUndoPresentationName())
        - [`AbstractUndoableEdit.getRedoPresentationName()`](../undo/AbstractUndoableEdit.md#getRedoPresentationName())
  + ### getUndoPresentationName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getUndoPresentationName()

    Provides a localized, human readable description of the undoable
    form of this edit, e.g. for use as an Undo menu item. Typically
    derived from getDescription();

    Specified by:
    :   `getUndoPresentationName` in interface `UndoableEdit`

    Overrides:
    :   `getUndoPresentationName` in class `CompoundEdit`

    Returns:
    :   the description

    See Also:
    :   - [`AbstractUndoableEdit.getPresentationName()`](../undo/AbstractUndoableEdit.md#getPresentationName())
  + ### getRedoPresentationName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getRedoPresentationName()

    Provides a localized, human readable description of the redoable
    form of this edit, e.g. for use as a Redo menu item. Typically
    derived from getPresentationName();

    Specified by:
    :   `getRedoPresentationName` in interface `UndoableEdit`

    Overrides:
    :   `getRedoPresentationName` in class `CompoundEdit`

    Returns:
    :   the description

    See Also:
    :   - [`AbstractUndoableEdit.getPresentationName()`](../undo/AbstractUndoableEdit.md#getPresentationName())
  + ### getType

    public [DocumentEvent.EventType](../event/DocumentEvent.EventType.md "class in javax.swing.event") getType()

    Returns the type of event.

    Specified by:
    :   `getType` in interface `DocumentEvent`

    Returns:
    :   the event type as a DocumentEvent.EventType

    See Also:
    :   - [`DocumentEvent.getType()`](../event/DocumentEvent.md#getType())
  + ### getOffset

    public int getOffset()

    Returns the offset within the document of the start of the change.

    Specified by:
    :   `getOffset` in interface `DocumentEvent`

    Returns:
    :   the offset >= 0

    See Also:
    :   - [`DocumentEvent.getOffset()`](../event/DocumentEvent.md#getOffset())
  + ### getLength

    public int getLength()

    Returns the length of the change.

    Specified by:
    :   `getLength` in interface `DocumentEvent`

    Returns:
    :   the length >= 0

    See Also:
    :   - [`DocumentEvent.getLength()`](../event/DocumentEvent.md#getLength())
  + ### getDocument

    public [Document](Document.md "interface in javax.swing.text") getDocument()

    Gets the document that sourced the change event.

    Specified by:
    :   `getDocument` in interface `DocumentEvent`

    Returns:
    :   the document

    See Also:
    :   - [`DocumentEvent.getDocument()`](../event/DocumentEvent.md#getDocument())
  + ### getChange

    public [DocumentEvent.ElementChange](../event/DocumentEvent.ElementChange.md "interface in javax.swing.event") getChange([Element](Element.md "interface in javax.swing.text") elem)

    Gets the changes for an element.

    Specified by:
    :   `getChange` in interface `DocumentEvent`

    Parameters:
    :   `elem` - the element

    Returns:
    :   the changes