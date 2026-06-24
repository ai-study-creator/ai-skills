Module [java.desktop](../../../module-summary.md)

# Package javax.swing.undo

---

package javax.swing.undo

Allows developers to provide support for undo/redo in applications such as
text editors.

**Note:**
Most of the Swing API is *not* thread safe. For details, see
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html),
a section in
*[The Java Tutorial](https://docs.oracle.com/javase/tutorial/)*.

## Related Documentation

For overviews, tutorials, examples, guides, and tool documentation,
please see:

* [Implementing Undo and Redo](https://docs.oracle.com/javase/tutorial/uiswing/components/generaltext.html#undo),
  a section in *The Java Tutorial*

Since:
:   1.2

* Related Packages

  Package

  Description

  [javax.swing](../package-summary.md)

  Provides a set of "lightweight" (all-Java language) components
  that, to the maximum degree possible, work the same on all platforms.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AbstractUndoableEdit](AbstractUndoableEdit.md "class in javax.swing.undo")

  An abstract implementation of `UndoableEdit`,
  implementing simple responses to all boolean methods in
  that interface.

  [CannotRedoException](CannotRedoException.md "class in javax.swing.undo")

  Thrown when an UndoableEdit is told to `redo()` and can't.

  [CannotUndoException](CannotUndoException.md "class in javax.swing.undo")

  Thrown when an UndoableEdit is told to `undo()` and can't.

  [CompoundEdit](CompoundEdit.md "class in javax.swing.undo")

  A concrete subclass of AbstractUndoableEdit, used to assemble little
  UndoableEdits into great big ones.

  [StateEdit](StateEdit.md "class in javax.swing.undo")

  StateEdit is a general edit for objects that change state.

  [StateEditable](StateEditable.md "interface in javax.swing.undo")

  StateEditable defines the interface for objects that can have
  their state undone/redone by a StateEdit.

  [UndoableEdit](UndoableEdit.md "interface in javax.swing.undo")

  An `UndoableEdit` represents an edit.

  [UndoableEditSupport](UndoableEditSupport.md "class in javax.swing.undo")

  A support class used for managing `UndoableEdit` listeners.

  [UndoManager](UndoManager.md "class in javax.swing.undo")

  `UndoManager` manages a list of `UndoableEdits`,
  providing a way to undo or redo the appropriate edits.