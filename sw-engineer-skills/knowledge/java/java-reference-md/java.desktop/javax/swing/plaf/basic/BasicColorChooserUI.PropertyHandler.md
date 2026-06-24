Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicColorChooserUI.PropertyHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicColorChooserUI.PropertyHandler

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Enclosing class:
:   `BasicColorChooserUI`

---

public class BasicColorChooserUI.PropertyHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `BasicColorChooserUI`.

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

  This method gets called when a bound property is changed.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PropertyHandler

    public PropertyHandler()

    Constructs a `PropertyHandler`.
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