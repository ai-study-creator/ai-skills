Module [java.security.sasl](../../../module-summary.md)

Package [javax.security.sasl](package-summary.md)

# Class SaslException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.io.IOException](../../../../java.base/java/io/IOException.md "class in java.io")

javax.security.sasl.SaslException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AuthenticationException`

---

public class SaslException
extends [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

This class represents an error that has occurred when using SASL.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.security.sasl.SaslException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SaslException()`

  Constructs a new instance of `SaslException`.

  `SaslException(String detail)`

  Constructs a new instance of `SaslException` with a detailed message.

  `SaslException(String detail,
  Throwable ex)`

  Constructs a new instance of `SaslException` with a detailed message
  and a root exception.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Returns the cause of this throwable or `null` if the
  cause is nonexistent or unknown.

  `Throwable`

  `initCause(Throwable cause)`

  Initializes the *cause* of this throwable to the specified value.

  `String`

  `toString()`

  Returns the string representation of this exception.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SaslException

    public SaslException()

    Constructs a new instance of `SaslException`.
    The root exception and the detailed message are null.
  + ### SaslException

    public SaslException([String](../../../../java.base/java/lang/String.md "class in java.lang") detail)

    Constructs a new instance of `SaslException` with a detailed message.
    The root exception is null.

    Parameters:
    :   `detail` - A possibly null string containing details of the exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
  + ### SaslException

    public SaslException([String](../../../../java.base/java/lang/String.md "class in java.lang") detail,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") ex)

    Constructs a new instance of `SaslException` with a detailed message
    and a root exception.
    For example, a SaslException might result from a problem with
    the callback handler, which might throw a NoSuchCallbackException if
    it does not support the requested callback, or throw an IOException
    if it had problems obtaining data for the callback. The
    SaslException's root exception would be then be the exception thrown
    by the callback handler.

    Parameters:
    :   `detail` - A possibly null string containing details of the exception.
    :   `ex` - A possibly null root exception that caused this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())
        - [`getCause()`](#getCause())
* ## Method Details

  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Description copied from class: `Throwable`

    Returns the cause of this throwable or `null` if the
    cause is nonexistent or unknown. (The cause is the throwable that
    caused this throwable to get thrown.)

    This implementation returns the cause that was supplied via one of
    the constructors requiring a `Throwable`, or that was set after
    creation with the [`Throwable.initCause(Throwable)`](../../../../java.base/java/lang/Throwable.md#initCause(java.lang.Throwable)) method. While it is
    typically unnecessary to override this method, a subclass can override
    it to return a cause set by some other means. This is appropriate for
    a "legacy chained throwable" that predates the addition of chained
    exceptions to `Throwable`. Note that it is *not*
    necessary to override any of the `PrintStackTrace` methods,
    all of which invoke the `getCause` method to determine the
    cause of a throwable.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this throwable or `null` if the
        cause is nonexistent or unknown.
  + ### initCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") initCause([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Description copied from class: `Throwable`

    Initializes the *cause* of this throwable to the specified value.
    (The cause is the throwable that caused this throwable to get thrown.)

    This method can be called at most once. It is generally called from
    within the constructor, or immediately after creating the
    throwable. If this throwable was created
    with [`Throwable(Throwable)`](../../../../java.base/java/lang/Throwable.md#%3Cinit%3E(java.lang.Throwable)) or
    [`Throwable(String,Throwable)`](../../../../java.base/java/lang/Throwable.md#%3Cinit%3E(java.lang.String,java.lang.Throwable)), this method cannot be called
    even once.

    An example of using this method on a legacy throwable type
    without other support for setting the cause is:

    ```
     try {
         lowLevelOp();
     } catch (LowLevelException le) {
         throw (HighLevelException)
               new HighLevelException().initCause(le); // Legacy constructor
     }
    ```

    Overrides:
    :   `initCause` in class `Throwable`

    Parameters:
    :   `cause` - the cause (which is saved for later retrieval by the
        [`Throwable.getCause()`](../../../../java.base/java/lang/Throwable.md#getCause()) method). (A `null` value is
        permitted, and indicates that the cause is nonexistent or
        unknown.)

    Returns:
    :   a reference to this `Throwable` instance.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns the string representation of this exception.
    The string representation contains
    this exception's class name, its detailed message, and if
    it has a root exception, the string representation of the root
    exception. This string representation
    is meant for debugging and not meant to be interpreted
    programmatically.

    Overrides:
    :   `toString` in class `Throwable`

    Returns:
    :   The non-null string representation of this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../../java.base/java/lang/Throwable.md#getMessage())