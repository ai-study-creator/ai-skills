Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicInternalFrameTitlePane.PropertyChangeHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicInternalFrameTitlePane.PropertyChangeHandler

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Enclosing class:
:   `BasicInternalFrameTitlePane`

---

public class BasicInternalFrameTitlePane.PropertyChangeHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

This class should be treated as a "protected" inner class.
Instantiate it only within subclasses of `Foo`.

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

  `propertyChange(PropertyChangeEvent evt)`

  This method gets called when a bound property is changed.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PropertyChangeHandler

    public PropertyChangeHandler()

    Constructs a `PropertyChangeHandler`.
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") evt)

    Description copied from interface: `PropertyChangeListener`

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `evt` - A PropertyChangeEvent object describing the event source
        and the property that has changed.