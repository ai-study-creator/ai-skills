Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface Runnable

All Known Subinterfaces:
:   `RunnableFuture<V>`, `RunnableScheduledFuture<V>`

All Known Implementing Classes:
:   `AsyncBoxView.ChildState`, `ForkJoinWorkerThread`, `FutureTask`, `RenderableImageProducer`, `SwingWorker`, `Thread`, `TimerTask`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](FunctionalInterface.md "annotation interface in java.lang")
public interface Runnable

Represents an operation that does not return a result.

This is a [functional interface](../util/function/package-summary.md)
whose functional method is [`run()`](#run()).

Since:
:   1.0

See Also:
:   * [`Callable`](../util/concurrent/Callable.md "interface in java.util.concurrent")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `run()`

  Runs this operation.

* ## Method Details

  + ### run

    void run()

    Runs this operation.