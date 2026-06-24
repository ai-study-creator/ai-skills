Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Class ExceptionInInitializerError

[java.lang.Object](Object.md "class in java.lang")

[java.lang.Throwable](Throwable.md "class in java.lang")

[java.lang.Error](Error.md "class in java.lang")

[java.lang.LinkageError](LinkageError.md "class in java.lang")

java.lang.ExceptionInInitializerError

All Implemented Interfaces:
:   `Serializable`

---

public class ExceptionInInitializerError
extends [LinkageError](LinkageError.md "class in java.lang")

Signals that an unexpected exception has occurred in a static initializer.
An `ExceptionInInitializerError` is thrown to indicate that an
exception occurred during evaluation of a static initializer or the
initializer for a static variable.

Since:
:   1.1

See Also:
:   * [Serialized Form](../../../serialized-form.md#java.lang.ExceptionInInitializerError)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ExceptionInInitializerError()`

  Constructs an `ExceptionInInitializerError` with
  `null` as its detail message string and with no saved
  throwable object.

  `ExceptionInInitializerError(String s)`

  Constructs an `ExceptionInInitializerError` with the specified detail
  message string.

  `ExceptionInInitializerError(Throwable thrown)`

  Constructs a new `ExceptionInInitializerError` class by
  saving a reference to the `Throwable` object thrown for
  later retrieval by the [`getException()`](#getException()) method.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getException()`

  Returns the exception that occurred during a static initialization that
  caused this error to be created.

  ### Methods inherited from class java.lang.[Throwable](Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ExceptionInInitializerError

    public ExceptionInInitializerError()

    Constructs an `ExceptionInInitializerError` with
    `null` as its detail message string and with no saved
    throwable object.
    A detail message is a String that describes this particular exception.
  + ### ExceptionInInitializerError

    public ExceptionInInitializerError([Throwable](Throwable.md "class in java.lang") thrown)

    Constructs a new `ExceptionInInitializerError` class by
    saving a reference to the `Throwable` object thrown for
    later retrieval by the [`getException()`](#getException()) method. The detail
    message string is set to `null`.

    Parameters:
    :   `thrown` - The exception thrown
  + ### ExceptionInInitializerError

    public ExceptionInInitializerError([String](String.md "class in java.lang") s)

    Constructs an `ExceptionInInitializerError` with the specified detail
    message string. A detail message is a String that describes this
    particular exception. The detail message string is saved for later
    retrieval by the [`Throwable.getMessage()`](Throwable.md#getMessage()) method. There is no
    saved throwable object.

    Parameters:
    :   `s` - the detail message
* ## Method Details

  + ### getException

    public [Throwable](Throwable.md "class in java.lang") getException()

    Returns the exception that occurred during a static initialization that
    caused this error to be created.

    Returns:
    :   the saved throwable object of this
        `ExceptionInInitializerError`, or `null`
        if this `ExceptionInInitializerError` has no saved
        throwable object.