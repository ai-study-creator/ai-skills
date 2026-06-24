Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Class RecursiveTask<V>

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.util.concurrent.ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<V>

java.util.concurrent.RecursiveTask<V>

Type Parameters:
:   `V` - the type of the result of the task

All Implemented Interfaces:
:   `Serializable`, `Future<V>`

---

public abstract class RecursiveTask<V>
extends [ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")<V>

A recursive result-bearing [`ForkJoinTask`](ForkJoinTask.md "class in java.util.concurrent").

For example, here is a task-based program for computing Factorials:

```
 import java.util.concurrent.RecursiveTask;
 import java.math.BigInteger;
 public class Factorial {
   static class FactorialTask extends RecursiveTask<BigInteger> {
     private final int from, to;
     FactorialTask(int from, int to) { this.from = from; this.to = to; }
     protected BigInteger compute() {
       int range = to - from;
       if (range == 0) {                       // base case
         return BigInteger.valueOf(from);
       } else if (range == 1) {                // too small to parallelize
         return BigInteger.valueOf(from).multiply(BigInteger.valueOf(to));
       } else {                                // split in half
         int mid = from + range / 2;
         FactorialTask leftTask = new FactorialTask(from, mid);
         leftTask.fork();         // perform about half the work locally
         return new FactorialTask(mid + 1, to).compute()
                .multiply(leftTask.join());
       }
     }
   }
   static BigInteger factorial(int n) { // uses ForkJoinPool.commonPool()
     return (n <= 1) ? BigInteger.ONE : new FactorialTask(1, n).invoke();
   }
   public static void main(String[] args) {
     System.out.println(factorial(Integer.parseInt(args[0])));
   }
 }
```

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.concurrent.RecursiveTask)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.util.concurrent.[Future](Future.md "interface in java.util.concurrent")

  `Future.State`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `RecursiveTask()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected abstract V`

  `compute()`

  The main computation performed by this task.

  `protected final boolean`

  `exec()`

  Implements execution conventions for RecursiveTask.

  `final V`

  `getRawResult()`

  Returns the result that would be returned by [`ForkJoinTask.join()`](ForkJoinTask.md#join()), even
  if this task completed abnormally, or `null` if this task
  is not known to have been completed.

  `protected final void`

  `setRawResult(V value)`

  Forces the given value to be returned as a result.

  ### Methods inherited from class java.util.concurrent.[ForkJoinTask](ForkJoinTask.md "class in java.util.concurrent")

  `adapt, adapt, adapt, adaptInterruptible, cancel, compareAndSetForkJoinTaskTag, complete, completeExceptionally, exceptionNow, fork, get, get, getException, getForkJoinTaskTag, getPool, getQueuedTaskCount, getSurplusQueuedTaskCount, helpQuiesce, inForkJoinPool, invoke, invokeAll, invokeAll, invokeAll, isCancelled, isCompletedAbnormally, isCompletedNormally, isDone, join, peekNextLocalTask, pollNextLocalTask, pollSubmission, pollTask, quietlyComplete, quietlyInvoke, quietlyJoin, quietlyJoin, quietlyJoinUninterruptibly, reinitialize, resultNow, setForkJoinTaskTag, state, tryUnfork`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### RecursiveTask

    public RecursiveTask()

    Constructor for subclasses to call.
* ## Method Details

  + ### compute

    protected abstract [V](RecursiveTask.md "type parameter in RecursiveTask") compute()

    The main computation performed by this task.

    Returns:
    :   the result of the computation
  + ### getRawResult

    public final [V](RecursiveTask.md "type parameter in RecursiveTask") getRawResult()

    Description copied from class: `ForkJoinTask`

    Returns the result that would be returned by [`ForkJoinTask.join()`](ForkJoinTask.md#join()), even
    if this task completed abnormally, or `null` if this task
    is not known to have been completed. This method is designed
    to aid debugging, as well as to support extensions. Its use in
    any other context is discouraged.

    Specified by:
    :   `getRawResult` in class `ForkJoinTask<V>`

    Returns:
    :   the result, or `null` if not completed
  + ### setRawResult

    protected final void setRawResult([V](RecursiveTask.md "type parameter in RecursiveTask") value)

    Description copied from class: `ForkJoinTask`

    Forces the given value to be returned as a result. This method
    is designed to support extensions, and should not in general be
    called otherwise.

    Specified by:
    :   `setRawResult` in class `ForkJoinTask<V>`

    Parameters:
    :   `value` - the value
  + ### exec

    protected final boolean exec()

    Implements execution conventions for RecursiveTask.

    Specified by:
    :   `exec` in class `ForkJoinTask<V>`

    Returns:
    :   `true` if this task is known to have completed normally