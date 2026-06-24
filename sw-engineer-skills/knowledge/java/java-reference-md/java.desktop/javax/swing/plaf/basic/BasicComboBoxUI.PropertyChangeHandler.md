Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicComboBoxUI.PropertyChangeHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicComboBoxUI.PropertyChangeHandler

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Direct Known Subclasses:
:   `MetalComboBoxUI.MetalPropertyChangeListener`

Enclosing class:
:   `BasicComboBoxUI`

---

public class BasicComboBoxUI.PropertyChangeHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

This listener watches for bound properties that have changed in the
combo box.

Subclasses which wish to listen to combo box property changes should
call the superclass methods to ensure that the combo box ui correctly
handles property changes.

This public inner class should be treated as protected.
Instantiate it only within subclasses of
`BasicComboBoxUI`.

See Also:
:   * [`BasicComboBoxUI.createPropertyChangeListener()`](BasicComboBoxUI.md#createPropertyChangeListener())

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

  `propertyChange(PropertyChangeEvent e)`

  This method gets called when a bound property is changed.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PropertyChangeHandler

    public PropertyChangeHandler()

    Constructs a `PropertyChangeHandler`.
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