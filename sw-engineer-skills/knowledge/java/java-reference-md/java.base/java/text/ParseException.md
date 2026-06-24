Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class ParseException

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.lang.Throwable](../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../lang/Exception.md "class in java.lang")

java.text.ParseException

All Implemented Interfaces:
:   `Serializable`

---

public class ParseException
extends [Exception](../lang/Exception.md "class in java.lang")

Signals that an error has been reached unexpectedly
while parsing.

Since:
:   1.1

See Also:
:   * [`Exception`](../lang/Exception.md "class in java.lang")
    * [`Format`](Format.md "class in java.text")
    * [`FieldPosition`](FieldPosition.md "class in java.text")
    * [Serialized Form](../../../serialized-form.md#java.text.ParseException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ParseException(String s,
  int errorOffset)`

  Constructs a ParseException with the specified detail message and
  offset.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getErrorOffset()`

  Returns the position where the error was found.

  ### Methods inherited from class java.lang.[Throwable](../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ParseException

    public ParseException([String](../lang/String.md "class in java.lang") s,
    int errorOffset)

    Constructs a ParseException with the specified detail message and
    offset.
    A detail message is a String that describes this particular exception.

    Parameters:
    :   `s` - the detail message
    :   `errorOffset` - the position where the error is found while parsing.
* ## Method Details

  + ### getErrorOffset

    public int getErrorOffset()

    Returns the position where the error was found.

    Returns:
    :   the position where the error was found