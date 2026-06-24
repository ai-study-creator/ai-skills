Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class SyncFailedException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

java.io.SyncFailedException

All Implemented Interfaces:
:   `Serializable`

---

public class SyncFailedException
extends [IOException](IOException.md "class in java.io")

Signals that a sync operation has failed.

Since:
:   1.1

See Also:
:   * [`FileDescriptor.sync()`](FileDescriptor.md#sync())
    * [`IOException`](IOException.md "class in java.io")
    * [Serialized Form](../../../serialized-form.md#java.io.SyncFailedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SyncFailedException(String desc)`

  Constructs an SyncFailedException with a detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SyncFailedException

    public SyncFailedException([String](../lang/String.md "class in java.lang") desc)

    Constructs an SyncFailedException with a detail message.
    A detail message is a String that describes this particular exception.

    Parameters:
    :   `desc` - a String describing the exception.