Module [java.base](../../../module-summary.md)

Package [java.util.regex](package-summary.md)

# Class PatternSyntaxException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../lang/RuntimeException.md "class in java.lang")

[java.lang.IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

java.util.regex.PatternSyntaxException

All Implemented Interfaces:
:   `Serializable`

---

public class PatternSyntaxException
extends [IllegalArgumentException](../../lang/IllegalArgumentException.md "class in java.lang")

Unchecked exception thrown to indicate a syntax error in a
regular-expression pattern.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.util.regex.PatternSyntaxException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PatternSyntaxException(String desc,
  String regex,
  int index)`

  Constructs a new instance of this class.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getDescription()`

  Retrieves the description of the error.

  `int`

  `getIndex()`

  Retrieves the error index.

  `String`

  `getMessage()`

  Returns a multi-line string containing the description of the syntax
  error and its index, the erroneous regular-expression pattern, and a
  visual indication of the error index within the pattern.

  `String`

  `getPattern()`

  Retrieves the erroneous regular-expression pattern.

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### PatternSyntaxException

    public PatternSyntaxException([String](../../lang/String.md "class in java.lang") desc,
    [String](../../lang/String.md "class in java.lang") regex,
    int index)

    Constructs a new instance of this class.

    Parameters:
    :   `desc` - A description of the error
    :   `regex` - The erroneous pattern
    :   `index` - The approximate index in the pattern of the error,
        or `-1` if the index is not known
* ## Method Details

  + ### getIndex

    public int getIndex()

    Retrieves the error index.

    Returns:
    :   The approximate index in the pattern of the error,
        or `-1` if the index is not known
  + ### getDescription

    public [String](../../lang/String.md "class in java.lang") getDescription()

    Retrieves the description of the error.

    Returns:
    :   The description of the error
  + ### getPattern

    public [String](../../lang/String.md "class in java.lang") getPattern()

    Retrieves the erroneous regular-expression pattern.

    Returns:
    :   The erroneous pattern
  + ### getMessage

    public [String](../../lang/String.md "class in java.lang") getMessage()

    Returns a multi-line string containing the description of the syntax
    error and its index, the erroneous regular-expression pattern, and a
    visual indication of the error index within the pattern.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   The full detail message