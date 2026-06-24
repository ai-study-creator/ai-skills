Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.metal](package-summary.md)

# Class MetalProgressBarUI

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.plaf.ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

[javax.swing.plaf.ProgressBarUI](../ProgressBarUI.md "class in javax.swing.plaf")

[javax.swing.plaf.basic.BasicProgressBarUI](../basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")

javax.swing.plaf.metal.MetalProgressBarUI

---

public class MetalProgressBarUI
extends [BasicProgressBarUI](../basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")

The Metal implementation of ProgressBarUI.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.plaf.basic.[BasicProgressBarUI](../basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")

  `BasicProgressBarUI.ChangeHandler`
* ## Field Summary

  ### Fields inherited from class javax.swing.plaf.basic.[BasicProgressBarUI](../basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")

  `boxRect, changeListener, progressBar`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MetalProgressBarUI()`

  Constructs a `MetalProgressBarUI`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static ComponentUI`

  `createUI(JComponent c)`

  Constructs an instance of `MetalProgressBarUI`.

  `void`

  `paintDeterminate(Graphics g,
  JComponent c)`

  Draws a bit of special highlighting on the progress bar.

  `void`

  `paintIndeterminate(Graphics g,
  JComponent c)`

  Draws a bit of special highlighting on the progress bar
  and bouncing box.

  ### Methods inherited from class javax.swing.plaf.basic.[BasicProgressBarUI](../basic/BasicProgressBarUI.md "class in javax.swing.plaf.basic")

  `getAmountFull, getAnimationIndex, getBaseline, getBaselineResizeBehavior, getBox, getBoxLength, getCellLength, getCellSpacing, getFrameCount, getMaximumSize, getMinimumSize, getPreferredInnerHorizontal, getPreferredInnerVertical, getPreferredSize, getSelectionBackground, getSelectionForeground, getStringPlacement, incrementAnimationIndex, installDefaults, installListeners, installUI, paint, paintString, setAnimationIndex, setCellLength, setCellSpacing, startAnimationTimer, stopAnimationTimer, uninstallDefaults, uninstallListeners, uninstallUI`

  ### Methods inherited from class javax.swing.plaf.[ComponentUI](../ComponentUI.md "class in javax.swing.plaf")

  `contains, getAccessibleChild, getAccessibleChildrenCount, update`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### MetalProgressBarUI

    public MetalProgressBarUI()

    Constructs a `MetalProgressBarUI`.
* ## Method Details

  + ### createUI

    public static [ComponentUI](../ComponentUI.md "class in javax.swing.plaf") createUI([JComponent](../../JComponent.md "class in javax.swing") c)

    Constructs an instance of `MetalProgressBarUI`.

    Parameters:
    :   `c` - a component

    Returns:
    :   an instance of `MetalProgressBarUI`
  + ### paintDeterminate

    public void paintDeterminate([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Draws a bit of special highlighting on the progress bar.
    The core painting is deferred to the BasicProgressBar's
    `paintDeterminate` method.

    Overrides:
    :   `paintDeterminate` in class `BasicProgressBarUI`

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `c` - a component

    Since:
    :   1.4

    See Also:
    :   - [`BasicProgressBarUI.paintIndeterminate(java.awt.Graphics, javax.swing.JComponent)`](../basic/BasicProgressBarUI.md#paintIndeterminate(java.awt.Graphics,javax.swing.JComponent))
  + ### paintIndeterminate

    public void paintIndeterminate([Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    [JComponent](../../JComponent.md "class in javax.swing") c)

    Draws a bit of special highlighting on the progress bar
    and bouncing box.
    The core painting is deferred to the BasicProgressBar's
    `paintIndeterminate` method.

    Overrides:
    :   `paintIndeterminate` in class `BasicProgressBarUI`

    Parameters:
    :   `g` - an instance of `Graphics`
    :   `c` - a component

    Since:
    :   1.4

    See Also:
    :   - [`BasicProgressBarUI.paintDeterminate(java.awt.Graphics, javax.swing.JComponent)`](../basic/BasicProgressBarUI.md#paintDeterminate(java.awt.Graphics,javax.swing.JComponent))