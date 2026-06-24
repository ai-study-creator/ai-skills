Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Interface MenuContainer

All Known Implementing Classes:
:   `AbstractButton`, `AbstractColorChooserPanel`, `Applet`, `BasicArrowButton`, `BasicComboBoxRenderer`, `BasicComboBoxRenderer.UIResource`, `BasicComboPopup`, `BasicInternalFrameTitlePane`, `BasicInternalFrameTitlePane.SystemMenuBar`, `BasicSplitPaneDivider`, `BasicToolBarUI.DragWindow`, `Box`, `Box.Filler`, `Button`, `Canvas`, `CellRendererPane`, `Checkbox`, `Choice`, `Component`, `Container`, `DefaultListCellRenderer`, `DefaultListCellRenderer.UIResource`, `DefaultTableCellRenderer`, `DefaultTableCellRenderer.UIResource`, `DefaultTreeCellEditor.DefaultTextField`, `DefaultTreeCellEditor.EditorContainer`, `DefaultTreeCellRenderer`, `Dialog`, `FileDialog`, `Frame`, `JApplet`, `JButton`, `JCheckBox`, `JCheckBoxMenuItem`, `JColorChooser`, `JComboBox`, `JComponent`, `JDesktopPane`, `JDialog`, `JEditorPane`, `JFileChooser`, `JFormattedTextField`, `JFrame`, `JInternalFrame`, `JInternalFrame.JDesktopIcon`, `JLabel`, `JLayer`, `JLayeredPane`, `JList`, `JMenu`, `JMenuBar`, `JMenuItem`, `JOptionPane`, `JPanel`, `JPasswordField`, `JPopupMenu`, `JPopupMenu.Separator`, `JProgressBar`, `JRadioButton`, `JRadioButtonMenuItem`, `JRootPane`, `JScrollBar`, `JScrollPane`, `JScrollPane.ScrollBar`, `JSeparator`, `JSlider`, `JSpinner`, `JSpinner.DateEditor`, `JSpinner.DefaultEditor`, `JSpinner.ListEditor`, `JSpinner.NumberEditor`, `JSplitPane`, `JTabbedPane`, `JTable`, `JTableHeader`, `JTextArea`, `JTextComponent`, `JTextField`, `JTextPane`, `JToggleButton`, `JToolBar`, `JToolBar.Separator`, `JToolTip`, `JTree`, `JViewport`, `JWindow`, `Label`, `List`, `Menu`, `MenuBar`, `MetalComboBoxButton`, `MetalComboBoxUI.MetalComboPopup`, `MetalFileChooserUI.FileRenderer`, `MetalFileChooserUI.FilterComboBoxRenderer`, `MetalInternalFrameTitlePane`, `MetalScrollButton`, `Panel`, `PopupMenu`, `Scrollbar`, `ScrollPane`, `TextArea`, `TextComponent`, `TextField`, `Window`

---

public interface MenuContainer

The super class of all menu related containers.

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Font`

  `getFont()`

  Returns the font in use by this container.

  `boolean`

  `postEvent(Event evt)`

  Deprecated.

  As of JDK version 1.1
  replaced by dispatchEvent(AWTEvent).

  `void`

  `remove(MenuComponent comp)`

  Removes the specified menu component from the menu.

* ## Method Details

  + ### getFont

    [Font](Font.md "class in java.awt") getFont()

    Returns the font in use by this container.

    Returns:
    :   the menu font
  + ### remove

    void remove([MenuComponent](MenuComponent.md "class in java.awt") comp)

    Removes the specified menu component from the menu.

    Parameters:
    :   `comp` - the menu component to remove
  + ### postEvent

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    boolean postEvent([Event](Event.md "class in java.awt") evt)

    Deprecated.

    As of JDK version 1.1
    replaced by dispatchEvent(AWTEvent).

    Posts an event to the listeners.

    Parameters:
    :   `evt` - the event to dispatch

    Returns:
    :   the results of posting the event