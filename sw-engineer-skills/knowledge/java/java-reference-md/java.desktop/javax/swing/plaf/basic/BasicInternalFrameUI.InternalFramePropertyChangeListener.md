Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicInternalFrameUI.InternalFramePropertyChangeListener

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicInternalFrameUI.InternalFramePropertyChangeListener

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Enclosing class:
:   `BasicInternalFrameUI`

---

public class BasicInternalFrameUI.InternalFramePropertyChangeListener
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

Internal frame property change listener.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InternalFramePropertyChangeListener()`

  Constructs an `InternalFramePropertyChangeListener`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `propertyChange(PropertyChangeEvent evt)`

  Detects changes in state from the JInternalFrame and handles
  actions.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### InternalFramePropertyChangeListener

    public InternalFramePropertyChangeListener()

    Constructs an `InternalFramePropertyChangeListener`.
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") evt)

    Detects changes in state from the JInternalFrame and handles
    actions.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `evt` - A PropertyChangeEvent object describing the event source
        and the property that has changed.