Module [java.desktop](../../../../module-summary.md)

# Package javax.swing.plaf.basic

---

package javax.swing.plaf.basic

Provides user interface objects built according to the Basic look and feel.
The Basic look and feel provides default behavior used by many look and feel
packages. It contains components, layout managers, events, event listeners,
and adapters. You can subclass the classes in this package to create your own
customized look and feel.

These classes are designed to be used while the corresponding
`LookAndFeel` class has been installed
(`UIManager.setLookAndFeel(new XXXLookAndFeel())`).
Using them while a different `LookAndFeel` is installed may produce
unexpected results, including exceptions. Additionally, changing the
`LookAndFeel` maintained by the `UIManager` without updating the
corresponding `ComponentUI` of any `JComponent`s may also produce
unexpected results, such as the wrong colors showing up, and is generally not
encouraged.

**Note:**
Most of the Swing API is *not* thread safe. For details, see
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html),
a section in
*[The Java Tutorial](https://docs.oracle.com/javase/tutorial/)*.

Since:
:   1.2

* Related Packages

  Package

  Description

  [javax.swing.plaf](../package-summary.md)

  Provides one interface and many abstract classes that Swing uses to provide
  its pluggable look-and-feel capabilities.

  [javax.swing.plaf.metal](../metal/package-summary.md)

  Provides user interface objects built according to the Java look and feel
  (once codenamed *Metal*), which is the default look and feel.

  [javax.swing.plaf.multi](../multi/package-summary.md)

  Provides user interface objects that combine two or more look and feels.

  [javax.swing.plaf.nimbus](../nimbus/package-summary.md)

  Provides user interface objects built according to the cross-platform Nimbus
  look and feel.

  [javax.swing.plaf.synth](../synth/package-summary.md)

  Synth is a skinnable look and feel in which all painting is delegated.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [BasicArrowButton](BasicArrowButton.md "class in javax.swing.plaf.basic")

  JButton object that draws a scaled Arrow in one of the cardinal directions.

  [BasicBorders](BasicBorders.md "class in javax.swing.plaf.basic")

  Factory object that can vend Borders appropriate for the basic L & F.

  [BasicBorders.ButtonBorder](BasicBorders.ButtonBorder.md "class in javax.swing.plaf.basic")

  Draws a border around a button.

  [BasicBorders.FieldBorder](BasicBorders.FieldBorder.md "class in javax.swing.plaf.basic")

  Draws the border around a field.

  [BasicBorders.MarginBorder](BasicBorders.MarginBorder.md "class in javax.swing.plaf.basic")

  Draws the border around components which support margins.

  [BasicBorders.MenuBarBorder](BasicBorders.MenuBarBorder.md "class in javax.swing.plaf.basic")

  Draws the border around a menu bar.

  [BasicBorders.RadioButtonBorder](BasicBorders.RadioButtonBorder.md "class in javax.swing.plaf.basic")

  Draws the border around a radio button.

  [BasicBorders.RolloverButtonBorder](BasicBorders.RolloverButtonBorder.md "class in javax.swing.plaf.basic")

  Special thin border for rollover toolbar buttons.

  [BasicBorders.SplitPaneBorder](BasicBorders.SplitPaneBorder.md "class in javax.swing.plaf.basic")

  Draws the border around the splitpane.

  [BasicBorders.ToggleButtonBorder](BasicBorders.ToggleButtonBorder.md "class in javax.swing.plaf.basic")

  Draws the border around a toggle button.

  [BasicButtonListener](BasicButtonListener.md "class in javax.swing.plaf.basic")

  Button Listener

  [BasicButtonUI](BasicButtonUI.md "class in javax.swing.plaf.basic")

  BasicButton implementation

  [BasicCheckBoxMenuItemUI](BasicCheckBoxMenuItemUI.md "class in javax.swing.plaf.basic")

  BasicCheckboxMenuItem implementation

  [BasicCheckBoxUI](BasicCheckBoxUI.md "class in javax.swing.plaf.basic")

  CheckboxUI implementation for BasicCheckboxUI

  [BasicColorChooserUI](BasicColorChooserUI.md "class in javax.swing.plaf.basic")

  Provides the basic look and feel for a JColorChooser.

  [BasicComboBoxEditor](BasicComboBoxEditor.md "class in javax.swing.plaf.basic")

  The default editor for editable combo boxes.

  [BasicComboBoxEditor.UIResource](BasicComboBoxEditor.UIResource.md "class in javax.swing.plaf.basic")

  A subclass of BasicComboBoxEditor that implements UIResource.

  [BasicComboBoxRenderer](BasicComboBoxRenderer.md "class in javax.swing.plaf.basic")

  ComboBox renderer

  [BasicComboBoxRenderer.UIResource](BasicComboBoxRenderer.UIResource.md "class in javax.swing.plaf.basic")

  A subclass of BasicComboBoxRenderer that implements UIResource.

  [BasicComboBoxUI](BasicComboBoxUI.md "class in javax.swing.plaf.basic")

  Basic UI implementation for JComboBox.

  [BasicComboPopup](BasicComboPopup.md "class in javax.swing.plaf.basic")

  This is a basic implementation of the `ComboPopup` interface.

  [BasicDesktopIconUI](BasicDesktopIconUI.md "class in javax.swing.plaf.basic")

  Basic L&F for a minimized window on a desktop.

  [BasicDesktopPaneUI](BasicDesktopPaneUI.md "class in javax.swing.plaf.basic")

  Basic L&F for a desktop.

  [BasicDirectoryModel](BasicDirectoryModel.md "class in javax.swing.plaf.basic")

  Basic implementation of a file list.

  [BasicEditorPaneUI](BasicEditorPaneUI.md "class in javax.swing.plaf.basic")

  Provides the look and feel for a JEditorPane.

  [BasicFileChooserUI](BasicFileChooserUI.md "class in javax.swing.plaf.basic")

  Basic L&F implementation of a FileChooser.

  [BasicFormattedTextFieldUI](BasicFormattedTextFieldUI.md "class in javax.swing.plaf.basic")

  Provides the look and feel implementation for
  `JFormattedTextField`.

  [BasicGraphicsUtils](BasicGraphicsUtils.md "class in javax.swing.plaf.basic")

  Convenient util class.

  [BasicHTML](BasicHTML.md "class in javax.swing.plaf.basic")

  Support for providing html views for the swing components.

  [BasicIconFactory](BasicIconFactory.md "class in javax.swing.plaf.basic")

  Factory object that can vend Icons appropriate for the basic L & F.

  [BasicInternalFrameTitlePane](BasicInternalFrameTitlePane.md "class in javax.swing.plaf.basic")

  The class that manages a basic title bar

  [BasicInternalFrameUI](BasicInternalFrameUI.md "class in javax.swing.plaf.basic")

  A basic L&F implementation of JInternalFrame.

  [BasicLabelUI](BasicLabelUI.md "class in javax.swing.plaf.basic")

  A Windows L&F implementation of LabelUI.

  [BasicListUI](BasicListUI.md "class in javax.swing.plaf.basic")

  An extensible implementation of `ListUI`.

  [BasicLookAndFeel](BasicLookAndFeel.md "class in javax.swing.plaf.basic")

  A base class to use in creating a look and feel for Swing.

  [BasicMenuBarUI](BasicMenuBarUI.md "class in javax.swing.plaf.basic")

  A default L&F implementation of MenuBarUI.

  [BasicMenuItemUI](BasicMenuItemUI.md "class in javax.swing.plaf.basic")

  BasicMenuItem implementation

  [BasicMenuUI](BasicMenuUI.md "class in javax.swing.plaf.basic")

  A default L&F implementation of MenuUI.

  [BasicOptionPaneUI](BasicOptionPaneUI.md "class in javax.swing.plaf.basic")

  Provides the basic look and feel for a `JOptionPane`.

  [BasicOptionPaneUI.ButtonAreaLayout](BasicOptionPaneUI.ButtonAreaLayout.md "class in javax.swing.plaf.basic")

  `ButtonAreaLayout` behaves in a similar manner to
  `FlowLayout`.

  [BasicPanelUI](BasicPanelUI.md "class in javax.swing.plaf.basic")

  BasicPanel implementation

  [BasicPasswordFieldUI](BasicPasswordFieldUI.md "class in javax.swing.plaf.basic")

  Provides the Windows look and feel for a password field.

  [BasicPopupMenuSeparatorUI](BasicPopupMenuSeparatorUI.md "class in javax.swing.plaf.basic")

  A Basic L&F implementation of PopupMenuSeparatorUI.

  [BasicPopupMenuUI](BasicPopupMenuUI.md "class in javax.swing.plaf.basic")

  A Windows L&F implementation of PopupMenuUI.

  [BasicProgressBarUI](BasicProgressBarUI.md "class in javax.swing.plaf.basic")

  A Basic L&F implementation of ProgressBarUI.

  [BasicRadioButtonMenuItemUI](BasicRadioButtonMenuItemUI.md "class in javax.swing.plaf.basic")

  BasicRadioButtonMenuItem implementation

  [BasicRadioButtonUI](BasicRadioButtonUI.md "class in javax.swing.plaf.basic")

  RadioButtonUI implementation for BasicRadioButtonUI

  [BasicRootPaneUI](BasicRootPaneUI.md "class in javax.swing.plaf.basic")

  Basic implementation of RootPaneUI, there is one shared between all
  JRootPane instances.

  [BasicScrollBarUI](BasicScrollBarUI.md "class in javax.swing.plaf.basic")

  Implementation of ScrollBarUI for the Basic Look and Feel

  [BasicScrollPaneUI](BasicScrollPaneUI.md "class in javax.swing.plaf.basic")

  A default L&F implementation of ScrollPaneUI.

  [BasicSeparatorUI](BasicSeparatorUI.md "class in javax.swing.plaf.basic")

  A Basic L&F implementation of SeparatorUI.

  [BasicSliderUI](BasicSliderUI.md "class in javax.swing.plaf.basic")

  A Basic L&F implementation of SliderUI.

  [BasicSpinnerUI](BasicSpinnerUI.md "class in javax.swing.plaf.basic")

  The default Spinner UI delegate.

  [BasicSplitPaneDivider](BasicSplitPaneDivider.md "class in javax.swing.plaf.basic")

  Divider used by BasicSplitPaneUI.

  [BasicSplitPaneUI](BasicSplitPaneUI.md "class in javax.swing.plaf.basic")

  A Basic L&F implementation of the SplitPaneUI.

  [BasicTabbedPaneUI](BasicTabbedPaneUI.md "class in javax.swing.plaf.basic")

  A Basic L&F implementation of TabbedPaneUI.

  [BasicTableHeaderUI](BasicTableHeaderUI.md "class in javax.swing.plaf.basic")

  BasicTableHeaderUI implementation

  [BasicTableUI](BasicTableUI.md "class in javax.swing.plaf.basic")

  BasicTableUI implementation

  [BasicTextAreaUI](BasicTextAreaUI.md "class in javax.swing.plaf.basic")

  Provides the look and feel for a plain text editor.

  [BasicTextFieldUI](BasicTextFieldUI.md "class in javax.swing.plaf.basic")

  Basis of a look and feel for a JTextField.

  [BasicTextPaneUI](BasicTextPaneUI.md "class in javax.swing.plaf.basic")

  Provides the look and feel for a styled text editor.

  [BasicTextUI](BasicTextUI.md "class in javax.swing.plaf.basic")

  Basis of a text components look-and-feel.

  [BasicTextUI.BasicCaret](BasicTextUI.BasicCaret.md "class in javax.swing.plaf.basic")

  Default implementation of the interface `Caret`.

  [BasicTextUI.BasicHighlighter](BasicTextUI.BasicHighlighter.md "class in javax.swing.plaf.basic")

  Default implementation of the interface `Highlighter`.

  [BasicToggleButtonUI](BasicToggleButtonUI.md "class in javax.swing.plaf.basic")

  BasicToggleButton implementation

  [BasicToolBarSeparatorUI](BasicToolBarSeparatorUI.md "class in javax.swing.plaf.basic")

  A Basic L&F implementation of ToolBarSeparatorUI.

  [BasicToolBarUI](BasicToolBarUI.md "class in javax.swing.plaf.basic")

  A Basic L&F implementation of ToolBarUI.

  [BasicToolTipUI](BasicToolTipUI.md "class in javax.swing.plaf.basic")

  Standard tool tip L&F.

  [BasicTreeUI](BasicTreeUI.md "class in javax.swing.plaf.basic")

  The basic L&F for a hierarchical data structure.

  [BasicViewportUI](BasicViewportUI.md "class in javax.swing.plaf.basic")

  BasicViewport implementation

  [ComboPopup](ComboPopup.md "interface in javax.swing.plaf.basic")

  The interface which defines the methods required for the implementation of the popup
  portion of a combo box.

  [DefaultMenuLayout](DefaultMenuLayout.md "class in javax.swing.plaf.basic")

  The default layout manager for Popup menus and menubars.