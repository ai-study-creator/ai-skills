Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalInternalFrameUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.InternalFrameUI](../InternalFrameUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicInternalFrameUI](../basic/BasicInternalFrameUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalInternalFrameUI

---

public class MetalInternalFrameUI
extends [BasicInternalFrameUI](../basic/BasicInternalFrameUI.md "class in javax.swing.plaf.basic")

Metal implementation of JInternalFrame.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicInternalFrameUI](../basic/BasicInternalFrameUI.md "class in javax.swing.plaf.basic")

  `BasicInternalFrameUI.BasicInternalFrameListener, BasicInternalFrameUI.BorderListener, BasicInternalFrameUI.ComponentHandler, BasicInternalFrameUI.GlassPaneDispatcher, BasicInternalFrameUI.InternalFrameLayout, BasicInternalFrameUI.InternalFramePropertyChangeListener`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected static String`

  `IS_PALETTE`

  The property `JInternalFrame.isPalette`.

  ### Fields inherited from class javax.swing.plaf.basic.[BasicInternalFrameUI](../basic/BasicInternalFrameUI.md "class in javax.swing.plaf.basic")

  `borderListener, componentListener, eastPane, frame, glassPaneDispatcher, internalFrameLayout, northPane, openMenuKey, propertyChangeListener, southPane, titlePane, westPane`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalInternalFrameUI(JInternalFrame b)`

  Constructs a new `MetalInternalFrameUI` instance.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected MouseInputAdapter`

  `createBorderListener(JInternalFrame w)`

  Returns the `MouseInputAdapter` that will be installed
  on the TitlePane.

  `protected JComponent`

  `createNorthPane(JInternalFrame w)`

  Creates the north pane.

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs a new `MetalInternalFrameUI` instance.

  `protected void`

  `installKeyboardActions()`

  Installs the keyboard actions.

  `protected void`

  `installListeners()`

  Installs the listeners.

  `void`

  `installUI(JComponent c)`

  Installs the UI.

  `void`

  `setPalette(boolean isPalette)`

  If `isPalette` is `true`, sets palette border and title

  `protected void`

  `uninstallComponents()`

  Uninstalls the components.

  `protected void`

  `uninstallKeyboardActions()`

  Uninstalls the keyboard actions.

  `protected void`

  `uninstallListeners()`

  Uninstalls the listeners.

  `void`

  `uninstallUI(JComponent c)`

  Uninstalls the UI.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicInternalFrameUI](../basic/BasicInternalFrameUI.md "class in javax.swing.plaf.basic")

  `activateFrame, closeFrame, createComponentListener, createDesktopManager, createEastPane, createGlassPaneDispatcher, createInternalFrameListener, createLayoutManager, createPropertyChangeListener, createSouthPane, createWestPane, deactivateFrame, deiconifyFrame, deinstallMouseHandlers, getDesktopManager, getEastPane, getMaximumSize, getMinimumSize, getNorthPane, getPreferredSize, getSouthPane, getWestPane, iconifyFrame, installComponents, installDefaults, installMouseHandlers, isKeyBindingActive, isKeyBindingRegistered, maximizeFrame, minimizeFrame, replacePane, setEastPane, setKeyBindingActive, setKeyBindingRegistered, setNorthPane, setSouthPane, setupMenuCloseKey, setupMenuOpenKey, setWestPane, uninstallDefaults`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### IS\_PALETTE

    protected static [String](../../../../../java.base/java/lang/String.md "class in java.lang") IS\_PALETTE

    The property `JInternalFrame.isPalette`.
* ## Constructor Details

  + ### MetalInternalFrameUI

    public MetalInternalFrameUI([JInternalFrame](../../JInternalFrame.md "class in javax.swing") b)

    Constructs a new `MetalInternalFrameUI` instance.

    Parameters:
    :   `b` - an internal frame
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs a new `MetalInternalFrameUI` instance.

    Parameters:
    :   `c` - a component

    Returns:
    :   a new `MetalInternalFrameUI` instance
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicInternalFrameUI`

    Installs the UI.

    Overrides:
    :   `installUI` in class `BasicInternalFrameUI`

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `BasicInternalFrameUI`

    Uninstalls the UI.

    Overrides:
    :   `uninstallUI` in class `BasicInternalFrameUI`

    Parameters:
    :   `c` - the component

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installListeners

    protected void installListeners()

    Description copied from class: `BasicInternalFrameUI`

    Installs the listeners.

    Overrides:
    :   `installListeners` in class `BasicInternalFrameUI`
  + ### uninstallListeners

    protected void uninstallListeners()

    Description copied from class: `BasicInternalFrameUI`

    Uninstalls the listeners.

    Overrides:
    :   `uninstallListeners` in class `BasicInternalFrameUI`
  + ### installKeyboardActions

    protected void installKeyboardActions()

    Description copied from class: `BasicInternalFrameUI`

    Installs the keyboard actions.

    Overrides:
    :   `installKeyboardActions` in class `BasicInternalFrameUI`
  + ### uninstallKeyboardActions

    protected void uninstallKeyboardActions()

    Description copied from class: `BasicInternalFrameUI`

    Uninstalls the keyboard actions.

    Overrides:
    :   `uninstallKeyboardActions` in class `BasicInternalFrameUI`
  + ### uninstallComponents

    protected void uninstallComponents()

    Description copied from class: `BasicInternalFrameUI`

    Uninstalls the components.

    Overrides:
    :   `uninstallComponents` in class `BasicInternalFrameUI`
  + ### createNorthPane

    protected [JComponent](../../JComponent.md "class in javax.swing") createNorthPane([JInternalFrame](../../JInternalFrame.md "class in javax.swing") w)

    Description copied from class: `BasicInternalFrameUI`

    Creates the north pane.

    Overrides:
    :   `createNorthPane` in class `BasicInternalFrameUI`

    Parameters:
    :   `w` - the internal frame

    Returns:
    :   the north pane
  + ### setPalette

    public void setPalette(boolean isPalette)

    If `isPalette` is `true`, sets palette border and title

    Parameters:
    :   `isPalette` - if `true`, sets palette border and title
  + ### createBorderListener

    protected [MouseInputAdapter](../../event/MouseInputAdapter.md "class in javax.swing.event") createBorderListener([JInternalFrame](../../JInternalFrame.md "class in javax.swing") w)

    Returns the `MouseInputAdapter` that will be installed
    on the TitlePane.

    Overrides:
    :   `createBorderListener` in class `BasicInternalFrameUI`

    Parameters:
    :   `w` - the `JInternalFrame`

    Returns:
    :   the `MouseInputAdapter` that will be installed
        on the TitlePane.

    Since:
    :   1.6