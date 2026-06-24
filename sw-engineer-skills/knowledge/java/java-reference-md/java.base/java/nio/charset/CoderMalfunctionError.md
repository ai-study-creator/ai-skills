Module [java.base](../../../module-summary.md)

Package [java.nio.charset](package-summary.md)

# Class CoderMalfunctionError

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Error](../../lang/Error.md "class in java.lang")

java.nio.charset.CoderMalfunctionError

All Implemented Interfaces:
:   `Serializable`

---

public class CoderMalfunctionError
extends [Error](../../lang/Error.md "class in java.lang")

Error thrown when the [`decodeLoop`](CharsetDecoder.md#decodeLoop(java.nio.ByteBuffer,java.nio.CharBuffer)) method of
a [`CharsetDecoder`](CharsetDecoder.md "class in java.nio.charset"), or the [`encodeLoop`](CharsetEncoder.md#encodeLoop(java.nio.CharBuffer,java.nio.ByteBuffer)) method of a [`CharsetEncoder`](CharsetEncoder.md "class in java.nio.charset"), throws an unexpected
exception.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.charset.CoderMalfunctionError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CoderMalfunctionError(Exception cause)`

  Initializes an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CoderMalfunctionError

    public CoderMalfunctionError([Exception](../../lang/Exception.md "class in java.lang") cause)

    Initializes an instance of this class.

    Parameters:
    :   `cause` - The unexpected exception that was thrown