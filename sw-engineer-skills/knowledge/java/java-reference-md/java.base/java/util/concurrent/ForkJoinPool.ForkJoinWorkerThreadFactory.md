Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface ForkJoinPool.ForkJoinWorkerThreadFactory

Enclosing class:
:   `ForkJoinPool`

---

public static interface ForkJoinPool.ForkJoinWorkerThreadFactory

Factory for creating new [`ForkJoinWorkerThread`](ForkJoinWorkerThread.md "class in java.util.concurrent")s.
A `ForkJoinWorkerThreadFactory` must be defined and used
for `ForkJoinWorkerThread` subclasses that extend base
functionality or initialize threads with different contexts.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ForkJoinWorkerThread`

  `newThread(ForkJoinPool pool)`

  Returns a new worker thread operating in the given pool.

* ## Method Details

  + ### newThread

    [ForkJoinWorkerThread](ForkJoinWorkerThread.md "class in java.util.concurrent") newThread([ForkJoinPool](ForkJoinPool.md "class in java.util.concurrent") pool)

    Returns a new worker thread operating in the given pool.
    Returning null or throwing an exception may result in tasks
    never being executed. If this method throws an exception,
    it is relayed to the caller of the method (for example
    `execute`) causing attempted thread creation. If this
    method returns null or throws an exception, it is not
    retried until the next attempted creation (for example
    another call to `execute`).

    Parameters:
    :   `pool` - the pool this thread works in

    Returns:
    :   the new worker thread, or `null` if the request
        to create a thread is rejected

    Throws:
    :   `NullPointerException` - if the pool is null