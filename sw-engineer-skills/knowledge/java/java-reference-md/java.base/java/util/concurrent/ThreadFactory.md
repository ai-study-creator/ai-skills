Module [java.base](../../../module-summary.md)

Package [java.util.concurrent](package-summary.md)

# Interface ThreadFactory

---

public interface ThreadFactory

An object that creates new threads on demand. Using thread factories
removes hardwiring of calls to [`new Thread`](../../lang/Thread.md#%3Cinit%3E(java.lang.Runnable)),
enabling applications to use special thread subclasses, priorities, etc.

The simplest implementation of this interface is just:

```
 class SimpleThreadFactory implements ThreadFactory {
   public Thread newThread(Runnable r) {
     return new Thread(r);
   }
 }
```

The [`Executors.defaultThreadFactory()`](Executors.md#defaultThreadFactory()) method provides a more
useful simple implementation, that sets the created thread context
to known values before returning it.

Since:
:   1.5

See Also:
:   * [`Thread.Builder.factory()`](../../lang/Thread.Builder.md#factory())

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Thread`

  `newThread(Runnable r)`

  Constructs a new unstarted `Thread` to run the given runnable.

* ## Method Details

  + ### newThread

    [Thread](../../lang/Thread.md "class in java.lang") newThread([Runnable](../../lang/Runnable.md "interface in java.lang") r)

    Constructs a new unstarted `Thread` to run the given runnable.

    Parameters:
    :   `r` - a runnable to be executed by new thread instance

    Returns:
    :   constructed thread, or `null` if the request to
        create a thread is rejected

    See Also:
    :   - [Inheritance when
          creating threads](../../lang/Thread.md#inheritance)