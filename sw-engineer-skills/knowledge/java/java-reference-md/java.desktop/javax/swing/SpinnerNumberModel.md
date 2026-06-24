Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Class SpinnerNumberModel

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")

javax.swing.SpinnerNumberModel

All Implemented Interfaces:
:   `Serializable`, `SpinnerModel`

---

public class SpinnerNumberModel
extends [AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

A `SpinnerModel` for sequences of numbers.
The upper and lower bounds of the sequence are defined
by properties called `minimum` and
`maximum`. The size of the increase or decrease
computed by the `nextValue` and
`previousValue` methods is defined by a property called
`stepSize`. The `minimum` and
`maximum` properties can be `null`
to indicate that the sequence has no lower or upper limit.
All of the properties in this class are defined in terms of two
generic types: `Number` and
`Comparable`, so that all Java numeric types
may be accommodated. Internally, there's only support for
values whose type is one of the primitive `Number` types:
`Double`, `Float`, `Long`,
`Integer`, `Short`, or `Byte`.

To create a `SpinnerNumberModel` for the integer
range zero to one hundred, with
fifty as the initial value, one could write:

```
 Integer value = Integer.valueOf(50);
 Integer min = Integer.valueOf(0);
 Integer max = Integer.valueOf(100);
 Integer step = Integer.valueOf(1);
 SpinnerNumberModel model = new SpinnerNumberModel(value, min, max, step);
 int fifty = model.getNumber().intValue();
```

Spinners for integers and doubles are common, so special constructors
for these cases are provided. For example to create the model in
the previous example, one could also write:

```
 SpinnerNumberModel model = new SpinnerNumberModel(50, 0, 100, 1);
```

This model inherits a `ChangeListener`.
The `ChangeListeners` are notified
whenever the model's `value`, `stepSize`,
`minimum`, or `maximum` properties changes.

Since:
:   1.4

See Also:
:   * [`JSpinner`](JSpinner.md "class in javax.swing")
    * [`SpinnerModel`](SpinnerModel.md "interface in javax.swing")
    * [`AbstractSpinnerModel`](AbstractSpinnerModel.md "class in javax.swing")
    * [`SpinnerListModel`](SpinnerListModel.md "class in javax.swing")
    * [`SpinnerDateModel`](SpinnerDateModel.md "class in javax.swing")

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")

  `listenerList`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SpinnerNumberModel()`

  Constructs a `SpinnerNumberModel` with no
  `minimum` or `maximum` value,
  `stepSize` equal to one, and an initial value of zero.

  `SpinnerNumberModel(double value,
  double minimum,
  double maximum,
  double stepSize)`

  Constructs a `SpinnerNumberModel` with the specified
  `value`, `minimum`/`maximum` bounds,
  and `stepSize`.

  `SpinnerNumberModel(int value,
  int minimum,
  int maximum,
  int stepSize)`

  Constructs a `SpinnerNumberModel` with the specified
  `value`, `minimum`/`maximum` bounds,
  and `stepSize`.

  `SpinnerNumberModel(Number value,
  Comparable<?> minimum,
  Comparable<?> maximum,
  Number stepSize)`

  Constructs a `SpinnerModel` that represents
  a closed sequence of
  numbers from `minimum` to `maximum`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Comparable<?>`

  `getMaximum()`

  Returns the last number in the sequence.

  `Comparable<?>`

  `getMinimum()`

  Returns the first number in this sequence.

  `Object`

  `getNextValue()`

  Returns the next number in the sequence.

  `Number`

  `getNumber()`

  Returns the value of the current element of the sequence.

  `Object`

  `getPreviousValue()`

  Returns the previous number in the sequence.

  `Number`

  `getStepSize()`

  Returns the size of the value change computed by the
  `getNextValue`
  and `getPreviousValue` methods.

  `Object`

  `getValue()`

  Returns the value of the current element of the sequence.

  `void`

  `setMaximum(Comparable<?> maximum)`

  Changes the upper bound for numbers in this sequence.

  `void`

  `setMinimum(Comparable<?> minimum)`

  Changes the lower bound for numbers in this sequence.

  `void`

  `setStepSize(Number stepSize)`

  Changes the size of the value change computed by the
  `getNextValue` and `getPreviousValue`
  methods.

  `void`

  `setValue(Object value)`

  Sets the current value for this sequence.

  ### Methods inherited from class javax.swing.[AbstractSpinnerModel](AbstractSpinnerModel.md "class in javax.swing")

  `addChangeListener, fireStateChanged, getChangeListeners, getListeners, removeChangeListener`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SpinnerNumberModel

    public SpinnerNumberModel([Number](../../../java.base/java/lang/Number.md "class in java.lang") value,
    [Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<?> minimum,
    [Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<?> maximum,
    [Number](../../../java.base/java/lang/Number.md "class in java.lang") stepSize)

    Constructs a `SpinnerModel` that represents
    a closed sequence of
    numbers from `minimum` to `maximum`. The
    `nextValue` and `previousValue` methods
    compute elements of the sequence by adding or subtracting
    `stepSize` respectively. All of the parameters
    must be mutually `Comparable`, `value`
    and `stepSize` must be instances of `Integer`
    `Long`, `Float`, or `Double`.

    The `minimum` and `maximum` parameters
    can be `null` to indicate that the range doesn't
    have an upper or lower bound.
    If `value` or `stepSize` is `null`,
    or if both `minimum` and `maximum`
    are specified and `minimum > maximum` then an
    `IllegalArgumentException` is thrown.
    Similarly if `(minimum <= value <= maximum`) is false,
    an `IllegalArgumentException` is thrown.

    Parameters:
    :   `value` - the current (non `null`) value of the model
    :   `minimum` - the first number in the sequence or `null`
    :   `maximum` - the last number in the sequence or `null`
    :   `stepSize` - the difference between elements of the sequence

    Throws:
    :   `IllegalArgumentException` - if stepSize or value is
        `null` or if the following expression is false:
        `minimum <= value <= maximum`
  + ### SpinnerNumberModel

    public SpinnerNumberModel(int value,
    int minimum,
    int maximum,
    int stepSize)

    Constructs a `SpinnerNumberModel` with the specified
    `value`, `minimum`/`maximum` bounds,
    and `stepSize`.

    Parameters:
    :   `value` - the current value of the model
    :   `minimum` - the first number in the sequence
    :   `maximum` - the last number in the sequence
    :   `stepSize` - the difference between elements of the sequence

    Throws:
    :   `IllegalArgumentException` - if the following expression is false:
        `minimum <= value <= maximum`
  + ### SpinnerNumberModel

    public SpinnerNumberModel(double value,
    double minimum,
    double maximum,
    double stepSize)

    Constructs a `SpinnerNumberModel` with the specified
    `value`, `minimum`/`maximum` bounds,
    and `stepSize`.

    Parameters:
    :   `value` - the current value of the model
    :   `minimum` - the first number in the sequence
    :   `maximum` - the last number in the sequence
    :   `stepSize` - the difference between elements of the sequence

    Throws:
    :   `IllegalArgumentException` - if the following expression is false:
        `minimum <= value <= maximum`
  + ### SpinnerNumberModel

    public SpinnerNumberModel()

    Constructs a `SpinnerNumberModel` with no
    `minimum` or `maximum` value,
    `stepSize` equal to one, and an initial value of zero.
* ## Method Details

  + ### setMinimum

    public void setMinimum([Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<?> minimum)

    Changes the lower bound for numbers in this sequence.
    If `minimum` is `null`,
    then there is no lower bound. No bounds checking is done here;
    the new `minimum` value may invalidate the
    `(minimum <= value <= maximum)`
    invariant enforced by the constructors. This is to simplify updating
    the model, naturally one should ensure that the invariant is true
    before calling the `getNextValue`,
    `getPreviousValue`, or `setValue` methods.

    Typically this property is a `Number` of the same type
    as the `value` however it's possible to use any
    `Comparable` with a `compareTo`
    method for a `Number` with the same type as the value.
    For example if value was a `Long`,
    `minimum` might be a Date subclass defined like this:

    ```
     MyDate extends Date {  // Date already implements Comparable
         public int compareTo(Long o) {
             long t = getTime();
             return (t < o.longValue() ? -1 : (t == o.longValue() ? 0 : 1));
         }
     }
    ```

    This method fires a `ChangeEvent`
    if the `minimum` has changed.

    Parameters:
    :   `minimum` - a `Comparable` that has a
        `compareTo` method for `Number`s with
        the same type as `value`

    See Also:
    :   - [`getMinimum()`](#getMinimum())
        - [`setMaximum(java.lang.Comparable<?>)`](#setMaximum(java.lang.Comparable))
        - [`SpinnerModel.addChangeListener(javax.swing.event.ChangeListener)`](SpinnerModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### getMinimum

    public [Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<?> getMinimum()

    Returns the first number in this sequence.

    Returns:
    :   the value of the `minimum` property

    See Also:
    :   - [`setMinimum(java.lang.Comparable<?>)`](#setMinimum(java.lang.Comparable))
  + ### setMaximum

    public void setMaximum([Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<?> maximum)

    Changes the upper bound for numbers in this sequence.
    If `maximum` is `null`, then there
    is no upper bound. No bounds checking is done here; the new
    `maximum` value may invalidate the
    `(minimum <= value < maximum)`
    invariant enforced by the constructors. This is to simplify updating
    the model, naturally one should ensure that the invariant is true
    before calling the `next`, `previous`,
    or `setValue` methods.

    Typically this property is a `Number` of the same type
    as the `value` however it's possible to use any
    `Comparable` with a `compareTo`
    method for a `Number` with the same type as the value.
    See [`setMinimum(Comparable)`](#setMinimum(java.lang.Comparable)) for an example.

    This method fires a `ChangeEvent` if the
    `maximum` has changed.

    Parameters:
    :   `maximum` - a `Comparable` that has a
        `compareTo` method for `Number`s with
        the same type as `value`

    See Also:
    :   - [`getMaximum()`](#getMaximum())
        - [`setMinimum(java.lang.Comparable<?>)`](#setMinimum(java.lang.Comparable))
        - [`SpinnerModel.addChangeListener(javax.swing.event.ChangeListener)`](SpinnerModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### getMaximum

    public [Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<?> getMaximum()

    Returns the last number in the sequence.

    Returns:
    :   the value of the `maximum` property

    See Also:
    :   - [`setMaximum(java.lang.Comparable<?>)`](#setMaximum(java.lang.Comparable))
  + ### setStepSize

    public void setStepSize([Number](../../../java.base/java/lang/Number.md "class in java.lang") stepSize)

    Changes the size of the value change computed by the
    `getNextValue` and `getPreviousValue`
    methods. An `IllegalArgumentException`
    is thrown if `stepSize` is `null`.

    This method fires a `ChangeEvent` if the
    `stepSize` has changed.

    Parameters:
    :   `stepSize` - the size of the value change computed by the
        `getNextValue` and `getPreviousValue` methods

    See Also:
    :   - [`getNextValue()`](#getNextValue())
        - [`getPreviousValue()`](#getPreviousValue())
        - [`getStepSize()`](#getStepSize())
        - [`SpinnerModel.addChangeListener(javax.swing.event.ChangeListener)`](SpinnerModel.md#addChangeListener(javax.swing.event.ChangeListener))
  + ### getStepSize

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getStepSize()

    Returns the size of the value change computed by the
    `getNextValue`
    and `getPreviousValue` methods.

    Returns:
    :   the value of the `stepSize` property

    See Also:
    :   - [`setStepSize(java.lang.Number)`](#setStepSize(java.lang.Number))
  + ### getNextValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getNextValue()

    Returns the next number in the sequence.

    Specified by:
    :   `getNextValue` in interface `SpinnerModel`

    Returns:
    :   `value + stepSize` or `null` if the sum
        exceeds `maximum`.

    See Also:
    :   - [`SpinnerModel.getNextValue()`](SpinnerModel.md#getNextValue())
        - [`getPreviousValue()`](#getPreviousValue())
        - [`setStepSize(java.lang.Number)`](#setStepSize(java.lang.Number))
  + ### getPreviousValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getPreviousValue()

    Returns the previous number in the sequence.

    Specified by:
    :   `getPreviousValue` in interface `SpinnerModel`

    Returns:
    :   `value - stepSize`, or
        `null` if the sum is less
        than `minimum`.

    See Also:
    :   - [`SpinnerModel.getPreviousValue()`](SpinnerModel.md#getPreviousValue())
        - [`getNextValue()`](#getNextValue())
        - [`setStepSize(java.lang.Number)`](#setStepSize(java.lang.Number))
  + ### getNumber

    public [Number](../../../java.base/java/lang/Number.md "class in java.lang") getNumber()

    Returns the value of the current element of the sequence.

    Returns:
    :   the value property

    See Also:
    :   - [`setValue(java.lang.Object)`](#setValue(java.lang.Object))
  + ### getValue

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getValue()

    Returns the value of the current element of the sequence.

    Specified by:
    :   `getValue` in interface `SpinnerModel`

    Returns:
    :   the value property

    See Also:
    :   - [`setValue(java.lang.Object)`](#setValue(java.lang.Object))
        - [`getNumber()`](#getNumber())
  + ### setValue

    public void setValue([Object](../../../java.base/java/lang/Object.md "class in java.lang") value)

    Sets the current value for this sequence. If `value` is
    `null`, or not a `Number`, an
    `IllegalArgumentException` is thrown. No
    bounds checking is done here; the new value may invalidate the
    `(minimum <= value <= maximum)`
    invariant enforced by the constructors. It's also possible to set
    the value to be something that wouldn't naturally occur in the sequence,
    i.e. a value that's not modulo the `stepSize`.
    This is to simplify updating the model, and to accommodate
    spinners that don't want to restrict values that have been
    directly entered by the user. Naturally, one should ensure that the
    `(minimum <= value <= maximum)` invariant is true
    before calling the `next`, `previous`, or
    `setValue` methods.

    This method fires a `ChangeEvent` if the value has changed.

    Specified by:
    :   `setValue` in interface `SpinnerModel`

    Parameters:
    :   `value` - the current (non `null`) `Number`
        for this sequence

    Throws:
    :   `IllegalArgumentException` - if `value` is
        `null` or not a `Number`

    See Also:
    :   - [`getNumber()`](#getNumber())
        - [`getValue()`](#getValue())
        - [`SpinnerModel.addChangeListener(javax.swing.event.ChangeListener)`](SpinnerModel.md#addChangeListener(javax.swing.event.ChangeListener))