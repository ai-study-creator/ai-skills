Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class SpinnerDateModel

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")

javax.swing.SpinnerDateModel

All Implemented Interfaces:
:   `Serializable`, `SpinnerModel`

---

public class SpinnerDateModel
extends [AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A `SpinnerModel` for sequences of `Date`s.
The upper and lower bounds of the sequence are defined by properties called
`start` and `end` and the size
of the increase or decrease computed by the `nextValue`
and `previousValue` methods is defined by a property
called `calendarField`. The `start`
and `end` properties can be `null` to
indicate that the sequence has no lower or upper limit.

The value of the `calendarField` property must be one of the
`java.util.Calendar` constants that specify a field
within a `Calendar`. The `getNextValue`
and `getPreviousValue`
methods change the date forward or backwards by this amount.
For example, if `calendarField` is `Calendar.DAY_OF_WEEK`,
then `nextValue` produces a `Date` that's 24
hours after the current `value`, and `previousValue`
produces a `Date` that's 24 hours earlier.

The legal values for `calendarField` are:

* `Calendar.ERA`* `Calendar.YEAR`* `Calendar.MONTH`* `Calendar.WEEK_OF_YEAR`* `Calendar.WEEK_OF_MONTH`* `Calendar.DAY_OF_MONTH`* `Calendar.DAY_OF_YEAR`* `Calendar.DAY_OF_WEEK`* `Calendar.DAY_OF_WEEK_IN_MONTH`* `Calendar.AM_PM`* `Calendar.HOUR`* `Calendar.HOUR_OF_DAY`* `Calendar.MINUTE`* `Calendar.SECOND`* `Calendar.MILLISECOND`

However some UIs may set the calendarField before committing the edit
to spin the field under the cursor. If you only want one field to
spin you can subclass and ignore the setCalendarField calls.

This model inherits a `ChangeListener`. The
`ChangeListeners` are notified whenever the models
`value`, `calendarField`,
`start`, or `end` properties changes.

Since:
:   1.4

See Also:
:   * [`JSpinner`](JSpinner.md "class in javax.swing")
    * [`SpinnerModel`](SpinnerModel.md "interface in javax.swing")
    * [`AbstractSpinnerModel`](AbstractSpinnerModel.md "class in javax.swing")
    * [`SpinnerListModel`](SpinnerListModel.md "class in javax.swing")
    * [`SpinnerNumberModel`](SpinnerNumberModel.md "class in javax.swing")
    * [`Calendar.add(int, int)`](../../../java.base/java/util/Calendar.md#add(int,int))

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")

  `listenerList`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SpinnerDateModel()`

  Constructs a `SpinnerDateModel` whose initial
  `value` is the current date, `calendarField`
  is equal to `Calendar.DAY_OF_MONTH`, and for which
  there are no `start`/`end` limits.

  `SpinnerDateModel(Date value,
  Comparable<Date> start,
  Comparable<Date> end,
  int calendarField)`

  Creates a `SpinnerDateModel` that represents a sequence of dates
  between `start` and `end`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getCalendarField()`

  Returns the `Calendar` field that is added to or subtracted from
  by the `nextValue` and `previousValue` methods.

  `Date`

  `getDate()`

  Returns the current element in this sequence of `Date`s.

  `Comparable<Date>`

  `getEnd()`

  Returns the last `Date` in the sequence.

  `Object`

  `getNextValue()`

  Returns the next `Date` in the sequence, or `null` if
  the next date is after `end`.

  `Object`

  `getPreviousValue()`

  Returns the previous `Date` in the sequence, or `null`
  if the previous date is before `start`.

  `Comparable<Date>`

  `getStart()`

  Returns the first `Date` in the sequence.

  `Object`

  `getValue()`

  Returns the current element in this sequence of `Date`s.

  `void`

  `setCalendarField(int calendarField)`

  Changes the size of the date value change computed
  by the `nextValue` and `previousValue` methods.

  `void`

  `setEnd(Comparable<Date> end)`

  Changes the upper limit for `Date`s in this sequence.

  `void`

  `setStart(Comparable<Date> start)`

  Changes the lower limit for Dates in this sequence.

  `void`

  `setValue(Object value)`

  Sets the current `Date` for this sequence.

  ### Methods inherited from class javax.swing.[AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")

  `addChangeListener, fireStateChanged, getChangeListeners, getListeners, removeChangeListener`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SpinnerDateModel

    public SpinnerDateModel([Date](../../../java.base/java/util/Date.md "class in java.util") value,
    [Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<[Date](../../../java.base/java/util/Date.md "class in java.util")> start,
    [Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<[Date](../../../java.base/java/util/Date.md "class in java.util")> end,
    int calendarField)

    Creates a `SpinnerDateModel` that represents a sequence of dates
    between `start` and `end`. The
    `nextValue` and `previousValue` methods
    compute elements of the sequence by advancing or reversing
    the current date `value` by the
    `calendarField` time unit. For a precise description
    of what it means to increment or decrement a `Calendar`
    `field`, see the `add` method in
    `java.util.Calendar`.

    The `start` and `end` parameters can be
    `null` to indicate that the range doesn't have an
    upper or lower bound. If `value` or
    `calendarField` is `null`, or if both
    `start` and `end` are specified and
    `minimum > maximum` then an
    `IllegalArgumentException` is thrown.
    Similarly if `(minimum <= value <= maximum)` is false,
    an IllegalArgumentException is thrown.

    Parameters:
    :   `value` - the current (non `null`) value of the model
    :   `start` - the first date in the sequence or `null`
    :   `end` - the last date in the sequence or `null`
    :   `calendarField` - one of
        - `Calendar.ERA`- `Calendar.YEAR`- `Calendar.MONTH`- `Calendar.WEEK_OF_YEAR`- `Calendar.WEEK_OF_MONTH`- `Calendar.DAY_OF_MONTH`- `Calendar.DAY_OF_YEAR`- `Calendar.DAY_OF_WEEK`- `Calendar.DAY_OF_WEEK_IN_MONTH`- `Calendar.AM_PM`- `Calendar.HOUR`- `Calendar.HOUR_OF_DAY`- `Calendar.MINUTE`- `Calendar.SECOND`- `Calendar.MILLISECOND`

    Throws:
    :   `IllegalArgumentException` - if `value` or
        `calendarField` are `null`,
        if `calendarField` isn't valid,
        or if the following expression is
        false: `(start <= value <= end)`.

    See Also:
    :   - [`Calendar.add(int, int)`](../../../java.base/java/util/Calendar.md#add(int,int))
        - [`setValue(java.lang.Object)`](#setValue(java.lang.Object))
        - [`setStart(java.lang.Comparable<java.util.Date>)`](#setStart(java.lang.Comparable))
        - [`setEnd(java.lang.Comparable<java.util.Date>)`](#setEnd(java.lang.Comparable))
        - [`setCalendarField(int)`](#setCalendarField(int))
  + ### SpinnerDateModel

    public SpinnerDateModel()

    Constructs a `SpinnerDateModel` whose initial
    `value` is the current date, `calendarField`
    is equal to `Calendar.DAY_OF_MONTH`, and for which
    there are no `start`/`end` limits.
* ## Method Details

  + ### setStart

    public void setStart([Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<[Date](../../../java.base/java/util/Date.md "class in java.util")> start)

    Changes the lower limit for Dates in this sequence.
    If `start` is `null`,
    then there is no lower limit. No bounds checking is done here:
    the new start value may invalidate the
    `(start <= value <= end)`
    invariant enforced by the constructors. This is to simplify updating
    the model. Naturally one should ensure that the invariant is true
    before calling the `nextValue`, `previousValue`,
    or `setValue` methods.

    Typically this property is a `Date` however it's possible to use
    a `Comparable` with a `compareTo` method for Dates.
    For example `start` might be an instance of a class like this:

    ```
     MyStartDate implements Comparable {
         long t = 12345;
         public int compareTo(Date d) {
                return (t < d.getTime() ? -1 : (t == d.getTime() ? 0 : 1));
         }
         public int compareTo(Object o) {
                return compareTo((Date)o);
         }
     }
    ```

    Note that the above example will throw a `ClassCastException`
    if the `Object` passed to `compareTo(Object)`
    is not a `Date`.

    This method fires a `ChangeEvent` if the
    `start` has changed.

    Parameters:
    :   `start` - defines the first date in the sequence

    See Also:
    :   - [`getStart()`](#getStart())
        - [`setEnd(java.lang.Comparable<java.util.Date>)`](#setEnd(java.lang.Comparable))
        - [`AbstractSpinnerModel.addChangeListener(javax.swing.event.ChangeListener)`](AbstractSpinnerModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### getStart

    public [Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<[Date](../../../java.base/java/util/Date.md "class in java.util")> getStart()

    Returns the first `Date` in the sequence.

    Returns:
    :   the value of the `start` property

    See Also:
    :   - [`setStart(java.lang.Comparable<java.util.Date>)`](#setStart(java.lang.Comparable))
  + ### setEnd

    public void setEnd([Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<[Date](../../../java.base/java/util/Date.md "class in java.util")> end)

    Changes the upper limit for `Date`s in this sequence.
    If `start` is `null`, then there is no upper
    limit. No bounds checking is done here: the new
    start value may invalidate the `(start <= value <= end)`
    invariant enforced by the constructors. This is to simplify updating
    the model. Naturally, one should ensure that the invariant is true
    before calling the `nextValue`, `previousValue`,
    or `setValue` methods.

    Typically this property is a `Date` however it's possible to use
    `Comparable` with a `compareTo` method for
    `Date`s. See `setStart` for an example.

    This method fires a `ChangeEvent` if the `end`
    has changed.

    Parameters:
    :   `end` - defines the last date in the sequence

    See Also:
    :   - [`getEnd()`](#getEnd())
        - [`setStart(java.lang.Comparable<java.util.Date>)`](#setStart(java.lang.Comparable))
        - [`AbstractSpinnerModel.addChangeListener(javax.swing.event.ChangeListener)`](AbstractSpinnerModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### getEnd

    public [Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<[Date](../../../java.base/java/util/Date.md "class in java.util")> getEnd()

    Returns the last `Date` in the sequence.

    Returns:
    :   the value of the `end` property

    See Also:
    :   - [`setEnd(java.lang.Comparable<java.util.Date>)`](#setEnd(java.lang.Comparable))
  + ### setCalendarField

    public void setCalendarField(int calendarField)

    Changes the size of the date value change computed
    by the `nextValue` and `previousValue` methods.
    The `calendarField` parameter must be one of the
    `Calendar` field constants like `Calendar.MONTH`
    or `Calendar.MINUTE`.
    The `nextValue` and `previousValue` methods
    simply move the specified `Calendar` field forward or backward
    by one unit with the `Calendar.add` method.
    You should use this method with care as some UIs may set the
    calendarField before committing the edit to spin the field under
    the cursor. If you only want one field to spin you can subclass
    and ignore the setCalendarField calls.

    Parameters:
    :   `calendarField` - one of
        - `Calendar.ERA`- `Calendar.YEAR`- `Calendar.MONTH`- `Calendar.WEEK_OF_YEAR`- `Calendar.WEEK_OF_MONTH`- `Calendar.DAY_OF_MONTH`- `Calendar.DAY_OF_YEAR`- `Calendar.DAY_OF_WEEK`- `Calendar.DAY_OF_WEEK_IN_MONTH`- `Calendar.AM_PM`- `Calendar.HOUR`- `Calendar.HOUR_OF_DAY`- `Calendar.MINUTE`- `Calendar.SECOND`- `Calendar.MILLISECOND`

        This method fires a `ChangeEvent` if the
        `calendarField` has changed.

    See Also:
    :   - [`getCalendarField()`](#getCalendarField())
        - [`getNextValue()`](#getNextValue())
        - [`getPreviousValue()`](#getPreviousValue())
        - [`Calendar.add(int, int)`](../../../java.base/java/util/Calendar.md#add(int,int))
        - [`AbstractSpinnerModel.addChangeListener(javax.swing.event.ChangeListener)`](AbstractSpinnerModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### getCalendarField

    public int getCalendarField()

    Returns the `Calendar` field that is added to or subtracted from
    by the `nextValue` and `previousValue` methods.

    Returns:
    :   the value of the `calendarField` property

    See Also:
    :   - [`setCalendarField(int)`](#setCalendarField(int))
  + ### getNextValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getNextValue()

    Returns the next `Date` in the sequence, or `null` if
    the next date is after `end`.

    Specified by:
    :   `getNextValue` in interface `SpinnerModel`

    Returns:
    :   the next `Date` in the sequence, or `null` if
        the next date is after `end`.

    See Also:
    :   - [`SpinnerModel.getNextValue()`](SpinnerModel.md#getNextValue())
        - [`getPreviousValue()`](#getPreviousValue())
        - [`setCalendarField(int)`](#setCalendarField(int))
  + ### getPreviousValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getPreviousValue()

    Returns the previous `Date` in the sequence, or `null`
    if the previous date is before `start`.

    Specified by:
    :   `getPreviousValue` in interface `SpinnerModel`

    Returns:
    :   the previous `Date` in the sequence, or
        `null` if the previous date
        is before `start`

    See Also:
    :   - [`SpinnerModel.getPreviousValue()`](SpinnerModel.md#getPreviousValue())
        - [`getNextValue()`](#getNextValue())
        - [`setCalendarField(int)`](#setCalendarField(int))
  + ### getDate

    public [Date](../../../java.base/java/util/Date.md "class in java.util") getDate()

    Returns the current element in this sequence of `Date`s.
    This method is equivalent to `(Date)getValue`.

    Returns:
    :   the `value` property

    See Also:
    :   - [`setValue(java.lang.Object)`](#setValue(java.lang.Object))
  + ### getValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValue()

    Returns the current element in this sequence of `Date`s.

    Specified by:
    :   `getValue` in interface `SpinnerModel`

    Returns:
    :   the `value` property

    See Also:
    :   - [`setValue(java.lang.Object)`](#setValue(java.lang.Object))
        - [`getDate()`](#getDate())
  + ### setValue

    public void setValue([Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Sets the current `Date` for this sequence.
    If `value` is `null`,
    an `IllegalArgumentException` is thrown. No bounds
    checking is done here:
    the new value may invalidate the `(start <= value < end)`
    invariant enforced by the constructors. Naturally, one should ensure
    that the `(start <= value <= maximum)` invariant is true
    before calling the `nextValue`, `previousValue`,
    or `setValue` methods.

    This method fires a `ChangeEvent` if the
    `value` has changed.

    Specified by:
    :   `setValue` in interface `SpinnerModel`

    Parameters:
    :   `value` - the current (non `null`)
        `Date` for this sequence

    Throws:
    :   `IllegalArgumentException` - if value is `null`
        or not a `Date`

    See Also:
    :   - [`getDate()`](#getDate())
        - [`getValue()`](#getValue())
        - [`AbstractSpinnerModel.addChangeListener(javax.swing.event.ChangeListener)`](AbstractSpinnerModel.md#addChangeListener(javax.swing.event.ChangeListener))