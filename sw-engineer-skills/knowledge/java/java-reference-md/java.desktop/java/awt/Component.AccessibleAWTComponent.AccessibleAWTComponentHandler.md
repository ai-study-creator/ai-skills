Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class Component.AccessibleAWTComponent.AccessibleAWTComponentHandler

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.Component.AccessibleAWTComponent.AccessibleAWTComponentHandler

All Implemented Interfaces:
:   `ComponentListener`, `Serializable`, `EventListener`

Enclosing class:
:   `Component.AccessibleAWTComponent`

---

protected class Component.AccessibleAWTComponent.AccessibleAWTComponentHandler
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [ComponentListener](event/ComponentListener.md "interface in java.awt.event"), [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

Fire PropertyChange listener, if one is registered,
when shown/hidden..

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.awt.Component.AccessibleAWTComponent.AccessibleAWTComponentHandler)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AccessibleAWTComponentHandler()`

  Constructs an `AccessibleAWTComponentHandler`.
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

  Invoked when the component's size changes.

  `void`

  `componentShown(ComponentEvent e)`

  Invoked when the component has been made visible.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AccessibleAWTComponentHandler

    protected AccessibleAWTComponentHandler()

    Constructs an `AccessibleAWTComponentHandler`.
* ## Method Details

  + ### componentHidden

    public void componentHidden([ComponentEvent](event/ComponentEvent.md "class in java.awt.event") e)

    Description copied from interface: `ComponentListener`

    Invoked when the component has been made invisible.

    Specified by:
    :   `componentHidden` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentShown

    public void componentShown([ComponentEvent](event/ComponentEvent.md "class in java.awt.event") e)

    Description copied from interface: `ComponentListener`

    Invoked when the component has been made visible.

    Specified by:
    :   `componentShown` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentMoved

    public void componentMoved([ComponentEvent](event/ComponentEvent.md "class in java.awt.event") e)

    Description copied from interface: `ComponentListener`

    Invoked when the component's position changes.

    Specified by:
    :   `componentMoved` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentResized

    public void componentResized([ComponentEvent](event/ComponentEvent.md "class in java.awt.event") e)

    Description copied from interface: `ComponentListener`

    Invoked when the component's size changes.

    Specified by:
    :   `componentResized` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed