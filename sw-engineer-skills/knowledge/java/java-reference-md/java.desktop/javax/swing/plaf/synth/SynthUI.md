Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Interface SynthUI

All Superinterfaces:
:   `SynthConstants`

All Known Implementing Classes:
:   `SynthButtonUI`, `SynthCheckBoxMenuItemUI`, `SynthCheckBoxUI`, `SynthColorChooserUI`, `SynthComboBoxUI`, `SynthDesktopIconUI`, `SynthDesktopPaneUI`, `SynthEditorPaneUI`, `SynthFormattedTextFieldUI`, `SynthInternalFrameUI`, `SynthLabelUI`, `SynthListUI`, `SynthMenuBarUI`, `SynthMenuItemUI`, `SynthMenuUI`, `SynthOptionPaneUI`, `SynthPanelUI`, `SynthPasswordFieldUI`, `SynthPopupMenuUI`, `SynthProgressBarUI`, `SynthRadioButtonMenuItemUI`, `SynthRadioButtonUI`, `SynthRootPaneUI`, `SynthScrollBarUI`, `SynthScrollPaneUI`, `SynthSeparatorUI`, `SynthSliderUI`, `SynthSpinnerUI`, `SynthSplitPaneUI`, `SynthTabbedPaneUI`, `SynthTableHeaderUI`, `SynthTableUI`, `SynthTextAreaUI`, `SynthTextFieldUI`, `SynthTextPaneUI`, `SynthToggleButtonUI`, `SynthToolBarUI`, `SynthToolTipUI`, `SynthTreeUI`, `SynthViewportUI`

---

public interface SynthUI
extends [SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

SynthUI is used to fetch the SynthContext for a particular Component.

Since:
:   1.7

* ## Field Summary

  ### Fields inherited from interface javax.swing.plaf.synth.[SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  `DEFAULT, DISABLED, ENABLED, FOCUSED, MOUSE_OVER, PRESSED, SELECTED`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `SynthContext`

  `getContext(JComponent c)`

  Returns the Context for the specified component.

  `void`

  `paintBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border.

* ## Method Details

  + ### getContext

    [SynthContext](SynthContext.md "class in javax.swing.plaf.synth") getContext([JComponent](../../JComponent.md "class in javax.swing") c)

    Returns the Context for the specified component.

    Parameters:
    :   `c` - Component requesting SynthContext.

    Returns:
    :   SynthContext describing component.
  + ### paintBorder

    void paintBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border.

    Parameters:
    :   `context` - a component context
    :   `g` - `Graphics` to paint on
    :   `x` - the X coordinate
    :   `y` - the Y coordinate
    :   `w` - width of the border
    :   `h` - height of the border