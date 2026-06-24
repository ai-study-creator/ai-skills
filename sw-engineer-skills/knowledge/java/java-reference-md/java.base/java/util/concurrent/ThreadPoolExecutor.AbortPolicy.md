Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class ThreadPoolExecutor.AbortPolicy

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.concurrent.ThreadPoolExecutor.AbortPolicy

All Implemented Interfaces:
:   `RejectedExecutionHandler`

Enclosing class:
:   `ThreadPoolExecutor`

---

public static class ThreadPoolExecutor.AbortPolicy
extends [Object](../../lang/Object.md "class in java.lang")
implements [RejectedExecutionHandler](RejectedExecutionHandler.md "interface in java.util.concurrent")

A handler for rejected tasks that throws a
[`RejectedExecutionException`](RejectedExecutionException.md "class in java.util.concurrent").
This is the default handler for [`ThreadPoolExecutor`](ThreadPoolExecutor.md "class in java.util.concurrent") and
[`ScheduledThreadPoolExecutor`](ScheduledThreadPoolExecutor.md "class in java.util.concurrent").

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AbortPolicy()`

  Creates an `AbortPolicy`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `rejectedExecution(Runnable r,
  ThreadPoolExecutor e)`

  Always throws RejectedExecutionException.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AbortPolicy

    public AbortPolicy()

    Creates an `AbortPolicy`.
* ## Method Details

  + ### rejectedExecution

    public void rejectedExecution([Runnable](../../lang/Runnable.md "interface in java.lang") r,
    [ThreadPoolExecutor](ThreadPoolExecutor.md "class in java.util.concurrent") e)

    Always throws RejectedExecutionException.

    Specified by:
    :   `rejectedExecution` in interface `RejectedExecutionHandler`

    Parameters:
    :   `r` - the runnable task requested to be executed
    :   `e` - the executor attempting to execute this task

    Throws:
    :   `RejectedExecutionException` - always