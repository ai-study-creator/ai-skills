Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Class ComponentAdapter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.event.ComponentAdapter

All Implemented Interfaces:
:   `ComponentListener`, `EventListener`

Direct Known Subclasses:
:   `BasicSliderUI.ComponentHandler`, `BasicTreeUI.ComponentHandler`, `JViewport.ViewListener`

---

public abstract class ComponentAdapter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ComponentListener](ComponentListener.md "interface in java.awt.event")

An abstract adapter class for receiving component events.
The methods in this class are empty. This class exists as
convenience for creating listener objects.

Extend this class to create a `ComponentEvent` listener
and override the methods for the events of interest. (If you implement the
`ComponentListener` interface, you have to define all of
the methods in it. This abstract class defines null methods for them
all, so you can only have to define methods for events you care about.)

Create a listener object using your class and then register it with a
component using the component's `addComponentListener`
method. When the component's size, location, or visibility
changes, the relevant method in the listener object is invoked,
and the `ComponentEvent` is passed to it.

Since:
:   1.1

See Also:
:   * [`ComponentEvent`](ComponentEvent.md "class in java.awt.event")
    * [`ComponentListener`](ComponentListener.md "interface in java.awt.event")
    * [Tutorial: Writing a Component Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/componentlistener.html)

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ComponentAdapter()`

  Constructs a `ComponentAdapter`.
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

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ComponentAdapter

    protected ComponentAdapter()

    Constructs a `ComponentAdapter`.
* ## Method Details

  + ### componentResized

    public void componentResized([ComponentEvent](ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component's size changes.

    Specified by:
    :   `componentResized` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentMoved

    public void componentMoved([ComponentEvent](ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component's position changes.

    Specified by:
    :   `componentMoved` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentShown

    public void componentShown([ComponentEvent](ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component has been made visible.

    Specified by:
    :   `componentShown` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed
  + ### componentHidden

    public void componentHidden([ComponentEvent](ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component has been made invisible.

    Specified by:
    :   `componentHidden` in interface `ComponentListener`

    Parameters:
    :   `e` - the event to be processed