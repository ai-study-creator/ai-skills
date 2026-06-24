Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class SpinnerListModel

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")

javax.swing.SpinnerListModel

All Implemented Interfaces:
:   `Serializable`, `SpinnerModel`

---

public class SpinnerListModel
extends [AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A simple implementation of `SpinnerModel` whose
values are defined by an array or a `List`.
For example to create a model defined by
an array of the names of the days of the week:

```
 String[] days = new DateFormatSymbols().getWeekdays();
 SpinnerModel model = new SpinnerListModel(Arrays.asList(days).subList(1, 8));
```

This class only stores a reference to the array or `List`
so if an element of the underlying sequence changes, it's up
to the application to notify the `ChangeListeners` by calling
`fireStateChanged`.

This model inherits a `ChangeListener`.
The `ChangeListener`s are notified whenever the
model's `value` or `list` properties changes.

Since:
:   1.4

See Also:
:   * [`JSpinner`](JSpinner.md "class in javax.swing")
    * [`SpinnerModel`](SpinnerModel.md "interface in javax.swing")
    * [`AbstractSpinnerModel`](AbstractSpinnerModel.md "class in javax.swing")
    * [`SpinnerNumberModel`](SpinnerNumberModel.md "class in javax.swing")
    * [`SpinnerDateModel`](SpinnerDateModel.md "class in javax.swing")

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")

  `listenerList`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SpinnerListModel()`

  Constructs an effectively empty `SpinnerListModel`.

  `SpinnerListModel(Object[] values)`

  Constructs a `SpinnerModel` whose sequence of values
  is defined by the specified array.

  `SpinnerListModel(List<?> values)`

  Constructs a `SpinnerModel` whose sequence of
  values is defined by the specified `List`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `List<?>`

  `getList()`

  Returns the `List` that defines the sequence for this model.

  `Object`

  `getNextValue()`

  Returns the next legal value of the underlying sequence or
  `null` if value is already the last element.

  `Object`

  `getPreviousValue()`

  Returns the previous element of the underlying sequence or
  `null` if value is already the first element.

  `Object`

  `getValue()`

  Returns the current element of the sequence.

  `void`

  `setList(List<?> list)`

  Changes the list that defines this sequence and resets the index
  of the models `value` to zero.

  `void`

  `setValue(Object elt)`

  Changes the current element of the sequence and notifies
  `ChangeListeners`.

  ### Methods inherited from class javax.swing.[AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")

  `addChangeListener, fireStateChanged, getChangeListeners, getListeners, removeChangeListener`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SpinnerListModel

    public SpinnerListModel([List](../../../java.base/java/util/List.md "interface in java.util")<?> values)

    Constructs a `SpinnerModel` whose sequence of
    values is defined by the specified `List`.
    The initial value (*current element*)
    of the model will be `values.get(0)`.
    If `values` is `null` or has zero
    size, an `IllegalArugmentException` is thrown.

    Parameters:
    :   `values` - the sequence this model represents

    Throws:
    :   `IllegalArgumentException` - if `values` is
        `null` or zero size
  + ### SpinnerListModel

    public SpinnerListModel([Object](../../../java.base/java/lang/Object.md "class in java.lang")[] values)

    Constructs a `SpinnerModel` whose sequence of values
    is defined by the specified array. The initial value of the model
    will be `values[0]`. If `values` is
    `null` or has zero length, an
    `IllegalArgumentException` is thrown.

    Parameters:
    :   `values` - the sequence this model represents

    Throws:
    :   `IllegalArgumentException` - if `values` is
        `null` or zero length
  + ### SpinnerListModel

    public SpinnerListModel()

    Constructs an effectively empty `SpinnerListModel`.
    The model's list will contain a single
    `"empty"` string element.
* ## Method Details

  + ### getList

    public [List](../../../java.base/java/util/List.md "interface in java.util")<?> getList()

    Returns the `List` that defines the sequence for this model.

    Returns:
    :   the value of the `list` property

    See Also:
    :   - [`setList(java.util.List<?>)`](#setList(java.util.List))
  + ### setList

    public void setList([List](../../../java.base/java/util/List.md "interface in java.util")<?> list)

    Changes the list that defines this sequence and resets the index
    of the models `value` to zero. Note that `list`
    is not copied, the model just stores a reference to it.

    This method fires a `ChangeEvent` if `list` is
    not equal to the current list.

    Parameters:
    :   `list` - the sequence that this model represents

    Throws:
    :   `IllegalArgumentException` - if `list` is
        `null` or zero length

    See Also:
    :   - [`getList()`](#getList())
  + ### getValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValue()

    Returns the current element of the sequence.

    Specified by:
    :   `getValue` in interface `SpinnerModel`

    Returns:
    :   the `value` property

    See Also:
    :   - [`SpinnerModel.getValue()`](SpinnerModel.md#getValue())
        - [`setValue(java.lang.Object)`](#setValue(java.lang.Object))
  + ### setValue

    public void setValue([Object](../../../java.base/java/lang/Object.md "class in java.lang") elt)

    Changes the current element of the sequence and notifies
    `ChangeListeners`. If the specified
    value is not equal to an element of the underlying sequence
    then an `IllegalArgumentException` is thrown.
    In the following example the `setValue` call
    would cause an exception to be thrown:

    ```
     String[] values = {"one", "two", "free", "four"};
     SpinnerModel model = new SpinnerListModel(values);
     model.setValue("TWO");
    ```

    Specified by:
    :   `setValue` in interface `SpinnerModel`

    Parameters:
    :   `elt` - the sequence element that will be model's current value

    Throws:
    :   `IllegalArgumentException` - if the specified value isn't allowed

    See Also:
    :   - [`SpinnerModel.setValue(java.lang.Object)`](SpinnerModel.md#setValue(java.lang.Object))
        - [`getValue()`](#getValue())
  + ### getNextValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getNextValue()

    Returns the next legal value of the underlying sequence or
    `null` if value is already the last element.

    Specified by:
    :   `getNextValue` in interface `SpinnerModel`

    Returns:
    :   the next legal value of the underlying sequence or
        `null` if value is already the last element

    See Also:
    :   - [`SpinnerModel.getNextValue()`](SpinnerModel.md#getNextValue())
        - [`getPreviousValue()`](#getPreviousValue())
  + ### getPreviousValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getPreviousValue()

    Returns the previous element of the underlying sequence or
    `null` if value is already the first element.

    Specified by:
    :   `getPreviousValue` in interface `SpinnerModel`

    Returns:
    :   the previous element of the underlying sequence or
        `null` if value is already the first element

    See Also:
    :   - [`SpinnerModel.getPreviousValue()`](SpinnerModel.md#getPreviousValue())
        - [`getNextValue()`](#getNextValue())