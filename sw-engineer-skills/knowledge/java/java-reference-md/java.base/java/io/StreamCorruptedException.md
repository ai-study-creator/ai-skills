Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class StreamCorruptedException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

[java.io.ObjectStreamException](ObjectStreamException.md "class in java.io")

java.io.StreamCorruptedException

All Implemented Interfaces:
:   `Serializable`

---

public class StreamCorruptedException
extends [ObjectStreamException](ObjectStreamException.md "class in java.io")

Thrown when control information that was read from an object stream
violates internal consistency checks.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.StreamCorruptedException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StreamCorruptedException()`

  Create a StreamCorruptedException and list no reason why thrown.

  `StreamCorruptedException(String reason)`

  Create a StreamCorruptedException and list a reason why thrown.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StreamCorruptedException

    public StreamCorruptedException([String](../lang/String.md "class in java.lang") reason)

    Create a StreamCorruptedException and list a reason why thrown.

    Parameters:
    :   `reason` - String describing the reason for the exception.
  + ### StreamCorruptedException

    public StreamCorruptedException()

    Create a StreamCorruptedException and list no reason why thrown.