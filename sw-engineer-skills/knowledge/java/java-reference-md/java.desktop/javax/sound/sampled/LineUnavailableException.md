Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class LineUnavailableException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.sound.sampled.LineUnavailableException

All Implemented Interfaces:
:   `Serializable`

---

public class LineUnavailableException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

A `LineUnavailableException` is an exception indicating that a line
cannot be opened because it is unavailable. This situation arises most
commonly when a requested line is already in use by another application.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.sound.sampled.LineUnavailableException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `LineUnavailableException()`

  Constructs a `LineUnavailableException` that has `null` as
  its error detail message.

  `LineUnavailableException(String message)`

  Constructs a `LineUnavailableException` that has the specified
  detail message.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### LineUnavailableException

    public LineUnavailableException()

    Constructs a `LineUnavailableException` that has `null` as
    its error detail message.
  + ### LineUnavailableException

    public LineUnavailableException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a `LineUnavailableException` that has the specified
    detail message.

    Parameters:
    :   `message` - a string containing the error detail message