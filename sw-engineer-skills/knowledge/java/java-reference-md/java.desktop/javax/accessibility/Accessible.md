Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface Accessible

All Known Implementing Classes:
:   `AbstractColorChooserPanel`, `Applet`, `BasicArrowButton`, `BasicComboBoxRenderer`, `BasicComboBoxRenderer.UIResource`, `BasicComboPopup`, `BasicInternalFrameTitlePane.SystemMenuBar`, `BasicToolBarUI.DragWindow`, `Box`, `Box.Filler`, `Button`, `Canvas`, `CellRendererPane`, `Checkbox`, `CheckboxMenuItem`, `Choice`, `DefaultListCellRenderer`, `DefaultListCellRenderer.UIResource`, `DefaultTableCellRenderer`, `DefaultTableCellRenderer.UIResource`, `DefaultTreeCellEditor.DefaultTextField`, `DefaultTreeCellRenderer`, `Dialog`, `FileDialog`, `Frame`, `HTMLEditorKit`, `ImageIcon`, `JApplet`, `JButton`, `JCheckBox`, `JCheckBoxMenuItem`, `JColorChooser`, `JComboBox`, `JDesktopPane`, `JDialog`, `JEditorPane`, `JFileChooser`, `JFormattedTextField`, `JFrame`, `JInternalFrame`, `JInternalFrame.JDesktopIcon`, `JLabel`, `JLayer`, `JLayeredPane`, `JList`, `JList.AccessibleJList.AccessibleJListChild`, `JMenu`, `JMenuBar`, `JMenuItem`, `JOptionPane`, `JPanel`, `JPasswordField`, `JPopupMenu`, `JPopupMenu.Separator`, `JProgressBar`, `JRadioButton`, `JRadioButtonMenuItem`, `JRootPane`, `JScrollBar`, `JScrollPane`, `JScrollPane.ScrollBar`, `JSeparator`, `JSlider`, `JSpinner`, `JSpinner.DateEditor`, `JSpinner.DefaultEditor`, `JSpinner.ListEditor`, `JSpinner.NumberEditor`, `JSplitPane`, `JTabbedPane`, `JTable`, `JTable.AccessibleJTable.AccessibleJTableCell`, `JTableHeader`, `JTableHeader.AccessibleJTableHeader.AccessibleJTableHeaderEntry`, `JTextArea`, `JTextComponent`, `JTextField`, `JTextPane`, `JToggleButton`, `JToolBar`, `JToolBar.Separator`, `JToolTip`, `JTree`, `JTree.AccessibleJTree.AccessibleJTreeNode`, `JViewport`, `JWindow`, `Label`, `List`, `List.AccessibleAWTList.AccessibleAWTListChild`, `Menu`, `MenuBar`, `MenuItem`, `MetalComboBoxButton`, `MetalComboBoxUI.MetalComboPopup`, `MetalFileChooserUI.FileRenderer`, `MetalFileChooserUI.FilterComboBoxRenderer`, `MetalScrollButton`, `Panel`, `PopupMenu`, `ProgressMonitor`, `Scrollbar`, `ScrollPane`, `TextArea`, `TextComponent`, `TextField`, `Window`

---

public interface Accessible

Interface `Accessible` is the main interface for the accessibility
package. All components that support the accessibility package must implement
this interface. It contains a single method, [`getAccessibleContext()`](#getAccessibleContext()),
which returns an instance of the class [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility").

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AccessibleContext`

  `getAccessibleContext()`

  Returns the `AccessibleContext` associated with this object.

* ## Method Details

  + ### getAccessibleContext

    [AccessibleContext](AccessibleContext.md "class in javax.accessibility") getAccessibleContext()

    Returns the `AccessibleContext` associated with this object. In
    most cases, the return value should not be `null` if the object
    implements interface `Accessible`. If a component developer creates
    a subclass of an object that implements `Accessible`, and that
    subclass is not `Accessible`, the developer should override the
    `getAccessibleContext` method to return `null`.

    Returns:
    :   the `AccessibleContext` associated with this object