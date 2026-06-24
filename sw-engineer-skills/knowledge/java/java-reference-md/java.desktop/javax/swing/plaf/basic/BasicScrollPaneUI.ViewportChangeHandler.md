Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicScrollPaneUI.ViewportChangeHandler

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.basic.BasicScrollPaneUI.ViewportChangeHandler

All Implemented Interfaces:
:   `EventListener`, `ChangeListener`

Enclosing class:
:   `BasicScrollPaneUI`

---

[@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="17",
[forRemoval](../../../../../java.base/java/lang/Deprecated.md#forRemoval())=true)
public class BasicScrollPaneUI.ViewportChangeHandler
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ChangeListener](../../event/ChangeListener.md "interface in javax.swing.event")

Deprecated, for removal: This API element is subject to removal in a future version.

Listener for viewport events.
This class exists only for backward compatibility.
All its functionality has been moved into Handler.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ViewportChangeHandler()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a `ViewportChangeHandler`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `stateChanged(ChangeEvent e)`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Invoked when the target of the listener has changed its state.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ViewportChangeHandler

    public ViewportChangeHandler()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a `ViewportChangeHandler`.
* ## Method Details

  + ### stateChanged

    public void stateChanged([ChangeEvent](../../event/ChangeEvent.md "class in javax.swing.event") e)

    Deprecated, for removal: This API element is subject to removal in a future version.

    Description copied from interface: `ChangeListener`

    Invoked when the target of the listener has changed its state.

    Specified by:
    :   `stateChanged` in interface `ChangeListener`

    Parameters:
    :   `e` - a ChangeEvent object