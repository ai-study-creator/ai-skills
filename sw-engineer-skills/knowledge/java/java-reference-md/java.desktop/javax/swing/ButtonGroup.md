Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class ButtonGroup

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.ButtonGroup

All Implemented Interfaces:
:   `Serializable`

---

public class ButtonGroup
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

This class is used to create a multiple-exclusion scope for
a set of buttons. Creating a set of buttons with the
same `ButtonGroup` object means that
turning "on" one of those buttons
turns off all other buttons in the group.

A `ButtonGroup` can be used with
any set of objects that inherit from `AbstractButton`.
Typically a button group contains instances of
`JRadioButton`,
`JRadioButtonMenuItem`,
or `JToggleButton`.
It wouldn't make sense to put an instance of
`JButton` or `JMenuItem`
in a button group
because `JButton` and `JMenuItem`
don't implement the selected state.

Initially, all buttons in the group are unselected.

For examples and further information on using button groups see
[How to Use Radio Buttons](https://docs.oracle.com/javase/tutorial/uiswing/components/button.html#radiobutton),
a section in *The Java Tutorial*.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../java/beans/XMLEncoder.md "class in java.beans").

Since:
:   1.2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Vector<AbstractButton>`

  `buttons`

  The list of buttons participating in this group.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ButtonGroup()`

  Creates a new `ButtonGroup`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(AbstractButton b)`

  Adds the button to the group.

  `void`

  `clearSelection()`

  Clears the selection such that none of the buttons
  in the `ButtonGroup` are selected.

  `int`

  `getButtonCount()`

  Returns the number of buttons in the group.

  `Enumeration<AbstractButton>`

  `getElements()`

  Returns all the buttons that are participating in
  this group.

  `ButtonModel`

  `getSelection()`

  Returns the model of the selected button.

  `boolean`

  `isSelected(ButtonModel m)`

  Returns whether a `ButtonModel` is selected.

  `void`

  `remove(AbstractButton b)`

  Removes the button from the group.

  `void`

  `setSelected(ButtonModel m,
  boolean b)`

  Sets the selected value for the `ButtonModel`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### buttons

    protected [Vector](../../../java.base/java/util/Vector.md "class in java.util")<[AbstractButton](AbstractButton.md "class in javax.swing")> buttons

    The list of buttons participating in this group.
* ## Constructor Details

  + ### ButtonGroup

    public ButtonGroup()

    Creates a new `ButtonGroup`.
* ## Method Details

  + ### add

    public void add([AbstractButton](AbstractButton.md "class in javax.swing") b)

    Adds the button to the group.

    Parameters:
    :   `b` - the button to be added
  + ### remove

    public void remove([AbstractButton](AbstractButton.md "class in javax.swing") b)

    Removes the button from the group.

    Parameters:
    :   `b` - the button to be removed
  + ### clearSelection

    public void clearSelection()

    Clears the selection such that none of the buttons
    in the `ButtonGroup` are selected.

    Since:
    :   1.6
  + ### getElements

    public [Enumeration](../../../java.base/java/util/Enumeration.md "interface in java.util")<[AbstractButton](AbstractButton.md "class in javax.swing")> getElements()

    Returns all the buttons that are participating in
    this group.

    Returns:
    :   an `Enumeration` of the buttons in this group
  + ### getSelection

    public [ButtonModel](ButtonModel.md "interface in javax.swing") getSelection()

    Returns the model of the selected button.

    Returns:
    :   the selected button model
  + ### setSelected

    public void setSelected([ButtonModel](ButtonModel.md "interface in javax.swing") m,
    boolean b)

    Sets the selected value for the `ButtonModel`.
    Only one button in the group may be selected at a time.

    Parameters:
    :   `m` - the `ButtonModel`
    :   `b` - `true` if this button is to be
        selected, otherwise `false`
  + ### isSelected

    public boolean isSelected([ButtonModel](ButtonModel.md "interface in javax.swing") m)

    Returns whether a `ButtonModel` is selected.

    Parameters:
    :   `m` - an instance of `ButtonModel`

    Returns:
    :   `true` if the button is selected,
        otherwise returns `false`
  + ### getButtonCount

    public int getButtonCount()

    Returns the number of buttons in the group.

    Returns:
    :   the button count

    Since:
    :   1.3