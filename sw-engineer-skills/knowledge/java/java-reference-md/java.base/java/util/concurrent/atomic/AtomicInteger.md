Module [java.base](../../../../module-summary.md)

Package [java.util.concurrent.atomic](package-summary.md)

# Class AtomicInteger

[java.lang.Object](../../../lang/Object.md "class in java.lang")

[java.lang.Number](../../../lang/Number.md "class in java.lang")

java.util.concurrent.atomic.AtomicInteger

All Implemented Interfaces:
:   `Serializable`

---

public class AtomicInteger
extends [Number](../../../lang/Number.md "class in java.lang")
implements [Serializable](../../../io/Serializable.md "interface in java.io")

An `int` value that may be updated atomically. See the
[`VarHandle`](../../../lang/invoke/VarHandle.md "class in java.lang.invoke") specification for descriptions of the properties
of atomic accesses. An `AtomicInteger` is used in
applications such as atomically incremented counters, and cannot be
used as a replacement for an [`Integer`](../../../lang/Integer.md "class in java.lang"). However,
this class does extend `Number` to allow uniform access by
tools and utilities that deal with numerically-based classes.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#java.util.concurrent.atomic.AtomicInteger)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AtomicInteger()`

  Creates a new AtomicInteger with initial value `0`.

  `AtomicInteger(int initialValue)`

  Creates a new AtomicInteger with the given initial value.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `final int`

  `accumulateAndGet(int x,
  IntBinaryOperator accumulatorFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
  applying the given function to the current and given values,
  returning the updated value.

  `final int`

  `addAndGet(int delta)`

  Atomically adds the given value to the current value,
  with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

  `final int`

  `compareAndExchange(int expectedValue,
  int newValue)`

  Atomically sets the value to `newValue` if the current value,
  referred to as the *witness value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchange(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchange(java.lang.Object...)).

  `final int`

  `compareAndExchangeAcquire(int expectedValue,
  int newValue)`

  Atomically sets the value to `newValue` if the current value,
  referred to as the *witness value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchangeAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeAcquire(java.lang.Object...)).

  `final int`

  `compareAndExchangeRelease(int expectedValue,
  int newValue)`

  Atomically sets the value to `newValue` if the current value,
  referred to as the *witness value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchangeRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeRelease(java.lang.Object...)).

  `final boolean`

  `compareAndSet(int expectedValue,
  int newValue)`

  Atomically sets the value to `newValue`
  if the current value `== expectedValue`,
  with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...)).

  `final int`

  `decrementAndGet()`

  Atomically decrements the current value,
  with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

  `double`

  `doubleValue()`

  Returns the current value of this `AtomicInteger` as a
  `double` after a widening primitive conversion,
  with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

  `float`

  `floatValue()`

  Returns the current value of this `AtomicInteger` as a
  `float` after a widening primitive conversion,
  with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

  `final int`

  `get()`

  Returns the current value,
  with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

  `final int`

  `getAcquire()`

  Returns the current value,
  with memory effects as specified by [`VarHandle.getAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAcquire(java.lang.Object...)).

  `final int`

  `getAndAccumulate(int x,
  IntBinaryOperator accumulatorFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
  applying the given function to the current and given values,
  returning the previous value.

  `final int`

  `getAndAdd(int delta)`

  Atomically adds the given value to the current value,
  with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

  `final int`

  `getAndDecrement()`

  Atomically decrements the current value,
  with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

  `final int`

  `getAndIncrement()`

  Atomically increments the current value,
  with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

  `final int`

  `getAndSet(int newValue)`

  Atomically sets the value to `newValue` and returns the old value,
  with memory effects as specified by [`VarHandle.getAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndSet(java.lang.Object...)).

  `final int`

  `getAndUpdate(IntUnaryOperator updateFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
  applying the given function, returning the previous value.

  `final int`

  `getOpaque()`

  Returns the current value,
  with memory effects as specified by [`VarHandle.getOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getOpaque(java.lang.Object...)).

  `final int`

  `getPlain()`

  Returns the current value, with memory semantics of reading as
  if the variable was declared non-`volatile`.

  `final int`

  `incrementAndGet()`

  Atomically increments the current value,
  with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

  `int`

  `intValue()`

  Returns the current value of this `AtomicInteger` as an
  `int`,
  with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

  `final void`

  `lazySet(int newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

  `long`

  `longValue()`

  Returns the current value of this `AtomicInteger` as a
  `long` after a widening primitive conversion,
  with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

  `final void`

  `set(int newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setVolatile(java.lang.Object...)).

  `final void`

  `setOpaque(int newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setOpaque(java.lang.Object...)).

  `final void`

  `setPlain(int newValue)`

  Sets the value to `newValue`, with memory semantics
  of setting as if the variable was declared non-`volatile`
  and non-`final`.

  `final void`

  `setRelease(int newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

  `String`

  `toString()`

  Returns the String representation of the current value.

  `final int`

  `updateAndGet(IntUnaryOperator updateFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
  applying the given function, returning the updated value.

  `final boolean`

  `weakCompareAndSet(int expectedValue,
  int newValue)`

  Deprecated.

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`compareAndExchange(int, int)`](#compareAndExchange(int,int)) and [`compareAndSet(int, int)`](#compareAndSet(int,int))).

  `final boolean`

  `weakCompareAndSetAcquire(int expectedValue,
  int newValue)`

  Possibly atomically sets the value to `newValue` if
  the current value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSetAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetAcquire(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetPlain(int expectedValue,
  int newValue)`

  Possibly atomically sets the value to `newValue`
  if the current value `== expectedValue`,
  with memory effects as specified by [`VarHandle.weakCompareAndSetPlain(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetPlain(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetRelease(int expectedValue,
  int newValue)`

  Possibly atomically sets the value to `newValue` if
  the current value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSetRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetRelease(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetVolatile(int expectedValue,
  int newValue)`

  Possibly atomically sets the value to `newValue` if
  the current value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSet(java.lang.Object...)).

  ### Methods inherited from class java.lang.[Number](../../../lang/Number.md "class in java.lang")

  `byteValue, shortValue`

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AtomicInteger

    public AtomicInteger(int initialValue)

    Creates a new AtomicInteger with the given initial value.

    Parameters:
    :   `initialValue` - the initial value
  + ### AtomicInteger

    public AtomicInteger()

    Creates a new AtomicInteger with initial value `0`.
* ## Method Details

  + ### get

    public final int get()

    Returns the current value,
    with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

    Returns:
    :   the current value
  + ### set

    public final void set(int newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setVolatile(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value
  + ### lazySet

    public final void lazySet(int newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Since:
    :   1.6
  + ### getAndSet

    public final int getAndSet(int newValue)

    Atomically sets the value to `newValue` and returns the old value,
    with memory effects as specified by [`VarHandle.getAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndSet(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Returns:
    :   the previous value
  + ### compareAndSet

    public final boolean compareAndSet(int expectedValue,
    int newValue)

    Atomically sets the value to `newValue`
    if the current value `== expectedValue`,
    with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful. False return indicates that
        the actual value was not equal to the expected value.
  + ### weakCompareAndSet

    [@Deprecated](../../../lang/Deprecated.md "annotation interface in java.lang")([since](../../../lang/Deprecated.md#since())="9")
    public final boolean weakCompareAndSet(int expectedValue,
    int newValue)

    Deprecated.

    This method has plain memory effects but the method
    name implies volatile memory effects (see methods such as
    [`compareAndExchange(int, int)`](#compareAndExchange(int,int)) and [`compareAndSet(int, int)`](#compareAndSet(int,int))). To avoid
    confusion over plain or volatile memory effects it is recommended that
    the method [`weakCompareAndSetPlain(int, int)`](#weakCompareAndSetPlain(int,int)) be used instead.

    Possibly atomically sets the value to `newValue`
    if the current value `== expectedValue`,
    with memory effects as specified by [`VarHandle.weakCompareAndSetPlain(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetPlain(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    See Also:
    :   - [`weakCompareAndSetPlain(int, int)`](#weakCompareAndSetPlain(int,int))
  + ### weakCompareAndSetPlain

    public final boolean weakCompareAndSetPlain(int expectedValue,
    int newValue)

    Possibly atomically sets the value to `newValue`
    if the current value `== expectedValue`,
    with memory effects as specified by [`VarHandle.weakCompareAndSetPlain(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetPlain(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    Since:
    :   9
  + ### getAndIncrement

    public final int getAndIncrement()

    Atomically increments the current value,
    with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

    Equivalent to `getAndAdd(1)`.

    Returns:
    :   the previous value
  + ### getAndDecrement

    public final int getAndDecrement()

    Atomically decrements the current value,
    with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

    Equivalent to `getAndAdd(-1)`.

    Returns:
    :   the previous value
  + ### getAndAdd

    public final int getAndAdd(int delta)

    Atomically adds the given value to the current value,
    with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

    Parameters:
    :   `delta` - the value to add

    Returns:
    :   the previous value
  + ### incrementAndGet

    public final int incrementAndGet()

    Atomically increments the current value,
    with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

    Equivalent to `addAndGet(1)`.

    Returns:
    :   the updated value
  + ### decrementAndGet

    public final int decrementAndGet()

    Atomically decrements the current value,
    with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

    Equivalent to `addAndGet(-1)`.

    Returns:
    :   the updated value
  + ### addAndGet

    public final int addAndGet(int delta)

    Atomically adds the given value to the current value,
    with memory effects as specified by [`VarHandle.getAndAdd(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndAdd(java.lang.Object...)).

    Parameters:
    :   `delta` - the value to add

    Returns:
    :   the updated value
  + ### getAndUpdate

    public final int getAndUpdate([IntUnaryOperator](../../function/IntUnaryOperator.md "interface in java.util.function") updateFunction)

    Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
    applying the given function, returning the previous value. The
    function should be side-effect-free, since it may be re-applied
    when attempted updates fail due to contention among threads.

    Parameters:
    :   `updateFunction` - a side-effect-free function

    Returns:
    :   the previous value

    Since:
    :   1.8
  + ### updateAndGet

    public final int updateAndGet([IntUnaryOperator](../../function/IntUnaryOperator.md "interface in java.util.function") updateFunction)

    Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
    applying the given function, returning the updated value. The
    function should be side-effect-free, since it may be re-applied
    when attempted updates fail due to contention among threads.

    Parameters:
    :   `updateFunction` - a side-effect-free function

    Returns:
    :   the updated value

    Since:
    :   1.8
  + ### getAndAccumulate

    public final int getAndAccumulate(int x,
    [IntBinaryOperator](../../function/IntBinaryOperator.md "interface in java.util.function") accumulatorFunction)

    Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
    applying the given function to the current and given values,
    returning the previous value. The function should be
    side-effect-free, since it may be re-applied when attempted
    updates fail due to contention among threads. The function is
    applied with the current value as its first argument, and the
    given update as the second argument.

    Parameters:
    :   `x` - the update value
    :   `accumulatorFunction` - a side-effect-free function of two arguments

    Returns:
    :   the previous value

    Since:
    :   1.8
  + ### accumulateAndGet

    public final int accumulateAndGet(int x,
    [IntBinaryOperator](../../function/IntBinaryOperator.md "interface in java.util.function") accumulatorFunction)

    Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
    applying the given function to the current and given values,
    returning the updated value. The function should be
    side-effect-free, since it may be re-applied when attempted
    updates fail due to contention among threads. The function is
    applied with the current value as its first argument, and the
    given update as the second argument.

    Parameters:
    :   `x` - the update value
    :   `accumulatorFunction` - a side-effect-free function of two arguments

    Returns:
    :   the updated value

    Since:
    :   1.8
  + ### toString

    public [String](../../../lang/String.md "class in java.lang") toString()

    Returns the String representation of the current value.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the String representation of the current value
  + ### intValue

    public int intValue()

    Returns the current value of this `AtomicInteger` as an
    `int`,
    with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).
    Equivalent to [`get()`](#get()).

    Specified by:
    :   `intValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `int`.
  + ### longValue

    public long longValue()

    Returns the current value of this `AtomicInteger` as a
    `long` after a widening primitive conversion,
    with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

    Specified by:
    :   `longValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `long`.
  + ### floatValue

    public float floatValue()

    Returns the current value of this `AtomicInteger` as a
    `float` after a widening primitive conversion,
    with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

    Specified by:
    :   `floatValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `float`.
  + ### doubleValue

    public double doubleValue()

    Returns the current value of this `AtomicInteger` as a
    `double` after a widening primitive conversion,
    with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

    Specified by:
    :   `doubleValue` in class `Number`

    Returns:
    :   the numeric value represented by this object after conversion
        to type `double`.
  + ### getPlain

    public final int getPlain()

    Returns the current value, with memory semantics of reading as
    if the variable was declared non-`volatile`.

    Returns:
    :   the value

    Since:
    :   9
  + ### setPlain

    public final void setPlain(int newValue)

    Sets the value to `newValue`, with memory semantics
    of setting as if the variable was declared non-`volatile`
    and non-`final`.

    Parameters:
    :   `newValue` - the new value

    Since:
    :   9
  + ### getOpaque

    public final int getOpaque()

    Returns the current value,
    with memory effects as specified by [`VarHandle.getOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getOpaque(java.lang.Object...)).

    Returns:
    :   the value

    Since:
    :   9
  + ### setOpaque

    public final void setOpaque(int newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setOpaque(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Since:
    :   9
  + ### getAcquire

    public final int getAcquire()

    Returns the current value,
    with memory effects as specified by [`VarHandle.getAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAcquire(java.lang.Object...)).

    Returns:
    :   the value

    Since:
    :   9
  + ### setRelease

    public final void setRelease(int newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Since:
    :   9
  + ### compareAndExchange

    public final int compareAndExchange(int expectedValue,
    int newValue)

    Atomically sets the value to `newValue` if the current value,
    referred to as the *witness value*, `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.compareAndExchange(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchange(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   the *witness value*, which will be the same as the
        expected value if successful

    Since:
    :   9
  + ### compareAndExchangeAcquire

    public final int compareAndExchangeAcquire(int expectedValue,
    int newValue)

    Atomically sets the value to `newValue` if the current value,
    referred to as the *witness value*, `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.compareAndExchangeAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeAcquire(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   the *witness value*, which will be the same as the
        expected value if successful

    Since:
    :   9
  + ### compareAndExchangeRelease

    public final int compareAndExchangeRelease(int expectedValue,
    int newValue)

    Atomically sets the value to `newValue` if the current value,
    referred to as the *witness value*, `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.compareAndExchangeRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeRelease(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   the *witness value*, which will be the same as the
        expected value if successful

    Since:
    :   9
  + ### weakCompareAndSetVolatile

    public final boolean weakCompareAndSetVolatile(int expectedValue,
    int newValue)

    Possibly atomically sets the value to `newValue` if
    the current value `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.weakCompareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSet(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    Since:
    :   9
  + ### weakCompareAndSetAcquire

    public final boolean weakCompareAndSetAcquire(int expectedValue,
    int newValue)

    Possibly atomically sets the value to `newValue` if
    the current value `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.weakCompareAndSetAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetAcquire(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    Since:
    :   9
  + ### weakCompareAndSetRelease

    public final boolean weakCompareAndSetRelease(int expectedValue,
    int newValue)

    Possibly atomically sets the value to `newValue` if
    the current value `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.weakCompareAndSetRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetRelease(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    Since:
    :   9