Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Interface AccessibleAction

All Known Implementing Classes:
:   `AbstractButton.AccessibleAbstractButton`, `AccessibleHyperlink`, `Button.AccessibleAWTButton`, `Checkbox.AccessibleAWTCheckbox`, `CheckboxMenuItem.AccessibleAWTCheckboxMenuItem`, `Choice.AccessibleAWTChoice`, `JButton.AccessibleJButton`, `JCheckBox.AccessibleJCheckBox`, `JCheckBoxMenuItem.AccessibleJCheckBoxMenuItem`, `JComboBox.AccessibleJComboBox`, `JEditorPane.AccessibleJEditorPane`, `JEditorPane.AccessibleJEditorPaneHTML`, `JEditorPane.JEditorPaneAccessibleHypertextSupport`, `JEditorPane.JEditorPaneAccessibleHypertextSupport.HTMLLink`, `JList.AccessibleJList.AccessibleJListChild`, `JMenu.AccessibleJMenu`, `JMenuItem.AccessibleJMenuItem`, `JPasswordField.AccessibleJPasswordField`, `JRadioButton.AccessibleJRadioButton`, `JRadioButtonMenuItem.AccessibleJRadioButtonMenuItem`, `JSlider.AccessibleJSlider`, `JSpinner.AccessibleJSpinner`, `JTextArea.AccessibleJTextArea`, `JTextComponent.AccessibleJTextComponent`, `JTextField.AccessibleJTextField`, `JToggleButton.AccessibleJToggleButton`, `JTree.AccessibleJTree.AccessibleJTreeNode`, `Menu.AccessibleAWTMenu`, `MenuItem.AccessibleAWTMenuItem`, `PopupMenu.AccessibleAWTPopupMenu`

---

public interface AccessibleAction

The `AccessibleAction` interface should be supported by any object that
can perform one or more actions. This interface provides the standard
mechanism for an assistive technology to determine what those actions are as
well as tell the object to perform them. Any object that can be manipulated
should support this interface. Applications can determine if an object
supports the `AccessibleAction` interface by first obtaining its
`AccessibleContext` (see [`Accessible`](Accessible.md "interface in javax.accessibility")) and then calling the
[`AccessibleContext.getAccessibleAction()`](AccessibleContext.md#getAccessibleAction()) method. If the return value is
not `null`, the object supports this interface.

See Also:
:   * [`Accessible`](Accessible.md "interface in javax.accessibility")
    * [`Accessible.getAccessibleContext()`](Accessible.md#getAccessibleContext())
    * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")
    * [`AccessibleContext.getAccessibleAction()`](AccessibleContext.md#getAccessibleAction())

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `CLICK`

  An action which causes a component to execute its default action.

  `static final String`

  `DECREMENT`

  An action which decrements a value.

  `static final String`

  `INCREMENT`

  An action which increments a value.

  `static final String`

  `TOGGLE_EXPAND`

  An action which causes a tree node to collapse if expanded and expand if
  collapsed.

  `static final String`

  `TOGGLE_POPUP`

  An action which causes a popup to become visible if it is hidden and
  hidden if it is visible.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `doAccessibleAction(int i)`

  Performs the specified action on the object.

  `int`

  `getAccessibleActionCount()`

  Returns the number of accessible actions available in this object If
  there are more than one, the first one is considered the "default" action
  of the object.

  `String`

  `getAccessibleActionDescription(int i)`

  Returns a description of the specified action of the object.

* ## Field Details

  + ### TOGGLE\_EXPAND

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") TOGGLE\_EXPAND

    An action which causes a tree node to collapse if expanded and expand if
    collapsed.

    Since:
    :   1.5
  + ### INCREMENT

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") INCREMENT

    An action which increments a value.

    Since:
    :   1.5
  + ### DECREMENT

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") DECREMENT

    An action which decrements a value.

    Since:
    :   1.5
  + ### CLICK

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") CLICK

    An action which causes a component to execute its default action.

    Since:
    :   1.6
  + ### TOGGLE\_POPUP

    static final [String](../../../java.base/java/lang/String.md "class in java.lang") TOGGLE\_POPUP

    An action which causes a popup to become visible if it is hidden and
    hidden if it is visible.

    Since:
    :   1.6
* ## Method Details

  + ### getAccessibleActionCount

    int getAccessibleActionCount()

    Returns the number of accessible actions available in this object If
    there are more than one, the first one is considered the "default" action
    of the object.

    Returns:
    :   the zero-based number of actions in this object
  + ### getAccessibleActionDescription

    [String](../../../java.base/java/lang/String.md "class in java.lang") getAccessibleActionDescription(int i)

    Returns a description of the specified action of the object.

    Parameters:
    :   `i` - zero-based index of the actions

    Returns:
    :   a `String` description of the action

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())
  + ### doAccessibleAction

    boolean doAccessibleAction(int i)

    Performs the specified action on the object.

    Parameters:
    :   `i` - zero-based index of actions

    Returns:
    :   `true` if the action was performed; otherwise `false`

    See Also:
    :   - [`getAccessibleActionCount()`](#getAccessibleActionCount())