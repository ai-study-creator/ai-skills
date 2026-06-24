Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface ContainerListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicToolBarUI.ToolBarContListener`, `Container.AccessibleAWTContainer.AccessibleContainerHandler`, `ContainerAdapter`, `JComponent.AccessibleJComponent.AccessibleContainerHandler`, `MetalToolBarUI.MetalContainerListener`

---

public interface ContainerListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving container events.
The class that is interested in processing a container event
either implements this interface (and all the methods it
contains) or extends the abstract `ContainerAdapter` class
(overriding only the methods of interest).
The listener object created from that class is then registered with a
component using the component's `addContainerListener`
method. When the container's contents change because a component
has been added or removed, the relevant method in the listener object
is invoked, and the `ContainerEvent` is passed to it.

Container events are provided for notification purposes ONLY;
The AWT will automatically handle add and remove operations
internally so the program works properly regardless of
whether the program registers a `ContainerListener` or not.

Since:
:   1.1

See Also:
:   * [`ContainerAdapter`](ContainerAdapter.md "class in java.awt.event")
    * [`ContainerEvent`](ContainerEvent.md "class in java.awt.event")
    * [Tutorial: Writing a Container Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/containerlistener.html)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `componentAdded(ContainerEvent e)`

  Invoked when a component has been added to the container.

  `void`

  `componentRemoved(ContainerEvent e)`

  Invoked when a component has been removed from the container.

* ## Method Details

  + ### componentAdded

    void componentAdded([ContainerEvent](ContainerEvent.md "class in java.awt.event") e)

    Invoked when a component has been added to the container.

    Parameters:
    :   `e` - the event to be processed
  + ### componentRemoved

    void componentRemoved([ContainerEvent](ContainerEvent.md "class in java.awt.event") e)

    Invoked when a component has been removed from the container.

    Parameters:
    :   `e` - the event to be processed