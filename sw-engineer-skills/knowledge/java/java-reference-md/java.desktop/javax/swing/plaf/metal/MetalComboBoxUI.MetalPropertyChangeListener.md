Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalComboBoxUI.MetalPropertyChangeListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.basic.BasicComboBoxUI.PropertyChangeHandler](../basic/BasicComboBoxUI.PropertyChangeHandler.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalComboBoxUI.MetalPropertyChangeListener

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Enclosing class:
:   `MetalComboBoxUI`

---

public class MetalComboBoxUI.MetalPropertyChangeListener
extends [BasicComboBoxUI.PropertyChangeHandler](../basic/BasicComboBoxUI.PropertyChangeHandler.md "class in javax.swing.plaf.basic")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `MetalComboBoxUI`.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalPropertyChangeListener()`

  Constructs a `MetalPropertyChangeListener`.
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

  + ### MetalPropertyChangeListener

    public MetalPropertyChangeListener()

    Constructs a `MetalPropertyChangeListener`.
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Description copied from interface: `PropertyChangeListener`

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Overrides:
    :   `propertyChange` in class `BasicComboBoxUI.PropertyChangeHandler`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.