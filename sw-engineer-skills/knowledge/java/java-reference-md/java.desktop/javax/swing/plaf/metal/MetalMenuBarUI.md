Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalMenuBarUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.MenuBarUI](../MenuBarUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicMenuBarUI](../basic/BasicMenuBarUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalMenuBarUI

---

public class MetalMenuBarUI
extends [BasicMenuBarUI](../basic/BasicMenuBarUI.md "class in javax.swing.plaf.basic")

Metal implementation of `MenuBarUI`. This class is responsible
for providing the metal look and feel for `JMenuBar`s.

Since:
:   1.5

See Also:
:   * [`MenuBarUI`](../MenuBarUI.md "class in javax.swing.plaf")

* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicMenuBarUI](../basic/BasicMenuBarUI.md "class in javax.swing.plaf.basic")

  `changeListener, containerListener, menuBar`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalMenuBarUI()`

  Constructs a `MetalMenuBarUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent x)`

  Creates the `ComponentUI` implementation for the passed
  in component.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriate for the metal look and
  feel.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  `void`

  `update(Graphics g,
  JComponent c)`

  If necessary paints the background of the component, then
  invokes `paint`.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicMenuBarUI](../basic/BasicMenuBarUI.md "class in javax.swing.plaf.basic")

  `createChangeListener, createContainerListener, getMaximumSize, getMinimumSize, installDefaults, installKeyboardActions, installListeners, uninstallDefaults, uninstallKeyboardActions, uninstallListeners`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, getPreferredSize, paint`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalMenuBarUI

    public MetalMenuBarUI()

    Constructs a `MetalMenuBarUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Creates the `ComponentUI` implementation for the passed
    in component.

    Parameters:
    :   `x` - JComponent to create the ComponentUI implementation for

    Returns:
    :   ComponentUI implementation for `x`

    Throws:
    :   `NullPointerException` - if `x` is null
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Configures the specified component appropriate for the metal look and
    feel.

    Overrides:
    :   `installUI` in class `BasicMenuBarUI`

    Parameters:
    :   `c` - the component where this UI delegate is being installed

    Throws:
    :   `NullPointerException` - if `c` is null.

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Reverses configuration which was done on the specified component during
    `installUI`.

    Overrides:
    :   `uninstallUI` in class `BasicMenuBarUI`

    Parameters:
    :   `c` - the component where this UI delegate is being installed

    Throws:
    :   `NullPointerException` - if `c` is null.

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### update

    public void update([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    If necessary paints the background of the component, then
    invokes `paint`.

    Overrides:
    :   `update` in class `ComponentUI`

    Parameters:
    :   `g` - Graphics to paint to
    :   `c` - JComponent painting on

    Throws:
    :   `NullPointerException` - if `g` or `c` is
        null

    Since:
    :   1.5

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
        - [`ComponentUI.paint(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#paint(java.awt.Graphics,javax.swing.JComponent))