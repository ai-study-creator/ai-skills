Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class ContainerAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.event.ContainerAdapter

All Implemented Interfaces:
:   `ContainerListener`, `EventListener`

---

public abstract class ContainerAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ContainerListener](ContainerListener.md "interface in java.awt.event")

An abstract adapter class for receiving container events.
The methods in this class are empty. This class exists as
convenience for creating listener objects.

Extend this class to create a `ContainerEvent` listener
and override the methods for the events of interest. (If you implement the
`ContainerListener` interface, you have to define all of
the methods in it. This abstract class defines null methods for them
all, so you can only have to define methods for events you care about.)

Create a listener object using the extended class and then register it with
a component using the component's `addContainerListener`
method. When the container's contents change because a component has
been added or removed, the relevant method in the listener object is invoked,
and the `ContainerEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`ContainerEvent`](ContainerEvent.md "class in java.awt.event")
    * [`ContainerListener`](ContainerListener.md "interface in java.awt.event")
    * [Tutorial: Writing a Container Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/containerlistener.html)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ContainerAdapter()`

  Constructs a `ContainerAdapter`.
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

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ContainerAdapter

    protected ContainerAdapter()

    Constructs a `ContainerAdapter`.
* ## Method Details

  + ### componentAdded

    public void componentAdded([ContainerEvent](ContainerEvent.md "class in java.awt.event") e)

    Invoked when a component has been added to the container.

    Specified by:
    :   `componentAdded` in interface `ContainerListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentRemoved

    public void componentRemoved([ContainerEvent](ContainerEvent.md "class in java.awt.event") e)

    Invoked when a component has been removed from the container.

    Specified by:
    :   `componentRemoved` in interface `ContainerListener`

    Parameters:
    :   `e` - the event to be processed