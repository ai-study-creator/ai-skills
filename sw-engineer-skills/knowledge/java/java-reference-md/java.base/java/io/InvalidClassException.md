Module [java.base](../../module-summary.md)

Package [java.io](package-summary.md)

# Class InvalidClassException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

[java.io.IOException](IOException.md "class in java.io")

[java.io.ObjectStreamException](ObjectStreamException.md "class in java.io")

java.io.InvalidClassException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidClassException
extends [ObjectStreamException](ObjectStreamException.md "class in java.io")

Thrown when the Serialization runtime detects one of the following
problems with a Class.

* The serial version of the class does not match that of the class
  descriptor read from the stream* The class contains unknown datatypes* The class does not have an accessible no-arg constructor* The ObjectStreamClass of an enum constant does not represent
        an enum type* Other conditions given in the Java Object Serialization
          Specification

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.io.InvalidClassException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `String`

  `classname`

  Name of the invalid class.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidClassException(String reason)`

  Report an InvalidClassException for the reason specified.

  `InvalidClassException(String cname,
  String reason)`

  Constructs an InvalidClassException object.

  `InvalidClassException(String cname,
  String reason,
  Throwable cause)`

  Report an InvalidClassException for the reason and cause specified.

  `InvalidClassException(String reason,
  Throwable cause)`

  Report an InvalidClassException for the reason and cause specified.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getMessage()`

  Produce the message and include the classname, if present.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### classname

    public [String](../lang/String.md "class in java.lang") classname

    Name of the invalid class.
* ## Constructor Details

  + ### InvalidClassException

    public InvalidClassException([String](../lang/String.md "class in java.lang") reason)

    Report an InvalidClassException for the reason specified.

    Parameters:
    :   `reason` - String describing the reason for the exception.
  + ### InvalidClassException

    public InvalidClassException([String](../lang/String.md "class in java.lang") cname,
    [String](../lang/String.md "class in java.lang") reason)

    Constructs an InvalidClassException object.

    Parameters:
    :   `cname` - a String naming the invalid class.
    :   `reason` - a String describing the reason for the exception.
  + ### InvalidClassException

    public InvalidClassException([String](../lang/String.md "class in java.lang") reason,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Report an InvalidClassException for the reason and cause specified.

    Parameters:
    :   `reason` - String describing the reason for the exception.
    :   `cause` - the cause

    Since:
    :   19
  + ### InvalidClassException

    public InvalidClassException([String](../lang/String.md "class in java.lang") cname,
    [String](../lang/String.md "class in java.lang") reason,
    [Throwable](../lang/Throwable.md "class in java.lang") cause)

    Report an InvalidClassException for the reason and cause specified.

    Parameters:
    :   `cname` - a String naming the invalid class.
    :   `reason` - String describing the reason for the exception.
    :   `cause` - the cause

    Since:
    :   19
* ## Method Details

  + ### getMessage

    public [String](../lang/String.md "class in java.lang") getMessage()

    Produce the message and include the classname, if present.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `Throwable` instance
        (which may be `null`).