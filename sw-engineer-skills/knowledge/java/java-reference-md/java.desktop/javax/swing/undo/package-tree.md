# Hierarchy For Package javax.swing.undo

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.swing.undo.[AbstractUndoableEdit](AbstractUndoableEdit.md "class in javax.swing.undo") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), javax.swing.undo.[UndoableEdit](UndoableEdit.md "interface in javax.swing.undo"))
    - javax.swing.undo.[CompoundEdit](CompoundEdit.md "class in javax.swing.undo")
      * javax.swing.undo.[UndoManager](UndoManager.md "class in javax.swing.undo") (implements javax.swing.event.[UndoableEditListener](../event/UndoableEditListener.md "interface in javax.swing.event"))
    - javax.swing.undo.[StateEdit](StateEdit.md "class in javax.swing.undo")
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.lang.[RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
        + javax.swing.undo.[CannotRedoException](CannotRedoException.md "class in javax.swing.undo")
        + javax.swing.undo.[CannotUndoException](CannotUndoException.md "class in javax.swing.undo")
  + javax.swing.undo.[UndoableEditSupport](UndoableEditSupport.md "class in javax.swing.undo")

## Interface Hierarchy

* javax.swing.undo.[StateEditable](StateEditable.md "interface in javax.swing.undo")
* javax.swing.undo.[UndoableEdit](UndoableEdit.md "interface in javax.swing.undo")