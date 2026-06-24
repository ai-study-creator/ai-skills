Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicToolBarUI.PropertyListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicToolBarUI.PropertyListener

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Direct Known Subclasses:
:   `MetalToolBarUI.MetalRolloverListener`

Enclosing class:
:   `BasicToolBarUI`

---

protected class BasicToolBarUI.PropertyListener
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

The class listens for property changed events.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `PropertyListener()`

  Constructs a `PropertyListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PropertyListener

    protected PropertyListener()

    Constructs a `PropertyListener`.
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Description copied from interface: `PropertyChangeListener`

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.