Module [java.xml](../../../module-summary.md)

Package [javax.xml.transform](package-summary.md)

# Class TransformerConfigurationException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.xml.transform.TransformerException](TransformerException.md "class in javax.xml.transform")

javax.xml.transform.TransformerConfigurationException

All Implemented Interfaces:
:   `Serializable`

---

public class TransformerConfigurationException
extends [TransformerException](TransformerException.md "class in javax.xml.transform")

Indicates a serious configuration error.

Since:
:   1.4

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.transform.TransformerConfigurationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `TransformerConfigurationException()`

  Create a new `TransformerConfigurationException` with no
  detail message.

  `TransformerConfigurationException(String msg)`

  Create a new `TransformerConfigurationException` with
  the `String`  specified as an error message.

  `TransformerConfigurationException(String msg,
  Throwable e)`

  Create a new `TransformerConfigurationException` with the
  given `Exception` base cause and detail message.

  `TransformerConfigurationException(String message,
  SourceLocator locator)`

  Create a new TransformerConfigurationException from a message and a Locator.

  `TransformerConfigurationException(String message,
  SourceLocator locator,
  Throwable e)`

  Wrap an existing exception in a TransformerConfigurationException.

  `TransformerConfigurationException(Throwable e)`

  Create a new `TransformerConfigurationException` with a
  given `Exception` base cause of the error.
* ## Method Summary

  ### Methods inherited from class javax.xml.transform.[TransformerException](TransformerException.md "class in javax.xml.transform")

  `getCause, getException, getLocationAsString, getLocator, getMessageAndLocation, initCause, printStackTrace, printStackTrace, printStackTrace, setLocator`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### TransformerConfigurationException

    public TransformerConfigurationException()

    Create a new `TransformerConfigurationException` with no
    detail message.
  + ### TransformerConfigurationException

    public TransformerConfigurationException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg)

    Create a new `TransformerConfigurationException` with
    the `String`  specified as an error message.

    Parameters:
    :   `msg` - The error message for the exception.
  + ### TransformerConfigurationException

    public TransformerConfigurationException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") e)

    Create a new `TransformerConfigurationException` with a
    given `Exception` base cause of the error.

    Parameters:
    :   `e` - The exception to be encapsulated in a
        TransformerConfigurationException.
  + ### TransformerConfigurationException

    public TransformerConfigurationException([String](../../../../java.base/java/lang/String.md "class in java.lang") msg,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") e)

    Create a new `TransformerConfigurationException` with the
    given `Exception` base cause and detail message.

    Parameters:
    :   `msg` - The detail message.
    :   `e` - The exception to be encapsulated in a
        TransformerConfigurationException
  + ### TransformerConfigurationException

    public TransformerConfigurationException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [SourceLocator](SourceLocator.md "interface in javax.xml.transform") locator)

    Create a new TransformerConfigurationException from a message and a Locator.

    This constructor is especially useful when an application is
    creating its own exception from within a DocumentHandler
    callback.

    Parameters:
    :   `message` - The error or warning message.
    :   `locator` - The locator object for the error or warning.
  + ### TransformerConfigurationException

    public TransformerConfigurationException([String](../../../../java.base/java/lang/String.md "class in java.lang") message,
    [SourceLocator](SourceLocator.md "interface in javax.xml.transform") locator,
    [Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") e)

    Wrap an existing exception in a TransformerConfigurationException.

    Parameters:
    :   `message` - The error or warning message, or null to
        use the message from the embedded exception.
    :   `locator` - The locator object for the error or warning.
    :   `e` - Any exception.