Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface RejectedExecutionHandler

All Known Implementing Classes:
:   `ThreadPoolExecutor.AbortPolicy`, `ThreadPoolExecutor.CallerRunsPolicy`, `ThreadPoolExecutor.DiscardOldestPolicy`, `ThreadPoolExecutor.DiscardPolicy`

---

public interface RejectedExecutionHandler

A handler for tasks that cannot be executed by a [`ThreadPoolExecutor`](ThreadPoolExecutor.md "class in java.util.concurrent").

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `rejectedExecution(Runnable r,
  ThreadPoolExecutor executor)`

  Method that may be invoked by a [`ThreadPoolExecutor`](ThreadPoolExecutor.md "class in java.util.concurrent") when
  [`execute`](ThreadPoolExecutor.md#execute(java.lang.Runnable)) cannot accept a
  task.

* ## Method Details

  + ### rejectedExecution

    void rejectedExecution([Runnable](../../lang/Runnable.md "interface in java.lang") r,
    [ThreadPoolExecutor](ThreadPoolExecutor.md "class in java.util.concurrent") executor)

    Method that may be invoked by a [`ThreadPoolExecutor`](ThreadPoolExecutor.md "class in java.util.concurrent") when
    [`execute`](ThreadPoolExecutor.md#execute(java.lang.Runnable)) cannot accept a
    task. This may occur when no more threads or queue slots are
    available because their bounds would be exceeded, or upon
    shutdown of the Executor.

    In the absence of other alternatives, the method may throw
    an unchecked [`RejectedExecutionException`](RejectedExecutionException.md "class in java.util.concurrent"), which will be
    propagated to the caller of `execute`.

    Parameters:
    :   `r` - the runnable task requested to be executed
    :   `executor` - the executor attempting to execute this task

    Throws:
    :   `RejectedExecutionException` - if there is no remedy