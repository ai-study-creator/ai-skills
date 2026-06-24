Module [java.base](../../../module-summary.md)

Package [java.nio.charset](package-summary.md)

# Class MalformedInputException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

[java.nio.charset.CharacterCodingException](CharacterCodingException.md "class in java.nio.charset")

java.nio.charset.MalformedInputException

All Implemented Interfaces:
:   `Serializable`

---

public class MalformedInputException
extends [CharacterCodingException](CharacterCodingException.md "class in java.nio.charset")

Checked exception thrown when an input byte sequence is not legal for given
charset, or an input character sequence is not a legal sixteen-bit Unicode
sequence.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.charset.MalformedInputException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MalformedInputException(int inputLength)`

  Constructs an `MalformedInputException` with the given
  length.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getInputLength()`

  Returns the length of the input.

  `String`

  `getMessage()`

  Returns the message.

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MalformedInputException

    public MalformedInputException(int inputLength)

    Constructs an `MalformedInputException` with the given
    length.

    Parameters:
    :   `inputLength` - the length of the input
* ## Method Details

  + ### getInputLength

    public int getInputLength()

    Returns the length of the input.

    Returns:
    :   the length of the input
  + ### getMessage

    public [String](../../lang/String.md "class in java.lang") getMessage()

    Returns the message.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the message