Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ScopedValue.Carrier

[java.lang.Object](Object.md "class in java.lang")

java.lang.ScopedValue.Carrier

Enclosing class:
:   `ScopedValuePREVIEW<T>`

---

public static final class ScopedValue.Carrier
extends [Object](Object.md "class in java.lang")

`Carrier` is a preview API of the Java platform.

Programs can only use `Carrier` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A mapping of scoped values, as *keys*, to values.

A `Carrier` is used to accumulate mappings so that an operation (a
[`Runnable`](Runnable.md "interface in java.lang") or [`Callable`](../util/concurrent/Callable.md "interface in java.util.concurrent")) can be executed with all scoped values in the
mapping bound to values. The following example runs an operation with `k1`
bound (or rebound) to `v1`, and `k2` bound (or rebound) to `v2`.

Copy![Copy snippet](../../../copy.svg)

```
    ScopedValue.where(k1, v1).where(k2, v2).run(() -> ... );
```

A `Carrier` is immutable and thread-safe. The [`where`](#where(java.lang.ScopedValue,T)) method returns a new `Carrier` object,
it does not mutate an existing mapping.

Unless otherwise specified, passing a `null` argument to a method in
this class will cause a [`NullPointerException`](NullPointerException.md "class in java.lang") to be thrown.

Since:
:   21

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `<R> R`

  `call(Callable<? extends R> op)`

  Calls a value-returning operation with each scoped value in this mapping bound
  to its value in the current thread.

  `<T> T`

  `get(ScopedValuePREVIEW<T> key)`

  Returns the value of a [`ScopedValue`](ScopedValue.md "class in java.lang")[PREVIEW](ScopedValue.md#preview-java.lang.ScopedValue) in this mapping.

  `<R> R`

  `get(Supplier<? extends R> op)`

  Invokes a supplier of results with each scoped value in this mapping bound
  to its value in the current thread.

  `void`

  `run(Runnable op)`

  Runs an operation with each scoped value in this mapping bound to its value
  in the current thread.

  `<T> ScopedValue.CarrierPREVIEW`

  `where(ScopedValuePREVIEW<T> key,
  T value)`

  Returns a new `Carrier` with the mappings from this carrier plus a
  new mapping from `key` to `value`.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### where

    public <T> [ScopedValue.Carrier](ScopedValue.Carrier.md "class in java.lang")[PREVIEW](#preview-java.lang.ScopedValue.Carrier) where([ScopedValue](ScopedValue.md "class in java.lang")[PREVIEW](ScopedValue.md#preview-java.lang.ScopedValue)<T> key,
    T value)

    Returns a new `Carrier` with the mappings from this carrier plus a
    new mapping from `key` to `value`. If this carrier already has a
    mapping for the scoped value `key` then it will map to the new
    `value`. The current carrier is immutable, so it is not changed by this
    method.

    Type Parameters:
    :   `T` - the type of the value

    Parameters:
    :   `key` - the `ScopedValue` key
    :   `value` - the value, can be `null`

    Returns:
    :   a new `Carrier` with the mappings from this carrier plus the new mapping
  + ### get

    public <T> T get([ScopedValue](ScopedValue.md "class in java.lang")[PREVIEW](ScopedValue.md#preview-java.lang.ScopedValue)<T> key)

    Returns the value of a [`ScopedValue`](ScopedValue.md "class in java.lang")[PREVIEW](ScopedValue.md#preview-java.lang.ScopedValue) in this mapping.

    Type Parameters:
    :   `T` - the type of the value

    Parameters:
    :   `key` - the `ScopedValue` key

    Returns:
    :   the value

    Throws:
    :   `NoSuchElementException` - if the key is not present in this mapping
  + ### call

    public <R> R call([Callable](../util/concurrent/Callable.md "interface in java.util.concurrent")<? extends R> op)
    throws [Exception](Exception.md "class in java.lang")

    Calls a value-returning operation with each scoped value in this mapping bound
    to its value in the current thread.
    When the operation completes (normally or with an exception), each scoped value
    in the mapping will revert to being unbound, or revert to its previous value
    when previously bound, in the current thread. If `op` completes with an
    exception then it propagated by this method.

    Scoped values are intended to be used in a *structured manner*. If code
    invoked directly or indirectly by the operation creates a [`StructuredTaskScope`](../util/concurrent/StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)
    but does not [close](../util/concurrent/StructuredTaskScope.md#close())[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) it, then it is detected
    as a *structure violation* when the operation completes (normally or with an
    exception). In that case, the underlying construct of the `StructuredTaskScope`
    is closed and [`StructureViolationException`](../util/concurrent/StructureViolationException.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructureViolationException.md#preview-java.util.concurrent.StructureViolationException) is thrown.

    Type Parameters:
    :   `R` - the type of the result of the operation

    Parameters:
    :   `op` - the operation to run

    Returns:
    :   the result

    Throws:
    :   `StructureViolationExceptionPREVIEW` - if a structure violation is detected
    :   `Exception` - if `op` completes with an exception

    See Also:
    :   - [`ScopedValue.callWhere(ScopedValue, Object, Callable)`](ScopedValue.md#callWhere(java.lang.ScopedValue,T,java.util.concurrent.Callable))[PREVIEW](ScopedValue.md#preview-java.lang.ScopedValue)
  + ### get

    public <R> R get([Supplier](../util/function/Supplier.md "interface in java.util.function")<? extends R> op)

    Invokes a supplier of results with each scoped value in this mapping bound
    to its value in the current thread.
    When the operation completes (normally or with an exception), each scoped value
    in the mapping will revert to being unbound, or revert to its previous value
    when previously bound, in the current thread. If `op` completes with an
    exception then it propagated by this method.

    Scoped values are intended to be used in a *structured manner*. If code
    invoked directly or indirectly by the operation creates a [`StructuredTaskScope`](../util/concurrent/StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)
    but does not [close](../util/concurrent/StructuredTaskScope.md#close())[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) it, then it is detected
    as a *structure violation* when the operation completes (normally or with an
    exception). In that case, the underlying construct of the `StructuredTaskScope`
    is closed and [`StructureViolationException`](../util/concurrent/StructureViolationException.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructureViolationException.md#preview-java.util.concurrent.StructureViolationException) is thrown.

    Type Parameters:
    :   `R` - the type of the result of the operation

    Parameters:
    :   `op` - the operation to run

    Returns:
    :   the result

    Throws:
    :   `StructureViolationExceptionPREVIEW` - if a structure violation is detected

    See Also:
    :   - [`ScopedValue.getWhere(ScopedValue, Object, Supplier)`](ScopedValue.md#getWhere(java.lang.ScopedValue,T,java.util.function.Supplier))[PREVIEW](ScopedValue.md#preview-java.lang.ScopedValue)
  + ### run

    public void run([Runnable](Runnable.md "interface in java.lang") op)

    Runs an operation with each scoped value in this mapping bound to its value
    in the current thread.
    When the operation completes (normally or with an exception), each scoped value
    in the mapping will revert to being unbound, or revert to its previous value
    when previously bound, in the current thread. If `op` completes with an
    exception then it propagated by this method.

    Scoped values are intended to be used in a *structured manner*. If code
    invoked directly or indirectly by the operation creates a [`StructuredTaskScope`](../util/concurrent/StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)
    but does not [close](../util/concurrent/StructuredTaskScope.md#close())[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) it, then it is detected
    as a *structure violation* when the operation completes (normally or with an
    exception). In that case, the underlying construct of the `StructuredTaskScope`
    is closed and [`StructureViolationException`](../util/concurrent/StructureViolationException.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructureViolationException.md#preview-java.util.concurrent.StructureViolationException) is thrown.

    Parameters:
    :   `op` - the operation to run

    Throws:
    :   `StructureViolationExceptionPREVIEW` - if a structure violation is detected

    See Also:
    :   - [`ScopedValue.runWhere(ScopedValue, Object, Runnable)`](ScopedValue.md#runWhere(java.lang.ScopedValue,T,java.lang.Runnable))[PREVIEW](ScopedValue.md#preview-java.lang.ScopedValue)