Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface JComboBox.KeySelectionManager

Enclosing class:
:   `JComboBox<E>`

---

public static interface JComboBox.KeySelectionManager

The interface that defines a `KeySelectionManager`.
To qualify as a `KeySelectionManager`,
the class needs to implement the method
that identifies the list index given a character and the
combo box data model.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `selectionForKey(char aKey,
  ComboBoxModel<?> aModel)`

  Given `aKey` and the model, returns the row
  that should become selected.

* ## Method Details

  + ### selectionForKey

    int selectionForKey(char aKey,
    [ComboBoxModel](ComboBoxModel.md "interface in javax.swing")<?> aModel)

    Given `aKey` and the model, returns the row
    that should become selected. Return -1 if no match was
    found.

    Parameters:
    :   `aKey` - a char value, usually indicating a keyboard key that
        was pressed
    :   `aModel` - a ComboBoxModel -- the component's data model, containing
        the list of selectable items

    Returns:
    :   an int equal to the selected row, where 0 is the
        first item and -1 is none.