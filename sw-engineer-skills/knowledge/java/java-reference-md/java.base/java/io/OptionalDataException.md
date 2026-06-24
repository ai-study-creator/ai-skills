Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class OptionalDataException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

[java.io.ObjectStreamException](ObjectStreamException.md "class in java.io")

java.io.OptionalDataException

All Implemented Interfaces:
:   `Serializable`

---

public class OptionalDataException
extends [ObjectStreamException](ObjectStreamException.md "class in java.io")

Exception indicating the failure of an object read operation due to
unread primitive data, or the end of data belonging to a serialized
object in the stream. This exception may be thrown in two cases:

* An attempt was made to read an object when the next element in the
  stream is primitive data. In this case, the OptionalDataException's
  length field is set to the number of bytes of primitive data
  immediately readable from the stream, and the eof field is set to
  false.* An attempt was made to read past the end of data consumable by a
    class-defined readObject or readExternal method. In this case, the
    OptionalDataException's eof field is set to true, and the length field
    is set to 0.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.OptionalDataException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `boolean`

  `eof`

  True if there is no more data in the buffered part of the stream.

  `int`

  `length`

  The number of bytes of primitive data available to be read
  in the current buffer.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### length

    public int length

    The number of bytes of primitive data available to be read
    in the current buffer.
  + ### eof

    public boolean eof

    True if there is no more data in the buffered part of the stream.