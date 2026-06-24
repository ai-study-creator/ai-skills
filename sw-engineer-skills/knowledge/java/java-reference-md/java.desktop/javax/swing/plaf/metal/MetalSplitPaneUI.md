Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalSplitPaneUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.SplitPaneUI](../SplitPaneUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicSplitPaneUI](../basic/BasicSplitPaneUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalSplitPaneUI

---

public class MetalSplitPaneUI
extends [BasicSplitPaneUI](../basic/BasicSplitPaneUI.md "class in javax.swing.plaf.basic")

Metal split pane.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicSplitPaneUI](../basic/BasicSplitPaneUI.md "class in javax.swing.plaf.basic")

  `BasicSplitPaneUI.BasicHorizontalLayoutManager, BasicSplitPaneUI.BasicVerticalLayoutManager, BasicSplitPaneUI.FocusHandler, BasicSplitPaneUI.KeyboardDownRightHandler, BasicSplitPaneUI.KeyboardEndHandler, BasicSplitPaneUI.KeyboardHomeHandler, BasicSplitPaneUI.KeyboardResizeToggleHandler, BasicSplitPaneUI.KeyboardUpLeftHandler, BasicSplitPaneUI.PropertyHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicSplitPaneUI](../basic/BasicSplitPaneUI.md "class in javax.swing.plaf.basic")

  `beginDragDividerLocation, divider, dividerResizeToggleKey, dividerSize, downKey, draggingHW, endKey, focusListener, homeKey, KEYBOARD_DIVIDER_MOVE_OFFSET, keyboardDownRightListener, keyboardEndListener, keyboardHomeListener, keyboardResizeToggleListener, keyboardUpLeftListener, layoutManager, leftKey, NON_CONTINUOUS_DIVIDER, nonContinuousLayoutDivider, propertyChangeListener, rightKey, splitPane, upKey`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalSplitPaneUI()`

  Constructs a `MetalSplitPaneUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `BasicSplitPaneDivider`

  `createDefaultDivider()`

  Creates the default divider.

  `static ComponentUI`

  `createUI(JComponent x)`

  Creates a new `MetalSplitPaneUI` instance

  ### Methods inherited from class javax.swing.plaf.basic.[BasicSplitPaneUI](../basic/BasicSplitPaneUI.md "class in javax.swing.plaf.basic")

  `createDefaultNonContinuousLayoutDivider, createFocusListener, createKeyboardDownRightListener, createKeyboardEndListener, createKeyboardHomeListener, createKeyboardResizeToggleListener, createKeyboardUpLeftListener, createPropertyChangeListener, dragDividerTo, finishDraggingTo, finishedPaintingChildren, getDivider, getDividerBorderSize, getDividerLocation, getInsets, getLastDragLocation, getMaximumDividerLocation, getMaximumSize, getMinimumDividerLocation, getMinimumSize, getNonContinuousLayoutDivider, getOrientation, getPreferredSize, getSplitPane, installDefaults, installKeyboardActions, installListeners, installUI, isContinuousLayout, paint, resetLayoutManager, resetToPreferredSizes, setContinuousLayout, setDividerLocation, setLastDragLocation, setNonContinuousLayoutDivider, setNonContinuousLayoutDivider, setOrientation, startDragging, uninstallDefaults, uninstallKeyboardActions, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, getBaseline, getBaselineResizeBehavior, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalSplitPaneUI

    public MetalSplitPaneUI()

    Constructs a `MetalSplitPaneUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") x)

    Creates a new `MetalSplitPaneUI` instance

    Parameters:
    :   `x` - a component

    Returns:
    :   a new `MetalSplitPaneUI` instance
  + ### createDefaultDivider

    public [BasicSplitPaneDivider](../basic/BasicSplitPaneDivider.md "class in javax.swing.plaf.basic") createDefaultDivider()

    Creates the default divider.

    Overrides:
    :   `createDefaultDivider` in class `BasicSplitPaneUI`

    Returns:
    :   the default divider