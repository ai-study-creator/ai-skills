Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicListUI.PropertyChangeHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicListUI.PropertyChangeHandler

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Enclosing class:
:   `BasicListUI`

---

public class BasicListUI.PropertyChangeHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

The PropertyChangeListener that's added to the JList at
installUI time. When the value of a JList property that
affects layout changes, we set a bit in updateLayoutStateNeeded.
If the JLists model changes we additionally remove our listeners
from the old model. Likewise for the JList selectionModel.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`BasicListUI.maybeUpdateLayoutState()`](BasicListUI.md#maybeUpdateLayoutState())
    * [`BasicListUI.createPropertyChangeListener()`](BasicListUI.md#createPropertyChangeListener())
    * [`BasicListUI.installUI(javax.swing.JComponent)`](BasicListUI.md#installUI(javax.swing.JComponent))

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