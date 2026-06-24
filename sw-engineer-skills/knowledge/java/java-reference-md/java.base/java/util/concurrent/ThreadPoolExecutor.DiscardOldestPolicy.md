Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class ThreadPoolExecutor.DiscardOldestPolicy

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.util.concurrent.ThreadPoolExecutor.DiscardOldestPolicy

All Implemented Interfaces:
:   `RejectedExecutionHandler`

Enclosing class:
:   `ThreadPoolExecutor`

---

public static class ThreadPoolExecutor.DiscardOldestPolicy
extends [Object](../../lang/Object.md "class in java.lang")
implements [RejectedExecutionHandler](RejectedExecutionHandler.md "interface in java.util.concurrent")

A handler for rejected tasks that discards the oldest unhandled
request and then retries `execute`, unless the executor
is shut down, in which case the task is discarded. This policy is
rarely useful in cases where other threads may be waiting for
tasks to terminate, or failures must be recorded. Instead consider
using a handler of the form:

```
 new RejectedExecutionHandler() {
   public void rejectedExecution(Runnable r, ThreadPoolExecutor e) {
     Runnable dropped = e.getQueue().poll();
     if (dropped instanceof Future<?>) {
       ((Future<?>)dropped).cancel(false);
       // also consider logging the failure
     }
     e.execute(r);  // retry
 }}
```

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DiscardOldestPolicy()`

  Creates a `DiscardOldestPolicy` for the given executor.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `rejectedExecution(Runnable r,
  ThreadPoolExecutor e)`

  Obtains and ignores the next task that the executor
  would otherwise execute, if one is immediately available,
  and then retries execution of task r, unless the executor
  is shut down, in which case task r is instead discarded.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DiscardOldestPolicy

    public DiscardOldestPolicy()

    Creates a `DiscardOldestPolicy` for the given executor.
* ## Method Details

  + ### rejectedExecution

    public void rejectedExecution([Runnable](../../lang/Runnable.md "interface in java.lang") r,
    [ThreadPoolExecutor](ThreadPoolExecutor.md "class in java.util.concurrent") e)

    Obtains and ignores the next task that the executor
    would otherwise execute, if one is immediately available,
    and then retries execution of task r, unless the executor
    is shut down, in which case task r is instead discarded.

    Specified by:
    :   `rejectedExecution` in interface `RejectedExecutionHandler`

    Parameters:
    :   `r` - the runnable task requested to be executed
    :   `e` - the executor attempting to execute this task