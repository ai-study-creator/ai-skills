Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalDesktopIconUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.DesktopIconUI](../DesktopIconUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicDesktopIconUI](../basic/BasicDesktopIconUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalDesktopIconUI

---

public class MetalDesktopIconUI
extends [BasicDesktopIconUI](../basic/BasicDesktopIconUI.md "class in javax.swing.plaf.basic")

Metal desktop icon.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicDesktopIconUI](../basic/BasicDesktopIconUI.md "class in javax.swing.plaf.basic")

  `BasicDesktopIconUI.MouseInputHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicDesktopIconUI](../basic/BasicDesktopIconUI.md "class in javax.swing.plaf.basic")

  `desktopIcon, frame, iconPane`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalDesktopIconUI()`

  Constructs a new instance of `MetalDesktopIconUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a new instance of `MetalDesktopIconUI`.

  `Dimension`

  `getMaximumSize(JComponent c)`

  Desktop icons can not be resized.

  `Dimension`

  `getMinimumSize(JComponent c)`

  Returns the specified component's minimum size appropriate for
  the look and feel.

  `Dimension`

  `getPreferredSize(JComponent c)`

  Returns the specified component's preferred size appropriate for
  the look and feel.

  `protected void`

  `installComponents()`

  Registers components.

  `protected void`

  `installDefaults()`

  Installs default properties.

  `protected void`

  `installListeners()`

  Registers listeners.

  `protected void`

  `uninstallComponents()`

  Unregisters components.

  `protected void`

  `uninstallListeners()`

  Unregisters listeners.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicDesktopIconUI](../basic/BasicDesktopIconUI.md "class in javax.swing.plaf.basic")

  `createMouseInputListener, deiconize, getInsets, installUI, uninstallDefaults, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalDesktopIconUI

    public MetalDesktopIconUI()

    Constructs a new instance of `MetalDesktopIconUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a new instance of `MetalDesktopIconUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new instance of `MetalDesktopIconUI`
  + ### installDefaults

    protected void installDefaults()

    Description copied from class: `BasicDesktopIconUI`

    Installs default properties.

    Overrides:
    :   `installDefaults` in class `BasicDesktopIconUI`
  + ### installComponents

    protected void installComponents()

    Description copied from class: `BasicDesktopIconUI`

    Registers components.

    Overrides:
    :   `installComponents` in class `BasicDesktopIconUI`
  + ### uninstallComponents

    protected void uninstallComponents()

    Description copied from class: `BasicDesktopIconUI`

    Unregisters components.

    Overrides:
    :   `uninstallComponents` in class `BasicDesktopIconUI`
  + ### installListeners

    protected void installListeners()

    Description copied from class: `BasicDesktopIconUI`

    Registers listeners.

    Overrides:
    :   `installListeners` in class `BasicDesktopIconUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Description copied from class: `BasicDesktopIconUI`

    Unregisters listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicDesktopIconUI`
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
    :   `getPreferredSize` in class `BasicDesktopIconUI`

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
  + ### getMinimumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMinimumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Returns the specified component's minimum size appropriate for
    the look and feel. If `null` is returned, the minimum
    size will be calculated by the component's layout manager instead
    (this is the preferred approach for any component with a specific
    layout manager installed). The default implementation of this
    method invokes `getPreferredSize` and returns that value.

    Overrides:
    :   `getMinimumSize` in class `BasicDesktopIconUI`

    Parameters:
    :   `c` - the component whose minimum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`JComponent.getMinimumSize()`](../../JComponent.md#getMinimumSize())
        - [`LayoutManager.minimumLayoutSize(java.awt.Container)`](../../../../java/awt/LayoutManager.md#minimumLayoutSize(java.awt.Container))
        - [`ComponentUI.getPreferredSize(javax.swing.JComponent)`](../ComponentUI.md#getPreferredSize(javax.swing.JComponent))
  + ### getMaximumSize

    public [Dimension](../../../../java/awt/Dimension.md "class in java.awt") getMaximumSize([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicDesktopIconUI`

    Desktop icons can not be resized. Therefore, we should always
    return the minimum size of the desktop icon.

    Overrides:
    :   `getMaximumSize` in class `BasicDesktopIconUI`

    Parameters:
    :   `c` - the component whose maximum size is being queried;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    Returns:
    :   a `Dimension` object or `null`

    See Also:
    :   - [`BasicDesktopIconUI.getMinimumSize(javax.swing.JComponent)`](../basic/BasicDesktopIconUI.md#getMinimumSize(javax.swing.JComponent))