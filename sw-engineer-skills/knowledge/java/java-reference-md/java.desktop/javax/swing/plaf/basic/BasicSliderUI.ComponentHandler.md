Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSliderUI.ComponentHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.ComponentAdapter](../../../../java/awt/event/ComponentAdapter.md "class in java.awt.event")

javax.swing.plaf.basic.BasicSliderUI.ComponentHandler

All Implemented Interfaces:
:   `ComponentListener`, `EventListener`

Enclosing class:
:   `BasicSliderUI`

---

public class BasicSliderUI.ComponentHandler
extends [ComponentAdapter](../../../../java/awt/event/ComponentAdapter.md "class in java.awt.event")

Listener for resizing events.

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `Foo`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ComponentHandler()`

  Constructs a `ComponentHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `componentResized(ComponentEvent e)`

  Invoked when the component's size changes.

  ### Methods inherited from class java.awt.event.[ComponentAdapter](../../../../java/awt/event/ComponentAdapter.md "class in java.awt.event")

  `componentHidden, componentMoved, componentShown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ComponentHandler

    public ComponentHandler()

    Constructs a `ComponentHandler`.
* ## Method Details

  + ### componentResized

    public void componentResized([ComponentEvent](../../../../java/awt/event/ComponentEvent.md "class in java.awt.event") e)

    Description copied from class: `ComponentAdapter`

    Invoked when the component's size changes.

    Specified by:
    :   `componentResized` in interface `ComponentListener`

    Overrides:
    :   `componentResized` in class `ComponentAdapter`

    Parameters:
    :   `e` - the event to be processed