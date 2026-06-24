Module [java.base](../../../module-summary.md)

Package [java.nio.charset](package-summary.md)

# Class CodingErrorAction

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.charset.CodingErrorAction

---

public class CodingErrorAction
extends [Object](../../lang/Object.md "class in java.lang")

A typesafe enumeration for coding-error actions.

Instances of this class are used to specify how malformed-input and
unmappable-character errors are to be handled by charset [decoders](CharsetDecoder.md#cae) and [encoders](CharsetEncoder.md#cae).

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final CodingErrorAction`

  `IGNORE`

  Action indicating that a coding error is to be handled by dropping the
  erroneous input and resuming the coding operation.

  `static final CodingErrorAction`

  `REPLACE`

  Action indicating that a coding error is to be handled by dropping the
  erroneous input, appending the coder's replacement value to the output
  buffer, and resuming the coding operation.

  `static final CodingErrorAction`

  `REPORT`

  Action indicating that a coding error is to be reported, either by
  returning a [`CoderResult`](CoderResult.md "class in java.nio.charset") object or by throwing a [`CharacterCodingException`](CharacterCodingException.md "class in java.nio.charset"), whichever is appropriate for the method
  implementing the coding process.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  Returns a string describing this action.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### IGNORE

    public static final [CodingErrorAction](CodingErrorAction.md "class in java.nio.charset") IGNORE

    Action indicating that a coding error is to be handled by dropping the
    erroneous input and resuming the coding operation.
  + ### REPLACE

    public static final [CodingErrorAction](CodingErrorAction.md "class in java.nio.charset") REPLACE

    Action indicating that a coding error is to be handled by dropping the
    erroneous input, appending the coder's replacement value to the output
    buffer, and resuming the coding operation.
  + ### REPORT

    public static final [CodingErrorAction](CodingErrorAction.md "class in java.nio.charset") REPORT

    Action indicating that a coding error is to be reported, either by
    returning a [`CoderResult`](CoderResult.md "class in java.nio.charset") object or by throwing a [`CharacterCodingException`](CharacterCodingException.md "class in java.nio.charset"), whichever is appropriate for the method
    implementing the coding process.
* ## Method Details

  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a string describing this action.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A descriptive string