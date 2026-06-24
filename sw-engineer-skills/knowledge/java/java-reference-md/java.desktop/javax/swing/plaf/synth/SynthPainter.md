Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.plaf.synth](package-summary.md)

# Class SynthPainter

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.plaf.synth.SynthPainter

---

public abstract class SynthPainter
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

`SynthPainter` is used for painting portions of
`JComponent`s. At a minimum each `JComponent`
has two paint methods: one for the border and one for the background. Some
`JComponent`s have more than one `Region`, and as
a consequence more paint methods.

Instances of `SynthPainter` are obtained from the
[`SynthStyle.getPainter(javax.swing.plaf.synth.SynthContext)`](SynthStyle.md#getPainter(javax.swing.plaf.synth.SynthContext)) method.

You typically supply a `SynthPainter` by way of Synth's
[file](doc-files/synthFileFormat.md) format. The following
example registers a painter for all `JButton`s that will
render the image `myImage.png`:

```
  <style id="buttonStyle">
    <imagePainter path="myImage.png" sourceInsets="2 2 2 2"
                  paintCenter="true" stretch="true"/>
    <insets top="2" bottom="2" left="2" right="2"/>
  </style>
  <bind style="buttonStyle" type="REGION" key="button"/>
```

`SynthPainter` is abstract in so far as it does no painting,
all the methods
are empty. While none of these methods are typed to throw an exception,
subclasses can assume that valid arguments are passed in, and if not
they can throw a `NullPointerException` or
`IllegalArgumentException` in response to invalid arguments.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SynthPainter()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `paintArrowButtonBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of an arrow button.

  `void`

  `paintArrowButtonBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of an arrow button.

  `void`

  `paintArrowButtonForeground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int direction)`

  Paints the foreground of an arrow button.

  `void`

  `paintButtonBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a button.

  `void`

  `paintButtonBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a button.

  `void`

  `paintCheckBoxBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a check box.

  `void`

  `paintCheckBoxBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a check box.

  `void`

  `paintCheckBoxMenuItemBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a check box menu item.

  `void`

  `paintCheckBoxMenuItemBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a check box menu item.

  `void`

  `paintColorChooserBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a color chooser.

  `void`

  `paintColorChooserBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a color chooser.

  `void`

  `paintComboBoxBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a combo box.

  `void`

  `paintComboBoxBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a combo box.

  `void`

  `paintDesktopIconBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a desktop icon.

  `void`

  `paintDesktopIconBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a desktop icon.

  `void`

  `paintDesktopPaneBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a desktop pane.

  `void`

  `paintDesktopPaneBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a desktop pane.

  `void`

  `paintEditorPaneBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of an editor pane.

  `void`

  `paintEditorPaneBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of an editor pane.

  `void`

  `paintFileChooserBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a file chooser.

  `void`

  `paintFileChooserBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a file chooser.

  `void`

  `paintFormattedTextFieldBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a formatted text field.

  `void`

  `paintFormattedTextFieldBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a formatted text field.

  `void`

  `paintInternalFrameBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of an internal frame.

  `void`

  `paintInternalFrameBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of an internal frame.

  `void`

  `paintInternalFrameTitlePaneBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of an internal frame title pane.

  `void`

  `paintInternalFrameTitlePaneBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of an internal frame title pane.

  `void`

  `paintLabelBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a label.

  `void`

  `paintLabelBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a label.

  `void`

  `paintListBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a list.

  `void`

  `paintListBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a list.

  `void`

  `paintMenuBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a menu.

  `void`

  `paintMenuBarBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a menu bar.

  `void`

  `paintMenuBarBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a menu bar.

  `void`

  `paintMenuBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a menu.

  `void`

  `paintMenuItemBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a menu item.

  `void`

  `paintMenuItemBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a menu item.

  `void`

  `paintOptionPaneBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of an option pane.

  `void`

  `paintOptionPaneBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of an option pane.

  `void`

  `paintPanelBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a panel.

  `void`

  `paintPanelBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a panel.

  `void`

  `paintPasswordFieldBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a password field.

  `void`

  `paintPasswordFieldBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a password field.

  `void`

  `paintPopupMenuBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a popup menu.

  `void`

  `paintPopupMenuBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a popup menu.

  `void`

  `paintProgressBarBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a progress bar.

  `void`

  `paintProgressBarBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of a progress bar.

  `void`

  `paintProgressBarBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a progress bar.

  `void`

  `paintProgressBarBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of a progress bar.

  `void`

  `paintProgressBarForeground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the foreground of a progress bar.

  `void`

  `paintRadioButtonBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a radio button.

  `void`

  `paintRadioButtonBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a radio button.

  `void`

  `paintRadioButtonMenuItemBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a radio button menu item.

  `void`

  `paintRadioButtonMenuItemBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a radio button menu item.

  `void`

  `paintRootPaneBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a root pane.

  `void`

  `paintRootPaneBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a root pane.

  `void`

  `paintScrollBarBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a scrollbar.

  `void`

  `paintScrollBarBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of a scrollbar.

  `void`

  `paintScrollBarBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a scrollbar.

  `void`

  `paintScrollBarBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of a scrollbar.

  `void`

  `paintScrollBarThumbBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of the thumb of a scrollbar.

  `void`

  `paintScrollBarThumbBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of the thumb of a scrollbar.

  `void`

  `paintScrollBarTrackBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of the track of a scrollbar.

  `void`

  `paintScrollBarTrackBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of the track of a scrollbar.

  `void`

  `paintScrollBarTrackBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of the track of a scrollbar.

  `void`

  `paintScrollBarTrackBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of the track of a scrollbar.

  `void`

  `paintScrollPaneBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a scroll pane.

  `void`

  `paintScrollPaneBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a scroll pane.

  `void`

  `paintSeparatorBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a separator.

  `void`

  `paintSeparatorBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of a separator.

  `void`

  `paintSeparatorBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a separator.

  `void`

  `paintSeparatorBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of a separator.

  `void`

  `paintSeparatorForeground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the foreground of a separator.

  `void`

  `paintSliderBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a slider.

  `void`

  `paintSliderBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of a slider.

  `void`

  `paintSliderBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a slider.

  `void`

  `paintSliderBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of a slider.

  `void`

  `paintSliderThumbBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of the thumb of a slider.

  `void`

  `paintSliderThumbBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of the thumb of a slider.

  `void`

  `paintSliderTrackBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of the track of a slider.

  `void`

  `paintSliderTrackBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of the track of a slider.

  `void`

  `paintSliderTrackBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of the track of a slider.

  `void`

  `paintSliderTrackBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of the track of a slider.

  `void`

  `paintSpinnerBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a spinner.

  `void`

  `paintSpinnerBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a spinner.

  `void`

  `paintSplitPaneBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a split pane.

  `void`

  `paintSplitPaneBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a split pane.

  `void`

  `paintSplitPaneDividerBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of the divider of a split pane.

  `void`

  `paintSplitPaneDividerBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of the divider of a split pane.

  `void`

  `paintSplitPaneDividerForeground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the foreground of the divider of a split pane.

  `void`

  `paintSplitPaneDragDivider(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the divider, when the user is dragging the divider, of a
  split pane.

  `void`

  `paintTabbedPaneBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a tabbed pane.

  `void`

  `paintTabbedPaneBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a tabbed pane.

  `void`

  `paintTabbedPaneContentBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of the area that contains the content of the
  selected tab of a tabbed pane.

  `void`

  `paintTabbedPaneContentBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of the area that contains the content of the
  selected tab of a tabbed pane.

  `void`

  `paintTabbedPaneTabAreaBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of the area behind the tabs of a tabbed pane.

  `void`

  `paintTabbedPaneTabAreaBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of the area behind the tabs of a tabbed pane.

  `void`

  `paintTabbedPaneTabAreaBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of the area behind the tabs of a tabbed pane.

  `void`

  `paintTabbedPaneTabAreaBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of the area behind the tabs of a tabbed pane.

  `void`

  `paintTabbedPaneTabBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int tabIndex)`

  Paints the background of a tab of a tabbed pane.

  `void`

  `paintTabbedPaneTabBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int tabIndex,
  int orientation)`

  Paints the background of a tab of a tabbed pane.

  `void`

  `paintTabbedPaneTabBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int tabIndex)`

  Paints the border of a tab of a tabbed pane.

  `void`

  `paintTabbedPaneTabBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int tabIndex,
  int orientation)`

  Paints the border of a tab of a tabbed pane.

  `void`

  `paintTableBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a table.

  `void`

  `paintTableBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a table.

  `void`

  `paintTableHeaderBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of the header of a table.

  `void`

  `paintTableHeaderBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of the header of a table.

  `void`

  `paintTextAreaBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a text area.

  `void`

  `paintTextAreaBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a text area.

  `void`

  `paintTextFieldBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a text field.

  `void`

  `paintTextFieldBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a text field.

  `void`

  `paintTextPaneBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a text pane.

  `void`

  `paintTextPaneBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a text pane.

  `void`

  `paintToggleButtonBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a toggle button.

  `void`

  `paintToggleButtonBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a toggle button.

  `void`

  `paintToolBarBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a tool bar.

  `void`

  `paintToolBarBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of a tool bar.

  `void`

  `paintToolBarBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a tool bar.

  `void`

  `paintToolBarBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of a tool bar.

  `void`

  `paintToolBarContentBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of the tool bar's content area.

  `void`

  `paintToolBarContentBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of the tool bar's content area.

  `void`

  `paintToolBarContentBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of the content area of a tool bar.

  `void`

  `paintToolBarContentBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of the content area of a tool bar.

  `void`

  `paintToolBarDragWindowBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of the window containing the tool bar when it
  has been detached from its primary frame.

  `void`

  `paintToolBarDragWindowBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the background of the window containing the tool bar when it
  has been detached from its primary frame.

  `void`

  `paintToolBarDragWindowBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of the window containing the tool bar when it
  has been detached from it's primary frame.

  `void`

  `paintToolBarDragWindowBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h,
  int orientation)`

  Paints the border of the window containing the tool bar when it
  has been detached from it's primary frame.

  `void`

  `paintToolTipBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a tool tip.

  `void`

  `paintToolTipBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a tool tip.

  `void`

  `paintTreeBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of a tree.

  `void`

  `paintTreeBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a tree.

  `void`

  `paintTreeCellBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of the row containing a cell in a tree.

  `void`

  `paintTreeCellBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of the row containing a cell in a tree.

  `void`

  `paintTreeCellFocus(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the focus indicator for a cell in a tree when it has focus.

  `void`

  `paintViewportBackground(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the background of the viewport.

  `void`

  `paintViewportBorder(SynthContext context,
  Graphics g,
  int x,
  int y,
  int w,
  int h)`

  Paints the border of a viewport.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SynthPainter

    protected SynthPainter()

    Constructor for subclasses to call.
* ## Method Details

  + ### paintArrowButtonBackground

    public void paintArrowButtonBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of an arrow button. Arrow buttons are created by
    some components, such as `JScrollBar`.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintArrowButtonBorder

    public void paintArrowButtonBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of an arrow button. Arrow buttons are created by
    some components, such as `JScrollBar`.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintArrowButtonForeground

    public void paintArrowButtonForeground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int direction)

    Paints the foreground of an arrow button. This method is responsible
    for drawing a graphical representation of a direction, typically
    an arrow. Arrow buttons are created by
    some components, such as `JScrollBar`

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `direction` - One of SwingConstants.NORTH, SwingConstants.SOUTH
        SwingConstants.EAST or SwingConstants.WEST
  + ### paintButtonBackground

    public void paintButtonBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a button.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintButtonBorder

    public void paintButtonBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a button.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintCheckBoxMenuItemBackground

    public void paintCheckBoxMenuItemBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a check box menu item.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintCheckBoxMenuItemBorder

    public void paintCheckBoxMenuItemBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a check box menu item.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintCheckBoxBackground

    public void paintCheckBoxBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a check box.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintCheckBoxBorder

    public void paintCheckBoxBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a check box.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintColorChooserBackground

    public void paintColorChooserBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a color chooser.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintColorChooserBorder

    public void paintColorChooserBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a color chooser.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintComboBoxBackground

    public void paintComboBoxBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a combo box.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintComboBoxBorder

    public void paintComboBoxBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a combo box.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintDesktopIconBackground

    public void paintDesktopIconBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a desktop icon.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintDesktopIconBorder

    public void paintDesktopIconBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a desktop icon.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintDesktopPaneBackground

    public void paintDesktopPaneBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a desktop pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintDesktopPaneBorder

    public void paintDesktopPaneBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a desktop pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintEditorPaneBackground

    public void paintEditorPaneBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of an editor pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintEditorPaneBorder

    public void paintEditorPaneBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of an editor pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintFileChooserBackground

    public void paintFileChooserBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a file chooser.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintFileChooserBorder

    public void paintFileChooserBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a file chooser.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintFormattedTextFieldBackground

    public void paintFormattedTextFieldBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a formatted text field.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintFormattedTextFieldBorder

    public void paintFormattedTextFieldBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a formatted text field.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintInternalFrameTitlePaneBackground

    public void paintInternalFrameTitlePaneBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of an internal frame title pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintInternalFrameTitlePaneBorder

    public void paintInternalFrameTitlePaneBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of an internal frame title pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintInternalFrameBackground

    public void paintInternalFrameBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of an internal frame.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintInternalFrameBorder

    public void paintInternalFrameBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of an internal frame.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintLabelBackground

    public void paintLabelBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a label.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintLabelBorder

    public void paintLabelBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a label.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintListBackground

    public void paintListBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a list.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintListBorder

    public void paintListBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a list.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintMenuBarBackground

    public void paintMenuBarBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a menu bar.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintMenuBarBorder

    public void paintMenuBarBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a menu bar.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintMenuItemBackground

    public void paintMenuItemBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a menu item.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintMenuItemBorder

    public void paintMenuItemBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a menu item.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintMenuBackground

    public void paintMenuBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a menu.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintMenuBorder

    public void paintMenuBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a menu.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintOptionPaneBackground

    public void paintOptionPaneBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of an option pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintOptionPaneBorder

    public void paintOptionPaneBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of an option pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintPanelBackground

    public void paintPanelBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a panel.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintPanelBorder

    public void paintPanelBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a panel.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintPasswordFieldBackground

    public void paintPasswordFieldBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a password field.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintPasswordFieldBorder

    public void paintPasswordFieldBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a password field.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintPopupMenuBackground

    public void paintPopupMenuBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a popup menu.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintPopupMenuBorder

    public void paintPopupMenuBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a popup menu.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintProgressBarBackground

    public void paintProgressBarBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a progress bar.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintProgressBarBackground

    public void paintProgressBarBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of a progress bar. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - one of `JProgressBar.HORIZONTAL` or
        `JProgressBar.VERTICAL`

    Since:
    :   1.6
  + ### paintProgressBarBorder

    public void paintProgressBarBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a progress bar.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintProgressBarBorder

    public void paintProgressBarBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of a progress bar. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - one of `JProgressBar.HORIZONTAL` or
        `JProgressBar.VERTICAL`

    Since:
    :   1.6
  + ### paintProgressBarForeground

    public void paintProgressBarForeground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the foreground of a progress bar. is responsible for
    providing an indication of the progress of the progress bar.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - one of `JProgressBar.HORIZONTAL` or
        `JProgressBar.VERTICAL`
  + ### paintRadioButtonMenuItemBackground

    public void paintRadioButtonMenuItemBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a radio button menu item.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintRadioButtonMenuItemBorder

    public void paintRadioButtonMenuItemBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a radio button menu item.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintRadioButtonBackground

    public void paintRadioButtonBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a radio button.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintRadioButtonBorder

    public void paintRadioButtonBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a radio button.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintRootPaneBackground

    public void paintRootPaneBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a root pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintRootPaneBorder

    public void paintRootPaneBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a root pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintScrollBarBackground

    public void paintScrollBarBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a scrollbar.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintScrollBarBackground

    public void paintScrollBarBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of a scrollbar. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - Orientation of the JScrollBar, one of
        `JScrollBar.HORIZONTAL` or
        `JScrollBar.VERTICAL`

    Since:
    :   1.6
  + ### paintScrollBarBorder

    public void paintScrollBarBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a scrollbar.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintScrollBarBorder

    public void paintScrollBarBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of a scrollbar. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - Orientation of the JScrollBar, one of
        `JScrollBar.HORIZONTAL` or
        `JScrollBar.VERTICAL`

    Since:
    :   1.6
  + ### paintScrollBarThumbBackground

    public void paintScrollBarThumbBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of the thumb of a scrollbar. The thumb provides
    a graphical indication as to how much of the Component is visible in a
    `JScrollPane`.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - Orientation of the JScrollBar, one of
        `JScrollBar.HORIZONTAL` or
        `JScrollBar.VERTICAL`
  + ### paintScrollBarThumbBorder

    public void paintScrollBarThumbBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of the thumb of a scrollbar. The thumb provides
    a graphical indication as to how much of the Component is visible in a
    `JScrollPane`.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - Orientation of the JScrollBar, one of
        `JScrollBar.HORIZONTAL` or
        `JScrollBar.VERTICAL`
  + ### paintScrollBarTrackBackground

    public void paintScrollBarTrackBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of the track of a scrollbar. The track contains
    the thumb.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintScrollBarTrackBackground

    public void paintScrollBarTrackBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of the track of a scrollbar. The track contains
    the thumb. This implementation invokes the method of the same name without
    the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - Orientation of the JScrollBar, one of
        `JScrollBar.HORIZONTAL` or
        `JScrollBar.VERTICAL`

    Since:
    :   1.6
  + ### paintScrollBarTrackBorder

    public void paintScrollBarTrackBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of the track of a scrollbar. The track contains
    the thumb.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintScrollBarTrackBorder

    public void paintScrollBarTrackBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of the track of a scrollbar. The track contains
    the thumb. This implementation invokes the method of the same name without
    the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - Orientation of the JScrollBar, one of
        `JScrollBar.HORIZONTAL` or
        `JScrollBar.VERTICAL`

    Since:
    :   1.6
  + ### paintScrollPaneBackground

    public void paintScrollPaneBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a scroll pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintScrollPaneBorder

    public void paintScrollPaneBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a scroll pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSeparatorBackground

    public void paintSeparatorBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a separator.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSeparatorBackground

    public void paintSeparatorBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of a separator. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSeparator.HORIZONTAL` or
        `JSeparator.VERTICAL`

    Since:
    :   1.6
  + ### paintSeparatorBorder

    public void paintSeparatorBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a separator.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSeparatorBorder

    public void paintSeparatorBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of a separator. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSeparator.HORIZONTAL` or
        `JSeparator.VERTICAL`

    Since:
    :   1.6
  + ### paintSeparatorForeground

    public void paintSeparatorForeground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the foreground of a separator.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSeparator.HORIZONTAL` or
        `JSeparator.VERTICAL`
  + ### paintSliderBackground

    public void paintSliderBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a slider.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSliderBackground

    public void paintSliderBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of a slider. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSlider.HORIZONTAL` or
        `JSlider.VERTICAL`

    Since:
    :   1.6
  + ### paintSliderBorder

    public void paintSliderBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a slider.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSliderBorder

    public void paintSliderBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of a slider. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSlider.HORIZONTAL` or
        `JSlider.VERTICAL`

    Since:
    :   1.6
  + ### paintSliderThumbBackground

    public void paintSliderThumbBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of the thumb of a slider.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSlider.HORIZONTAL` or
        `JSlider.VERTICAL`
  + ### paintSliderThumbBorder

    public void paintSliderThumbBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of the thumb of a slider.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSlider.HORIZONTAL` or
        `JSlider.VERTICAL`
  + ### paintSliderTrackBackground

    public void paintSliderTrackBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of the track of a slider.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSliderTrackBackground

    public void paintSliderTrackBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of the track of a slider. This implementation invokes
    the method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSlider.HORIZONTAL` or
        `JSlider.VERTICAL`

    Since:
    :   1.6
  + ### paintSliderTrackBorder

    public void paintSliderTrackBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of the track of a slider.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSliderTrackBorder

    public void paintSliderTrackBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of the track of a slider. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSlider.HORIZONTAL` or
        `JSlider.VERTICAL`

    Since:
    :   1.6
  + ### paintSpinnerBackground

    public void paintSpinnerBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a spinner.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSpinnerBorder

    public void paintSpinnerBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a spinner.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSplitPaneDividerBackground

    public void paintSplitPaneDividerBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of the divider of a split pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSplitPaneDividerBackground

    public void paintSplitPaneDividerBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of the divider of a split pane. This implementation
    invokes the method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSplitPane.HORIZONTAL_SPLIT` or
        `JSplitPane.VERTICAL_SPLIT`

    Since:
    :   1.6
  + ### paintSplitPaneDividerForeground

    public void paintSplitPaneDividerForeground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the foreground of the divider of a split pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSplitPane.HORIZONTAL_SPLIT` or
        `JSplitPane.VERTICAL_SPLIT`
  + ### paintSplitPaneDragDivider

    public void paintSplitPaneDragDivider([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the divider, when the user is dragging the divider, of a
    split pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JSplitPane.HORIZONTAL_SPLIT` or
        `JSplitPane.VERTICAL_SPLIT`
  + ### paintSplitPaneBackground

    public void paintSplitPaneBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a split pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintSplitPaneBorder

    public void paintSplitPaneBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a split pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTabbedPaneBackground

    public void paintTabbedPaneBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a tabbed pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTabbedPaneBorder

    public void paintTabbedPaneBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a tabbed pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTabbedPaneTabAreaBackground

    public void paintTabbedPaneTabAreaBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of the area behind the tabs of a tabbed pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTabbedPaneTabAreaBackground

    public void paintTabbedPaneTabAreaBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of the area behind the tabs of a tabbed pane.
    This implementation invokes the method of the same name without the
    orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JTabbedPane.TOP`,
        `JTabbedPane.LEFT`,
        `JTabbedPane.BOTTOM`, or
        `JTabbedPane.RIGHT`

    Since:
    :   1.6
  + ### paintTabbedPaneTabAreaBorder

    public void paintTabbedPaneTabAreaBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of the area behind the tabs of a tabbed pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTabbedPaneTabAreaBorder

    public void paintTabbedPaneTabAreaBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of the area behind the tabs of a tabbed pane. This
    implementation invokes the method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JTabbedPane.TOP`,
        `JTabbedPane.LEFT`,
        `JTabbedPane.BOTTOM`, or
        `JTabbedPane.RIGHT`

    Since:
    :   1.6
  + ### paintTabbedPaneTabBackground

    public void paintTabbedPaneTabBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int tabIndex)

    Paints the background of a tab of a tabbed pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `tabIndex` - Index of tab being painted.
  + ### paintTabbedPaneTabBackground

    public void paintTabbedPaneTabBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int tabIndex,
    int orientation)

    Paints the background of a tab of a tabbed pane. This implementation
    invokes the method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `tabIndex` - Index of tab being painted.
    :   `orientation` - One of `JTabbedPane.TOP`,
        `JTabbedPane.LEFT`,
        `JTabbedPane.BOTTOM`, or
        `JTabbedPane.RIGHT`

    Since:
    :   1.6
  + ### paintTabbedPaneTabBorder

    public void paintTabbedPaneTabBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int tabIndex)

    Paints the border of a tab of a tabbed pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `tabIndex` - Index of tab being painted.
  + ### paintTabbedPaneTabBorder

    public void paintTabbedPaneTabBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int tabIndex,
    int orientation)

    Paints the border of a tab of a tabbed pane. This implementation invokes
    the method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `tabIndex` - Index of tab being painted.
    :   `orientation` - One of `JTabbedPane.TOP`,
        `JTabbedPane.LEFT`,
        `JTabbedPane.BOTTOM`, or
        `JTabbedPane.RIGHT`

    Since:
    :   1.6
  + ### paintTabbedPaneContentBackground

    public void paintTabbedPaneContentBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of the area that contains the content of the
    selected tab of a tabbed pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTabbedPaneContentBorder

    public void paintTabbedPaneContentBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of the area that contains the content of the
    selected tab of a tabbed pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTableHeaderBackground

    public void paintTableHeaderBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of the header of a table.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTableHeaderBorder

    public void paintTableHeaderBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of the header of a table.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTableBackground

    public void paintTableBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a table.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTableBorder

    public void paintTableBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a table.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTextAreaBackground

    public void paintTextAreaBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a text area.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTextAreaBorder

    public void paintTextAreaBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a text area.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTextPaneBackground

    public void paintTextPaneBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a text pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTextPaneBorder

    public void paintTextPaneBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a text pane.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTextFieldBackground

    public void paintTextFieldBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a text field.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTextFieldBorder

    public void paintTextFieldBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a text field.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintToggleButtonBackground

    public void paintToggleButtonBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a toggle button.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintToggleButtonBorder

    public void paintToggleButtonBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a toggle button.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintToolBarBackground

    public void paintToolBarBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a tool bar.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintToolBarBackground

    public void paintToolBarBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of a tool bar. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JToolBar.HORIZONTAL` or
        `JToolBar.VERTICAL`

    Since:
    :   1.6
  + ### paintToolBarBorder

    public void paintToolBarBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a tool bar.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintToolBarBorder

    public void paintToolBarBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of a tool bar. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JToolBar.HORIZONTAL` or
        `JToolBar.VERTICAL`

    Since:
    :   1.6
  + ### paintToolBarContentBackground

    public void paintToolBarContentBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of the tool bar's content area.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintToolBarContentBackground

    public void paintToolBarContentBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of the tool bar's content area. This implementation
    invokes the method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JToolBar.HORIZONTAL` or
        `JToolBar.VERTICAL`

    Since:
    :   1.6
  + ### paintToolBarContentBorder

    public void paintToolBarContentBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of the content area of a tool bar.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintToolBarContentBorder

    public void paintToolBarContentBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of the content area of a tool bar. This implementation
    invokes the method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JToolBar.HORIZONTAL` or
        `JToolBar.VERTICAL`

    Since:
    :   1.6
  + ### paintToolBarDragWindowBackground

    public void paintToolBarDragWindowBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of the window containing the tool bar when it
    has been detached from its primary frame.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintToolBarDragWindowBackground

    public void paintToolBarDragWindowBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the background of the window containing the tool bar when it
    has been detached from its primary frame. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JToolBar.HORIZONTAL` or
        `JToolBar.VERTICAL`

    Since:
    :   1.6
  + ### paintToolBarDragWindowBorder

    public void paintToolBarDragWindowBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of the window containing the tool bar when it
    has been detached from it's primary frame.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintToolBarDragWindowBorder

    public void paintToolBarDragWindowBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h,
    int orientation)

    Paints the border of the window containing the tool bar when it
    has been detached from it's primary frame. This implementation invokes the
    method of the same name without the orientation.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
    :   `orientation` - One of `JToolBar.HORIZONTAL` or
        `JToolBar.VERTICAL`

    Since:
    :   1.6
  + ### paintToolTipBackground

    public void paintToolTipBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a tool tip.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintToolTipBorder

    public void paintToolTipBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a tool tip.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTreeBackground

    public void paintTreeBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of a tree.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTreeBorder

    public void paintTreeBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a tree.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTreeCellBackground

    public void paintTreeCellBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of the row containing a cell in a tree.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTreeCellBorder

    public void paintTreeCellBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of the row containing a cell in a tree.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintTreeCellFocus

    public void paintTreeCellFocus([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the focus indicator for a cell in a tree when it has focus.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintViewportBackground

    public void paintViewportBackground([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the background of the viewport.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to
  + ### paintViewportBorder

    public void paintViewportBorder([SynthContext](SynthContext.md "class in javax.swing.plaf.synth") context,
    [Graphics](../../../../java/awt/Graphics.md "class in java.awt") g,
    int x,
    int y,
    int w,
    int h)

    Paints the border of a viewport.

    Parameters:
    :   `context` - SynthContext identifying the `JComponent` and
        `Region` to paint to
    :   `g` - `Graphics` to paint to
    :   `x` - X coordinate of the area to paint to
    :   `y` - Y coordinate of the area to paint to
    :   `w` - Width of the area to paint to
    :   `h` - Height of the area to paint to