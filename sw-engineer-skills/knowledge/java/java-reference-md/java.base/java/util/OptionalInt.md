Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class OptionalInt

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.OptionalInt

---

public final class OptionalInt
extends [Object](../lang/Object.md "class in java.lang")

A container object which may or may not contain an `int` value.
If a value is present, `isPresent()` returns `true`. If no
value is present, the object is considered *empty* and
`isPresent()` returns `false`.

Additional methods that depend on the presence or absence of a contained
value are provided, such as [`orElse()`](#orElse(int))
(returns a default value if no value is present) and
[`ifPresent()`](#ifPresent(java.util.function.IntConsumer)) (performs an
action if a value is present).

This is a [value-based](../../../java.base/java/lang/doc-files/ValueBased.md)
class; programmers should treat instances that are
[equal](#equals(java.lang.Object)) as interchangeable and should not
use instances for synchronization, or unpredictable behavior may
occur. For example, in a future release, synchronization may fail.

Since:
:   1.8

* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static OptionalInt`

  `empty()`

  Returns an empty `OptionalInt` instance.

  `boolean`

  `equals(Object obj)`

  Indicates whether some other object is "equal to" this
  `OptionalInt`.

  `int`

  `getAsInt()`

  If a value is present, returns the value, otherwise throws
  `NoSuchElementException`.

  `int`

  `hashCode()`

  Returns the hash code of the value, if present, otherwise `0`
  (zero) if no value is present.

  `void`

  `ifPresent(IntConsumer action)`

  If a value is present, performs the given action with the value,
  otherwise does nothing.

  `void`

  `ifPresentOrElse(IntConsumer action,
  Runnable emptyAction)`

  If a value is present, performs the given action with the value,
  otherwise performs the given empty-based action.

  `boolean`

  `isEmpty()`

  If a value is not present, returns `true`, otherwise
  `false`.

  `boolean`

  `isPresent()`

  If a value is present, returns `true`, otherwise `false`.

  `static OptionalInt`

  `of(int value)`

  Returns an `OptionalInt` describing the given value.

  `int`

  `orElse(int other)`

  If a value is present, returns the value, otherwise returns
  `other`.

  `int`

  `orElseGet(IntSupplier supplier)`

  If a value is present, returns the value, otherwise returns the result
  produced by the supplying function.

  `int`

  `orElseThrow()`

  If a value is present, returns the value, otherwise throws
  `NoSuchElementException`.

  `<X extends Throwable>  
  int`

  `orElseThrow(Supplier<? extends X> exceptionSupplier)`

  If a value is present, returns the value, otherwise throws an exception
  produced by the exception supplying function.

  `IntStream`

  `stream()`

  If a value is present, returns a sequential [`IntStream`](stream/IntStream.md "interface in java.util.stream") containing
  only that value, otherwise returns an empty `IntStream`.

  `String`

  `toString()`

  Returns a non-empty string representation of this `OptionalInt`
  suitable for debugging.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### empty

    public static [OptionalInt](OptionalInt.md "class in java.util") empty()

    Returns an empty `OptionalInt` instance. No value is present for
    this `OptionalInt`.

    Returns:
    :   an empty `OptionalInt`
  + ### of

    public static [OptionalInt](OptionalInt.md "class in java.util") of(int value)

    Returns an `OptionalInt` describing the given value.

    Parameters:
    :   `value` - the value to describe

    Returns:
    :   an `OptionalInt` with the value present
  + ### getAsInt

    public int getAsInt()

    If a value is present, returns the value, otherwise throws
    `NoSuchElementException`.

    Returns:
    :   the value described by this `OptionalInt`

    Throws:
    :   `NoSuchElementException` - if no value is present
  + ### isPresent

    public boolean isPresent()

    If a value is present, returns `true`, otherwise `false`.

    Returns:
    :   `true` if a value is present, otherwise `false`
  + ### isEmpty

    public boolean isEmpty()

    If a value is not present, returns `true`, otherwise
    `false`.

    Returns:
    :   `true` if a value is not present, otherwise `false`

    Since:
    :   11
  + ### ifPresent

    public void ifPresent([IntConsumer](function/IntConsumer.md "interface in java.util.function") action)

    If a value is present, performs the given action with the value,
    otherwise does nothing.

    Parameters:
    :   `action` - the action to be performed, if a value is present

    Throws:
    :   `NullPointerException` - if value is present and the given action is
        `null`
  + ### ifPresentOrElse

    public void ifPresentOrElse([IntConsumer](function/IntConsumer.md "interface in java.util.function") action,
    [Runnable](../lang/Runnable.md "interface in java.lang") emptyAction)

    If a value is present, performs the given action with the value,
    otherwise performs the given empty-based action.

    Parameters:
    :   `action` - the action to be performed, if a value is present
    :   `emptyAction` - the empty-based action to be performed, if no value is
        present

    Throws:
    :   `NullPointerException` - if a value is present and the given action
        is `null`, or no value is present and the given empty-based
        action is `null`.

    Since:
    :   9
  + ### stream

    public [IntStream](stream/IntStream.md "interface in java.util.stream") stream()

    If a value is present, returns a sequential [`IntStream`](stream/IntStream.md "interface in java.util.stream") containing
    only that value, otherwise returns an empty `IntStream`.

    Returns:
    :   the optional value as an `IntStream`

    Since:
    :   9
  + ### orElse

    public int orElse(int other)

    If a value is present, returns the value, otherwise returns
    `other`.

    Parameters:
    :   `other` - the value to be returned, if no value is present

    Returns:
    :   the value, if present, otherwise `other`
  + ### orElseGet

    public int orElseGet([IntSupplier](function/IntSupplier.md "interface in java.util.function") supplier)

    If a value is present, returns the value, otherwise returns the result
    produced by the supplying function.

    Parameters:
    :   `supplier` - the supplying function that produces a value to be returned

    Returns:
    :   the value, if present, otherwise the result produced by the
        supplying function

    Throws:
    :   `NullPointerException` - if no value is present and the supplying
        function is `null`
  + ### orElseThrow

    public int orElseThrow()

    If a value is present, returns the value, otherwise throws
    `NoSuchElementException`.

    Returns:
    :   the value described by this `OptionalInt`

    Throws:
    :   `NoSuchElementException` - if no value is present

    Since:
    :   10
  + ### orElseThrow

    public <X extends [Throwable](../lang/Throwable.md "class in java.lang")> int orElseThrow([Supplier](function/Supplier.md "interface in java.util.function")<? extends X> exceptionSupplier)
    throws X

    If a value is present, returns the value, otherwise throws an exception
    produced by the exception supplying function.

    Type Parameters:
    :   `X` - Type of the exception to be thrown

    Parameters:
    :   `exceptionSupplier` - the supplying function that produces an
        exception to be thrown

    Returns:
    :   the value, if present

    Throws:
    :   `X` - if no value is present
    :   `NullPointerException` - if no value is present and the exception
        supplying function is `null`
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Indicates whether some other object is "equal to" this
    `OptionalInt`. The other object is considered equal if:
    - it is also an `OptionalInt` and;- both instances have no value present or;- the present values are "equal to" each other via `==`.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - an object to be tested for equality

    Returns:
    :   `true` if the other object is "equal to" this object
        otherwise `false`

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns the hash code of the value, if present, otherwise `0`
    (zero) if no value is present.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   hash code value of the present value or `0` if no value is
        present

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a non-empty string representation of this `OptionalInt`
    suitable for debugging. The exact presentation format is unspecified and
    may vary between implementations and versions.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation of this instance