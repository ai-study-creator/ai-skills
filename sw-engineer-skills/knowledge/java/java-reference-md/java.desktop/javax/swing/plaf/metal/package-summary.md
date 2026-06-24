Module [java.desktop](../../../../module-summary.md)

# Package javax.swing.plaf.metal

---

package javax.swing.plaf.metal

Provides user interface objects built according to the Java look and feel
(once codenamed *Metal*), which is the default look and feel.

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

  [javax.swing.plaf.basic](../basic/package-summary.md)

  Provides user interface objects built according to the Basic look and feel.

  [javax.swing.plaf.multi](../multi/package-summary.md)

  Provides user interface objects that combine two or more look and feels.

  [javax.swing.plaf.nimbus](../nimbus/package-summary.md)

  Provides user interface objects built according to the cross-platform Nimbus
  look and feel.

  [javax.swing.plaf.synth](../synth/package-summary.md)

  Synth is a skinnable look and feel in which all painting is delegated.
* Classes

  Class

  Description

  [DefaultMetalTheme](DefaultMetalTheme.md "class in javax.swing.plaf.metal")

  A concrete implementation of `MetalTheme` providing
  the original look of the Java Look and Feel, code-named "Steel".

  [MetalBorders](MetalBorders.md "class in javax.swing.plaf.metal")

  Factory object that can vend Borders appropriate for the metal L & F.

  [MetalBorders.ButtonBorder](MetalBorders.ButtonBorder.md "class in javax.swing.plaf.metal")

  The class represents the border of a `JButton`.

  [MetalBorders.Flush3DBorder](MetalBorders.Flush3DBorder.md "class in javax.swing.plaf.metal")

  The class represents the 3D border.

  [MetalBorders.InternalFrameBorder](MetalBorders.InternalFrameBorder.md "class in javax.swing.plaf.metal")

  The class represents the border of a `JInternalFrame`.

  [MetalBorders.MenuBarBorder](MetalBorders.MenuBarBorder.md "class in javax.swing.plaf.metal")

  The class represents the border of a `JMenuBar`.

  [MetalBorders.MenuItemBorder](MetalBorders.MenuItemBorder.md "class in javax.swing.plaf.metal")

  The class represents the border of a `JMenuItem`.

  [MetalBorders.OptionDialogBorder](MetalBorders.OptionDialogBorder.md "class in javax.swing.plaf.metal")

  The class represents the border of an option dialog.

  [MetalBorders.PaletteBorder](MetalBorders.PaletteBorder.md "class in javax.swing.plaf.metal")

  Border for a Palette.

  [MetalBorders.PopupMenuBorder](MetalBorders.PopupMenuBorder.md "class in javax.swing.plaf.metal")

  The class represents the border of a `JPopupMenu`.

  [MetalBorders.RolloverButtonBorder](MetalBorders.RolloverButtonBorder.md "class in javax.swing.plaf.metal")

  The class represents the border of a rollover `Button`.

  [MetalBorders.ScrollPaneBorder](MetalBorders.ScrollPaneBorder.md "class in javax.swing.plaf.metal")

  The class represents the border of a `JScrollPane`.

  [MetalBorders.TableHeaderBorder](MetalBorders.TableHeaderBorder.md "class in javax.swing.plaf.metal")

  Border for a Table Header

  [MetalBorders.TextFieldBorder](MetalBorders.TextFieldBorder.md "class in javax.swing.plaf.metal")

  Border for a `JTextField`.

  [MetalBorders.ToggleButtonBorder](MetalBorders.ToggleButtonBorder.md "class in javax.swing.plaf.metal")

  Border for a `JToggleButton`.

  [MetalBorders.ToolBarBorder](MetalBorders.ToolBarBorder.md "class in javax.swing.plaf.metal")

  The class represents the border of a `JToolBar`.

  [MetalButtonUI](MetalButtonUI.md "class in javax.swing.plaf.metal")

  MetalButtonUI implementation

  [MetalCheckBoxIcon](MetalCheckBoxIcon.md "class in javax.swing.plaf.metal")

  CheckboxIcon implementation for OrganicCheckBoxUI

  [MetalCheckBoxUI](MetalCheckBoxUI.md "class in javax.swing.plaf.metal")

  CheckboxUI implementation for MetalCheckboxUI

  [MetalComboBoxButton](MetalComboBoxButton.md "class in javax.swing.plaf.metal")

  JButton subclass to help out MetalComboBoxUI

  [MetalComboBoxEditor](MetalComboBoxEditor.md "class in javax.swing.plaf.metal")

  The default editor for Metal editable combo boxes

  [MetalComboBoxEditor.UIResource](MetalComboBoxEditor.UIResource.md "class in javax.swing.plaf.metal")

  A subclass of BasicComboBoxEditor that implements UIResource.

  [MetalComboBoxIcon](MetalComboBoxIcon.md "class in javax.swing.plaf.metal")

  This utility class draws the horizontal bars which indicate a MetalComboBox

  [MetalComboBoxUI](MetalComboBoxUI.md "class in javax.swing.plaf.metal")

  Metal UI for JComboBox

  [MetalDesktopIconUI](MetalDesktopIconUI.md "class in javax.swing.plaf.metal")

  Metal desktop icon.

  [MetalFileChooserUI](MetalFileChooserUI.md "class in javax.swing.plaf.metal")

  Metal L&F implementation of a FileChooser.

  [MetalIconFactory](MetalIconFactory.md "class in javax.swing.plaf.metal")

  Factory object that vends `Icon`s for
  the Java look and feel (Metal).

  [MetalIconFactory.FileIcon16](MetalIconFactory.FileIcon16.md "class in javax.swing.plaf.metal")

  **Warning:**
  Serialized objects of this class will not be compatible with
  future Swing releases.

  [MetalIconFactory.FolderIcon16](MetalIconFactory.FolderIcon16.md "class in javax.swing.plaf.metal")

  **Warning:**
  Serialized objects of this class will not be compatible with
  future Swing releases.

  [MetalIconFactory.PaletteCloseIcon](MetalIconFactory.PaletteCloseIcon.md "class in javax.swing.plaf.metal")

  Defines an icon for Palette close

  [MetalIconFactory.TreeControlIcon](MetalIconFactory.TreeControlIcon.md "class in javax.swing.plaf.metal")

  **Warning:**
  Serialized objects of this class will not be compatible with
  future Swing releases.

  [MetalIconFactory.TreeFolderIcon](MetalIconFactory.TreeFolderIcon.md "class in javax.swing.plaf.metal")

  **Warning:**
  Serialized objects of this class will not be compatible with
  future Swing releases.

  [MetalIconFactory.TreeLeafIcon](MetalIconFactory.TreeLeafIcon.md "class in javax.swing.plaf.metal")

  The class represents a tree leaf icon.

  [MetalInternalFrameTitlePane](MetalInternalFrameTitlePane.md "class in javax.swing.plaf.metal")

  Class that manages a JLF title bar

  [MetalInternalFrameUI](MetalInternalFrameUI.md "class in javax.swing.plaf.metal")

  Metal implementation of JInternalFrame.

  [MetalLabelUI](MetalLabelUI.md "class in javax.swing.plaf.metal")

  A Windows L&F implementation of LabelUI.

  [MetalLookAndFeel](MetalLookAndFeel.md "class in javax.swing.plaf.metal")

  The Java Look and Feel, otherwise known as Metal.

  [MetalMenuBarUI](MetalMenuBarUI.md "class in javax.swing.plaf.metal")

  Metal implementation of `MenuBarUI`.

  [MetalPopupMenuSeparatorUI](MetalPopupMenuSeparatorUI.md "class in javax.swing.plaf.metal")

  A Metal L&F implementation of PopupMenuSeparatorUI.

  [MetalProgressBarUI](MetalProgressBarUI.md "class in javax.swing.plaf.metal")

  The Metal implementation of ProgressBarUI.

  [MetalRadioButtonUI](MetalRadioButtonUI.md "class in javax.swing.plaf.metal")

  RadioButtonUI implementation for MetalRadioButtonUI

  [MetalRootPaneUI](MetalRootPaneUI.md "class in javax.swing.plaf.metal")

  Provides the metal look and feel implementation of `RootPaneUI`.

  [MetalScrollBarUI](MetalScrollBarUI.md "class in javax.swing.plaf.metal")

  Implementation of ScrollBarUI for the Metal Look and Feel

  [MetalScrollButton](MetalScrollButton.md "class in javax.swing.plaf.metal")

  JButton object for Metal scrollbar arrows.

  [MetalScrollPaneUI](MetalScrollPaneUI.md "class in javax.swing.plaf.metal")

  A Metal L&F implementation of ScrollPaneUI.

  [MetalSeparatorUI](MetalSeparatorUI.md "class in javax.swing.plaf.metal")

  A Metal L&F implementation of SeparatorUI.

  [MetalSliderUI](MetalSliderUI.md "class in javax.swing.plaf.metal")

  A Java L&F implementation of SliderUI.

  [MetalSplitPaneUI](MetalSplitPaneUI.md "class in javax.swing.plaf.metal")

  Metal split pane.

  [MetalTabbedPaneUI](MetalTabbedPaneUI.md "class in javax.swing.plaf.metal")

  The Metal subclass of BasicTabbedPaneUI.

  [MetalTextFieldUI](MetalTextFieldUI.md "class in javax.swing.plaf.metal")

  Basis of a look and feel for a JTextField.

  [MetalTheme](MetalTheme.md "class in javax.swing.plaf.metal")

  `MetalTheme` provides the color palette and fonts used by
  the Java Look and Feel.

  [MetalToggleButtonUI](MetalToggleButtonUI.md "class in javax.swing.plaf.metal")

  MetalToggleButton implementation

  [MetalToolBarUI](MetalToolBarUI.md "class in javax.swing.plaf.metal")

  A Metal Look and Feel implementation of ToolBarUI.

  [MetalToolTipUI](MetalToolTipUI.md "class in javax.swing.plaf.metal")

  A Metal L&F extension of BasicToolTipUI.

  [MetalTreeUI](MetalTreeUI.md "class in javax.swing.plaf.metal")

  The metal look and feel implementation of `TreeUI`.

  [OceanTheme](OceanTheme.md "class in javax.swing.plaf.metal")

  The default theme for the `MetalLookAndFeel`.