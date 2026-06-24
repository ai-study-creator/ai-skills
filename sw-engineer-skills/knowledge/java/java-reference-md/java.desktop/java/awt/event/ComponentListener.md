Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Interface ComponentListener

All Superinterfaces:
:   `EventListener`

All Known Implementing Classes:
:   `AWTEventMulticaster`, `BasicInternalFrameUI.ComponentHandler`, `BasicSliderUI.ComponentHandler`, `BasicTreeUI.ComponentHandler`, `Component.AccessibleAWTComponent.AccessibleAWTComponentHandler`, `ComponentAdapter`, `JViewport.ViewListener`

---

public interface ComponentListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

The listener interface for receiving component events.
The class that is interested in processing a component event
either implements this interface (and all the methods it
contains) or extends the abstract `ComponentAdapter` class
(overriding only the methods of interest).
The listener object created from that class is then registered with a
component using the component's `addComponentListener`
method. When the component's size, location, or visibility
changes, the relevant method in the listener object is invoked,
and the `ComponentEvent` is passed to it.

Component events are provided for notification purposes ONLY;
The AWT will automatically handle component moves and resizes
internally so that GUI layout works properly regardless of
whether a program registers a `ComponentListener` or not.

Since:
:   1.1

See Also:
:   * [`ComponentAdapter`](ComponentAdapter.md "class in java.awt.event")
    * [`ComponentEvent`](ComponentEvent.md "class in java.awt.event")
    * [Tutorial: Writing a Component Listener](https://docs.oracle.com/javase/tutorial/uiswing/events/componentlistener.html)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

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

* ## Method Details

  + ### componentResized

    void componentResized([ComponentEvent](ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component's size changes.

    Parameters:
    :   `e` - the event to be processed
  + ### componentMoved

    void componentMoved([ComponentEvent](ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component's position changes.

    Parameters:
    :   `e` - the event to be processed
  + ### componentShown

    void componentShown([ComponentEvent](ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component has been made visible.

    Parameters:
    :   `e` - the event to be processed
  + ### componentHidden

    void componentHidden([ComponentEvent](ComponentEvent.md "class in java.awt.event") e)

    Invoked when the component has been made invisible.

    Parameters:
    :   `e` - the event to be processed