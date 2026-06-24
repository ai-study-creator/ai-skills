Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class JViewport.ViewListener

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.awt.event.ComponentAdapter](../../java/awt/event/ComponentAdapter.md "class in java.awt.event")

javax.swing.JViewport.ViewListener

All Implemented Interfaces:
:   `ComponentListener`, `Serializable`, `EventListener`

Enclosing class:
:   `JViewport`

---

protected class JViewport.ViewListener
extends [ComponentAdapter](../../java/awt/event/ComponentAdapter.md "class in java.awt.event")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A listener for the view.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ViewListener()`

  Constructs a `ViewListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `componentResized(ComponentEvent e)`

  Invoked when the component's size changes.

  ### Methods inherited from class java.awt.event.[ComponentAdapter](../../java/awt/event/ComponentAdapter.md "class in java.awt.event")

  `componentHidden, componentMoved, componentShown`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ViewListener

    protected ViewListener()

    Constructs a `ViewListener`.
* ## Method Details

  + ### componentResized

    public void componentResized([ComponentEvent](../../java/awt/event/ComponentEvent.md "class in java.awt.event") e)

    Description copied from class: `ComponentAdapter`

    Invoked when the component's size changes.

    Specified by:
    :   `componentResized` in interface `ComponentListener`

    Overrides:
    :   `componentResized` in class `ComponentAdapter`

    Parameters:
    :   `e` - the event to be processed