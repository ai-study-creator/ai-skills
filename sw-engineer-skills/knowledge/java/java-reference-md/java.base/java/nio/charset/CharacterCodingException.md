Module [java.base](../../../module-summary.md)

Package [java.nio.charset](package-summary.md)

# Class CharacterCodingException

[java.lang.Object](../../lang/Object.md "class in java.lang")

[java.lang.Throwable](../../lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../lang/Exception.md "class in java.lang")

[java.io.IOException](../../io/IOException.md "class in java.io")

java.nio.charset.CharacterCodingException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `MalformedInputException`, `UnmappableCharacterException`

---

public class CharacterCodingException
extends [IOException](../../io/IOException.md "class in java.io")

Checked exception thrown when a character encoding
or decoding error occurs.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#java.nio.charset.CharacterCodingException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CharacterCodingException()`

  Constructs an instance of this class.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CharacterCodingException

    public CharacterCodingException()

    Constructs an instance of this class.