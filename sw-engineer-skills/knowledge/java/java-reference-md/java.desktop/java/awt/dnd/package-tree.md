# Hierarchy For Package java.awt.dnd

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.awt.dnd.[DnDConstants](DnDConstants.md "class in java.awt.dnd")
  + java.awt.dnd.[DragGestureRecognizer](DragGestureRecognizer.md "class in java.awt.dnd") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.awt.dnd.[MouseDragGestureRecognizer](MouseDragGestureRecognizer.md "class in java.awt.dnd") (implements java.awt.event.[MouseListener](../event/MouseListener.md "interface in java.awt.event"), java.awt.event.[MouseMotionListener](../event/MouseMotionListener.md "interface in java.awt.event"))
  + java.awt.dnd.[DragSource](DragSource.md "class in java.awt.dnd") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.awt.dnd.[DragSourceAdapter](DragSourceAdapter.md "class in java.awt.dnd") (implements java.awt.dnd.[DragSourceListener](DragSourceListener.md "interface in java.awt.dnd"), java.awt.dnd.[DragSourceMotionListener](DragSourceMotionListener.md "interface in java.awt.dnd"))
  + java.awt.dnd.[DragSourceContext](DragSourceContext.md "class in java.awt.dnd") (implements java.awt.dnd.[DragSourceListener](DragSourceListener.md "interface in java.awt.dnd"), java.awt.dnd.[DragSourceMotionListener](DragSourceMotionListener.md "interface in java.awt.dnd"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.awt.dnd.[DropTarget](DropTarget.md "class in java.awt.dnd") (implements java.awt.dnd.[DropTargetListener](DropTargetListener.md "interface in java.awt.dnd"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.awt.dnd.[DropTarget.DropTargetAutoScroller](DropTarget.DropTargetAutoScroller.md "class in java.awt.dnd") (implements java.awt.event.[ActionListener](../event/ActionListener.md "interface in java.awt.event"))
  + java.awt.dnd.[DropTargetAdapter](DropTargetAdapter.md "class in java.awt.dnd") (implements java.awt.dnd.[DropTargetListener](DropTargetListener.md "interface in java.awt.dnd"))
  + java.awt.dnd.[DropTargetContext](DropTargetContext.md "class in java.awt.dnd") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + java.awt.dnd.[DropTargetContext.TransferableProxy](DropTargetContext.TransferableProxy.md "class in java.awt.dnd") (implements java.awt.datatransfer.[Transferable](../../../../java.datatransfer/java/awt/datatransfer/Transferable.md "interface in java.awt.datatransfer"))
  + java.util.[EventObject](../../../../java.base/java/util/EventObject.md "class in java.util") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.awt.dnd.[DragGestureEvent](DragGestureEvent.md "class in java.awt.dnd")
    - java.awt.dnd.[DragSourceEvent](DragSourceEvent.md "class in java.awt.dnd")
      * java.awt.dnd.[DragSourceDragEvent](DragSourceDragEvent.md "class in java.awt.dnd")
      * java.awt.dnd.[DragSourceDropEvent](DragSourceDropEvent.md "class in java.awt.dnd")
    - java.awt.dnd.[DropTargetEvent](DropTargetEvent.md "class in java.awt.dnd")
      * java.awt.dnd.[DropTargetDragEvent](DropTargetDragEvent.md "class in java.awt.dnd")
      * java.awt.dnd.[DropTargetDropEvent](DropTargetDropEvent.md "class in java.awt.dnd")
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.lang.[RuntimeException](../../../../java.base/java/lang/RuntimeException.md "class in java.lang")
        + java.lang.[IllegalStateException](../../../../java.base/java/lang/IllegalStateException.md "class in java.lang")
          - java.awt.dnd.[InvalidDnDOperationException](InvalidDnDOperationException.md "class in java.awt.dnd")

## Interface Hierarchy

* java.awt.dnd.[Autoscroll](Autoscroll.md "interface in java.awt.dnd")
* java.util.[EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")
  + java.awt.dnd.[DragGestureListener](DragGestureListener.md "interface in java.awt.dnd")
  + java.awt.dnd.[DragSourceListener](DragSourceListener.md "interface in java.awt.dnd")
  + java.awt.dnd.[DragSourceMotionListener](DragSourceMotionListener.md "interface in java.awt.dnd")
  + java.awt.dnd.[DropTargetListener](DropTargetListener.md "interface in java.awt.dnd")