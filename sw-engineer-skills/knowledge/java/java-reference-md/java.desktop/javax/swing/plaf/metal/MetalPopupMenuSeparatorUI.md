Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalPopupMenuSeparatorUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.SeparatorUI](../SeparatorUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicSeparatorUI](../basic/BasicSeparatorUI.md "class in javax.swing.plaf.basic")

[javax.swing.plaf.metal.MetalSeparatorUI](MetalSeparatorUI.md "class in javax.swing.plaf.metal")

javax.swing.plaf.metal.MetalPopupMenuSeparatorUI

---

public class MetalPopupMenuSeparatorUI
extends [MetalSeparatorUI](MetalSeparatorUI.md "class in javax.swing.plaf.metal")

A Metal L&F implementation of PopupMenuSeparatorUI. This implementation
is a "combined" view/controller.

* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicSeparatorUI](../basic/BasicSeparatorUI.md "class in javax.swing.plaf.basic")

  `highlight, shadow`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalPopupMenuSeparatorUI()`

  Constructs a `MetalPopupMenuSeparatorUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a new `MetalPopupMenuSeparatorUI` instance.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the specified component's preferred size appropriate for
  the look and feel.

  `void`

  `paint(Graphics g,
  JComponent c)`

  Paints the specified component appropriately for the look and feel.

  ### Methods inherited from class javax.swing.plaf.metal.[MetalSeparatorUI](MetalSeparatorUI.md "class in javax.swing.plaf.metal")

  `installDefaults`

  ### Methods inherited from class javax.swing.plaf.basic.[BasicSeparatorUI](../basic/BasicSeparatorUI.md "class in javax.swing.plaf.basic")

  `getMaximumSize, getMinimumSize, installListeners, installUI, uninstallDefaults, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalPopupMenuSeparatorUI

    public MetalPopupMenuSeparatorUI()

    Constructs a `MetalPopupMenuSeparatorUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a new `MetalPopupMenuSeparatorUI` instance.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new `MetalPopupMenuSeparatorUI` instance
  + ### paint

    public void paint([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Paints the specified component appropriately for the look and feel.
    This method is invoked from the `ComponentUI.update` method when
    the specified component is being painted. Subclasses should override
    this method and use the specified `Graphics` object to
    render the content of the component.

    Overrides:
    :   `paint` in class `MetalSeparatorUI`

    Parameters:
    :   `g` - the `Graphics` context in which to paint
    :   `c` - the component being painted;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.update(java.awt.Graphics, javax.swing.JComponent)`](../ComponentUI.md#update(java.awt.Graphics,javax.swing.JComponent))
  + ### getPreferredSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getPreferredSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Returns the specified component's preferred size appropriate for
    the look and feel. If `null` is returned, the preferred
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method returns `null`.

    Overrides:
    :   `getPreferredSize` in class `MetalSeparatorUI`

    Parameters:
    :   `c` - the component whose preferred size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object containing given component's preferred
        size appropriate for the look and feel

    See Also:
    :   - [`JComponent.getPreferredSize()`](../../JComponent.md#getPreferredSize())
        - [`LayoutManager.preferredLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#preferredLayoutSize(java.awt.Container))