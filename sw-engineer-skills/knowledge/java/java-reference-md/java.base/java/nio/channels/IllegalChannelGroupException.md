Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class IllegalChannelGroupException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

java.nio.channels.IllegalChannelGroupException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalChannelGroupException
extends [IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to open a channel
in a group that was not created by the same provider.

Since:
:   1.7

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.IllegalChannelGroupException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalChannelGroupException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalChannelGroupException

    public IllegalChannelGroupException()

    Constructs an instance of this class.