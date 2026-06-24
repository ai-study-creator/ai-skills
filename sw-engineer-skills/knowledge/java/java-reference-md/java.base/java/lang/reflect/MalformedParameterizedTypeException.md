Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class MalformedParameterizedTypeException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.RuntimeException](../RuntimeException.md "class in java.lang")

java.lang.reflect.MalformedParameterizedTypeException

All Implemented Interfaces:
:   `Serializable`

---

public class MalformedParameterizedTypeException
extends [RuntimeException](../RuntimeException.md "class in java.lang")

Thrown when a semantically malformed parameterized type is
encountered by a reflective method that needs to instantiate it.
For example, if the number of type arguments to a parameterized type
is wrong.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.lang.reflect.MalformedParameterizedTypeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MalformedParameterizedTypeException()`

  Constructs a `MalformedParameterizedTypeException` with
  no detail message.

  `MalformedParameterizedTypeException(String message)`

  Constructs a `MalformedParameterizedTypeException` with
  the given detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MalformedParameterizedTypeException

    public MalformedParameterizedTypeException()

    Constructs a `MalformedParameterizedTypeException` with
    no detail message.
  + ### MalformedParameterizedTypeException

    public MalformedParameterizedTypeException([String](../String.md "class in java.lang") message)

    Constructs a `MalformedParameterizedTypeException` with
    the given detail message.

    Parameters:
    :   `message` - the detail message; may be `null`