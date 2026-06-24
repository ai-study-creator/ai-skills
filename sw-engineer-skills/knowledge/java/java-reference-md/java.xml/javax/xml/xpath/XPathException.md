Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Class XPathException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.xml.xpath.XPathException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `XPathExpressionException`, `XPathFactoryConfigurationException`

---

public class XPathException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

`XPathException` represents a generic XPath exception.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.xpath.XPathException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XPathException(String message)`

  Constructs a new `XPathException`
  with the specified detail `message`.

  `XPathException(Throwable cause)`

  Constructs a new `XPathException`
  with the specified `cause`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Throwable`

  `getCause()`

  Get the cause of this XPathException.

  `void`

  `printStackTrace()`

  Print stack trace to `System.err`.

  `void`

  `printStackTrace(PrintStream s)`

  Print stack trace to specified `PrintStream`.

  `void`

  `printStackTrace(PrintWriter s)`

  Print stack trace to specified `PrintWriter`.

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### XPathException

    public XPathException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a new `XPathException`
    with the specified detail `message`.

    The `cause` is not initialized.

    If `message` is `null`,
    then a `NullPointerException` is thrown.

    Parameters:
    :   `message` - The detail message.

    Throws:
    :   `NullPointerException` - When `message` is
        `null`.
  + ### XPathException

    public XPathException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `XPathException`
    with the specified `cause`.

    If `cause` is `null`,
    then a `NullPointerException` is thrown.

    Parameters:
    :   `cause` - The cause.

    Throws:
    :   `NullPointerException` - if `cause` is `null`.
* ## Method Details

  + ### getCause

    public [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Get the cause of this XPathException.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   Cause of this XPathException.
  + ### printStackTrace

    public void printStackTrace([PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io") s)

    Print stack trace to specified `PrintStream`.

    Overrides:
    :   `printStackTrace` in class `Throwable`

    Parameters:
    :   `s` - Print stack trace to this `PrintStream`.
  + ### printStackTrace

    public void printStackTrace()

    Print stack trace to `System.err`.

    Overrides:
    :   `printStackTrace` in class `Throwable`
  + ### printStackTrace

    public void printStackTrace([PrintWriter](../../../../java.base/java/io/PrintWriter.md "class in java.io") s)

    Print stack trace to specified `PrintWriter`.

    Overrides:
    :   `printStackTrace` in class `Throwable`

    Parameters:
    :   `s` - Print stack trace to this `PrintWriter`.