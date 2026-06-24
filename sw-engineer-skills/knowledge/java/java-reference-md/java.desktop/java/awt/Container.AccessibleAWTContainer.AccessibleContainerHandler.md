Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Container.AccessibleAWTContainer.AccessibleContainerHandler

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.Container.AccessibleAWTContainer.AccessibleContainerHandler

All Implemented Interfaces:
:   `ContainerListener`, `Serializable`, `EventListener`

Enclosing class:
:   `Container.AccessibleAWTContainer`

---

protected class Container.AccessibleAWTContainer.AccessibleContainerHandler
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ContainerListener](event/ContainerListener.md "interface in java.awt.event"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Fire `PropertyChange` listener, if one is registered,
when children are added or removed.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Container.AccessibleAWTContainer.AccessibleContainerHandler)

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

    public void componentAdded([ContainerEvent](event/ContainerEvent.md "class in java.awt.event") e)

    Description copied from interface: `ContainerListener`

    Invoked when a component has been added to the container.

    Specified by:
    :   `componentAdded` in interface `ContainerListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentRemoved

    public void componentRemoved([ContainerEvent](event/ContainerEvent.md "class in java.awt.event") e)

    Description copied from interface: `ContainerListener`

    Invoked when a component has been removed from the container.

    Specified by:
    :   `componentRemoved` in interface `ContainerListener`

    Parameters:
    :   `e` - the event to be processed