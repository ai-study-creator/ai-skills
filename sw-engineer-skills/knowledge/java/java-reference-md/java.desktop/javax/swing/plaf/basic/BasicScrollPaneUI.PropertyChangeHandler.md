Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicScrollPaneUI.PropertyChangeHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicScrollPaneUI.PropertyChangeHandler

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

Enclosing class:
:   `BasicScrollPaneUI`

---

[@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="17",
[forRemoval](../../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
public class BasicScrollPaneUI.PropertyChangeHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [PropertyChangeListener](../../../../java/beans/PropertyChangeListener.md "interface in java.beans")

Deprecated, for removal: This API element is subject to removal in a future version.

Property change handler.
This class exists only for backward compatibility.
All its functionality has been moved into Handler.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PropertyChangeHandler()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a `PropertyChangeHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `propertyChange(PropertyChangeEvent e)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  This method gets called when a bound property is changed.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### PropertyChangeHandler

    public PropertyChangeHandler()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a `PropertyChangeHandler`.
* ## Method Details

  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Deprecated, for removal: This API element is subject to removal in a future version.

    This method gets called when a bound property is changed.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.