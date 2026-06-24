Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ThreadDeath

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

java.lang.ThreadDeath

All Implemented Interfaces:
:   `Serializable`

---

[@Deprecated](Deprecated.md "annotation interface in java.lang")([since](Deprecated.md#since())="20",
[forRemoval](Deprecated.md#forRemoval())=true)
public class ThreadDeath
extends [Error](Error.md "class in java.lang")

Deprecated, for removal: This API element is subject to removal in a future version.

[`Thread.stop()`](Thread.md#stop()) was originally specified to "stop" a victim
thread by causing the victim thread to throw a `ThreadDeath`. It
was inherently unsafe and deprecated in an early JDK release. The ability
to "stop" a thread with `Thread.stop` has been removed and the
`Thread.stop` method changed to throw an exception. Consequently,
`ThreadDeath` is also deprecated, for removal.

An instance of `ThreadDeath` was originally specified to be thrown
by a victim thread when "stopped" with [`Thread.stop()`](Thread.md#stop()).

Since:
:   1.0

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.ThreadDeath)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ThreadDeath()`

  Deprecated, for removal: This API element is subject to removal in a future version.

  Constructs a `ThreadDeath`.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ThreadDeath

    public ThreadDeath()

    Deprecated, for removal: This API element is subject to removal in a future version.

    Constructs a `ThreadDeath`.