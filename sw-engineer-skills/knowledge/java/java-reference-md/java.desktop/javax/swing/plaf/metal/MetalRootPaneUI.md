Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalRootPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.RootPaneUI](../RootPaneUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicRootPaneUI](../basic/BasicRootPaneUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalRootPaneUI

All Implemented Interfaces:
:   `PropertyChangeListener`, `EventListener`

---

public class MetalRootPaneUI
extends [BasicRootPaneUI](../basic/BasicRootPaneUI.md "class in javax.swing.plaf.basic")

Provides the metal look and feel implementation of `RootPaneUI`.

`MetalRootPaneUI` provides support for the
`windowDecorationStyle` property of `JRootPane`.
`MetalRootPaneUI` does this by way of installing a custom
`LayoutManager`, a private `Component` to render
the appropriate widgets, and a private `Border`. The
`LayoutManager` is always installed, regardless of the value of
the `windowDecorationStyle` property, but the
`Border` and `Component` are only installed/added if
the `windowDecorationStyle` is other than
`JRootPane.NONE`.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalRootPaneUI()`

  Constructs a `MetalRootPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Creates a UI for a `JRootPane`.

  `void`

  `installUI(JComponent c)`

  Invokes supers implementation of `installUI` to install
  the necessary state onto the passed in `JRootPane`
  to render the metal look and feel implementation of
  `RootPaneUI`.

  `void`

  `propertyChange(PropertyChangeEvent e)`

  Invoked when a property changes.

  `void`

  `uninstallUI(JComponent c)`

  Invokes supers implementation to uninstall any of its state.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicRootPaneUI](../basic/BasicRootPaneUI.md "class in javax.swing.plaf.basic")

  `installComponents, installDefaults, installKeyboardActions, installListeners, uninstallComponents, uninstallDefaults, uninstallKeyboardActions, uninstallListeners`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getMaximumSize, getMinimumSize, getPreferredSize, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalRootPaneUI

    public MetalRootPaneUI()

    Constructs a `MetalRootPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Creates a UI for a `JRootPane`.

    Parameters:
    :   `c` - the JRootPane the RootPaneUI will be created for

    Returns:
    :   the RootPaneUI implementation for the passed in JRootPane
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Invokes supers implementation of `installUI` to install
    the necessary state onto the passed in `JRootPane`
    to render the metal look and feel implementation of
    `RootPaneUI`. If
    the `windowDecorationStyle` property of the
    `JRootPane` is other than `JRootPane.NONE`,
    this will add a custom `Component` to render the widgets to
    `JRootPane`, as well as installing a custom
    `Border` and `LayoutManager` on the
    `JRootPane`.

    Overrides:
    :   `installUI` in class `BasicRootPaneUI`

    Parameters:
    :   `c` - the JRootPane to install state onto

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Invokes supers implementation to uninstall any of its state. This will
    also reset the `LayoutManager` of the `JRootPane`.
    If a `Component` has been added to the `JRootPane`
    to render the window decoration style, this method will remove it.
    Similarly, this will revert the Border and LayoutManager of the
    `JRootPane` to what it was before `installUI`
    was invoked.

    Overrides:
    :   `uninstallUI` in class `BasicRootPaneUI`

    Parameters:
    :   `c` - the JRootPane to uninstall state from

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### propertyChange

    public void propertyChange([PropertyChangeEvent](../../../../java/beans/PropertyChangeEvent.md "class in java.beans") e)

    Invoked when a property changes. `MetalRootPaneUI` is
    primarily interested in events originating from the
    `JRootPane` it has been installed on identifying the
    property `windowDecorationStyle`. If the
    `windowDecorationStyle` has changed to a value other
    than `JRootPane.NONE`, this will add a `Component`
    to the `JRootPane` to render the window decorations, as well
    as installing a `Border` on the `JRootPane`.
    On the other hand, if the `windowDecorationStyle` has
    changed to `JRootPane.NONE`, this will remove the
    `Component` that has been added to the `JRootPane`
    as well resetting the Border to what it was before
    `installUI` was invoked.

    Specified by:
    :   `propertyChange` in interface `PropertyChangeListener`

    Overrides:
    :   `propertyChange` in class `BasicRootPaneUI`

    Parameters:
    :   `e` - A PropertyChangeEvent object describing the event source
        and the property that has changed.