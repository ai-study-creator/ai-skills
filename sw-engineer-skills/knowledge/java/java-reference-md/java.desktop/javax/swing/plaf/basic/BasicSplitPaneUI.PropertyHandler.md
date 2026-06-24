Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicSplitPaneUI.PropertyHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicSplitPaneUI.PropertyHandler

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Enclosing class:
:   `BasicSplitPaneUI`

---

public class BasicSplitPaneUI.PropertyHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

Implementation of the PropertyChangeListener
that the JSplitPane UI uses.

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of BasicSplitPaneUI.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PropertyHandler()`

  Constructs a `PropertyHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `propertyChange(PropertyChangeEvent e)`

  Messaged from the `JSplitPane` the receiver is
  contained in.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PropertyHandler

    public PropertyHandler()

    Constructs a `PropertyHandler`.
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Messaged from the `JSplitPane` the receiver is
    contained in. May potentially reset the layout manager and cause a
    `validate` to be sent.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.