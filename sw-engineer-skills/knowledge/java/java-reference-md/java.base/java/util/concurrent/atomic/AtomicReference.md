Module [java.base](../../../../module-summary.md)

Package [java.util.concurrent.atomic](package-summary.md)

# Class AtomicReference<V>

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.util.concurrent.atomic.AtomicReference<V>

Type Parameters:
:   `V` - The type of object referred to by this reference

All Implemented Interfaces:
:   `Serializable`

---

public class AtomicReference<V>
extends [Object](../../../lang/Object.md "class in java.lang")
implements [Serializable](../../../io/Serializable.md "interface in java.io")

An object reference that may be updated atomically. See the [`VarHandle`](../../../lang/invoke/VarHandle.md "class in java.lang.invoke") specification for descriptions of the properties of
atomic accesses.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#java.util.concurrent.atomic.AtomicReference)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AtomicReference()`

  Creates a new AtomicReference with null initial value.

  `AtomicReference(V initialValue)`

  Creates a new AtomicReference with the given initial value.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `final V`

  `accumulateAndGet(V x,
  BinaryOperator<V> accumulatorFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
  applying the given function to the current and given values,
  returning the updated value.

  `final V`

  `compareAndExchange(V expectedValue,
  V newValue)`

  Atomically sets the value to `newValue` if the current value,
  referred to as the *witness value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchange(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchange(java.lang.Object...)).

  `final V`

  `compareAndExchangeAcquire(V expectedValue,
  V newValue)`

  Atomically sets the value to `newValue` if the current value,
  referred to as the *witness value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchangeAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeAcquire(java.lang.Object...)).

  `final V`

  `compareAndExchangeRelease(V expectedValue,
  V newValue)`

  Atomically sets the value to `newValue` if the current value,
  referred to as the *witness value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchangeRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeRelease(java.lang.Object...)).

  `final boolean`

  `compareAndSet(V expectedValue,
  V newValue)`

  Atomically sets the value to `newValue`
  if the current value `== expectedValue`,
  with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...)).

  `final V`

  `get()`

  Returns the current value,
  with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

  `final V`

  `getAcquire()`

  Returns the current value,
  with memory effects as specified by [`VarHandle.getAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAcquire(java.lang.Object...)).

  `final V`

  `getAndAccumulate(V x,
  BinaryOperator<V> accumulatorFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
  applying the given function to the current and given values,
  returning the previous value.

  `final V`

  `getAndSet(V newValue)`

  Atomically sets the value to `newValue` and returns the old value,
  with memory effects as specified by [`VarHandle.getAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndSet(java.lang.Object...)).

  `final V`

  `getAndUpdate(UnaryOperator<V> updateFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
  applying the given function, returning the previous value.

  `final V`

  `getOpaque()`

  Returns the current value,
  with memory effects as specified by [`VarHandle.getOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getOpaque(java.lang.Object...)).

  `final V`

  `getPlain()`

  Returns the current value, with memory semantics of reading as
  if the variable was declared non-`volatile`.

  `final void`

  `lazySet(V newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

  `final void`

  `set(V newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setVolatile(java.lang.Object...)).

  `final void`

  `setOpaque(V newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setOpaque(java.lang.Object...)).

  `final void`

  `setPlain(V newValue)`

  Sets the value to `newValue`, with memory semantics
  of setting as if the variable was declared non-`volatile`
  and non-`final`.

  `final void`

  `setRelease(V newValue)`

  Sets the value to `newValue`,
  with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

  `String`

  `toString()`

  Returns the String representation of the current value.

  `final V`

  `updateAndGet(UnaryOperator<V> updateFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the current value with the results of
  applying the given function, returning the updated value.

  `final boolean`

  `weakCompareAndSet(V expectedValue,
  V newValue)`

  Deprecated.

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`compareAndExchange(V, V)`](#compareAndExchange(V,V)) and [`compareAndSet(V, V)`](#compareAndSet(V,V))).

  `final boolean`

  `weakCompareAndSetAcquire(V expectedValue,
  V newValue)`

  Possibly atomically sets the value to `newValue`
  if the current value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSetAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetAcquire(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetPlain(V expectedValue,
  V newValue)`

  Possibly atomically sets the value to `newValue`
  if the current value `== expectedValue`,
  with memory effects as specified by [`VarHandle.weakCompareAndSetPlain(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetPlain(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetRelease(V expectedValue,
  V newValue)`

  Possibly atomically sets the value to `newValue`
  if the current value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSetRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetRelease(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetVolatile(V expectedValue,
  V newValue)`

  Possibly atomically sets the value to `newValue`
  if the current value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSet(java.lang.Object...)).

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AtomicReference

    public AtomicReference([V](AtomicReference.md "type parameter in AtomicReference") initialValue)

    Creates a new AtomicReference with the given initial value.

    Parameters:
    :   `initialValue` - the initial value
  + ### AtomicReference

    public AtomicReference()

    Creates a new AtomicReference with null initial value.
* ## Method Details

  + ### get

    public final [V](AtomicReference.md "type parameter in AtomicReference") get()

    Returns the current value,
    with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

    Returns:
    :   the current value
  + ### set

    public final void set([V](AtomicReference.md "type parameter in AtomicReference") newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setVolatile(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value
  + ### lazySet

    public final void lazySet([V](AtomicReference.md "type parameter in AtomicReference") newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Since:
    :   1.6
  + ### compareAndSet

    public final boolean compareAndSet([V](AtomicReference.md "type parameter in AtomicReference") expectedValue,
    [V](AtomicReference.md "type parameter in AtomicReference") newValue)

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
    public final boolean weakCompareAndSet([V](AtomicReference.md "type parameter in AtomicReference") expectedValue,
    [V](AtomicReference.md "type parameter in AtomicReference") newValue)

    Deprecated.

    This method has plain memory effects but the method
    name implies volatile memory effects (see methods such as
    [`compareAndExchange(V, V)`](#compareAndExchange(V,V)) and [`compareAndSet(V, V)`](#compareAndSet(V,V))). To avoid
    confusion over plain or volatile memory effects it is recommended that
    the method [`weakCompareAndSetPlain(V, V)`](#weakCompareAndSetPlain(V,V)) be used instead.

    Possibly atomically sets the value to `newValue`
    if the current value `== expectedValue`,
    with memory effects as specified by [`VarHandle.weakCompareAndSetPlain(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetPlain(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    See Also:
    :   - [`weakCompareAndSetPlain(V, V)`](#weakCompareAndSetPlain(V,V))
  + ### weakCompareAndSetPlain

    public final boolean weakCompareAndSetPlain([V](AtomicReference.md "type parameter in AtomicReference") expectedValue,
    [V](AtomicReference.md "type parameter in AtomicReference") newValue)

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
  + ### getAndSet

    public final [V](AtomicReference.md "type parameter in AtomicReference") getAndSet([V](AtomicReference.md "type parameter in AtomicReference") newValue)

    Atomically sets the value to `newValue` and returns the old value,
    with memory effects as specified by [`VarHandle.getAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndSet(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Returns:
    :   the previous value
  + ### getAndUpdate

    public final [V](AtomicReference.md "type parameter in AtomicReference") getAndUpdate([UnaryOperator](../../function/UnaryOperator.md "interface in java.util.function")<[V](AtomicReference.md "type parameter in AtomicReference")> updateFunction)

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

    public final [V](AtomicReference.md "type parameter in AtomicReference") updateAndGet([UnaryOperator](../../function/UnaryOperator.md "interface in java.util.function")<[V](AtomicReference.md "type parameter in AtomicReference")> updateFunction)

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

    public final [V](AtomicReference.md "type parameter in AtomicReference") getAndAccumulate([V](AtomicReference.md "type parameter in AtomicReference") x,
    [BinaryOperator](../../function/BinaryOperator.md "interface in java.util.function")<[V](AtomicReference.md "type parameter in AtomicReference")> accumulatorFunction)

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

    public final [V](AtomicReference.md "type parameter in AtomicReference") accumulateAndGet([V](AtomicReference.md "type parameter in AtomicReference") x,
    [BinaryOperator](../../function/BinaryOperator.md "interface in java.util.function")<[V](AtomicReference.md "type parameter in AtomicReference")> accumulatorFunction)

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
  + ### getPlain

    public final [V](AtomicReference.md "type parameter in AtomicReference") getPlain()

    Returns the current value, with memory semantics of reading as
    if the variable was declared non-`volatile`.

    Returns:
    :   the value

    Since:
    :   9
  + ### setPlain

    public final void setPlain([V](AtomicReference.md "type parameter in AtomicReference") newValue)

    Sets the value to `newValue`, with memory semantics
    of setting as if the variable was declared non-`volatile`
    and non-`final`.

    Parameters:
    :   `newValue` - the new value

    Since:
    :   9
  + ### getOpaque

    public final [V](AtomicReference.md "type parameter in AtomicReference") getOpaque()

    Returns the current value,
    with memory effects as specified by [`VarHandle.getOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getOpaque(java.lang.Object...)).

    Returns:
    :   the value

    Since:
    :   9
  + ### setOpaque

    public final void setOpaque([V](AtomicReference.md "type parameter in AtomicReference") newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setOpaque(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Since:
    :   9
  + ### getAcquire

    public final [V](AtomicReference.md "type parameter in AtomicReference") getAcquire()

    Returns the current value,
    with memory effects as specified by [`VarHandle.getAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAcquire(java.lang.Object...)).

    Returns:
    :   the value

    Since:
    :   9
  + ### setRelease

    public final void setRelease([V](AtomicReference.md "type parameter in AtomicReference") newValue)

    Sets the value to `newValue`,
    with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

    Parameters:
    :   `newValue` - the new value

    Since:
    :   9
  + ### compareAndExchange

    public final [V](AtomicReference.md "type parameter in AtomicReference") compareAndExchange([V](AtomicReference.md "type parameter in AtomicReference") expectedValue,
    [V](AtomicReference.md "type parameter in AtomicReference") newValue)

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

    public final [V](AtomicReference.md "type parameter in AtomicReference") compareAndExchangeAcquire([V](AtomicReference.md "type parameter in AtomicReference") expectedValue,
    [V](AtomicReference.md "type parameter in AtomicReference") newValue)

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

    public final [V](AtomicReference.md "type parameter in AtomicReference") compareAndExchangeRelease([V](AtomicReference.md "type parameter in AtomicReference") expectedValue,
    [V](AtomicReference.md "type parameter in AtomicReference") newValue)

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

    public final boolean weakCompareAndSetVolatile([V](AtomicReference.md "type parameter in AtomicReference") expectedValue,
    [V](AtomicReference.md "type parameter in AtomicReference") newValue)

    Possibly atomically sets the value to `newValue`
    if the current value `== expectedValue`,
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

    public final boolean weakCompareAndSetAcquire([V](AtomicReference.md "type parameter in AtomicReference") expectedValue,
    [V](AtomicReference.md "type parameter in AtomicReference") newValue)

    Possibly atomically sets the value to `newValue`
    if the current value `== expectedValue`,
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

    public final boolean weakCompareAndSetRelease([V](AtomicReference.md "type parameter in AtomicReference") expectedValue,
    [V](AtomicReference.md "type parameter in AtomicReference") newValue)

    Possibly atomically sets the value to `newValue`
    if the current value `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.weakCompareAndSetRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetRelease(java.lang.Object...)).

    Parameters:
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    Since:
    :   9