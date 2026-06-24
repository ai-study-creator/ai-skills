Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class ThreadPoolExecutor.CallerRunsPolicy

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.concurrent.ThreadPoolExecutor.CallerRunsPolicy

All Implemented Interfaces:
:   `RejectedExecutionHandler`

Enclosing class:
:   `ThreadPoolExecutor`

---

public static class ThreadPoolExecutor.CallerRunsPolicy
extends [Object](../../lang/Object.md "class in java.lang")
implements [RejectedExecutionHandler](RejectedExecutionHandler.md "interface in java.util.concurrent")

A handler for rejected tasks that runs the rejected task
directly in the calling thread of the `execute` method,
unless the executor has been shut down, in which case the task
is discarded.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CallerRunsPolicy()`

  Creates a `CallerRunsPolicy`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `rejectedExecution(Runnable r,
  ThreadPoolExecutor e)`

  Executes task r in the caller's thread, unless the executor
  has been shut down, in which case the task is discarded.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CallerRunsPolicy

    public CallerRunsPolicy()

    Creates a `CallerRunsPolicy`.
* ## Method Details

  + ### rejectedExecution

    public void rejectedExecution([Runnable](../../lang/Runnable.md "interface in java.lang") r,
    [ThreadPoolExecutor](ThreadPoolExecutor.md "class in java.util.concurrent") e)

    Executes task r in the caller's thread, unless the executor
    has been shut down, in which case the task is discarded.

    Specified by:
    :   `rejectedExecution` in interface `RejectedExecutionHandler`

    Parameters:
    :   `r` - the runnable task requested to be executed
    :   `e` - the executor attempting to execute this task