Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleExtendedComponent

All Superinterfaces:
:   `AccessibleComponent`

All Known Implementing Classes:
:   `AbstractButton.AccessibleAbstractButton`, `JButton.AccessibleJButton`, `JCheckBox.AccessibleJCheckBox`, `JCheckBoxMenuItem.AccessibleJCheckBoxMenuItem`, `JColorChooser.AccessibleJColorChooser`, `JComboBox.AccessibleJComboBox`, `JComponent.AccessibleJComponent`, `JDesktopPane.AccessibleJDesktopPane`, `JEditorPane.AccessibleJEditorPane`, `JEditorPane.AccessibleJEditorPaneHTML`, `JEditorPane.JEditorPaneAccessibleHypertextSupport`, `JFileChooser.AccessibleJFileChooser`, `JInternalFrame.AccessibleJInternalFrame`, `JInternalFrame.JDesktopIcon.AccessibleJDesktopIcon`, `JLabel.AccessibleJLabel`, `JLayeredPane.AccessibleJLayeredPane`, `JList.AccessibleJList`, `JMenu.AccessibleJMenu`, `JMenuBar.AccessibleJMenuBar`, `JMenuItem.AccessibleJMenuItem`, `JOptionPane.AccessibleJOptionPane`, `JPanel.AccessibleJPanel`, `JPasswordField.AccessibleJPasswordField`, `JPopupMenu.AccessibleJPopupMenu`, `JProgressBar.AccessibleJProgressBar`, `JRadioButton.AccessibleJRadioButton`, `JRadioButtonMenuItem.AccessibleJRadioButtonMenuItem`, `JRootPane.AccessibleJRootPane`, `JScrollBar.AccessibleJScrollBar`, `JScrollPane.AccessibleJScrollPane`, `JSeparator.AccessibleJSeparator`, `JSlider.AccessibleJSlider`, `JSpinner.AccessibleJSpinner`, `JSplitPane.AccessibleJSplitPane`, `JTabbedPane.AccessibleJTabbedPane`, `JTable.AccessibleJTable`, `JTableHeader.AccessibleJTableHeader`, `JTextArea.AccessibleJTextArea`, `JTextComponent.AccessibleJTextComponent`, `JTextField.AccessibleJTextField`, `JToggleButton.AccessibleJToggleButton`, `JToolBar.AccessibleJToolBar`, `JToolTip.AccessibleJToolTip`, `JTree.AccessibleJTree`, `JViewport.AccessibleJViewport`

---

public interface AccessibleExtendedComponent
extends [AccessibleComponent](AccessibleComponent.md "interface in javax.accessibility")

The `AccessibleExtendedComponent` interface should be supported by any
object that is rendered on the screen. This interface provides the standard
mechanism for an assistive technology to determine the extended graphical
representation of an object. Applications can determine if an object supports
the `AccessibleExtendedComponent` interface by first obtaining its
`AccessibleContext` and then calling the
[`AccessibleContext.getAccessibleComponent()`](AccessibleContext.md#getAccessibleComponent()) method. If the return value
is not `null` and the type of the return value is
`AccessibleExtendedComponent`, the object supports this interface.

Since:
:   1.4

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")
    * [`AccessibleContext.getAccessibleComponent()`](AccessibleContext.md#getAccessibleComponent())

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AccessibleKeyBinding`

  `getAccessibleKeyBinding()`

  Returns key bindings associated with this object.

  `String`

  `getTitledBorderText()`

  Returns the titled border text.

  `String`

  `getToolTipText()`

  Returns the tool tip text.

  ### Methods inherited from interface javax.accessibility.[AccessibleComponent](AccessibleComponent.md "interface in javax.accessibility")

  `addFocusListener, contains, getAccessibleAt, getBackground, getBounds, getCursor, getFont, getFontMetrics, getForeground, getLocation, getLocationOnScreen, getSize, isEnabled, isFocusTraversable, isShowing, isVisible, removeFocusListener, requestFocus, setBackground, setBounds, setCursor, setEnabled, setFont, setForeground, setLocation, setSize, setVisible`

* ## Method Details

  + ### getToolTipText

    [String](../../../java.base/java/lang/String.md "class in java.lang") getToolTipText()

    Returns the tool tip text.

    Returns:
    :   the tool tip text, if supported, of the object; otherwise,
        `null`
  + ### getTitledBorderText

    [String](../../../java.base/java/lang/String.md "class in java.lang") getTitledBorderText()

    Returns the titled border text.

    Returns:
    :   the titled border text, if supported, of the object; otherwise,
        `null`
  + ### getAccessibleKeyBinding

    [AccessibleKeyBinding](AccessibleKeyBinding.md "interface in javax.accessibility") getAccessibleKeyBinding()

    Returns key bindings associated with this object.

    Returns:
    :   the key bindings, if supported, of the object; otherwise,
        `null`

    See Also:
    :   - [`AccessibleKeyBinding`](AccessibleKeyBinding.md "interface in javax.accessibility")