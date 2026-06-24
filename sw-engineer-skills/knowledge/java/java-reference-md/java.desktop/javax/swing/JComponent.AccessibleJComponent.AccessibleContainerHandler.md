Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JComponent.AccessibleJComponent.AccessibleContainerHandler

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.JComponent.AccessibleJComponent.AccessibleContainerHandler

All Implemented Interfaces:
:   `ContainerListener`, `EventListener`

Enclosing class:
:   `JComponent.AccessibleJComponent`

---

protected class JComponent.AccessibleJComponent.AccessibleContainerHandler
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ContainerListener](../../java/awt/event/ContainerListener.md "interface in java.awt.event")

Fire PropertyChange listener, if one is registered,
when children added/removed.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleContainerHandler()`

  Constructs an `AccessibleContainerHandler`.
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

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleContainerHandler

    protected AccessibleContainerHandler()

    Constructs an `AccessibleContainerHandler`.
* ## Method Details

  + ### componentAdded

    public void componentAdded([ContainerEvent](../../java/awt/event/ContainerEvent.md "class in java.awt.event") e)

    Description copied from interface: `ContainerListener`

    Invoked when a component has been added to the container.

    Specified by:
    :   `componentAdded` in interface `ContainerListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentRemoved

    public void componentRemoved([ContainerEvent](../../java/awt/event/ContainerEvent.md "class in java.awt.event") e)

    Description copied from interface: `ContainerListener`

    Invoked when a component has been removed from the container.

    Specified by:
    :   `componentRemoved` in interface `ContainerListener`

    Parameters:
    :   `e` - the event to be processed