Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicToolBarUI.ToolBarContListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicToolBarUI.ToolBarContListener

All Implemented Interfaces:
:   `ContainerListener`, `EventListener`

Direct Known Subclasses:
:   `MetalToolBarUI.MetalContainerListener`

Enclosing class:
:   `BasicToolBarUI`

---

protected class BasicToolBarUI.ToolBarContListener
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ContainerListener](../../../../java/awt/event/ContainerListener.md "interface in java.awt.event")

The class listens for component events.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ToolBarContListener()`

  Constructs a `ToolBarContListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `componentAdded(ContainerEvent e)`

  Invoked when a component has been added to the container.

  `void`

  `componentRemoved(ContainerEvent e)`

  Invoked when a component has been removed from the container.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ToolBarContListener

    protected ToolBarContListener()

    Constructs a `ToolBarContListener`.
* ## Method Details

  + ### componentAdded

    public void componentAdded([ContainerEvent](../../../../java/awt/event/ContainerEvent.md "class in java.awt.event") e)

    Description copied from interface: `ContainerListener`

    Invoked when a component has been added to the container.

    Specified by:
    :   `componentAdded` in interface `ContainerListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentRemoved

    public void componentRemoved([ContainerEvent](../../../../java/awt/event/ContainerEvent.md "class in java.awt.event") e)

    Description copied from interface: `ContainerListener`

    Invoked when a component has been removed from the container.

    Specified by:
    :   `componentRemoved` in interface `ContainerListener`

    Parameters:
    :   `e` - the event to be processed