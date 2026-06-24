Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface UndoableEditListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `UndoManager`

---

public interface UndoableEditListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

Interface implemented by a class interested in hearing about
undoable operations.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `undoableEditHappened(UndoableEditEvent e)`

  An undoable edit happened

* ## Method Details

  + ### undoableEditHappened

    void undoableEditHappened([UndoableEditEvent](UndoableEditEvent.md "class in javax.swing.event") e)

    An undoable edit happened

    Parameters:
    :   `e` - an `UndoableEditEvent` object