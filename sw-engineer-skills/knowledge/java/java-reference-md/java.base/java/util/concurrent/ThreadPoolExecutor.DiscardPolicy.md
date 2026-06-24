Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class ThreadPoolExecutor.DiscardPolicy

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.concurrent.ThreadPoolExecutor.DiscardPolicy

All Implemented Interfaces:
:   `RejectedExecutionHandler`

Enclosing class:
:   `ThreadPoolExecutor`

---

public static class ThreadPoolExecutor.DiscardPolicy
extends [Object](../../lang/Object.md "class in java.lang")
implements [RejectedExecutionHandler](RejectedExecutionHandler.md "interface in java.util.concurrent")

A handler for rejected tasks that silently discards the
rejected task.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DiscardPolicy()`

  Creates a `DiscardPolicy`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `rejectedExecution(Runnable r,
  ThreadPoolExecutor e)`

  Does nothing, which has the effect of discarding task r.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DiscardPolicy

    public DiscardPolicy()

    Creates a `DiscardPolicy`.
* ## Method Details

  + ### rejectedExecution

    public void rejectedExecution([Runnable](../../lang/Runnable.md "interface in java.lang") r,
    [ThreadPoolExecutor](ThreadPoolExecutor.md "class in java.util.concurrent") e)

    Does nothing, which has the effect of discarding task r.

    Specified by:
    :   `rejectedExecution` in interface `RejectedExecutionHandler`

    Parameters:
    :   `r` - the runnable task requested to be executed
    :   `e` - the executor attempting to execute this task