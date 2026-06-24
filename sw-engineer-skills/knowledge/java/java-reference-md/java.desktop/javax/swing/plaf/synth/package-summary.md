Module [java.desktop](../../../../module-summary.md)

# Package javax.swing.plaf.synth

---

package javax.swing.plaf.synth

Synth is a skinnable look and feel in which all painting is delegated. Synth
does not provide a default look. In order to use Synth you need to specify a
[file](doc-files/synthFileFormat.md), or provide a
[`SynthStyleFactory`](SynthStyleFactory.md "class in javax.swing.plaf.synth"). Both configuration options
require an understanding of the synth architecture, which is described below,
as well as an understanding of Swing's architecture.

Unless otherwise specified null is not a legal value to any of the methods
defined in the synth package and if passed in will result in a
`NullPointerException`.

## Synth

Each [`ComponentUI`](../ComponentUI.md "class in javax.swing.plaf") implementation in Synth associates
itself with one [`SynthStyle`](SynthStyle.md "class in javax.swing.plaf.synth") per
[`Region`](Region.md "class in javax.swing.plaf.synth"), most `Components` only have one
`Region` and therefore only one `SynthStyle`. `SynthStyle`
is used to access all style related properties: fonts, colors
and other `Component` properties. In addition `SynthStyle`s are
used to obtain [`SynthPainter`](SynthPainter.md "class in javax.swing.plaf.synth")s for painting the
background, border, focus and other portions of a `Component`. The
`ComponentUI`s obtain `SynthStyle`s from a
[`SynthStyleFactory`](SynthStyleFactory.md "class in javax.swing.plaf.synth"). A `SynthStyleFactory`
can be provided directly by way of
[`SynthLookAndFeel.setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory)`](SynthLookAndFeel.md#setStyleFactory(javax.swing.plaf.synth.SynthStyleFactory)),
or indirectly by way of [`SynthLookAndFeel.load(java.io.InputStream, java.lang.Class<?>)`](SynthLookAndFeel.md#load(java.io.InputStream,java.lang.Class)).
The following example uses the `SynthLookAndFeel.load()` method to
configure a `SynthLookAndFeel` and sets it as the current look and
feel:

```
     SynthLookAndFeel laf = new SynthLookAndFeel();
     laf.load(MyClass.class.getResourceAsStream("laf.xml"), MyClass.class);
     UIManager.setLookAndFeel(laf);
```

Many `JComponent`s are broken down into smaller pieces and identified
by the type safe enumeration in [`Region`](Region.md "class in javax.swing.plaf.synth"). For
example, a `JTabbedPane` consists of a `Region` for the
`JTabbedPane`([`Region.TABBED_PANE`](Region.md#TABBED_PANE)), the
content area ([`Region.TABBED_PANE_CONTENT`](Region.md#TABBED_PANE_CONTENT)), the
area behind the tabs
([`Region.TABBED_PANE_TAB_AREA`](Region.md#TABBED_PANE_TAB_AREA)), and the tabs
([`Region.TABBED_PANE_TAB`](Region.md#TABBED_PANE_TAB)). Each
`Region` of each `JComponent` will have a `SynthStyle`.
This allows you to customize individual pieces of each region of each
`JComponent`.

Many of the Synth methods take a [`SynthContext`](SynthContext.md "class in javax.swing.plaf.synth").
This is used to provide information about the current `Component` and
includes: the [`SynthStyle`](SynthStyle.md "class in javax.swing.plaf.synth") associated with the
current [`Region`](Region.md "class in javax.swing.plaf.synth"), the state of the
`Component` as a bitmask (refer to
[`SynthConstants`](SynthConstants.md "interface in javax.swing.plaf.synth") for the valid states), and a
[`Region`](Region.md "class in javax.swing.plaf.synth") identifying the portion of the
`Component` being painted.

All text rendering by non-`JTextComponent`s is delegated to a
[`SynthGraphicsUtils`](SynthGraphicsUtils.md "class in javax.swing.plaf.synth"), which is obtained using
the [`SynthStyle`](SynthStyle.md "class in javax.swing.plaf.synth") method
[`SynthStyle.getGraphicsUtils(javax.swing.plaf.synth.SynthContext)`](SynthStyle.md#getGraphicsUtils(javax.swing.plaf.synth.SynthContext)). You can customize
text rendering by supplying your own
[`SynthGraphicsUtils`](SynthGraphicsUtils.md "class in javax.swing.plaf.synth").

## Notes on specific components

### JTree

Synth provides a region for the cells of a tree:
`Region.TREE_CELL`. To specify the colors of the
renderer you'll want to provide a style for the
`TREE_CELL` region. The following illustrates this:

```
   <style id="treeCellStyle">
     <opaque value="TRUE"/>
     <state>
       <color value="WHITE" type="TEXT_FOREGROUND"/>
       <color value="RED" type="TEXT_BACKGROUND"/>
     </state>
     <state value="SELECTED">
       <color value="RED" type="TEXT_FOREGROUND"/>
       <color value="WHITE" type="BACKGROUND"/>
     </state>
   </style>
   <bind style="treeCellStyle" type="region" key="TreeCell"/>
```

This specifies a color combination of red on white, when selected, and white
on red when not selected. To see the background you need to specify that
labels are not opaque. The following XML fragment does that:

```
   <style id="labelStyle">
     <opaque value="FALSE"/>
   </style>
   <bind style="labelStyle" type="region" key="Label"/>
```

### JList and JTable

The colors that the renderers for JList and JTable use are specified by way
of the list and table Regions. The following XML fragment illustrates how to
specify red on white, when selected, and white on red when not selected:

```
   <style id="style">
     <opaque value="TRUE"/>
     <state>
       <color value="WHITE" type="TEXT_FOREGROUND"/>
       <color value="RED" type="TEXT_BACKGROUND"/>
       <color value="RED" type="BACKGROUND"/>
     </state>
     <state value="SELECTED">
       <color value="RED" type="TEXT_FOREGROUND"/>
       <color value="WHITE" type="TEXT_BACKGROUND"/>
     </state>
   </style>
   <bind style="style" type="region" key="Table"/>
   <bind style="style" type="region" key="List"/>
```

* Related Packages

  Package

  Description

  [javax.swing.plaf](../package-summary.md)

  Provides one interface and many abstract classes that Swing uses to provide
  its pluggable look-and-feel capabilities.

  [javax.swing.plaf.basic](../basic/package-summary.md)

  Provides user interface objects built according to the Basic look and feel.

  [javax.swing.plaf.metal](../metal/package-summary.md)

  Provides user interface objects built according to the Java look and feel
  (once codenamed *Metal*), which is the default look and feel.

  [javax.swing.plaf.multi](../multi/package-summary.md)

  Provides user interface objects that combine two or more look and feels.

  [javax.swing.plaf.nimbus](../nimbus/package-summary.md)

  Provides user interface objects built according to the cross-platform Nimbus
  look and feel.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [ColorType](ColorType.md "class in javax.swing.plaf.synth")

  A typesafe enumeration of colors that can be fetched from a style.

  [Region](Region.md "class in javax.swing.plaf.synth")

  A distinct rendering area of a Swing component.

  [SynthButtonUI](SynthButtonUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JButton`](../../JButton.md "class in javax.swing").

  [SynthCheckBoxMenuItemUI](SynthCheckBoxMenuItemUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JCheckBoxMenuItem`](../../JCheckBoxMenuItem.md "class in javax.swing").

  [SynthCheckBoxUI](SynthCheckBoxUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JCheckBox`](../../JCheckBox.md "class in javax.swing").

  [SynthColorChooserUI](SynthColorChooserUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JColorChooser`](../../JColorChooser.md "class in javax.swing").

  [SynthComboBoxUI](SynthComboBoxUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JComboBox`](../../JComboBox.md "class in javax.swing").

  [SynthConstants](SynthConstants.md "interface in javax.swing.plaf.synth")

  Constants used by Synth.

  [SynthContext](SynthContext.md "class in javax.swing.plaf.synth")

  An immutable transient object containing contextual information about
  a `Region`.

  [SynthDesktopIconUI](SynthDesktopIconUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for a minimized internal frame on a desktop.

  [SynthDesktopPaneUI](SynthDesktopPaneUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JDesktopPane`](../../JDesktopPane.md "class in javax.swing").

  [SynthEditorPaneUI](SynthEditorPaneUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JEditorPane`](../../JEditorPane.md "class in javax.swing").

  [SynthFormattedTextFieldUI](SynthFormattedTextFieldUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JFormattedTextField`](../../JFormattedTextField.md "class in javax.swing").

  [SynthGraphicsUtils](SynthGraphicsUtils.md "class in javax.swing.plaf.synth")

  Wrapper for primitive graphics calls.

  [SynthIcon](SynthIcon.md "interface in javax.swing.plaf.synth")

  An icon that is passed a `SynthContext`.

  [SynthInternalFrameUI](SynthInternalFrameUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JInternalFrame`](../../JInternalFrame.md "class in javax.swing").

  [SynthLabelUI](SynthLabelUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JLabel`](../../JLabel.md "class in javax.swing").

  [SynthListUI](SynthListUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JList`](../../JList.md "class in javax.swing").

  [SynthLookAndFeel](SynthLookAndFeel.md "class in javax.swing.plaf.synth")

  SynthLookAndFeel provides the basis for creating a customized look and
  feel.

  [SynthMenuBarUI](SynthMenuBarUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JMenuBar`](../../JMenuBar.md "class in javax.swing").

  [SynthMenuItemUI](SynthMenuItemUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JMenuItem`](../../JMenuItem.md "class in javax.swing").

  [SynthMenuUI](SynthMenuUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JMenu`](../../JMenu.md "class in javax.swing").

  [SynthOptionPaneUI](SynthOptionPaneUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JOptionPane`](../../JOptionPane.md "class in javax.swing").

  [SynthPainter](SynthPainter.md "class in javax.swing.plaf.synth")

  `SynthPainter` is used for painting portions of
  `JComponent`s.

  [SynthPanelUI](SynthPanelUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JPanel`](../../JPanel.md "class in javax.swing").

  [SynthPasswordFieldUI](SynthPasswordFieldUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JPasswordField`](../../JPasswordField.md "class in javax.swing").

  [SynthPopupMenuUI](SynthPopupMenuUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JPopupMenu`](../../JPopupMenu.md "class in javax.swing").

  [SynthProgressBarUI](SynthProgressBarUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JProgressBar`](../../JProgressBar.md "class in javax.swing").

  [SynthRadioButtonMenuItemUI](SynthRadioButtonMenuItemUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JRadioButtonMenuItem`](../../JRadioButtonMenuItem.md "class in javax.swing").

  [SynthRadioButtonUI](SynthRadioButtonUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JRadioButton`](../../JRadioButton.md "class in javax.swing").

  [SynthRootPaneUI](SynthRootPaneUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JRootPane`](../../JRootPane.md "class in javax.swing").

  [SynthScrollBarUI](SynthScrollBarUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JScrollBar`](../../JScrollBar.md "class in javax.swing").

  [SynthScrollPaneUI](SynthScrollPaneUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JScrollPane`](../../JScrollPane.md "class in javax.swing").

  [SynthSeparatorUI](SynthSeparatorUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JSeparator`](../../JSeparator.md "class in javax.swing").

  [SynthSliderUI](SynthSliderUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JSlider`](../../JSlider.md "class in javax.swing").

  [SynthSpinnerUI](SynthSpinnerUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JSpinner`](../../JSpinner.md "class in javax.swing").

  [SynthSplitPaneUI](SynthSplitPaneUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JSplitPane`](../../JSplitPane.md "class in javax.swing").

  [SynthStyle](SynthStyle.md "class in javax.swing.plaf.synth")

  `SynthStyle` is a set of style properties.

  [SynthStyleFactory](SynthStyleFactory.md "class in javax.swing.plaf.synth")

  Factory used for obtaining `SynthStyle`s.

  [SynthTabbedPaneUI](SynthTabbedPaneUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JTabbedPane`](../../JTabbedPane.md "class in javax.swing").

  [SynthTableHeaderUI](SynthTableHeaderUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JTableHeader`](../../table/JTableHeader.md "class in javax.swing.table").

  [SynthTableUI](SynthTableUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JTable`](../../JTable.md "class in javax.swing").

  [SynthTextAreaUI](SynthTextAreaUI.md "class in javax.swing.plaf.synth")

  Provides the look and feel for a plain text editor in the
  Synth look and feel.

  [SynthTextFieldUI](SynthTextFieldUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for [`JTextField`](../../JTextField.md "class in javax.swing").

  [SynthTextPaneUI](SynthTextPaneUI.md "class in javax.swing.plaf.synth")

  Provides the look and feel for a styled text editor in the
  Synth look and feel.

  [SynthToggleButtonUI](SynthToggleButtonUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JToggleButton`](../../JToggleButton.md "class in javax.swing").

  [SynthToolBarUI](SynthToolBarUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JToolBar`](../../JToolBar.md "class in javax.swing").

  [SynthToolTipUI](SynthToolTipUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JToolTip`](../../JToolTip.md "class in javax.swing").

  [SynthTreeUI](SynthTreeUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JTree`](../../JTree.md "class in javax.swing").

  [SynthUI](SynthUI.md "interface in javax.swing.plaf.synth")

  SynthUI is used to fetch the SynthContext for a particular Component.

  [SynthViewportUI](SynthViewportUI.md "class in javax.swing.plaf.synth")

  Provides the Synth L&F UI delegate for
  [`JViewport`](../../JViewport.md "class in javax.swing").