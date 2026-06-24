Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicInternalFrameUI.ComponentHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicInternalFrameUI.ComponentHandler

All Implemented Interfaces:
:   `ComponentListener`, `EventListener`

Enclosing class:
:   `BasicInternalFrameUI`

---

protected class BasicInternalFrameUI.ComponentHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ComponentListener](../../../../java/awt/event/ComponentListener.md "interface in java.awt.event")

Component handler.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ComponentHandler()`

  Constructs a `ComponentHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `componentHidden(ComponentEvent e)`

  Invoked when the component has been made invisible.

  `void`

  `componentMoved(ComponentEvent e)`

  Invoked when the component's position changes.

  `void`

  `componentResized(ComponentEvent e)`

  Invoked when a JInternalFrame's parent's size changes.

  `void`

  `componentShown(ComponentEvent e)`

  Invoked when the component has been made visible.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ComponentHandler

    protected ComponentHandler()

    Constructs a `ComponentHandler`.
* ## Method Details

  + ### componentResized

    public void componentResized([ComponentEvent](../../../../java/awt/event/ComponentEvent.md "class in java.awt.event") e)

    Invoked when a JInternalFrame's parent's size changes.

    Specified by:
    :   `componentResized` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentMoved

    public void componentMoved([ComponentEvent](../../../../java/awt/event/ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component's position changes.

    Specified by:
    :   `componentMoved` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentShown

    public void componentShown([ComponentEvent](../../../../java/awt/event/ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component has been made visible.

    Specified by:
    :   `componentShown` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentHidden

    public void componentHidden([ComponentEvent](../../../../java/awt/event/ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component has been made invisible.

    Specified by:
    :   `componentHidden` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed