Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Interface SynthConstants

All Known Subinterfaces:
:   `SynthUI`

All Known Implementing Classes:
:   `SynthButtonUI`, `SynthCheckBoxMenuItemUI`, `SynthCheckBoxUI`, `SynthColorChooserUI`, `SynthComboBoxUI`, `SynthDesktopIconUI`, `SynthDesktopPaneUI`, `SynthEditorPaneUI`, `SynthFormattedTextFieldUI`, `SynthInternalFrameUI`, `SynthLabelUI`, `SynthListUI`, `SynthMenuBarUI`, `SynthMenuItemUI`, `SynthMenuUI`, `SynthOptionPaneUI`, `SynthPanelUI`, `SynthPasswordFieldUI`, `SynthPopupMenuUI`, `SynthProgressBarUI`, `SynthRadioButtonMenuItemUI`, `SynthRadioButtonUI`, `SynthRootPaneUI`, `SynthScrollBarUI`, `SynthScrollPaneUI`, `SynthSeparatorUI`, `SynthSliderUI`, `SynthSpinnerUI`, `SynthSplitPaneUI`, `SynthTabbedPaneUI`, `SynthTableHeaderUI`, `SynthTableUI`, `SynthTextAreaUI`, `SynthTextFieldUI`, `SynthTextPaneUI`, `SynthToggleButtonUI`, `SynthToolBarUI`, `SynthToolTipUI`, `SynthTreeUI`, `SynthViewportUI`

---

public interface SynthConstants

Constants used by Synth. Not all Components support all states. A
Component will at least be in one of the primary states. That is, the
return value from `SynthContext.getComponentState()` will at
least be one of `ENABLED`, `MOUSE_OVER`,
`PRESSED` or `DISABLED`, and may also contain
`FOCUSED`, `SELECTED` or `DEFAULT`.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `DEFAULT`

  Indicates the region is the default.

  `static final int`

  `DISABLED`

  Primary state indicating the region is not enabled.

  `static final int`

  `ENABLED`

  Primary state indicating the component is enabled.

  `static final int`

  `FOCUSED`

  Indicates the region has focus.

  `static final int`

  `MOUSE_OVER`

  Primary state indicating the mouse is over the region.

  `static final int`

  `PRESSED`

  Primary state indicating the region is in a pressed state.

  `static final int`

  `SELECTED`

  Indicates the region is selected.

* ## Field Details

  + ### ENABLED

    static final int ENABLED

    Primary state indicating the component is enabled.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.synth.SynthConstants.ENABLED)
  + ### MOUSE\_OVER

    static final int MOUSE\_OVER

    Primary state indicating the mouse is over the region.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.synth.SynthConstants.MOUSE_OVER)
  + ### PRESSED

    static final int PRESSED

    Primary state indicating the region is in a pressed state. Pressed
    does not necessarily mean the user has pressed the mouse button.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.synth.SynthConstants.PRESSED)
  + ### DISABLED

    static final int DISABLED

    Primary state indicating the region is not enabled.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.synth.SynthConstants.DISABLED)
  + ### FOCUSED

    static final int FOCUSED

    Indicates the region has focus.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.synth.SynthConstants.FOCUSED)
  + ### SELECTED

    static final int SELECTED

    Indicates the region is selected.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.synth.SynthConstants.SELECTED)
  + ### DEFAULT

    static final int DEFAULT

    Indicates the region is the default. This is typically used for buttons
    to indicate this button is somehow special.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#javax.swing.plaf.synth.SynthConstants.DEFAULT)