Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicFileChooserUI.DoubleClickListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicFileChooserUI.DoubleClickListener

All Implemented Interfaces:
:   `MouseListener`, `MouseMotionListener`, `MouseWheelListener`, `EventListener`

Enclosing class:
:   `BasicFileChooserUI`

---

protected class BasicFileChooserUI.DoubleClickListener
extends [MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

A double click listener.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DoubleClickListener(JList<?> list)`

  Constructs a `DoubleClickListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `mouseClicked(MouseEvent e)`

  Invoked when the mouse button has been clicked (pressed
  and released) on a component.

  `void`

  `mouseEntered(MouseEvent e)`

  The JList used for representing the files is created by subclasses, but the
  selection is monitored in this class.

  ### Methods inherited from class java.awt.event.[MouseAdapter](../../../../java/awt/event/MouseAdapter.md "class in java.awt.event")

  `mouseDragged, mouseExited, mouseMoved, mousePressed, mouseReleased, mouseWheelMoved`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DoubleClickListener

    public DoubleClickListener([JList](../../JList.md "class in javax.swing")<?> list)

    Constructs a `DoubleClickListener`.

    Parameters:
    :   `list` - the list
* ## Method Details

  + ### mouseEntered

    public void mouseEntered([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    The JList used for representing the files is created by subclasses, but the
    selection is monitored in this class. The TransferHandler installed in the
    JFileChooser is also installed in the file list as it is used as the actual
    transfer source. The list is updated on a mouse enter to reflect the current
    data transfer state of the file chooser.

    Specified by:
    :   `mouseEntered` in interface `MouseListener`

    Overrides:
    :   `mouseEntered` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed
  + ### mouseClicked

    public void mouseClicked([MouseEvent](../../../../java/awt/event/MouseEvent.md "class in java.awt.event") e)

    Invoked when the mouse button has been clicked (pressed
    and released) on a component.

    Specified by:
    :   `mouseClicked` in interface `MouseListener`

    Overrides:
    :   `mouseClicked` in class `MouseAdapter`

    Parameters:
    :   `e` - the event to be processed