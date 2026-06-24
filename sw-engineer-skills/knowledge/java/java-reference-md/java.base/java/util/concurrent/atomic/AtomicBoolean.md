Module [java.base](../../../../module-summary.md)

Package [java.util.concurrent.atomic](package-summary.md)

# Class AtomicBoolean

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.util.concurrent.atomic.AtomicBoolean

All Implemented Interfaces:
:   `Serializable`

---

public class AtomicBoolean
extends [Object](../../../lang/Object.md "class in java.lang")
implements [Serializable](../../../io/Serializable.md "interface in java.io")

A `boolean` value that may be updated atomically. See the
[`VarHandle`](../../../lang/invoke/VarHandle.md "class in java.lang.invoke") specification for descriptions of the properties
of atomic accesses. An `AtomicBoolean` is used in
applications such as atomically updated flags, and cannot be used
as a replacement for a [`Boolean`](../../../lang/Boolean.md "class in java.lang").

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#java.util.concurrent.atomic.AtomicBoolean)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AtomicBoolean()`

  Creates a new `AtomicBoolean` with initial value `false`.

  `AtomicBoolean(boolean initialValue)`

  Creates a new `AtomicBoolean` with the given initial value.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `compareAndExchange(boolean expectedValue,
  boolean newValue)`

  Atomically sets the value to `newValue` if the current value,
  referred to as the *witness value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchange(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchange(java.lang.Object...)).

  `final boolean`

  `compareAndExchangeAcquire(boolean expectedValue,
  boolean newValue)`

  Atomically sets the value to `newValue` if the current value,
  referred to as the *witness value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchangeAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeAcquire(java.lang.Object...)).

  `final boolean`

  `compareAndExchangeRelease(boolean expectedValue,
  boolean newValue)`

  Atomically sets the value to `newValue` if the current value,
  referred to as the *witness value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchangeRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeRelease(java.lang.Object...)).

  `final boolean`

  `compareAndSet(boolean expectedValue,
  boolean newValue)`

  Atomically sets the value to `newValue`
  if the current value `== expectedValue`,
  with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...)).

  `final boolean`

  `get()`

  Returns the current value,
  with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

  `final boolean`

  `getAcquire()`

  Returns the current value,
  with memory effects as specified by [`VarHandle.getAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAcquire(java.lang.Object...)).

  `final boolean`

  `getAndSet(boolean newValue)`

  Atomically sets the value to `newValue` and returns the old value,
  with memory effects as specified by [`VarHandle.getAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndSet(java.lang.Object...)).

  `final boolean`

  `getOpaque()`

  Returns the current value,
  with memory effects as specified by [`VarHandle.getOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getOpaque(java.lang.Object...)).

  `final boolean`

  `getPlain()`

  Returns the current value, with memory semantics of reading as
  if the variable was declared non-`volatile`.

  `final void`

  `lazySet(boolean newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

  `final void`

  `set(boolean newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setVolatile(java.lang.Object...)).

  `final void`

  `setOpaque(boolean newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setOpaque(java.lang.Object...)).

  `final void`

  `setPlain(boolean newValue)`

  Sets the value to `newValue`, with memory semantics
  of setting as if the variable was declared non-`volatile`
  and non-`final`.

  `final void`

  `setRelease(boolean newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

  `String`

  `toString()`

  Returns the String representation of the current value.

  `boolean`

  `weakCompareAndSet(boolean expectedValue,
  boolean newValue)`

  Deprecated.

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`compareAndExchange(boolean, boolean)`](#compareAndExchange(boolean,boolean)) and [`compareAndSet(boolean, boolean)`](#compareAndSet(boolean,boolean))).

  `final boolean`

  `weakCompareAndSetAcquire(boolean expectedValue,
  boolean newValue)`

  Possibly atomically sets the value to `newValue` if the current
  value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSetAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetAcquire(java.lang.Object...)).

  `boolean`

  `weakCompareAndSetPlain(boolean expectedValue,
  boolean newValue)`

  Possibly atomically sets the value to `newValue`
  if the current value `== expectedValue`,
  with memory effects as specified by [`VarHandle.weakCompareAndSetPlain(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetPlain(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetRelease(boolean expectedValue,
  boolean newValue)`

  Possibly atomically sets the value to `newValue` if the current
  value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSetRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetRelease(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetVolatile(boolean expectedValue,
  boolean newValue)`

  Possibly atomically sets the value to `newValue` if the current
  value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSet(java.lang.Object...)).

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AtomicBoolean

    public AtomicBoolean(boolean initialValue)

    Creates a new `AtomicBoolean` with the given initial value.

    Parameters:
    :   `initialValue` - the initial value
  + ### AtomicBoolean

    public AtomicBoolean()

    Creates a new `AtomicBoolean` with initial value `false`.
* ## Method Details

  + ### get

    public final boolean get()

    Returns the current value,
    with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

    Returns:
    :   the current value
  + ### compareAndSet

    public final boolean compareAndSet(boolean expectedValue,
    boolean newValue)

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
    public boolean weakCompareAndSet(boolean expectedValue,
    boolean newValue)

    Deprecated.

    This method has plain memory effects but the method
    name implies volatile memory effects (see methods such as
    [`compareAndExchange(boolean, boolean)`](#compareAndExchange(boolean,boolean)) and [`compareAndSet(boolean, boolean)`](#compareAndSet(boolean,boolean))). To avoid
    confusion over plain or volatile memory effects it is recommended that
    the method [`weakCompareAndSetPlain(boolean, boolean)`](#weakCompareAndSetPlain(boolean,boolean)) be used instead.

    Possibly atomically sets the value to `newValue`
    if the current value `== expectedValue`,
    with memory effects as specified by [`VarHandle.weakCompareAndSetPlain(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetPlain(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    See Also:
    :   - [`weakCompareAndSetPlain(boolean, boolean)`](#weakCompareAndSetPlain(boolean,boolean))
  + ### weakCompareAndSetPlain

    public boolean weakCompareAndSetPlain(boolean expectedValue,
    boolean newValue)

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
  + ### set

    public final void set(boolean newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setVolatile(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value
  + ### lazySet

    public final void lazySet(boolean newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Since:
    :   1.6
  + ### getAndSet

    public final boolean getAndSet(boolean newValue)

    Atomically sets the value to `newValue` and returns the old value,
    with memory effects as specified by [`VarHandle.getAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndSet(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Returns:
    :   the previous value
  + ### toString

    public [String](../../../lang/String.md "class in java.lang") toString()

    Returns the String representation of the current value.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the String representation of the current value
  + ### getPlain

    public final boolean getPlain()

    Returns the current value, with memory semantics of reading as
    if the variable was declared non-`volatile`.

    Returns:
    :   the value

    Since:
    :   9
  + ### setPlain

    public final void setPlain(boolean newValue)

    Sets the value to `newValue`, with memory semantics
    of setting as if the variable was declared non-`volatile`
    and non-`final`.

    Parameters:
    :   `newValue` - the new value

    Since:
    :   9
  + ### getOpaque

    public final boolean getOpaque()

    Returns the current value,
    with memory effects as specified by [`VarHandle.getOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getOpaque(java.lang.Object...)).

    Returns:
    :   the value

    Since:
    :   9
  + ### setOpaque

    public final void setOpaque(boolean newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setOpaque(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Since:
    :   9
  + ### getAcquire

    public final boolean getAcquire()

    Returns the current value,
    with memory effects as specified by [`VarHandle.getAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAcquire(java.lang.Object...)).

    Returns:
    :   the value

    Since:
    :   9
  + ### setRelease

    public final void setRelease(boolean newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Since:
    :   9
  + ### compareAndExchange

    public final boolean compareAndExchange(boolean expectedValue,
    boolean newValue)

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

    public final boolean compareAndExchangeAcquire(boolean expectedValue,
    boolean newValue)

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

    public final boolean compareAndExchangeRelease(boolean expectedValue,
    boolean newValue)

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

    public final boolean weakCompareAndSetVolatile(boolean expectedValue,
    boolean newValue)

    Possibly atomically sets the value to `newValue` if the current
    value `== expectedValue`,
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

    public final boolean weakCompareAndSetAcquire(boolean expectedValue,
    boolean newValue)

    Possibly atomically sets the value to `newValue` if the current
    value `== expectedValue`,
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

    public final boolean weakCompareAndSetRelease(boolean expectedValue,
    boolean newValue)

    Possibly atomically sets the value to `newValue` if the current
    value `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.weakCompareAndSetRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetRelease(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    Since:
    :   9