Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class UnsupportedAudioFileException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.sound.sampled.UnsupportedAudioFileException

All Implemented Interfaces:
:   `Serializable`

---

public class UnsupportedAudioFileException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

An `UnsupportedAudioFileException` is an exception indicating that an
operation failed because a file did not contain valid data of a recognized
file type and format.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.sound.sampled.UnsupportedAudioFileException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnsupportedAudioFileException()`

  Constructs an `UnsupportedAudioFileException` that has `null`
  as its error detail message.

  `UnsupportedAudioFileException(String message)`

  Constructs an `UnsupportedAudioFileException` that has the
  specified detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnsupportedAudioFileException

    public UnsupportedAudioFileException()

    Constructs an `UnsupportedAudioFileException` that has `null`
    as its error detail message.
  + ### UnsupportedAudioFileException

    public UnsupportedAudioFileException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs an `UnsupportedAudioFileException` that has the
    specified detail message.

    Parameters:
    :   `message` - a string containing the error detail message