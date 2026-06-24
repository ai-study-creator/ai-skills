Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalSliderUI.MetalPropertyListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.basic.BasicSliderUI.PropertyChangeHandler](../basic/BasicSliderUI.PropertyChangeHandler.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalSliderUI.MetalPropertyListener

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Enclosing class:
:   `MetalSliderUI`

---

protected class MetalSliderUI.MetalPropertyListener
extends [BasicSliderUI.PropertyChangeHandler](../basic/BasicSliderUI.PropertyChangeHandler.md "class in javax.swing.plaf.basic")

`PropertyListener` for `JSlider.isFilled`.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `MetalPropertyListener()`

  Constructs a `MetalPropertyListener`.
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

  + ### MetalPropertyListener

    protected MetalPropertyListener()

    Constructs a `MetalPropertyListener`.
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Description copied from class: `BasicSliderUI.PropertyChangeHandler`

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Overrides:
    :   `propertyChange` in class `BasicSliderUI.PropertyChangeHandler`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.