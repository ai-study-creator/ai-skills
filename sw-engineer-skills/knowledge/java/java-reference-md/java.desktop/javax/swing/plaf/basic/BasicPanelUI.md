Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.basic](package-summary.md)

# Class BasicPanelUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.PanelUI](../PanelUI.md "class in javax.swing.plaf")

javax.swing.plaf.basic.BasicPanelUI

Direct Known Subclasses:
:   `SynthPanelUI`

---

public class BasicPanelUI
extends [PanelUI](../PanelUI.md "class in javax.swing.plaf")

BasicPanel implementation

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicPanelUI()`

  Constructs a `BasicPanelUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Returns an instance of `BasicPanelUI`.

  `int`

  `getBaseline(JComponent c,
  int width,
  int height)`

  Returns the baseline.

  `Component.BaselineResizeBehavior`

  `getBaselineResizeBehavior(JComponent c)`

  Returns an enum indicating how the baseline of the component
  changes as the size changes.

  `protected void`

  `installDefaults(JPanel p)`

  Method for installing panel properties.

  `void`

  `installUI(JComponent c)`

  Configures the specified component appropriately for the look and feel.

  `protected void`

  `uninstallDefaults(JPanel p)`

  Method for uninstalling panel properties.

  `void`

  `uninstallUI(JComponent c)`

  Reverses configuration which was done on the specified component during
  `installUI`.

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getMaximumSize, getMinimumSize, getPreferredSize, paint, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### BasicPanelUI

    public BasicPanelUI()

    Constructs a `BasicPanelUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an instance of `BasicPanelUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `BasicPanelUI`
  + ### installUI

    public void installUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Configures the specified component appropriately for the look and feel.
    This method is invoked when the `ComponentUI` instance is being installed
    as the UI delegate on the specified component. This method should
    completely configure the component for the look and feel,
    including the following:
    1. Install default property values for color, fonts, borders,
       icons, opacity, etc. on the component. Whenever possible,
       property values initialized by the client program should *not*
       be overridden.+ Install a `LayoutManager` on the component if necessary.+ Create/add any required sub-components to the component.+ Create/install event listeners on the component.+ Create/install a `PropertyChangeListener` on the component in order
               to detect and respond to component property changes appropriately.+ Install keyboard UI (mnemonics, traversal, etc.) on the component.+ Initialize any appropriate instance data.

    Overrides:
    :   `installUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component where this UI delegate is being installed

    See Also:
    :   - [`ComponentUI.uninstallUI(javax.swing.JComponent)`](../ComponentUI.md#uninstallUI(javax.swing.JComponent))
        - [`JComponent.setUI(javax.swing.plaf.ComponentUI)`](../../JComponent.md#setUI(javax.swing.plaf.ComponentUI))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### uninstallUI

    public void uninstallUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Description copied from class: `ComponentUI`

    Reverses configuration which was done on the specified component during
    `installUI`. This method is invoked when this
    `UIComponent` instance is being removed as the UI delegate
    for the specified component. This method should undo the
    configuration performed in `installUI`, being careful to
    leave the `JComponent` instance in a clean state (no
    extraneous listeners, look-and-feel-specific property objects, etc.).
    This should include the following:
    1. Remove any UI-set borders from the component.+ Remove any UI-set layout managers on the component.+ Remove any UI-added sub-components from the component.+ Remove any UI-added event/property listeners from the component.+ Remove any UI-installed keyboard UI from the component.+ Nullify any allocated instance data objects to allow for GC.

    Overrides:
    :   `uninstallUI` in class `ComponentUI`

    Parameters:
    :   `c` - the component from which this UI delegate is being removed;
        this argument is often ignored,
        but might be used if the UI object is stateless
        and shared by multiple components

    See Also:
    :   - [`ComponentUI.installUI(javax.swing.JComponent)`](../ComponentUI.md#installUI(javax.swing.JComponent))
        - [`JComponent.updateUI()`](../../JComponent.md#updateUI())
  + ### installDefaults

    protected void installDefaults([JPanel](../../JPanel.md "class in javax.swing") p)

    Method for installing panel properties.

    Parameters:
    :   `p` - an instance of `JPanel`
  + ### uninstallDefaults

    protected void uninstallDefaults([JPanel](../../JPanel.md "class in javax.swing") p)

    Method for uninstalling panel properties.

    Parameters:
    :   `p` - an instance of `JPanel`
  + ### getBaseline

    public int getBaseline([JComponent](../../JComponent.md "class in javax.swing") c,
    int width,
    int height)

    Returns the baseline.

    Overrides:
    :   `getBaseline` in class `ComponentUI`

    Parameters:
    :   `c` - `JComponent` baseline is being requested for
    :   `width` - the width to get the baseline for
    :   `height` - the height to get the baseline for

    Returns:
    :   baseline or a value < 0 indicating there is no reasonable
        baseline

    Throws:
    :   `NullPointerException` - if `c` is `null`
    :   `IllegalArgumentException` - if width or height is < 0

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../../JComponent.md#getBaseline(int,int))
  + ### getBaselineResizeBehavior

    public [Component.BaselineResizeBehavior](../../../../java/awt/Component.BaselineResizeBehavior.md "enum class in java.awt") getBaselineResizeBehavior([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns an enum indicating how the baseline of the component
    changes as the size changes.

    Overrides:
    :   `getBaselineResizeBehavior` in class `ComponentUI`

    Parameters:
    :   `c` - `JComponent` to return baseline resize behavior for

    Returns:
    :   an enum indicating how the baseline changes as the component
        size changes

    Throws:
    :   `NullPointerException` - if `c` is `null`

    Since:
    :   1.6

    See Also:
    :   - [`JComponent.getBaseline(int, int)`](../../JComponent.md#getBaseline(int,int))