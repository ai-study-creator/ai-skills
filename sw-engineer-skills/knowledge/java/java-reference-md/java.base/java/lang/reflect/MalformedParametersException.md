Module [java.base](../../../module-summary.md)

Package [java.lang.reflect](package-summary.md)

# Class MalformedParametersException

[java.lang.Object](../Object.md "class in java.lang")

[java.lang.Throwable](../Throwable.md "class in java.lang")

[java.lang.Exception](../Exception.md "class in java.lang")

[java.lang.RuntimeException](../RuntimeException.md "class in java.lang")

java.lang.reflect.MalformedParametersException

All Implemented Interfaces:
:   `Serializable`

---

public class MalformedParametersException
extends [RuntimeException](../RuntimeException.md "class in java.lang")

Thrown when [`the
java.lang.reflect package`](Executable.md#getParameters()) attempts to read method parameters from
a class file and determines that one or more parameters are
malformed.

The following is a list of conditions under which this exception
can be thrown:

* The number of parameters (parameter\_count) is wrong for the method* A constant pool index is out of bounds.* A constant pool index does not refer to a UTF-8 entry* A parameter's name is "", or contains an illegal character* The flags field contains an illegal flag (something other than
          FINAL, SYNTHETIC, or MANDATED)

See [`Executable.getParameters()`](Executable.md#getParameters()) for more
information.

Since:
:   1.8

See Also:
:   * [`Executable.getParameters()`](Executable.md#getParameters())
    * [Serialized Form](../../../../serialized-form.md#java.lang.reflect.MalformedParametersException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MalformedParametersException()`

  Create a `MalformedParametersException` with an empty
  reason.

  `MalformedParametersException(String reason)`

  Create a `MalformedParametersException`.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MalformedParametersException

    public MalformedParametersException()

    Create a `MalformedParametersException` with an empty
    reason.
  + ### MalformedParametersException

    public MalformedParametersException([String](../String.md "class in java.lang") reason)

    Create a `MalformedParametersException`.

    Parameters:
    :   `reason` - The reason for the exception.