Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class InterruptedException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

java.lang.InterruptedException

All Implemented Interfaces:
:   `Serializable`

---

public class InterruptedException
extends [Exception](Exception.md "class in java.lang")

Thrown when a thread is waiting, sleeping, or otherwise occupied,
and the thread is interrupted, either before or during the activity.
Occasionally a method may wish to test whether the current
thread has been interrupted, and if so, to immediately throw
this exception. The following code can be used to achieve
this effect:

Copy![Copy snippet](../../../copy.svg)

```
if (Thread.interrupted())  // Clears interrupted status!
    throw new InterruptedException();
```

Since:
:   1.0

See Also:
:   * [`Object.wait()`](Object.md#wait())
    * [`Object.wait(long)`](Object.md#wait(long))
    * [`Object.wait(long, int)`](Object.md#wait(long,int))
    * [`Thread.sleep(long)`](Thread.md#sleep(long))
    * [`Thread.interrupt()`](Thread.md#interrupt())
    * [`Thread.interrupted()`](Thread.md#interrupted())
    * [Serialized Form](../../../serialized-form.md#java.lang.InterruptedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InterruptedException()`

  Constructs an `InterruptedException` with no detail message.

  `InterruptedException(String s)`

  Constructs an `InterruptedException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InterruptedException

    public InterruptedException()

    Constructs an `InterruptedException` with no detail message.
  + ### InterruptedException

    public InterruptedException([String](String.md "class in java.lang") s)

    Constructs an `InterruptedException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.