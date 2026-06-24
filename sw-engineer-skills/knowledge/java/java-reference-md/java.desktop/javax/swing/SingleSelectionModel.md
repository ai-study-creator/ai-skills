Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface SingleSelectionModel

All Known Implementing Classes:
:   `DefaultSingleSelectionModel`

---

public interface SingleSelectionModel

A model that supports at most one indexed selection.

Since:
:   1.2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener listener)`

  Adds *listener* as a listener to changes in the model.

  `void`

  `clearSelection()`

  Clears the selection (to -1).

  `int`

  `getSelectedIndex()`

  Returns the model's selection.

  `boolean`

  `isSelected()`

  Returns true if the selection model currently has a selected value.

  `void`

  `removeChangeListener(ChangeListener listener)`

  Removes *listener* as a listener to changes in the model.

  `void`

  `setSelectedIndex(int index)`

  Sets the model's selected index to *index*.

* ## Method Details

  + ### getSelectedIndex

    int getSelectedIndex()

    Returns the model's selection.

    Returns:
    :   the model's selection, or -1 if there is no selection

    See Also:
    :   - [`setSelectedIndex(int)`](#setSelectedIndex(int))
  + ### setSelectedIndex

    void setSelectedIndex(int index)

    Sets the model's selected index to *index*.
    Notifies any listeners if the model changes

    Parameters:
    :   `index` - an int specifying the model selection

    See Also:
    :   - [`getSelectedIndex()`](#getSelectedIndex())
        - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))
  + ### clearSelection

    void clearSelection()

    Clears the selection (to -1).
  + ### isSelected

    boolean isSelected()

    Returns true if the selection model currently has a selected value.

    Returns:
    :   true if a value is currently selected
  + ### addChangeListener

    void addChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") listener)

    Adds *listener* as a listener to changes in the model.

    Parameters:
    :   `listener` - the ChangeListener to add
  + ### removeChangeListener

    void removeChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") listener)

    Removes *listener* as a listener to changes in the model.

    Parameters:
    :   `listener` - the ChangeListener to remove