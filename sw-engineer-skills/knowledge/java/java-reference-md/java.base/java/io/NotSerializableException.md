Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class NotSerializableException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

[java.io.ObjectStreamException](ObjectStreamException.md "class in java.io")

java.io.NotSerializableException

All Implemented Interfaces:
:   `Serializable`

---

public class NotSerializableException
extends [ObjectStreamException](ObjectStreamException.md "class in java.io")

Thrown when an instance is required to have a Serializable interface.
The serialization runtime or the class of the instance can throw
this exception. The argument should be the name of the class.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.NotSerializableException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NotSerializableException()`

  Constructs a NotSerializableException object.

  `NotSerializableException(String classname)`

  Constructs a NotSerializableException object with message string.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NotSerializableException

    public NotSerializableException([String](../lang/String.md "class in java.lang") classname)

    Constructs a NotSerializableException object with message string.

    Parameters:
    :   `classname` - Class of the instance being serialized/deserialized.
  + ### NotSerializableException

    public NotSerializableException()

    Constructs a NotSerializableException object.