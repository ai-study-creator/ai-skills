Module [java.desktop](../../../module-summary.md)

# Package javax.swing.plaf

---

package javax.swing.plaf

Provides one interface and many abstract classes that Swing uses to provide
its pluggable look-and-feel capabilities. Its classes are subclassed and
implemented by look and feel UIs such as Basic and the Java look and feel
(Metal). This package is only used by developers who cannot create a new
look and feel by subclassing existing look-and-feel components (such as those
provided by the `javax.swing.plaf.basic` and
`javax.swing.plaf.metal` packages).

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

  [javax.swing](../package-summary.md)

  Provides a set of "lightweight" (all-Java language) components
  that, to the maximum degree possible, work the same on all platforms.

  [javax.swing.plaf.basic](basic/package-summary.md)

  Provides user interface objects built according to the Basic look and feel.

  [javax.swing.plaf.metal](metal/package-summary.md)

  Provides user interface objects built according to the Java look and feel
  (once codenamed *Metal*), which is the default look and feel.

  [javax.swing.plaf.multi](multi/package-summary.md)

  Provides user interface objects that combine two or more look and feels.

  [javax.swing.plaf.nimbus](nimbus/package-summary.md)

  Provides user interface objects built according to the cross-platform Nimbus
  look and feel.

  [javax.swing.plaf.synth](synth/package-summary.md)

  Synth is a skinnable look and feel in which all painting is delegated.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [ActionMapUIResource](ActionMapUIResource.md "class in javax.swing.plaf")

  A subclass of javax.swing.ActionMap that implements UIResource.

  [BorderUIResource](BorderUIResource.md "class in javax.swing.plaf")

  A Border wrapper class which implements UIResource.

  [BorderUIResource.BevelBorderUIResource](BorderUIResource.BevelBorderUIResource.md "class in javax.swing.plaf")

  A bevel border UI resource.

  [BorderUIResource.CompoundBorderUIResource](BorderUIResource.CompoundBorderUIResource.md "class in javax.swing.plaf")

  A compound border UI resource.

  [BorderUIResource.EmptyBorderUIResource](BorderUIResource.EmptyBorderUIResource.md "class in javax.swing.plaf")

  An empty border UI resource.

  [BorderUIResource.EtchedBorderUIResource](BorderUIResource.EtchedBorderUIResource.md "class in javax.swing.plaf")

  An etched border UI resource.

  [BorderUIResource.LineBorderUIResource](BorderUIResource.LineBorderUIResource.md "class in javax.swing.plaf")

  A line border UI resource.

  [BorderUIResource.MatteBorderUIResource](BorderUIResource.MatteBorderUIResource.md "class in javax.swing.plaf")

  A matte border UI resource.

  [BorderUIResource.TitledBorderUIResource](BorderUIResource.TitledBorderUIResource.md "class in javax.swing.plaf")

  A titled border UI resource.

  [ButtonUI](ButtonUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JButton.

  [ColorChooserUI](ColorChooserUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JColorChooser.

  [ColorUIResource](ColorUIResource.md "class in javax.swing.plaf")

  A subclass of Color that implements UIResource.

  [ComboBoxUI](ComboBoxUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JComboBox.

  [ComponentInputMapUIResource](ComponentInputMapUIResource.md "class in javax.swing.plaf")

  A subclass of javax.swing.ComponentInputMap that implements UIResource.

  [ComponentUI](ComponentUI.md "class in javax.swing.plaf")

  The base class for all UI delegate objects in the Swing pluggable
  look and feel architecture.

  [DesktopIconUI](DesktopIconUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JDesktopIcon.

  [DesktopPaneUI](DesktopPaneUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JDesktopPane.

  [DimensionUIResource](DimensionUIResource.md "class in javax.swing.plaf")

  A subclass of `Dimension` that implements
  `UIResource`.

  [FileChooserUI](FileChooserUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for `JFileChooser`.

  [FontUIResource](FontUIResource.md "class in javax.swing.plaf")

  A subclass of java.awt.Font that implements UIResource.

  [IconUIResource](IconUIResource.md "class in javax.swing.plaf")

  An Icon wrapper class which implements UIResource.

  [InputMapUIResource](InputMapUIResource.md "class in javax.swing.plaf")

  A subclass of javax.swing.InputMap that implements UIResource.

  [InsetsUIResource](InsetsUIResource.md "class in javax.swing.plaf")

  A subclass of Insets that implements UIResource.

  [InternalFrameUI](InternalFrameUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JInternalFrame.

  [LabelUI](LabelUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JLabel.

  [LayerUI](LayerUI.md "class in javax.swing.plaf")<V extends [Component](../../../java/awt/Component.md "class in java.awt")>

  The base class for all [`JLayer`](../JLayer.md "class in javax.swing")'s UI delegates.

  [ListUI](ListUI.md "class in javax.swing.plaf")

  The `JList` pluggable look and feel delegate.

  [MenuBarUI](MenuBarUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JMenuBar.

  [MenuItemUI](MenuItemUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JMenuItem.

  [OptionPaneUI](OptionPaneUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JOptionPane.

  [PanelUI](PanelUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for Panel.

  [PopupMenuUI](PopupMenuUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JPopupMenu.

  [ProgressBarUI](ProgressBarUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JProgressBar.

  [RootPaneUI](RootPaneUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JRootPane.

  [ScrollBarUI](ScrollBarUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JScrollBar.

  [ScrollPaneUI](ScrollPaneUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JScrollPane.

  [SeparatorUI](SeparatorUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JSeparator.

  [SliderUI](SliderUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JSlider.

  [SpinnerUI](SpinnerUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JSpinner

  [SplitPaneUI](SplitPaneUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JSplitPane.

  [TabbedPaneUI](TabbedPaneUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JTabbedPane.

  [TableHeaderUI](TableHeaderUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JTableHeader.

  [TableUI](TableUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JTable.

  [TextUI](TextUI.md "class in javax.swing.plaf")

  Text editor user interface

  [ToolBarUI](ToolBarUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JToolBar.

  [ToolTipUI](ToolTipUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JToolTip.

  [TreeUI](TreeUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JTree.

  [UIResource](UIResource.md "interface in javax.swing.plaf")

  This interface is used to mark objects created by ComponentUI delegates.

  [ViewportUI](ViewportUI.md "class in javax.swing.plaf")

  Pluggable look and feel interface for JViewport.