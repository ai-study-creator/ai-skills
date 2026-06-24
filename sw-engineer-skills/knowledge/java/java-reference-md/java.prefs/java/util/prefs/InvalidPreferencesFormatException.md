Module [java.prefs](../../../module-summary.md)

Package [java.util.prefs](package-summary.md)

# Class InvalidPreferencesFormatException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

java.util.prefs.InvalidPreferencesFormatException

All Implemented Interfaces:
:   `Serializable`

---

public class InvalidPreferencesFormatException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

Thrown to indicate that an operation could not complete because
the input did not conform to the appropriate XML document type
for a collection of preferences, as per the [`Preferences`](Preferences.md "class in java.util.prefs")
specification.

Since:
:   1.4

See Also:
:   * [`Preferences`](Preferences.md "class in java.util.prefs")
    * [Serialized Form](../../../../serialized-form.md#java.util.prefs.InvalidPreferencesFormatException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InvalidPreferencesFormatException(String message)`

  Constructs an InvalidPreferencesFormatException with the specified
  detail message.

  `InvalidPreferencesFormatException(String message,
  Throwable cause)`

  Constructs an InvalidPreferencesFormatException with the specified
  detail message and cause.

  `InvalidPreferencesFormatException(Throwable cause)`

  Constructs an InvalidPreferencesFormatException with the specified
  cause.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### InvalidPreferencesFormatException

    public InvalidPreferencesFormatException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs an InvalidPreferencesFormatException with the specified
    cause.

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../../../java.base/java/lang/Throwable.md#getCause()) method).
  + ### InvalidPreferencesFormatException

    public InvalidPreferencesFormatException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs an InvalidPreferencesFormatException with the specified
    detail message.

    Parameters:
    :   `message` - the detail message. The detail message is saved for
        later retrieval by the [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage()) method.
  + ### InvalidPreferencesFormatException

    public InvalidPreferencesFormatException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs an InvalidPreferencesFormatException with the specified
    detail message and cause.

    Parameters:
    :   `message` - the detail message. The detail message is saved for
        later retrieval by the [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage()) method.
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../../../java.base/java/lang/Throwable.md#getCause()) method).