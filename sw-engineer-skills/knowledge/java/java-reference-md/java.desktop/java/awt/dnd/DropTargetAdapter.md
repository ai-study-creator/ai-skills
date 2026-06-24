Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DropTargetAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.dnd.DropTargetAdapter

All Implemented Interfaces:
:   `DropTargetListener`, `EventListener`

---

public abstract class DropTargetAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [DropTargetListener](DropTargetListener.md "interface in java.awt.dnd")

An abstract adapter class for receiving drop target events. The methods in
this class are empty. This class exists only as a convenience for creating
listener objects.

Extend this class to create a `DropTargetEvent` listener
and override the methods for the events of interest. (If you implement the
`DropTargetListener` interface, you have to define all of
the methods in it. This abstract class defines a null implementation for
every method except `drop(DropTargetDropEvent)`, so you only have
to define methods for events you care about.) You must provide an
implementation for at least `drop(DropTargetDropEvent)`. This
method cannot have a null implementation because its specification requires
that you either accept or reject the drop, and, if accepted, indicate
whether the drop was successful.

Create a listener object using the extended class and then register it with
a `DropTarget`. When the drag enters, moves over, or exits
the operable part of the drop site for that `DropTarget`, when
the drop action changes, and when the drop occurs, the relevant method in
the listener object is invoked, and the `DropTargetEvent` is
passed to it.

The operable part of the drop site for the `DropTarget` is
the part of the associated `Component`'s geometry that is not
obscured by an overlapping top-level window or by another
`Component` higher in the Z-order that has an associated active
`DropTarget`.

During the drag, the data associated with the current drag operation can be
retrieved by calling `getTransferable()` on
`DropTargetDragEvent` instances passed to the listener's
methods.

Note that `getTransferable()` on the
`DropTargetDragEvent` instance should only be called within the
respective listener's method and all the necessary data should be retrieved
from the returned `Transferable` before that method returns.

Since:
:   1.4

See Also:
:   * [`DropTargetEvent`](DropTargetEvent.md "class in java.awt.dnd")
    * [`DropTargetListener`](DropTargetListener.md "interface in java.awt.dnd")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DropTargetAdapter()`

  Constructs a `DropTargetAdapter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `dragEnter(DropTargetDragEvent dtde)`

  Called while a drag operation is ongoing, when the mouse pointer enters
  the operable part of the drop site for the `DropTarget`
  registered with this listener.

  `void`

  `dragExit(DropTargetEvent dte)`

  Called while a drag operation is ongoing, when the mouse pointer has
  exited the operable part of the drop site for the
  `DropTarget` registered with this listener.

  `void`

  `dragOver(DropTargetDragEvent dtde)`

  Called when a drag operation is ongoing, while the mouse pointer is still
  over the operable part of the drop site for the `DropTarget`
  registered with this listener.

  `void`

  `dropActionChanged(DropTargetDragEvent dtde)`

  Called if the user has modified
  the current drop gesture.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.awt.dnd.[DropTargetListener](DropTargetListener.md "interface in java.awt.dnd")

  `drop`

* ## Constructor Details

  + ### DropTargetAdapter

    protected DropTargetAdapter()

    Constructs a `DropTargetAdapter`.
* ## Method Details

  + ### dragEnter

    public void dragEnter([DropTargetDragEvent](DropTargetDragEvent.md "class in java.awt.dnd") dtde)

    Called while a drag operation is ongoing, when the mouse pointer enters
    the operable part of the drop site for the `DropTarget`
    registered with this listener.

    Specified by:
    :   `dragEnter` in interface `DropTargetListener`

    Parameters:
    :   `dtde` - the `DropTargetDragEvent`
  + ### dragOver

    public void dragOver([DropTargetDragEvent](DropTargetDragEvent.md "class in java.awt.dnd") dtde)

    Called when a drag operation is ongoing, while the mouse pointer is still
    over the operable part of the drop site for the `DropTarget`
    registered with this listener.

    Specified by:
    :   `dragOver` in interface `DropTargetListener`

    Parameters:
    :   `dtde` - the `DropTargetDragEvent`
  + ### dropActionChanged

    public void dropActionChanged([DropTargetDragEvent](DropTargetDragEvent.md "class in java.awt.dnd") dtde)

    Called if the user has modified
    the current drop gesture.

    Specified by:
    :   `dropActionChanged` in interface `DropTargetListener`

    Parameters:
    :   `dtde` - the `DropTargetDragEvent`
  + ### dragExit

    public void dragExit([DropTargetEvent](DropTargetEvent.md "class in java.awt.dnd") dte)

    Called while a drag operation is ongoing, when the mouse pointer has
    exited the operable part of the drop site for the
    `DropTarget` registered with this listener.

    Specified by:
    :   `dragExit` in interface `DropTargetListener`

    Parameters:
    :   `dte` - the `DropTargetEvent`