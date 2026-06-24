Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface CompletionStage<T>

Type Parameters:
:   `T` - the type of values the stage produces or consumes

All Known Implementing Classes:
:   `CompletableFuture`

---

public interface CompletionStage<T>

A stage of a possibly asynchronous computation, that performs an
action or computes a value when another CompletionStage completes.
A stage completes upon termination of its computation, but this may
in turn trigger other dependent stages. The functionality defined
in this interface takes only a few basic forms, which expand out to
a larger set of methods to capture a range of usage styles:

* The computation performed by a stage may be expressed as a
  Function, Consumer, or Runnable (using methods with names including
  *apply*, *accept*, or *run*, respectively)
  depending on whether it requires arguments and/or produces results.
  For example:

  ```
   stage.thenApply(x -> square(x))
        .thenAccept(x -> System.out.print(x))
        .thenRun(() -> System.out.println());
  ```

  An additional form (*compose*) allows the construction of
  computation pipelines from functions returning completion stages.

  Any argument to a stage's computation is the outcome of a
  triggering stage's computation.* One stage's execution may be triggered by completion of a
    single stage, or both of two stages, or either of two stages.
    Dependencies on a single stage are arranged using methods with
    prefix *then*. Those triggered by completion of
    *both* of two stages may *combine* their results or
    effects, using correspondingly named methods. Those triggered by
    *either* of two stages make no guarantees about which of the
    results or effects are used for the dependent stage's computation.* Dependencies among stages control the triggering of
      computations, but do not otherwise guarantee any particular
      ordering. Additionally, execution of a new stage's computations may
      be arranged in any of three ways: default execution, default
      asynchronous execution (using methods with suffix *async*
      that employ the stage's default asynchronous execution facility),
      or custom (via a supplied [`Executor`](Executor.md "interface in java.util.concurrent")). The execution
      properties of default and async modes are specified by
      CompletionStage implementations, not this interface. Methods with
      explicit Executor arguments may have arbitrary execution
      properties, and might not even support concurrent execution, but
      are arranged for processing in a way that accommodates asynchrony.* Two method forms ([`handle`](#handle(java.util.function.BiFunction)) and [`whenComplete`](#whenComplete(java.util.function.BiConsumer))) support unconditional computation
        whether the triggering stage completed normally or exceptionally.
        Method [`exceptionally`](#exceptionally(java.util.function.Function)) supports computation
        only when the triggering stage completes exceptionally, computing a
        replacement result, similarly to the java `catch` keyword.
        In all other cases, if a stage's computation terminates abruptly
        with an (unchecked) exception or error, then all dependent stages
        requiring its completion complete exceptionally as well, with a
        [`CompletionException`](CompletionException.md "class in java.util.concurrent") holding the exception as its cause. If
        a stage is dependent on *both* of two stages, and both
        complete exceptionally, then the CompletionException may correspond
        to either one of these exceptions. If a stage is dependent on
        *either* of two others, and only one of them completes
        exceptionally, no guarantees are made about whether the dependent
        stage completes normally or exceptionally. In the case of method
        `whenComplete`, when the supplied action itself encounters an
        exception, then the stage completes exceptionally with this
        exception unless the source stage also completed exceptionally, in
        which case the exceptional completion from the source stage is
        given preference and propagated to the dependent stage.

All methods adhere to the above triggering, execution, and
exceptional completion specifications (which are not repeated in
individual method specifications). Additionally, while arguments
used to pass a completion result (that is, for parameters of type
`T`) for methods accepting them may be null, passing a null
value for any other parameter will result in a [`NullPointerException`](../../lang/NullPointerException.md "class in java.lang") being thrown.

Method form [`handle`](#handle(java.util.function.BiFunction)) is the most general way of
creating a continuation stage, unconditionally performing a
computation that is given both the result and exception (if any) of
the triggering CompletionStage, and computing an arbitrary result.
Method [`whenComplete`](#whenComplete(java.util.function.BiConsumer)) is similar, but preserves
the result of the triggering stage instead of computing a new one.
Because a stage's normal result may be `null`, both methods
should have a computation structured thus:

```
(result, exception) -> {
   if (exception == null) {
     // triggering stage completed normally
   } else {
     // triggering stage completed exceptionally
   }
 }
```

This interface does not define methods for initially creating,
forcibly completing normally or exceptionally, probing completion
status or results, or awaiting completion of a stage.
Implementations of CompletionStage may provide means of achieving
such effects, as appropriate. Method [`toCompletableFuture()`](#toCompletableFuture())
enables interoperability among different implementations of this
interface by providing a common conversion type.

Since:
:   1.8

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `CompletionStage<Void>`

  `acceptEither(CompletionStage<? extends T> other,
  Consumer<? super T> action)`

  Returns a new CompletionStage that, when either this or the
  other given stage complete normally, is executed with the
  corresponding result as argument to the supplied action.

  `CompletionStage<Void>`

  `acceptEitherAsync(CompletionStage<? extends T> other,
  Consumer<? super T> action)`

  Returns a new CompletionStage that, when either this or the
  other given stage complete normally, is executed using this
  stage's default asynchronous execution facility, with the
  corresponding result as argument to the supplied action.

  `CompletionStage<Void>`

  `acceptEitherAsync(CompletionStage<? extends T> other,
  Consumer<? super T> action,
  Executor executor)`

  Returns a new CompletionStage that, when either this or the
  other given stage complete normally, is executed using the
  supplied executor, with the corresponding result as argument to
  the supplied action.

  `<U> CompletionStage<U>`

  `applyToEither(CompletionStage<? extends T> other,
  Function<? super T,U> fn)`

  Returns a new CompletionStage that, when either this or the
  other given stage complete normally, is executed with the
  corresponding result as argument to the supplied function.

  `<U> CompletionStage<U>`

  `applyToEitherAsync(CompletionStage<? extends T> other,
  Function<? super T,U> fn)`

  Returns a new CompletionStage that, when either this or the
  other given stage complete normally, is executed using this
  stage's default asynchronous execution facility, with the
  corresponding result as argument to the supplied function.

  `<U> CompletionStage<U>`

  `applyToEitherAsync(CompletionStage<? extends T> other,
  Function<? super T,U> fn,
  Executor executor)`

  Returns a new CompletionStage that, when either this or the
  other given stage complete normally, is executed using the
  supplied executor, with the corresponding result as argument to
  the supplied function.

  `CompletionStage<T>`

  `exceptionally(Function<Throwable,? extends T> fn)`

  Returns a new CompletionStage that, when this stage completes
  exceptionally, is executed with this stage's exception as the
  argument to the supplied function.

  `default CompletionStage<T>`

  `exceptionallyAsync(Function<Throwable,? extends T> fn)`

  Returns a new CompletionStage that, when this stage completes
  exceptionally, is executed with this stage's exception as the
  argument to the supplied function, using this stage's default
  asynchronous execution facility.

  `default CompletionStage<T>`

  `exceptionallyAsync(Function<Throwable,? extends T> fn,
  Executor executor)`

  Returns a new CompletionStage that, when this stage completes
  exceptionally, is executed with this stage's exception as the
  argument to the supplied function, using the supplied Executor.

  `default CompletionStage<T>`

  `exceptionallyCompose(Function<Throwable,? extends CompletionStage<T>> fn)`

  Returns a new CompletionStage that, when this stage completes
  exceptionally, is composed using the results of the supplied
  function applied to this stage's exception.

  `default CompletionStage<T>`

  `exceptionallyComposeAsync(Function<Throwable,? extends CompletionStage<T>> fn)`

  Returns a new CompletionStage that, when this stage completes
  exceptionally, is composed using the results of the supplied
  function applied to this stage's exception, using this stage's
  default asynchronous execution facility.

  `default CompletionStage<T>`

  `exceptionallyComposeAsync(Function<Throwable,? extends CompletionStage<T>> fn,
  Executor executor)`

  Returns a new CompletionStage that, when this stage completes
  exceptionally, is composed using the results of the supplied
  function applied to this stage's exception, using the
  supplied Executor.

  `<U> CompletionStage<U>`

  `handle(BiFunction<? super T,Throwable,? extends U> fn)`

  Returns a new CompletionStage that, when this stage completes
  either normally or exceptionally, is executed with this stage's
  result and exception as arguments to the supplied function.

  `<U> CompletionStage<U>`

  `handleAsync(BiFunction<? super T,Throwable,? extends U> fn)`

  Returns a new CompletionStage that, when this stage completes
  either normally or exceptionally, is executed using this stage's
  default asynchronous execution facility, with this stage's
  result and exception as arguments to the supplied function.

  `<U> CompletionStage<U>`

  `handleAsync(BiFunction<? super T,Throwable,? extends U> fn,
  Executor executor)`

  Returns a new CompletionStage that, when this stage completes
  either normally or exceptionally, is executed using the
  supplied executor, with this stage's result and exception as
  arguments to the supplied function.

  `CompletionStage<Void>`

  `runAfterBoth(CompletionStage<?> other,
  Runnable action)`

  Returns a new CompletionStage that, when this and the other
  given stage both complete normally, executes the given action.

  `CompletionStage<Void>`

  `runAfterBothAsync(CompletionStage<?> other,
  Runnable action)`

  Returns a new CompletionStage that, when this and the other
  given stage both complete normally, executes the given action
  using this stage's default asynchronous execution facility.

  `CompletionStage<Void>`

  `runAfterBothAsync(CompletionStage<?> other,
  Runnable action,
  Executor executor)`

  Returns a new CompletionStage that, when this and the other
  given stage both complete normally, executes the given action
  using the supplied executor.

  `CompletionStage<Void>`

  `runAfterEither(CompletionStage<?> other,
  Runnable action)`

  Returns a new CompletionStage that, when either this or the
  other given stage complete normally, executes the given action.

  `CompletionStage<Void>`

  `runAfterEitherAsync(CompletionStage<?> other,
  Runnable action)`

  Returns a new CompletionStage that, when either this or the
  other given stage complete normally, executes the given action
  using this stage's default asynchronous execution facility.

  `CompletionStage<Void>`

  `runAfterEitherAsync(CompletionStage<?> other,
  Runnable action,
  Executor executor)`

  Returns a new CompletionStage that, when either this or the
  other given stage complete normally, executes the given action
  using the supplied executor.

  `CompletionStage<Void>`

  `thenAccept(Consumer<? super T> action)`

  Returns a new CompletionStage that, when this stage completes
  normally, is executed with this stage's result as the argument
  to the supplied action.

  `CompletionStage<Void>`

  `thenAcceptAsync(Consumer<? super T> action)`

  Returns a new CompletionStage that, when this stage completes
  normally, is executed using this stage's default asynchronous
  execution facility, with this stage's result as the argument to
  the supplied action.

  `CompletionStage<Void>`

  `thenAcceptAsync(Consumer<? super T> action,
  Executor executor)`

  Returns a new CompletionStage that, when this stage completes
  normally, is executed using the supplied Executor, with this
  stage's result as the argument to the supplied action.

  `<U> CompletionStage<Void>`

  `thenAcceptBoth(CompletionStage<? extends U> other,
  BiConsumer<? super T,? super U> action)`

  Returns a new CompletionStage that, when this and the other
  given stage both complete normally, is executed with the two
  results as arguments to the supplied action.

  `<U> CompletionStage<Void>`

  `thenAcceptBothAsync(CompletionStage<? extends U> other,
  BiConsumer<? super T,? super U> action)`

  Returns a new CompletionStage that, when this and the other
  given stage both complete normally, is executed using this
  stage's default asynchronous execution facility, with the two
  results as arguments to the supplied action.

  `<U> CompletionStage<Void>`

  `thenAcceptBothAsync(CompletionStage<? extends U> other,
  BiConsumer<? super T,? super U> action,
  Executor executor)`

  Returns a new CompletionStage that, when this and the other
  given stage both complete normally, is executed using the
  supplied executor, with the two results as arguments to the
  supplied action.

  `<U> CompletionStage<U>`

  `thenApply(Function<? super T,? extends U> fn)`

  Returns a new CompletionStage that, when this stage completes
  normally, is executed with this stage's result as the argument
  to the supplied function.

  `<U> CompletionStage<U>`

  `thenApplyAsync(Function<? super T,? extends U> fn)`

  Returns a new CompletionStage that, when this stage completes
  normally, is executed using this stage's default asynchronous
  execution facility, with this stage's result as the argument to
  the supplied function.

  `<U> CompletionStage<U>`

  `thenApplyAsync(Function<? super T,? extends U> fn,
  Executor executor)`

  Returns a new CompletionStage that, when this stage completes
  normally, is executed using the supplied Executor, with this
  stage's result as the argument to the supplied function.

  `<U,
  V> CompletionStage<V>`

  `thenCombine(CompletionStage<? extends U> other,
  BiFunction<? super T,? super U,? extends V> fn)`

  Returns a new CompletionStage that, when this and the other
  given stage both complete normally, is executed with the two
  results as arguments to the supplied function.

  `<U,
  V> CompletionStage<V>`

  `thenCombineAsync(CompletionStage<? extends U> other,
  BiFunction<? super T,? super U,? extends V> fn)`

  Returns a new CompletionStage that, when this and the other
  given stage both complete normally, is executed using this
  stage's default asynchronous execution facility, with the two
  results as arguments to the supplied function.

  `<U,
  V> CompletionStage<V>`

  `thenCombineAsync(CompletionStage<? extends U> other,
  BiFunction<? super T,? super U,? extends V> fn,
  Executor executor)`

  Returns a new CompletionStage that, when this and the other
  given stage both complete normally, is executed using the
  supplied executor, with the two results as arguments to the
  supplied function.

  `<U> CompletionStage<U>`

  `thenCompose(Function<? super T,? extends CompletionStage<U>> fn)`

  Returns a new CompletionStage that is completed with the same
  value as the CompletionStage returned by the given function.

  `<U> CompletionStage<U>`

  `thenComposeAsync(Function<? super T,? extends CompletionStage<U>> fn)`

  Returns a new CompletionStage that is completed with the same
  value as the CompletionStage returned by the given function,
  executed using this stage's default asynchronous execution
  facility.

  `<U> CompletionStage<U>`

  `thenComposeAsync(Function<? super T,? extends CompletionStage<U>> fn,
  Executor executor)`

  Returns a new CompletionStage that is completed with the same
  value as the CompletionStage returned by the given function,
  executed using the supplied Executor.

  `CompletionStage<Void>`

  `thenRun(Runnable action)`

  Returns a new CompletionStage that, when this stage completes
  normally, executes the given action.

  `CompletionStage<Void>`

  `thenRunAsync(Runnable action)`

  Returns a new CompletionStage that, when this stage completes
  normally, executes the given action using this stage's default
  asynchronous execution facility.

  `CompletionStage<Void>`

  `thenRunAsync(Runnable action,
  Executor executor)`

  Returns a new CompletionStage that, when this stage completes
  normally, executes the given action using the supplied Executor.

  `CompletableFuture<T>`

  `toCompletableFuture()`

  Returns a [`CompletableFuture`](CompletableFuture.md "class in java.util.concurrent") maintaining the same
  completion properties as this stage.

  `CompletionStage<T>`

  `whenComplete(BiConsumer<? super T,? super Throwable> action)`

  Returns a new CompletionStage with the same result or exception as
  this stage, that executes the given action when this stage completes.

  `CompletionStage<T>`

  `whenCompleteAsync(BiConsumer<? super T,? super Throwable> action)`

  Returns a new CompletionStage with the same result or exception as
  this stage, that executes the given action using this stage's
  default asynchronous execution facility when this stage completes.

  `CompletionStage<T>`

  `whenCompleteAsync(BiConsumer<? super T,? super Throwable> action,
  Executor executor)`

  Returns a new CompletionStage with the same result or exception as
  this stage, that executes the given action using the supplied
  Executor when this stage completes.

* ## Method Details

  + ### thenApply

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> thenApply([Function](../function/Function.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? extends U> fn)

    Returns a new CompletionStage that, when this stage completes
    normally, is executed with this stage's result as the argument
    to the supplied function.

    This method is analogous to
    [`Optional.map`](../Optional.md#map(java.util.function.Function)) and
    [`Stream.map`](../stream/Stream.md#map(java.util.function.Function)).

    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the function's return type

    Parameters:
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenApplyAsync

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> thenApplyAsync([Function](../function/Function.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? extends U> fn)

    Returns a new CompletionStage that, when this stage completes
    normally, is executed using this stage's default asynchronous
    execution facility, with this stage's result as the argument to
    the supplied function.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the function's return type

    Parameters:
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenApplyAsync

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> thenApplyAsync([Function](../function/Function.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? extends U> fn,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when this stage completes
    normally, is executed using the supplied Executor, with this
    stage's result as the argument to the supplied function.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the function's return type

    Parameters:
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### thenAccept

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> thenAccept([Consumer](../function/Consumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage")> action)

    Returns a new CompletionStage that, when this stage completes
    normally, is executed with this stage's result as the argument
    to the supplied action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenAcceptAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> thenAcceptAsync([Consumer](../function/Consumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage")> action)

    Returns a new CompletionStage that, when this stage completes
    normally, is executed using this stage's default asynchronous
    execution facility, with this stage's result as the argument to
    the supplied action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenAcceptAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> thenAcceptAsync([Consumer](../function/Consumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage")> action,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when this stage completes
    normally, is executed using the supplied Executor, with this
    stage's result as the argument to the supplied action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `action` - the action to perform before completing the
        returned CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### thenRun

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> thenRun([Runnable](../../lang/Runnable.md "interface in java.lang") action)

    Returns a new CompletionStage that, when this stage completes
    normally, executes the given action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenRunAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> thenRunAsync([Runnable](../../lang/Runnable.md "interface in java.lang") action)

    Returns a new CompletionStage that, when this stage completes
    normally, executes the given action using this stage's default
    asynchronous execution facility.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenRunAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> thenRunAsync([Runnable](../../lang/Runnable.md "interface in java.lang") action,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when this stage completes
    normally, executes the given action using the supplied Executor.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `action` - the action to perform before completing the
        returned CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### thenCombine

    <U,
    V> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<V> thenCombine([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends U> other,
    [BiFunction](../function/BiFunction.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? super U,? extends V> fn)

    Returns a new CompletionStage that, when this and the other
    given stage both complete normally, is executed with the two
    results as arguments to the supplied function.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the type of the other CompletionStage's result
    :   `V` - the function's return type

    Parameters:
    :   `other` - the other CompletionStage
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenCombineAsync

    <U,
    V> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<V> thenCombineAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends U> other,
    [BiFunction](../function/BiFunction.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? super U,? extends V> fn)

    Returns a new CompletionStage that, when this and the other
    given stage both complete normally, is executed using this
    stage's default asynchronous execution facility, with the two
    results as arguments to the supplied function.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the type of the other CompletionStage's result
    :   `V` - the function's return type

    Parameters:
    :   `other` - the other CompletionStage
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenCombineAsync

    <U,
    V> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<V> thenCombineAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends U> other,
    [BiFunction](../function/BiFunction.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? super U,? extends V> fn,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when this and the other
    given stage both complete normally, is executed using the
    supplied executor, with the two results as arguments to the
    supplied function.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the type of the other CompletionStage's result
    :   `V` - the function's return type

    Parameters:
    :   `other` - the other CompletionStage
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### thenAcceptBoth

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> thenAcceptBoth([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends U> other,
    [BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? super U> action)

    Returns a new CompletionStage that, when this and the other
    given stage both complete normally, is executed with the two
    results as arguments to the supplied action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the type of the other CompletionStage's result

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenAcceptBothAsync

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> thenAcceptBothAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends U> other,
    [BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? super U> action)

    Returns a new CompletionStage that, when this and the other
    given stage both complete normally, is executed using this
    stage's default asynchronous execution facility, with the two
    results as arguments to the supplied action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the type of the other CompletionStage's result

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenAcceptBothAsync

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> thenAcceptBothAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends U> other,
    [BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? super U> action,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when this and the other
    given stage both complete normally, is executed using the
    supplied executor, with the two results as arguments to the
    supplied action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the type of the other CompletionStage's result

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### runAfterBoth

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> runAfterBoth([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<?> other,
    [Runnable](../../lang/Runnable.md "interface in java.lang") action)

    Returns a new CompletionStage that, when this and the other
    given stage both complete normally, executes the given action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### runAfterBothAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> runAfterBothAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<?> other,
    [Runnable](../../lang/Runnable.md "interface in java.lang") action)

    Returns a new CompletionStage that, when this and the other
    given stage both complete normally, executes the given action
    using this stage's default asynchronous execution facility.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### runAfterBothAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> runAfterBothAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<?> other,
    [Runnable](../../lang/Runnable.md "interface in java.lang") action,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when this and the other
    given stage both complete normally, executes the given action
    using the supplied executor.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### applyToEither

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> applyToEither([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends [T](CompletionStage.md "type parameter in CompletionStage")> other,
    [Function](../function/Function.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),U> fn)

    Returns a new CompletionStage that, when either this or the
    other given stage complete normally, is executed with the
    corresponding result as argument to the supplied function.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the function's return type

    Parameters:
    :   `other` - the other CompletionStage
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### applyToEitherAsync

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> applyToEitherAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends [T](CompletionStage.md "type parameter in CompletionStage")> other,
    [Function](../function/Function.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),U> fn)

    Returns a new CompletionStage that, when either this or the
    other given stage complete normally, is executed using this
    stage's default asynchronous execution facility, with the
    corresponding result as argument to the supplied function.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the function's return type

    Parameters:
    :   `other` - the other CompletionStage
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### applyToEitherAsync

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> applyToEitherAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends [T](CompletionStage.md "type parameter in CompletionStage")> other,
    [Function](../function/Function.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),U> fn,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when either this or the
    other given stage complete normally, is executed using the
    supplied executor, with the corresponding result as argument to
    the supplied function.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the function's return type

    Parameters:
    :   `other` - the other CompletionStage
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### acceptEither

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> acceptEither([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends [T](CompletionStage.md "type parameter in CompletionStage")> other,
    [Consumer](../function/Consumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage")> action)

    Returns a new CompletionStage that, when either this or the
    other given stage complete normally, is executed with the
    corresponding result as argument to the supplied action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### acceptEitherAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> acceptEitherAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends [T](CompletionStage.md "type parameter in CompletionStage")> other,
    [Consumer](../function/Consumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage")> action)

    Returns a new CompletionStage that, when either this or the
    other given stage complete normally, is executed using this
    stage's default asynchronous execution facility, with the
    corresponding result as argument to the supplied action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### acceptEitherAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> acceptEitherAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<? extends [T](CompletionStage.md "type parameter in CompletionStage")> other,
    [Consumer](../function/Consumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage")> action,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when either this or the
    other given stage complete normally, is executed using the
    supplied executor, with the corresponding result as argument to
    the supplied action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### runAfterEither

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> runAfterEither([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<?> other,
    [Runnable](../../lang/Runnable.md "interface in java.lang") action)

    Returns a new CompletionStage that, when either this or the
    other given stage complete normally, executes the given action.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### runAfterEitherAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> runAfterEitherAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<?> other,
    [Runnable](../../lang/Runnable.md "interface in java.lang") action)

    Returns a new CompletionStage that, when either this or the
    other given stage complete normally, executes the given action
    using this stage's default asynchronous execution facility.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### runAfterEitherAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[Void](../../lang/Void.md "class in java.lang")> runAfterEitherAsync([CompletionStage](CompletionStage.md "interface in java.util.concurrent")<?> other,
    [Runnable](../../lang/Runnable.md "interface in java.lang") action,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when either this or the
    other given stage complete normally, executes the given action
    using the supplied executor.
    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Parameters:
    :   `other` - the other CompletionStage
    :   `action` - the action to perform before completing the
        returned CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### thenCompose

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> thenCompose([Function](../function/Function.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? extends [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U>> fn)

    Returns a new CompletionStage that is completed with the same
    value as the CompletionStage returned by the given function.

    When this stage completes normally, the given function is
    invoked with this stage's result as the argument, returning
    another CompletionStage. When that stage completes normally,
    the CompletionStage returned by this method is completed with
    the same value.

    To ensure progress, the supplied function must arrange
    eventual completion of its result.

    This method is analogous to
    [`Optional.flatMap`](../Optional.md#flatMap(java.util.function.Function)) and
    [`Stream.flatMap`](../stream/Stream.md#flatMap(java.util.function.Function)).

    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the type of the returned CompletionStage's result

    Parameters:
    :   `fn` - the function to use to compute another CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenComposeAsync

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> thenComposeAsync([Function](../function/Function.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? extends [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U>> fn)

    Returns a new CompletionStage that is completed with the same
    value as the CompletionStage returned by the given function,
    executed using this stage's default asynchronous execution
    facility.

    When this stage completes normally, the given function is
    invoked with this stage's result as the argument, returning
    another CompletionStage. When that stage completes normally,
    the CompletionStage returned by this method is completed with
    the same value.

    To ensure progress, the supplied function must arrange
    eventual completion of its result.

    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the type of the returned CompletionStage's result

    Parameters:
    :   `fn` - the function to use to compute another CompletionStage

    Returns:
    :   the new CompletionStage
  + ### thenComposeAsync

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> thenComposeAsync([Function](../function/Function.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? extends [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U>> fn,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that is completed with the same
    value as the CompletionStage returned by the given function,
    executed using the supplied Executor.

    When this stage completes normally, the given function is
    invoked with this stage's result as the argument, returning
    another CompletionStage. When that stage completes normally,
    the CompletionStage returned by this method is completed with
    the same value.

    To ensure progress, the supplied function must arrange
    eventual completion of its result.

    See the [`CompletionStage`](CompletionStage.md "interface in java.util.concurrent") documentation for rules
    covering exceptional completion.

    Type Parameters:
    :   `U` - the type of the returned CompletionStage's result

    Parameters:
    :   `fn` - the function to use to compute another CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### handle

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> handle([BiFunction](../function/BiFunction.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),[Throwable](../../lang/Throwable.md "class in java.lang"),? extends U> fn)

    Returns a new CompletionStage that, when this stage completes
    either normally or exceptionally, is executed with this stage's
    result and exception as arguments to the supplied function.

    When this stage is complete, the given function is invoked
    with the result (or `null` if none) and the exception (or
    `null` if none) of this stage as arguments, and the
    function's result is used to complete the returned stage.

    Type Parameters:
    :   `U` - the function's return type

    Parameters:
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### handleAsync

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> handleAsync([BiFunction](../function/BiFunction.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),[Throwable](../../lang/Throwable.md "class in java.lang"),? extends U> fn)

    Returns a new CompletionStage that, when this stage completes
    either normally or exceptionally, is executed using this stage's
    default asynchronous execution facility, with this stage's
    result and exception as arguments to the supplied function.

    When this stage is complete, the given function is invoked
    with the result (or `null` if none) and the exception (or
    `null` if none) of this stage as arguments, and the
    function's result is used to complete the returned stage.

    Type Parameters:
    :   `U` - the function's return type

    Parameters:
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage

    Returns:
    :   the new CompletionStage
  + ### handleAsync

    <U> [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<U> handleAsync([BiFunction](../function/BiFunction.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),[Throwable](../../lang/Throwable.md "class in java.lang"),? extends U> fn,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when this stage completes
    either normally or exceptionally, is executed using the
    supplied executor, with this stage's result and exception as
    arguments to the supplied function.

    When this stage is complete, the given function is invoked
    with the result (or `null` if none) and the exception (or
    `null` if none) of this stage as arguments, and the
    function's result is used to complete the returned stage.

    Type Parameters:
    :   `U` - the function's return type

    Parameters:
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### whenComplete

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")> whenComplete([BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? super [Throwable](../../lang/Throwable.md "class in java.lang")> action)

    Returns a new CompletionStage with the same result or exception as
    this stage, that executes the given action when this stage completes.

    When this stage is complete, the given action is invoked
    with the result (or `null` if none) and the exception (or
    `null` if none) of this stage as arguments. The returned
    stage is completed when the action returns.

    Unlike method [`handle`](#handle(java.util.function.BiFunction)),
    this method is not designed to translate completion outcomes,
    so the supplied action should not throw an exception. However,
    if it does, the following rules apply: if this stage completed
    normally but the supplied action throws an exception, then the
    returned stage completes exceptionally with the supplied
    action's exception. Or, if this stage completed exceptionally
    and the supplied action throws an exception, then the returned
    stage completes exceptionally with this stage's exception.

    Parameters:
    :   `action` - the action to perform

    Returns:
    :   the new CompletionStage
  + ### whenCompleteAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")> whenCompleteAsync([BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? super [Throwable](../../lang/Throwable.md "class in java.lang")> action)

    Returns a new CompletionStage with the same result or exception as
    this stage, that executes the given action using this stage's
    default asynchronous execution facility when this stage completes.

    When this stage is complete, the given action is invoked with the
    result (or `null` if none) and the exception (or `null`
    if none) of this stage as arguments. The returned stage is completed
    when the action returns.

    Unlike method [`handleAsync`](#handleAsync(java.util.function.BiFunction)),
    this method is not designed to translate completion outcomes,
    so the supplied action should not throw an exception. However,
    if it does, the following rules apply: If this stage completed
    normally but the supplied action throws an exception, then the
    returned stage completes exceptionally with the supplied
    action's exception. Or, if this stage completed exceptionally
    and the supplied action throws an exception, then the returned
    stage completes exceptionally with this stage's exception.

    Parameters:
    :   `action` - the action to perform

    Returns:
    :   the new CompletionStage
  + ### whenCompleteAsync

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")> whenCompleteAsync([BiConsumer](../function/BiConsumer.md "interface in java.util.function")<? super [T](CompletionStage.md "type parameter in CompletionStage"),? super [Throwable](../../lang/Throwable.md "class in java.lang")> action,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage with the same result or exception as
    this stage, that executes the given action using the supplied
    Executor when this stage completes.

    When this stage is complete, the given action is invoked with the
    result (or `null` if none) and the exception (or `null`
    if none) of this stage as arguments. The returned stage is completed
    when the action returns.

    Unlike method [`handleAsync`](#handleAsync(java.util.function.BiFunction,java.util.concurrent.Executor)),
    this method is not designed to translate completion outcomes,
    so the supplied action should not throw an exception. However,
    if it does, the following rules apply: If this stage completed
    normally but the supplied action throws an exception, then the
    returned stage completes exceptionally with the supplied
    action's exception. Or, if this stage completed exceptionally
    and the supplied action throws an exception, then the returned
    stage completes exceptionally with this stage's exception.

    Parameters:
    :   `action` - the action to perform
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage
  + ### exceptionally

    [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")> exceptionally([Function](../function/Function.md "interface in java.util.function")<[Throwable](../../lang/Throwable.md "class in java.lang"),? extends [T](CompletionStage.md "type parameter in CompletionStage")> fn)

    Returns a new CompletionStage that, when this stage completes
    exceptionally, is executed with this stage's exception as the
    argument to the supplied function. Otherwise, if this stage
    completes normally, then the returned stage also completes
    normally with the same value.

    Parameters:
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage if this CompletionStage completed
        exceptionally

    Returns:
    :   the new CompletionStage
  + ### exceptionallyAsync

    default [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")> exceptionallyAsync([Function](../function/Function.md "interface in java.util.function")<[Throwable](../../lang/Throwable.md "class in java.lang"),? extends [T](CompletionStage.md "type parameter in CompletionStage")> fn)

    Returns a new CompletionStage that, when this stage completes
    exceptionally, is executed with this stage's exception as the
    argument to the supplied function, using this stage's default
    asynchronous execution facility. Otherwise, if this stage
    completes normally, then the returned stage also completes
    normally with the same value.

    Parameters:
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage if this CompletionStage completed
        exceptionally

    Returns:
    :   the new CompletionStage

    Since:
    :   12
  + ### exceptionallyAsync

    default [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")> exceptionallyAsync([Function](../function/Function.md "interface in java.util.function")<[Throwable](../../lang/Throwable.md "class in java.lang"),? extends [T](CompletionStage.md "type parameter in CompletionStage")> fn,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when this stage completes
    exceptionally, is executed with this stage's exception as the
    argument to the supplied function, using the supplied Executor.
    Otherwise, if this stage completes normally, then the returned
    stage also completes normally with the same value.

    Parameters:
    :   `fn` - the function to use to compute the value of the
        returned CompletionStage if this CompletionStage completed
        exceptionally
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage

    Since:
    :   12
  + ### exceptionallyCompose

    default [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")> exceptionallyCompose([Function](../function/Function.md "interface in java.util.function")<[Throwable](../../lang/Throwable.md "class in java.lang"),? extends [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")>> fn)

    Returns a new CompletionStage that, when this stage completes
    exceptionally, is composed using the results of the supplied
    function applied to this stage's exception.

    Parameters:
    :   `fn` - the function to use to compute the returned
        CompletionStage if this CompletionStage completed exceptionally

    Returns:
    :   the new CompletionStage

    Since:
    :   12
  + ### exceptionallyComposeAsync

    default [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")> exceptionallyComposeAsync([Function](../function/Function.md "interface in java.util.function")<[Throwable](../../lang/Throwable.md "class in java.lang"),? extends [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")>> fn)

    Returns a new CompletionStage that, when this stage completes
    exceptionally, is composed using the results of the supplied
    function applied to this stage's exception, using this stage's
    default asynchronous execution facility.

    Parameters:
    :   `fn` - the function to use to compute the returned
        CompletionStage if this CompletionStage completed exceptionally

    Returns:
    :   the new CompletionStage

    Since:
    :   12
  + ### exceptionallyComposeAsync

    default [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")> exceptionallyComposeAsync([Function](../function/Function.md "interface in java.util.function")<[Throwable](../../lang/Throwable.md "class in java.lang"),? extends [CompletionStage](CompletionStage.md "interface in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")>> fn,
    [Executor](Executor.md "interface in java.util.concurrent") executor)

    Returns a new CompletionStage that, when this stage completes
    exceptionally, is composed using the results of the supplied
    function applied to this stage's exception, using the
    supplied Executor.

    Parameters:
    :   `fn` - the function to use to compute the returned
        CompletionStage if this CompletionStage completed exceptionally
    :   `executor` - the executor to use for asynchronous execution

    Returns:
    :   the new CompletionStage

    Since:
    :   12
  + ### toCompletableFuture

    [CompletableFuture](CompletableFuture.md "class in java.util.concurrent")<[T](CompletionStage.md "type parameter in CompletionStage")> toCompletableFuture()

    Returns a [`CompletableFuture`](CompletableFuture.md "class in java.util.concurrent") maintaining the same
    completion properties as this stage. If this stage is already a
    CompletableFuture, this method may return this stage itself.
    Otherwise, invocation of this method may be equivalent in
    effect to `thenApply(x -> x)`, but returning an instance
    of type `CompletableFuture`.

    Returns:
    :   the CompletableFuture