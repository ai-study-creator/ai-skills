Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class HeadlessException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[java.lang.UnsupportedOperationException](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang")

java.awt.HeadlessException

All Implemented Interfaces:
:   `Serializable`

---

public class HeadlessException
extends [UnsupportedOperationException](../../../java.base/java/lang/UnsupportedOperationException.md "class in java.lang")

Thrown when code that is dependent on a keyboard, display, or mouse
is called in an environment that does not support a keyboard, display,
or mouse. Any code that depends on any of those devices should firstly
ensure their availability using the `GraphicsEnvironment.isHeadless()`
method and throw `HeadlessException` if the latter returns
`true`.

Since:
:   1.4

See Also:
:   * [`GraphicsEnvironment.isHeadless()`](GraphicsEnvironment.md#isHeadless())
    * [Serialized Form](../../../serialized-form.md#java.awt.HeadlessException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HeadlessException()`

  Constructs new `HeadlessException` with empty message.

  `HeadlessException(String msg)`

  Create a new instance with the specified detailed error message.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getMessage()`

  Returns the detail message string of this `HeadlessException`.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### HeadlessException

    public HeadlessException()

    Constructs new `HeadlessException` with empty message.
    For such `HeadlessException` the default headless error message
    may be auto-generated for some platforms.
    The text of the default headless message may depend on
    whether the GraphicsEnvironment is in fact headless.
    That is, the default headless message is both system and environmentally
    dependent.
  + ### HeadlessException

    public HeadlessException([String](../../../java.base/java/lang/String.md "class in java.lang") msg)

    Create a new instance with the specified detailed error message.
    For some platforms the default headless error message may be
    added at the end of the specified message.
    The text of the default headless message may depend on
    whether the GraphicsEnvironment is in fact headless.
    That is, the default headless message is both system and environmentally
    dependent.

    Parameters:
    :   `msg` - the error message
* ## Method Details

  + ### getMessage

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getMessage()

    Returns the detail message string of this `HeadlessException`.
    Depending on the platform the message specified in the constructor may
    be followed by the default headless error message.
    The text of the default headless message may depend on
    whether the GraphicsEnvironment is in fact headless.
    That is, the default headless message is both system and environmentally
    dependent.

    Overrides:
    :   `getMessage` in class `Throwable`

    Returns:
    :   the detail message string of this `HeadlessException`
        instance (which may be `null`).