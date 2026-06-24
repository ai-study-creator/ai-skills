Module [java.base](../../../module-summary.md)

Package [java.nio.charset](package-summary.md)

# Class CoderResult

[java.lang.Object](../../lang/Object.md "class in java.lang")

java.nio.charset.CoderResult

---

public class CoderResult
extends [Object](../../lang/Object.md "class in java.lang")

A description of the result state of a coder.

A charset coder, that is, either a decoder or an encoder, consumes bytes
(or characters) from an input buffer, translates them, and writes the
resulting characters (or bytes) to an output buffer. A coding process
terminates for one of four categories of reasons, which are described by
instances of this class:

* *Underflow* is reported when there is no more input to be
  processed, or there is insufficient input and additional input is
  required. This condition is represented by the unique result object
  [`UNDERFLOW`](#UNDERFLOW), whose [`isUnderflow`](#isUnderflow()) method
  returns `true`.
* *Overflow* is reported when there is insufficient room
  remaining in the output buffer. This condition is represented by the
  unique result object [`OVERFLOW`](#OVERFLOW), whose [`isOverflow`](#isOverflow()) method returns `true`.
* A *malformed-input error* is reported when a sequence of
  input units is not well-formed. Such errors are described by instances of
  this class whose [`isMalformed`](#isMalformed()) method returns
  `true` and whose [`length`](#length()) method returns the length
  of the malformed sequence. There is one unique instance of this class for
  all malformed-input errors of a given length.
* An *unmappable-character error* is reported when a sequence
  of input units denotes a character that cannot be represented in the
  output charset. Such errors are described by instances of this class
  whose [`isUnmappable`](#isUnmappable()) method returns `true` and
  whose [`length`](#length()) method returns the length of the input
  sequence denoting the unmappable character. There is one unique instance
  of this class for all unmappable-character errors of a given length.

For convenience, the [`isError`](#isError()) method returns `true`
for result objects that describe malformed-input and unmappable-character
errors but `false` for those that describe underflow or overflow
conditions.

Since:
:   1.4

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final CoderResult`

  `OVERFLOW`

  Result object indicating overflow, meaning that there is insufficient
  room in the output buffer.

  `static final CoderResult`

  `UNDERFLOW`

  Result object indicating underflow, meaning that either the input buffer
  has been completely consumed or, if the input buffer is not yet empty,
  that additional input is required.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `isError()`

  Tells whether or not this object describes an error condition.

  `boolean`

  `isMalformed()`

  Tells whether or not this object describes a malformed-input error.

  `boolean`

  `isOverflow()`

  Tells whether or not this object describes an overflow condition.

  `boolean`

  `isUnderflow()`

  Tells whether or not this object describes an underflow condition.

  `boolean`

  `isUnmappable()`

  Tells whether or not this object describes an unmappable-character
  error.

  `int`

  `length()`

  Returns the length of the erroneous input described by this
  object  *(optional operation)*.

  `static CoderResult`

  `malformedForLength(int length)`

  Static factory method that returns the unique object describing a
  malformed-input error of the given length.

  `void`

  `throwException()`

  Throws an exception appropriate to the result described by this object.

  `String`

  `toString()`

  Returns a string describing this coder result.

  `static CoderResult`

  `unmappableForLength(int length)`

  Static factory method that returns the unique result object describing
  an unmappable-character error of the given length.

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### UNDERFLOW

    public static final [CoderResult](CoderResult.md "class in java.nio.charset") UNDERFLOW

    Result object indicating underflow, meaning that either the input buffer
    has been completely consumed or, if the input buffer is not yet empty,
    that additional input is required.
  + ### OVERFLOW

    public static final [CoderResult](CoderResult.md "class in java.nio.charset") OVERFLOW

    Result object indicating overflow, meaning that there is insufficient
    room in the output buffer.
* ## Method Details

  + ### toString

    public [String](../../lang/String.md "class in java.lang") toString()

    Returns a string describing this coder result.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A descriptive string
  + ### isUnderflow

    public boolean isUnderflow()

    Tells whether or not this object describes an underflow condition.

    Returns:
    :   `true` if, and only if, this object denotes underflow
  + ### isOverflow

    public boolean isOverflow()

    Tells whether or not this object describes an overflow condition.

    Returns:
    :   `true` if, and only if, this object denotes overflow
  + ### isError

    public boolean isError()

    Tells whether or not this object describes an error condition.

    Returns:
    :   `true` if, and only if, this object denotes either a
        malformed-input error or an unmappable-character error
  + ### isMalformed

    public boolean isMalformed()

    Tells whether or not this object describes a malformed-input error.

    Returns:
    :   `true` if, and only if, this object denotes a
        malformed-input error
  + ### isUnmappable

    public boolean isUnmappable()

    Tells whether or not this object describes an unmappable-character
    error.

    Returns:
    :   `true` if, and only if, this object denotes an
        unmappable-character error
  + ### length

    public int length()

    Returns the length of the erroneous input described by this
    object  *(optional operation)*.

    Returns:
    :   The length of the erroneous input, a positive integer

    Throws:
    :   `UnsupportedOperationException` - If this object does not describe an error condition, that is,
        if the [`isError`](#isError()) does not return `true`
  + ### malformedForLength

    public static [CoderResult](CoderResult.md "class in java.nio.charset") malformedForLength(int length)

    Static factory method that returns the unique object describing a
    malformed-input error of the given length.

    Parameters:
    :   `length` - The given length

    Returns:
    :   The requested coder-result object
  + ### unmappableForLength

    public static [CoderResult](CoderResult.md "class in java.nio.charset") unmappableForLength(int length)

    Static factory method that returns the unique result object describing
    an unmappable-character error of the given length.

    Parameters:
    :   `length` - The given length

    Returns:
    :   The requested coder-result object
  + ### throwException

    public void throwException()
    throws [CharacterCodingException](CharacterCodingException.md "class in java.nio.charset")

    Throws an exception appropriate to the result described by this object.

    Throws:
    :   `BufferUnderflowException` - If this object is [`UNDERFLOW`](#UNDERFLOW)
    :   `BufferOverflowException` - If this object is [`OVERFLOW`](#OVERFLOW)
    :   `MalformedInputException` - If this object represents a malformed-input error; the
        exception's length value will be that of this object
    :   `UnmappableCharacterException` - If this object represents an unmappable-character error; the
        exception's length value will be that of this object
    :   `CharacterCodingException` - `MalformedInputException` if this object represents a
        malformed-input error; `UnmappableCharacterException`
        if this object represents an unmappable-character error