Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class IllegalMonitorStateException

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Exception](Exception.md "class in java.lang")

[java.lang.RuntimeException](RuntimeException.md "class in java.lang")

java.lang.IllegalMonitorStateException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalMonitorStateException
extends [RuntimeException](RuntimeException.md "class in java.lang")

Thrown to indicate that a thread has attempted to wait on an
object's monitor or to notify other threads waiting on an object's
monitor without owning the specified monitor.

Since:
:   1.0

See Also:
:   * [`Object.notify()`](Object.md#notify())
    * [`Object.notifyAll()`](Object.md#notifyAll())
    * [`Object.wait()`](Object.md#wait())
    * [`Object.wait(long)`](Object.md#wait(long))
    * [`Object.wait(long, int)`](Object.md#wait(long,int))
    * [Serialized Form](../../../serialized-form.md#java.lang.IllegalMonitorStateException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalMonitorStateException()`

  Constructs an `IllegalMonitorStateException` with no
  detail message.

  `IllegalMonitorStateException(String s)`

  Constructs an `IllegalMonitorStateException` with the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalMonitorStateException

    public IllegalMonitorStateException()

    Constructs an `IllegalMonitorStateException` with no
    detail message.
  + ### IllegalMonitorStateException

    public IllegalMonitorStateException([String](String.md "class in java.lang") s)

    Constructs an `IllegalMonitorStateException` with the
    specified detail message.

    Parameters:
    :   `s` - the detail message.