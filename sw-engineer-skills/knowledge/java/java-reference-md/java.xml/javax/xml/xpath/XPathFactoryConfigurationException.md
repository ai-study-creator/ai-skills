Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Class XPathFactoryConfigurationException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.xml.xpath.XPathException](XPathException.md "class in javax.xml.xpath")

javax.xml.xpath.XPathFactoryConfigurationException

All Implemented Interfaces:
:   `Serializable`

---

public class XPathFactoryConfigurationException
extends [XPathException](XPathException.md "class in javax.xml.xpath")

`XPathFactoryConfigurationException` represents
a configuration error in a `XPathFactory` environment.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.xpath.XPathFactoryConfigurationException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XPathFactoryConfigurationException(String message)`

  Constructs a new `XPathFactoryConfigurationException`
  with the specified detail `message`.

  `XPathFactoryConfigurationException(Throwable cause)`

  Constructs a new `XPathFactoryConfigurationException`
  with the specified `cause`.
* ## Method Summary

  ### Methods inherited from class javax.xml.xpath.[XPathException](XPathException.md "class in javax.xml.xpath")

  `getCause, printStackTrace, printStackTrace, printStackTrace`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### XPathFactoryConfigurationException

    public XPathFactoryConfigurationException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a new `XPathFactoryConfigurationException`
    with the specified detail `message`.

    The `cause` is not initialized.

    If `message` is `null`,
    then a `NullPointerException` is thrown.

    Parameters:
    :   `message` - The detail message.

    Throws:
    :   `NullPointerException` - When `message` is
        `null`.
  + ### XPathFactoryConfigurationException

    public XPathFactoryConfigurationException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `XPathFactoryConfigurationException`
    with the specified `cause`.

    If `cause` is `null`,
    then a `NullPointerException` is thrown.

    Parameters:
    :   `cause` - The cause.

    Throws:
    :   `NullPointerException` - if `cause` is `null`.