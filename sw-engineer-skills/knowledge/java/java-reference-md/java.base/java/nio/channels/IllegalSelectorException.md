Module [java.base](../../../module-summary.md)

Package [java.nio.channels](package-summary.md)

# Class IllegalSelectorException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

java.nio.channels.IllegalSelectorException

All Implemented Interfaces:
:   `Serializable`

---

public class IllegalSelectorException
extends [IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

Unchecked exception thrown when an attempt is made to register a channel
with a selector that was not created by the provider that created the
channel.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.channels.IllegalSelectorException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `IllegalSelectorException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### IllegalSelectorException

    public IllegalSelectorException()

    Constructs an instance of this class.