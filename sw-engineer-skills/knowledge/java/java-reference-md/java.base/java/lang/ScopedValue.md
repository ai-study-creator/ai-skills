Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ScopedValue<T>

[java.lang.Object](Object.md "class in java.lang")

java.lang.ScopedValue<T>

Type Parameters:
:   `T` - the type of the value

---

public final class ScopedValue<T>
extends [Object](Object.md "class in java.lang")

`ScopedValue` is a preview API of the Java platform.

Programs can only use `ScopedValue` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

A value that may be safely and efficiently shared to methods without using method
parameters.

In the Java programming language, data is usually passed to a method by means of a
method parameter. The data may need to be passed through a sequence of many methods to
get to the method that makes use of the data. Every method in the sequence of calls
needs to declare the parameter and every method has access to the data.
`ScopedValue` provides a means to pass data to a faraway method (typically a
*callback*) without using method parameters. In effect, a `ScopedValue`
is an *implicit method parameter*. It is "as if" every method in a sequence of
calls has an additional parameter. None of the methods declare the parameter and only
the methods that have access to the `ScopedValue` object can access its value
(the data). `ScopedValue` makes it possible to securely pass data from a
*caller* to a faraway *callee* through a sequence of intermediate methods
that do not declare a parameter for the data and have no access to the data.

The `ScopedValue` API works by executing a method with a `ScopedValue`
object *bound* to some value for the bounded period of execution of a method.
The method may invoke another method, which in turn may invoke another. The unfolding
execution of the methods define a *dynamic scope*. Code in these methods with
access to the `ScopedValue` object may read its value. The `ScopedValue`
object reverts to being *unbound* when the original method completes normally or
with an exception. The `ScopedValue` API supports executing a [`Runnable.run`](Runnable.md#run()), [`Callable.call`](../util/concurrent/Callable.md#call()), or [`Supplier.get`](../util/function/Supplier.md#get())
method with a `ScopedValue` bound to a value.

Consider the following example with a scoped value "`NAME`" bound to the value
"`duke`" for the execution of a `run` method. The `run` method, in
turn, invokes `doSomething`.

Copy![Copy snippet](../../../copy.svg)

```
    private static final ScopedValue<String> NAME = ScopedValue.newInstance();

    ScopedValue.runWhere(NAME, "duke", () -> doSomething());
```

Code executed directly or indirectly by `doSomething`, with access to the field
`NAME`, can invoke `NAME.get()` to read the value "`duke`". `NAME` is bound while executing the `run` method. It reverts to being unbound when
the `run` method completes.

The example using `runWhere` invokes a method that does not return a result.
The [`callWhere`](#callWhere(java.lang.ScopedValue,T,java.util.concurrent.Callable)) and [`getWhere`](#getWhere(java.lang.ScopedValue,T,java.util.function.Supplier)) can be used to invoke a method that
returns a result.
In addition, `ScopedValue` defines the [`where(ScopedValue, Object)`](#where(java.lang.ScopedValue,T)) method
for cases where multiple mappings (of `ScopedValue` to value) are accumulated
in advance of calling a method with all `ScopedValue`s bound to their value.

## Bindings are per-thread

A `ScopedValue` binding to a value is per-thread. Invoking `xxxWhere`
executes a method with a `ScopedValue` bound to a value for the current thread.
The [`get`](#get()) method returns the value bound for the current thread.

In the example, if code executed by one thread invokes this:

Copy![Copy snippet](../../../copy.svg)

```
    ScopedValue.runWhere(NAME, "duke1", () -> doSomething());
```

and code executed by another thread invokes:

Copy![Copy snippet](../../../copy.svg)

```
    ScopedValue.runWhere(NAME, "duke2", () -> doSomething());
```

then code in `doSomething` (or any method that it calls) invoking `NAME.get()`
will read the value "`duke1`" or "`duke2`", depending on which thread is
executing.

## Scoped values as capabilities

A `ScopedValue` object should be treated as a *capability* or a key to
access its value when the `ScopedValue` is bound. Secure usage depends on access
control (see The Java Virtual Machine Specification, Section )
and taking care to not share the `ScopedValue` object. In many cases, a `ScopedValue` will be declared in a `final` and `static` field so that it
is only accessible to code in a single class (or nest).

## Rebinding

The `ScopedValue` API allows a new binding to be established for *nested
dynamic scopes*. This is known as *rebinding*. A `ScopedValue` that
is bound to a value may be bound to a new value for the bounded execution of a new
method. The unfolding execution of code executed by that method defines the nested
dynamic scope. When the method completes, the value of the `ScopedValue` reverts
to its previous value.

In the above example, suppose that code executed by `doSomething` binds
`NAME` to a new value with:

Copy![Copy snippet](../../../copy.svg)

```
    ScopedValue.runWhere(NAME, "duchess", () -> doMore());
```

Code executed directly or indirectly by `doMore()` that invokes `NAME.get()` will read the value "`duchess`". When `doMore()` completes
then the value of `NAME` reverts to "`duke`".

## Inheritance

`ScopedValue` supports sharing across threads. This sharing is limited to
structured cases where child threads are started and terminate within the bounded
period of execution by a parent thread. When using a [`StructuredTaskScope`](../util/concurrent/StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope),
scoped value bindings are *captured* when creating a `StructuredTaskScope`
and inherited by all threads started in that task scope with the
[`fork`](../util/concurrent/StructuredTaskScope.md#fork(java.util.concurrent.Callable))[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) method.

A `ScopedValue` that is shared across threads requires that the value be an
immutable object or for all access to the value to be appropriately synchronized.

In the following example, the `ScopedValue` `NAME` is bound to the
value "`duke`" for the execution of a runnable operation. The code in the `run` method creates a `StructuredTaskScope` that forks three tasks. Code executed
directly or indirectly by these threads running `childTask1()`, `childTask2()`,
and `childTask3()` that invokes `NAME.get()` will read the value
"`duke`".

Copy![Copy snippet](../../../copy.svg)

```
    private static final ScopedValue<String> NAME = ScopedValue.newInstance();

    ScopedValue.runWhere(NAME, "duke", () -> {
        try (var scope = new StructuredTaskScope<String>()) {

            scope.fork(() -> childTask1());
            scope.fork(() -> childTask2());
            scope.fork(() -> childTask3());

            ...
         }
    });
```

Unless otherwise specified, passing a `null` argument to a method in this
class will cause a [`NullPointerException`](NullPointerException.md "class in java.lang") to be thrown.

Since:
:   21

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `ScopedValue.CarrierPREVIEW`

  Preview.

  A mapping of scoped values, as *keys*, to values.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static <T,
  R> R`

  `callWhere(ScopedValuePREVIEW<T> key,
  T value,
  Callable<? extends R> op)`

  Calls a value-returning operation with a `ScopedValue` bound to a value
  in the current thread.

  `T`

  `get()`

  Returns the value of the scoped value if bound in the current thread.

  `static <T,
  R> R`

  `getWhere(ScopedValuePREVIEW<T> key,
  T value,
  Supplier<? extends R> op)`

  Invokes a supplier of results with a `ScopedValue` bound to a value
  in the current thread.

  `int`

  `hashCode()`

  Returns a hash code value for the object.

  `boolean`

  `isBound()`

  Returns `true` if this scoped value is bound in the current thread.

  `static <T> ScopedValuePREVIEW<T>`

  `newInstance()`

  Creates a scoped value that is initially unbound for all threads.

  `T`

  `orElse(T other)`

  Returns the value of this scoped value if bound in the current thread, otherwise
  returns `other`.

  `<X extends Throwable>  
  T`

  `orElseThrow(Supplier<? extends X> exceptionSupplier)`

  Returns the value of this scoped value if bound in the current thread, otherwise
  throws an exception produced by the exception supplying function.

  `static <T> void`

  `runWhere(ScopedValuePREVIEW<T> key,
  T value,
  Runnable op)`

  Run an operation with a `ScopedValue` bound to a value in the current
  thread.

  `static <T> ScopedValue.CarrierPREVIEW`

  `where(ScopedValuePREVIEW<T> key,
  T value)`

  Creates a new `Carrier` with a single mapping of a `ScopedValue`
  *key* to a value.

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### hashCode

    public int hashCode()

    Description copied from class: `Object`

    Returns a hash code value for the object. This method is
    supported for the benefit of hash tables such as those provided by
    [`HashMap`](../util/HashMap.md "class in java.util").

    The general contract of `hashCode` is:
    - Whenever it is invoked on the same object more than once during
      an execution of a Java application, the `hashCode` method
      must consistently return the same integer, provided no information
      used in `equals` comparisons on the object is modified.
      This integer need not remain consistent from one execution of an
      application to another execution of the same application.- If two objects are equal according to the [`equals`](Object.md#equals(java.lang.Object)) method, then calling the `hashCode` method on each of the two objects must produce the
        same integer result.- It is *not* required that if two objects are unequal
          according to the [`equals`](Object.md#equals(java.lang.Object)) method, then
          calling the `hashCode` method on each of the two objects
          must produce distinct integer results. However, the programmer
          should be aware that producing distinct integer results for
          unequal objects may improve the performance of hash tables.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](System.md#identityHashCode(java.lang.Object))
  + ### where

    public static <T> [ScopedValue.Carrier](ScopedValue.Carrier.md "class in java.lang")[PREVIEW](ScopedValue.Carrier.md#preview-java.lang.ScopedValue.Carrier) where([ScopedValue](ScopedValue.md "class in java.lang")[PREVIEW](#preview-java.lang.ScopedValue)<T> key,
    T value)

    Creates a new `Carrier` with a single mapping of a `ScopedValue`
    *key* to a value. The `Carrier` can be used to accumulate mappings so
    that an operation can be executed with all scoped values in the mapping bound to
    values. The following example runs an operation with `k1` bound (or rebound)
    to `v1`, and `k2` bound (or rebound) to `v2`.

    Copy![Copy snippet](../../../copy.svg)

    ```
        ScopedValue.where(k1, v1).where(k2, v2).run(() -> ... );
    ```

    Type Parameters:
    :   `T` - the type of the value

    Parameters:
    :   `key` - the `ScopedValue` key
    :   `value` - the value, can be `null`

    Returns:
    :   a new `Carrier` with a single mapping
  + ### callWhere

    public static <T,
    R> R callWhere([ScopedValue](ScopedValue.md "class in java.lang")[PREVIEW](#preview-java.lang.ScopedValue)<T> key,
    T value,
    [Callable](../util/concurrent/Callable.md "interface in java.util.concurrent")<? extends R> op)
    throws [Exception](Exception.md "class in java.lang")

    Calls a value-returning operation with a `ScopedValue` bound to a value
    in the current thread. When the operation completes (normally or with an
    exception), the `ScopedValue` will revert to being unbound, or revert to
    its previous value when previously bound, in the current thread. If `op`
    completes with an exception then it propagated by this method.

    Scoped values are intended to be used in a *structured manner*. If code
    invoked directly or indirectly by the operation creates a [`StructuredTaskScope`](../util/concurrent/StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)
    but does not [close](../util/concurrent/StructuredTaskScope.md#close())[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) it, then it is detected
    as a *structure violation* when the operation completes (normally or with an
    exception). In that case, the underlying construct of the `StructuredTaskScope`
    is closed and [`StructureViolationException`](../util/concurrent/StructureViolationException.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructureViolationException.md#preview-java.util.concurrent.StructureViolationException) is thrown.

    Type Parameters:
    :   `T` - the type of the value
    :   `R` - the result type

    Parameters:
    :   `key` - the `ScopedValue` key
    :   `value` - the value, can be `null`
    :   `op` - the operation to call

    Returns:
    :   the result

    Throws:
    :   `StructureViolationExceptionPREVIEW` - if a structure violation is detected
    :   `Exception` - if the operation completes with an exception
  + ### getWhere

    public static <T,
    R> R getWhere([ScopedValue](ScopedValue.md "class in java.lang")[PREVIEW](#preview-java.lang.ScopedValue)<T> key,
    T value,
    [Supplier](../util/function/Supplier.md "interface in java.util.function")<? extends R> op)

    Invokes a supplier of results with a `ScopedValue` bound to a value
    in the current thread. When the operation completes (normally or with an
    exception), the `ScopedValue` will revert to being unbound, or revert to
    its previous value when previously bound, in the current thread. If `op`
    completes with an exception then it propagated by this method.

    Scoped values are intended to be used in a *structured manner*. If code
    invoked directly or indirectly by the operation creates a [`StructuredTaskScope`](../util/concurrent/StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)
    but does not [close](../util/concurrent/StructuredTaskScope.md#close())[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) it, then it is detected
    as a *structure violation* when the operation completes (normally or with an
    exception). In that case, the underlying construct of the `StructuredTaskScope`
    is closed and [`StructureViolationException`](../util/concurrent/StructureViolationException.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructureViolationException.md#preview-java.util.concurrent.StructureViolationException) is thrown.

    Type Parameters:
    :   `T` - the type of the value
    :   `R` - the result type

    Parameters:
    :   `key` - the `ScopedValue` key
    :   `value` - the value, can be `null`
    :   `op` - the operation to call

    Returns:
    :   the result

    Throws:
    :   `StructureViolationExceptionPREVIEW` - if a structure violation is detected
  + ### runWhere

    public static <T> void runWhere([ScopedValue](ScopedValue.md "class in java.lang")[PREVIEW](#preview-java.lang.ScopedValue)<T> key,
    T value,
    [Runnable](Runnable.md "interface in java.lang") op)

    Run an operation with a `ScopedValue` bound to a value in the current
    thread. When the operation completes (normally or with an exception), the
    `ScopedValue` will revert to being unbound, or revert to its previous value
    when previously bound, in the current thread. If `op` completes with an
    exception then it propagated by this method.

    Scoped values are intended to be used in a *structured manner*. If code
    invoked directly or indirectly by the operation creates a [`StructuredTaskScope`](../util/concurrent/StructuredTaskScope.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope)
    but does not [close](../util/concurrent/StructuredTaskScope.md#close())[PREVIEW](../util/concurrent/StructuredTaskScope.md#preview-java.util.concurrent.StructuredTaskScope) it, then it is detected
    as a *structure violation* when the operation completes (normally or with an
    exception). In that case, the underlying construct of the `StructuredTaskScope`
    is closed and [`StructureViolationException`](../util/concurrent/StructureViolationException.md "class in java.util.concurrent")[PREVIEW](../util/concurrent/StructureViolationException.md#preview-java.util.concurrent.StructureViolationException) is thrown.

    Type Parameters:
    :   `T` - the type of the value

    Parameters:
    :   `key` - the `ScopedValue` key
    :   `value` - the value, can be `null`
    :   `op` - the operation to call

    Throws:
    :   `StructureViolationExceptionPREVIEW` - if a structure violation is detected
  + ### newInstance

    public static <T> [ScopedValue](ScopedValue.md "class in java.lang")[PREVIEW](#preview-java.lang.ScopedValue)<T> newInstance()

    Creates a scoped value that is initially unbound for all threads.

    Type Parameters:
    :   `T` - the type of the value

    Returns:
    :   a new `ScopedValue`
  + ### get

    public [T](ScopedValue.md "type parameter in ScopedValue") get()

    Returns the value of the scoped value if bound in the current thread.

    Returns:
    :   the value of the scoped value if bound in the current thread

    Throws:
    :   `NoSuchElementException` - if the scoped value is not bound
  + ### isBound

    public boolean isBound()

    Returns `true` if this scoped value is bound in the current thread.

    Returns:
    :   `true` if this scoped value is bound in the current thread
  + ### orElse

    public [T](ScopedValue.md "type parameter in ScopedValue") orElse([T](ScopedValue.md "type parameter in ScopedValue") other)

    Returns the value of this scoped value if bound in the current thread, otherwise
    returns `other`.

    Parameters:
    :   `other` - the value to return if not bound, can be `null`

    Returns:
    :   the value of the scoped value if bound, otherwise `other`
  + ### orElseThrow

    public <X extends [Throwable](Throwable.md "class in java.lang")> [T](ScopedValue.md "type parameter in ScopedValue") orElseThrow([Supplier](../util/function/Supplier.md "interface in java.util.function")<? extends X> exceptionSupplier)
    throws X

    Returns the value of this scoped value if bound in the current thread, otherwise
    throws an exception produced by the exception supplying function.

    Type Parameters:
    :   `X` - the type of the exception that may be thrown

    Parameters:
    :   `exceptionSupplier` - the supplying function that produces the exception to throw

    Returns:
    :   the value of the scoped value if bound in the current thread

    Throws:
    :   `X` - if the scoped value is not bound in the current thread