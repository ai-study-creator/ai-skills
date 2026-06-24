Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicTreeUI.PropertyChangeHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicTreeUI.PropertyChangeHandler

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Enclosing class:
:   `BasicTreeUI`

---

public class BasicTreeUI.PropertyChangeHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

PropertyChangeListener for the tree. Updates the appropriate
variable, or TreeState, based on what changes.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PropertyChangeHandler()`

  Constructs a `PropertyChangeHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `propertyChange(PropertyChangeEvent event)`

  This method gets called when a bound property is changed.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PropertyChangeHandler

    public PropertyChangeHandler()

    Constructs a `PropertyChangeHandler`.
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") event)

    Description copied from interface: `PropertyChangeListener`

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `event` - A PropertyChangeEvent object describing the event source
        and the property that has changed.