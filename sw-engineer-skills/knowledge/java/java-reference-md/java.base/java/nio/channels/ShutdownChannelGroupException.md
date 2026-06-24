Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class ShutdownChannelGroupException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

java.nio.channels.ShutdownChannelGroupException

All Implemented Interfaces:
:   `Serializable`

---

public class ShutdownChannelGroupException
extends [IllegalStateException](../../lang/IllegalStateException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to construct a channel in
a group that is shutdown or the completion handler for an I/O operation
cannot be invoked because the channel group has terminated.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.ShutdownChannelGroupException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ShutdownChannelGroupException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ShutdownChannelGroupException

    public ShutdownChannelGroupException()

    Constructs an instance of this class.