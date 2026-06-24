Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class CheckboxGroup

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.CheckboxGroup

All Implemented Interfaces:
:   `Serializable`

---

public class CheckboxGroup
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

The `CheckboxGroup` class is used to group together
a set of `Checkbox` buttons.

Exactly one check box button in a `CheckboxGroup` can
be in the "on" state at any given time. Pushing any
button sets its state to "on" and forces any other button that
is in the "on" state into the "off" state.

The following code example produces a new check box group,
with three check boxes:

---

> ```
>  setLayout(new GridLayout(3, 1));
>  CheckboxGroup cbg = new CheckboxGroup();
>  add(new Checkbox("one", cbg, true));
>  add(new Checkbox("two", cbg, false));
>  add(new Checkbox("three", cbg, false));
> ```

---

This image depicts the check box group created by this example:

![Shows three checkboxes,
 arranged vertically, labeled one, two, and three. Checkbox one is in the on
 state.](doc-files/CheckboxGroup-1.gif)

Since:
:   1.0

See Also:
:   * [`Checkbox`](Checkbox.md "class in java.awt")
    * [Serialized Form](../../../serialized-form.md#java.awt.CheckboxGroup)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CheckboxGroup()`

  Creates a new instance of `CheckboxGroup`.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Checkbox`

  `getCurrent()`

  Deprecated.

  As of JDK version 1.1,
  replaced by `getSelectedCheckbox()`.

  `Checkbox`

  `getSelectedCheckbox()`

  Gets the current choice from this check box group.

  `void`

  `setCurrent(Checkbox box)`

  Deprecated.

  As of JDK version 1.1,
  replaced by `setSelectedCheckbox(Checkbox)`.

  `void`

  `setSelectedCheckbox(Checkbox box)`

  Sets the currently selected check box in this group
  to be the specified check box.

  `String`

  `toString()`

  Returns a string representation of this check box group,
  including the value of its current selection.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CheckboxGroup

    public CheckboxGroup()

    Creates a new instance of `CheckboxGroup`.
* ## Method Details

  + ### getSelectedCheckbox

    public [Checkbox](Checkbox.md "class in java.awt") getSelectedCheckbox()

    Gets the current choice from this check box group.
    The current choice is the check box in this
    group that is currently in the "on" state,
    or `null` if all check boxes in the
    group are off.

    Returns:
    :   the check box that is currently in the
        "on" state, or `null`.

    Since:
    :   1.1

    See Also:
    :   - [`Checkbox`](Checkbox.md "class in java.awt")
        - [`setSelectedCheckbox(java.awt.Checkbox)`](#setSelectedCheckbox(java.awt.Checkbox))
  + ### getCurrent

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public [Checkbox](Checkbox.md "class in java.awt") getCurrent()

    Deprecated.

    As of JDK version 1.1,
    replaced by `getSelectedCheckbox()`.

    Returns the current choice from this check box group
    or `null` if none of checkboxes are selected.

    Returns:
    :   the selected checkbox
  + ### setSelectedCheckbox

    public void setSelectedCheckbox([Checkbox](Checkbox.md "class in java.awt") box)

    Sets the currently selected check box in this group
    to be the specified check box.
    This method sets the state of that check box to "on" and
    sets all other check boxes in the group to be off.

    If the check box argument is `null`, all check boxes
    in this check box group are deselected. If the check box argument
    belongs to a different check box group, this method does
    nothing.

    Parameters:
    :   `box` - the `Checkbox` to set as the
        current selection.

    Since:
    :   1.1

    See Also:
    :   - [`Checkbox`](Checkbox.md "class in java.awt")
        - [`getSelectedCheckbox()`](#getSelectedCheckbox())
  + ### setCurrent

    [@Deprecated](../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    public void setCurrent([Checkbox](Checkbox.md "class in java.awt") box)

    Deprecated.

    As of JDK version 1.1,
    replaced by `setSelectedCheckbox(Checkbox)`.

    Sets the currently selected check box in this group
    to be the specified check box and unsets all others.

    Parameters:
    :   `box` - the `Checkbox` to set as the
        current selection.
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this check box group,
    including the value of its current selection.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this check box group.