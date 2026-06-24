Module [java.base](../../../../module-summary.md)

Package [java.util.concurrent.atomic](package-summary.md)

# Class AtomicReferenceArray<E>

[java.lang.Object](../../../lang/Object.md "class in java.lang")

java.util.concurrent.atomic.AtomicReferenceArray<E>

Type Parameters:
:   `E` - The base class of elements held in this array

All Implemented Interfaces:
:   `Serializable`

---

public class AtomicReferenceArray<E>
extends [Object](../../../lang/Object.md "class in java.lang")
implements [Serializable](../../../io/Serializable.md "interface in java.io")

An array of object references in which elements may be updated
atomically. See the [`VarHandle`](../../../lang/invoke/VarHandle.md "class in java.lang.invoke") specification for
descriptions of the properties of atomic accesses.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#java.util.concurrent.atomic.AtomicReferenceArray)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AtomicReferenceArray(int length)`

  Creates a new AtomicReferenceArray of the given length, with all
  elements initially null.

  `AtomicReferenceArray(E[] array)`

  Creates a new AtomicReferenceArray with the same length as, and
  all elements copied from, the given array.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `final E`

  `accumulateAndGet(int i,
  E x,
  BinaryOperator<E> accumulatorFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the element at index `i` with
  the results of applying the given function to the current and
  given values, returning the updated value.

  `final E`

  `compareAndExchange(int i,
  E expectedValue,
  E newValue)`

  Atomically sets the element at index `i` to `newValue`
  if the element's current value, referred to as the *witness
  value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchange(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchange(java.lang.Object...)).

  `final E`

  `compareAndExchangeAcquire(int i,
  E expectedValue,
  E newValue)`

  Atomically sets the element at index `i` to `newValue`
  if the element's current value, referred to as the *witness
  value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchangeAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeAcquire(java.lang.Object...)).

  `final E`

  `compareAndExchangeRelease(int i,
  E expectedValue,
  E newValue)`

  Atomically sets the element at index `i` to `newValue`
  if the element's current value, referred to as the *witness
  value*, `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.compareAndExchangeRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeRelease(java.lang.Object...)).

  `final boolean`

  `compareAndSet(int i,
  E expectedValue,
  E newValue)`

  Atomically sets the element at index `i` to `newValue`
  if the element's current value `== expectedValue`,
  with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...)).

  `final E`

  `get(int i)`

  Returns the current value of the element at index `i`,
  with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

  `final E`

  `getAcquire(int i)`

  Returns the current value of the element at index `i`,
  with memory effects as specified by [`VarHandle.getAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAcquire(java.lang.Object...)).

  `final E`

  `getAndAccumulate(int i,
  E x,
  BinaryOperator<E> accumulatorFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the element at index `i` with
  the results of applying the given function to the current and
  given values, returning the previous value.

  `final E`

  `getAndSet(int i,
  E newValue)`

  Atomically sets the element at index `i` to `newValue` and returns the old value,
  with memory effects as specified by [`VarHandle.getAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndSet(java.lang.Object...)).

  `final E`

  `getAndUpdate(int i,
  UnaryOperator<E> updateFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the element at index `i` with
  the results of applying the given function, returning the
  previous value.

  `final E`

  `getOpaque(int i)`

  Returns the current value of the element at index `i`,
  with memory effects as specified by [`VarHandle.getOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getOpaque(java.lang.Object...)).

  `final E`

  `getPlain(int i)`

  Returns the current value of the element at index `i`,
  with memory semantics of reading as if the variable was declared
  non-`volatile`.

  `final void`

  `lazySet(int i,
  E newValue)`

  Sets the element at index `i` to `newValue`,
  with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

  `final int`

  `length()`

  Returns the length of the array.

  `final void`

  `set(int i,
  E newValue)`

  Sets the element at index `i` to `newValue`,
  with memory effects as specified by [`VarHandle.setVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setVolatile(java.lang.Object...)).

  `final void`

  `setOpaque(int i,
  E newValue)`

  Sets the element at index `i` to `newValue`,
  with memory effects as specified by [`VarHandle.setOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setOpaque(java.lang.Object...)).

  `final void`

  `setPlain(int i,
  E newValue)`

  Sets the element at index `i` to `newValue`,
  with memory semantics of setting as if the variable was
  declared non-`volatile` and non-`final`.

  `final void`

  `setRelease(int i,
  E newValue)`

  Sets the element at index `i` to `newValue`,
  with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

  `String`

  `toString()`

  Returns the String representation of the current values of array.

  `final E`

  `updateAndGet(int i,
  UnaryOperator<E> updateFunction)`

  Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the element at index `i` with
  the results of applying the given function, returning the
  updated value.

  `final boolean`

  `weakCompareAndSet(int i,
  E expectedValue,
  E newValue)`

  Deprecated.

  This method has plain memory effects but the method
  name implies volatile memory effects (see methods such as
  [`compareAndExchange(int, E, E)`](#compareAndExchange(int,E,E)) and [`compareAndSet(int, E, E)`](#compareAndSet(int,E,E))).

  `final boolean`

  `weakCompareAndSetAcquire(int i,
  E expectedValue,
  E newValue)`

  Possibly atomically sets the element at index `i` to
  `newValue` if the element's current value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSetAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetAcquire(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetPlain(int i,
  E expectedValue,
  E newValue)`

  Possibly atomically sets the element at index `i` to
  `newValue` if the element's current value `== expectedValue`,
  with memory effects as specified by [`VarHandle.weakCompareAndSetPlain(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetPlain(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetRelease(int i,
  E expectedValue,
  E newValue)`

  Possibly atomically sets the element at index `i` to
  `newValue` if the element's current value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSetRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetRelease(java.lang.Object...)).

  `final boolean`

  `weakCompareAndSetVolatile(int i,
  E expectedValue,
  E newValue)`

  Possibly atomically sets the element at index `i` to
  `newValue` if the element's current value `== expectedValue`,
  with memory effects as specified by
  [`VarHandle.weakCompareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSet(java.lang.Object...)).

  ### Methods inherited from class java.lang.[Object](../../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### AtomicReferenceArray

    public AtomicReferenceArray(int length)

    Creates a new AtomicReferenceArray of the given length, with all
    elements initially null.

    Parameters:
    :   `length` - the length of the array
  + ### AtomicReferenceArray

    public AtomicReferenceArray([E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray")[] array)

    Creates a new AtomicReferenceArray with the same length as, and
    all elements copied from, the given array.

    Parameters:
    :   `array` - the array to copy elements from

    Throws:
    :   `NullPointerException` - if array is null
* ## Method Details

  + ### length

    public final int length()

    Returns the length of the array.

    Returns:
    :   the length of the array
  + ### get

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") get(int i)

    Returns the current value of the element at index `i`,
    with memory effects as specified by [`VarHandle.getVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getVolatile(java.lang.Object...)).

    Parameters:
    :   `i` - the index

    Returns:
    :   the current value
  + ### set

    public final void set(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Sets the element at index `i` to `newValue`,
    with memory effects as specified by [`VarHandle.setVolatile(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setVolatile(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `newValue` - the new value
  + ### lazySet

    public final void lazySet(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Sets the element at index `i` to `newValue`,
    with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `newValue` - the new value

    Since:
    :   1.6
  + ### getAndSet

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") getAndSet(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Atomically sets the element at index `i` to `newValue` and returns the old value,
    with memory effects as specified by [`VarHandle.getAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAndSet(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `newValue` - the new value

    Returns:
    :   the previous value
  + ### compareAndSet

    public final boolean compareAndSet(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") expectedValue,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Atomically sets the element at index `i` to `newValue`
    if the element's current value `== expectedValue`,
    with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful. False return indicates that
        the actual value was not equal to the expected value.
  + ### weakCompareAndSet

    [@Deprecated](../../../lang/Deprecated.md "annotation interface in java.lang")([since](../../../lang/Deprecated.md#since())="9")
    public final boolean weakCompareAndSet(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") expectedValue,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Deprecated.

    This method has plain memory effects but the method
    name implies volatile memory effects (see methods such as
    [`compareAndExchange(int, E, E)`](#compareAndExchange(int,E,E)) and [`compareAndSet(int, E, E)`](#compareAndSet(int,E,E))). To avoid
    confusion over plain or volatile memory effects it is recommended that
    the method [`weakCompareAndSetPlain(int, E, E)`](#weakCompareAndSetPlain(int,E,E)) be used instead.

    Possibly atomically sets the element at index `i` to
    `newValue` if the element's current value `== expectedValue`,
    with memory effects as specified by [`VarHandle.weakCompareAndSetPlain(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetPlain(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    See Also:
    :   - [`weakCompareAndSetPlain(int, E, E)`](#weakCompareAndSetPlain(int,E,E))
  + ### weakCompareAndSetPlain

    public final boolean weakCompareAndSetPlain(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") expectedValue,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Possibly atomically sets the element at index `i` to
    `newValue` if the element's current value `== expectedValue`,
    with memory effects as specified by [`VarHandle.weakCompareAndSetPlain(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetPlain(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    Since:
    :   9
  + ### getAndUpdate

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") getAndUpdate(int i,
    [UnaryOperator](../../function/UnaryOperator.md "interface in java.util.function")<[E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray")> updateFunction)

    Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the element at index `i` with
    the results of applying the given function, returning the
    previous value. The function should be side-effect-free, since
    it may be re-applied when attempted updates fail due to
    contention among threads.

    Parameters:
    :   `i` - the index
    :   `updateFunction` - a side-effect-free function

    Returns:
    :   the previous value

    Since:
    :   1.8
  + ### updateAndGet

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") updateAndGet(int i,
    [UnaryOperator](../../function/UnaryOperator.md "interface in java.util.function")<[E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray")> updateFunction)

    Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the element at index `i` with
    the results of applying the given function, returning the
    updated value. The function should be side-effect-free, since it
    may be re-applied when attempted updates fail due to contention
    among threads.

    Parameters:
    :   `i` - the index
    :   `updateFunction` - a side-effect-free function

    Returns:
    :   the updated value

    Since:
    :   1.8
  + ### getAndAccumulate

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") getAndAccumulate(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") x,
    [BinaryOperator](../../function/BinaryOperator.md "interface in java.util.function")<[E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray")> accumulatorFunction)

    Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the element at index `i` with
    the results of applying the given function to the current and
    given values, returning the previous value. The function should
    be side-effect-free, since it may be re-applied when attempted
    updates fail due to contention among threads. The function is
    applied with the current value of the element at index `i`
    as its first argument, and the given update as the second
    argument.

    Parameters:
    :   `i` - the index
    :   `x` - the update value
    :   `accumulatorFunction` - a side-effect-free function of two arguments

    Returns:
    :   the previous value

    Since:
    :   1.8
  + ### accumulateAndGet

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") accumulateAndGet(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") x,
    [BinaryOperator](../../function/BinaryOperator.md "interface in java.util.function")<[E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray")> accumulatorFunction)

    Atomically updates (with memory effects as specified by [`VarHandle.compareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndSet(java.lang.Object...))) the element at index `i` with
    the results of applying the given function to the current and
    given values, returning the updated value. The function should
    be side-effect-free, since it may be re-applied when attempted
    updates fail due to contention among threads. The function is
    applied with the current value of the element at index `i`
    as its first argument, and the given update as the second
    argument.

    Parameters:
    :   `i` - the index
    :   `x` - the update value
    :   `accumulatorFunction` - a side-effect-free function of two arguments

    Returns:
    :   the updated value

    Since:
    :   1.8
  + ### toString

    public [String](../../../lang/String.md "class in java.lang") toString()

    Returns the String representation of the current values of array.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the String representation of the current values of array
  + ### getPlain

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") getPlain(int i)

    Returns the current value of the element at index `i`,
    with memory semantics of reading as if the variable was declared
    non-`volatile`.

    Parameters:
    :   `i` - the index

    Returns:
    :   the value

    Since:
    :   9
  + ### setPlain

    public final void setPlain(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Sets the element at index `i` to `newValue`,
    with memory semantics of setting as if the variable was
    declared non-`volatile` and non-`final`.

    Parameters:
    :   `i` - the index
    :   `newValue` - the new value

    Since:
    :   9
  + ### getOpaque

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") getOpaque(int i)

    Returns the current value of the element at index `i`,
    with memory effects as specified by [`VarHandle.getOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getOpaque(java.lang.Object...)).

    Parameters:
    :   `i` - the index

    Returns:
    :   the value

    Since:
    :   9
  + ### setOpaque

    public final void setOpaque(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Sets the element at index `i` to `newValue`,
    with memory effects as specified by [`VarHandle.setOpaque(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setOpaque(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `newValue` - the new value

    Since:
    :   9
  + ### getAcquire

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") getAcquire(int i)

    Returns the current value of the element at index `i`,
    with memory effects as specified by [`VarHandle.getAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#getAcquire(java.lang.Object...)).

    Parameters:
    :   `i` - the index

    Returns:
    :   the value

    Since:
    :   9
  + ### setRelease

    public final void setRelease(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Sets the element at index `i` to `newValue`,
    with memory effects as specified by [`VarHandle.setRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#setRelease(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `newValue` - the new value

    Since:
    :   9
  + ### compareAndExchange

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") compareAndExchange(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") expectedValue,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Atomically sets the element at index `i` to `newValue`
    if the element's current value, referred to as the *witness
    value*, `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.compareAndExchange(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchange(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   the *witness value*, which will be the same as the
        expected value if successful

    Since:
    :   9
  + ### compareAndExchangeAcquire

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") compareAndExchangeAcquire(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") expectedValue,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Atomically sets the element at index `i` to `newValue`
    if the element's current value, referred to as the *witness
    value*, `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.compareAndExchangeAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeAcquire(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   the *witness value*, which will be the same as the
        expected value if successful

    Since:
    :   9
  + ### compareAndExchangeRelease

    public final [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") compareAndExchangeRelease(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") expectedValue,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Atomically sets the element at index `i` to `newValue`
    if the element's current value, referred to as the *witness
    value*, `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.compareAndExchangeRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#compareAndExchangeRelease(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   the *witness value*, which will be the same as the
        expected value if successful

    Since:
    :   9
  + ### weakCompareAndSetVolatile

    public final boolean weakCompareAndSetVolatile(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") expectedValue,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Possibly atomically sets the element at index `i` to
    `newValue` if the element's current value `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.weakCompareAndSet(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSet(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    Since:
    :   9
  + ### weakCompareAndSetAcquire

    public final boolean weakCompareAndSetAcquire(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") expectedValue,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Possibly atomically sets the element at index `i` to
    `newValue` if the element's current value `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.weakCompareAndSetAcquire(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetAcquire(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    Since:
    :   9
  + ### weakCompareAndSetRelease

    public final boolean weakCompareAndSetRelease(int i,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") expectedValue,
    [E](AtomicReferenceArray.md "type parameter in AtomicReferenceArray") newValue)

    Possibly atomically sets the element at index `i` to
    `newValue` if the element's current value `== expectedValue`,
    with memory effects as specified by
    [`VarHandle.weakCompareAndSetRelease(java.lang.Object...)`](../../../lang/invoke/VarHandle.md#weakCompareAndSetRelease(java.lang.Object...)).

    Parameters:
    :   `i` - the index
    :   `expectedValue` - the expected value
    :   `newValue` - the new value

    Returns:
    :   `true` if successful

    Since:
    :   9