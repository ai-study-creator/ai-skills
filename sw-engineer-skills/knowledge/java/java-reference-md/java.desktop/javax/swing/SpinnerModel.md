Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Interface SpinnerModel

All Known Implementing Classes:
:   `AbstractSpinnerModel`, `SpinnerDateModel`, `SpinnerListModel`, `SpinnerNumberModel`

---

public interface SpinnerModel

A model for a potentially unbounded sequence of object values. This model
is similar to `ListModel` however there are some important differences:

* The number of sequence elements isn't necessarily bounded.* The model doesn't support indexed random access to sequence elements.
    Only three sequence values are accessible at a time: current, next and
    previous.* The current sequence element, can be set.

A `SpinnerModel` has three properties, only the first is read/write.

`value`: The current element of the sequence. `nextValue`: The following element or null if `value` is the last element of the sequence. `previousValue`: The preceding element or null if `value` is the first element of the sequence.

When the `value` property changes,
`ChangeListeners` are notified. `SpinnerModel` may
choose to notify the `ChangeListeners` under other circumstances.

Since:
:   1.4

See Also:
:   * [`JSpinner`](JSpinner.md "class in javax.swing")
    * [`AbstractSpinnerModel`](AbstractSpinnerModel.md "class in javax.swing")
    * [`SpinnerListModel`](SpinnerListModel.md "class in javax.swing")
    * [`SpinnerNumberModel`](SpinnerNumberModel.md "class in javax.swing")
    * [`SpinnerDateModel`](SpinnerDateModel.md "class in javax.swing")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a `ChangeListener` to the model's listener list.

  `Object`

  `getNextValue()`

  Return the object in the sequence that comes after the object returned
  by `getValue()`.

  `Object`

  `getPreviousValue()`

  Return the object in the sequence that comes before the object returned
  by `getValue()`.

  `Object`

  `getValue()`

  The *current element* of the sequence.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a `ChangeListener` from the model's listener list.

  `void`

  `setValue(Object value)`

  Changes current value of the model, typically this value is displayed
  by the `editor` part of a `JSpinner`.

* ## Method Details

  + ### getValue

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValue()

    The *current element* of the sequence. This element is usually
    displayed by the `editor` part of a `JSpinner`.

    Returns:
    :   the current spinner value.

    See Also:
    :   - [`setValue(java.lang.Object)`](#setValue(java.lang.Object))
  + ### setValue

    void setValue([Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Changes current value of the model, typically this value is displayed
    by the `editor` part of a `JSpinner`.
    If the `SpinnerModel` implementation doesn't support
    the specified value then an `IllegalArgumentException`
    is thrown. For example a `SpinnerModel` for numbers might
    only support values that are integer multiples of ten. In
    that case, `model.setValue(new Number(11))`
    would throw an exception.

    Parameters:
    :   `value` - new value for the spinner

    Throws:
    :   `IllegalArgumentException` - if `value` isn't allowed

    See Also:
    :   - [`getValue()`](#getValue())
  + ### getNextValue

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") getNextValue()

    Return the object in the sequence that comes after the object returned
    by `getValue()`. If the end of the sequence has been reached
    then return null. Calling this method does not effect `value`.

    Returns:
    :   the next legal value or null if one doesn't exist

    See Also:
    :   - [`getValue()`](#getValue())
        - [`getPreviousValue()`](#getPreviousValue())
  + ### getPreviousValue

    [Object](../../../java.base/java/lang/Object.md "class in java.lang") getPreviousValue()

    Return the object in the sequence that comes before the object returned
    by `getValue()`. If the end of the sequence has been reached then
    return null. Calling this method does not effect `value`.

    Returns:
    :   the previous legal value or null if one doesn't exist

    See Also:
    :   - [`getValue()`](#getValue())
        - [`getNextValue()`](#getNextValue())
  + ### addChangeListener

    void addChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a `ChangeListener` to the model's listener list. The
    `ChangeListeners` must be notified when models `value`
    changes.

    Parameters:
    :   `l` - the ChangeListener to add

    See Also:
    :   - [`removeChangeListener(javax.swing.event.ChangeListener)`](#removeChangeListener(javax.swing.event.ChangeListener))
  + ### removeChangeListener

    void removeChangeListener([ChangeListener](event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a `ChangeListener` from the model's listener list.

    Parameters:
    :   `l` - the ChangeListener to remove

    See Also:
    :   - [`addChangeListener(javax.swing.event.ChangeListener)`](#addChangeListener(javax.swing.event.ChangeListener))