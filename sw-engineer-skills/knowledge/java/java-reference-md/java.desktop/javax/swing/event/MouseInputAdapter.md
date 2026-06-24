Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Class MouseInputAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

javax.swing.event.MouseInputAdapter

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`, `MouseInputListener`

Direct Known Subclasses:
:   `BasicDesktopIconUI.MouseInputHandler`, `BasicInternalFrameUI.BorderListener`, `BasicSliderUI.TrackListener`

---

public abstract class MouseInputAdapter
extends [MouseAdapter](../../../java/awt/event/MouseAdapter.md "class in java.awt.event")
implements [MouseInputListener](MouseInputListener.md "interface in javax.swing.event")

An empty implementation of the `MouseInputListener` interface, provided
as a convenience to simplify the task of creating listeners, by extending
and implementing only the methods of interest. This class also provides an
empty implementation of the `MouseWheelListener` interface, through
its extension from AWT's `MouseAdapter`.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MouseInputAdapter()`

  Constructor for subclasses to call.
* ## Method Summary

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseClicked, mouseDragged, mouseEntered, mouseExited, mouseMoved, mousePressed, mouseReleased, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface java.awt.event.[MouseListener](../../../java/awt/event/MouseListener.md "interface in java.awt.event")

  `mouseClicked, mouseEntered, mouseExited, mousePressed, mouseReleased`

  ### Methods inherited from interface java.awt.event.[MouseMotionListener](../../../java/awt/event/MouseMotionListener.md "interface in java.awt.event")

  `mouseDragged, mouseMoved`

* ## Constructor Details

  + ### MouseInputAdapter

    protected MouseInputAdapter()

    Constructor for subclasses to call.