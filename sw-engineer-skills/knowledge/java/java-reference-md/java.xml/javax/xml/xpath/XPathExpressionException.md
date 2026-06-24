Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Class XPathExpressionException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.xml.xpath.XPathException](XPathException.md "class in javax.xml.xpath")

javax.xml.xpath.XPathExpressionException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `XPathFunctionException`

---

public class XPathExpressionException
extends [XPathException](XPathException.md "class in javax.xml.xpath")

`XPathExpressionException` represents an error in an XPath expression.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.xpath.XPathExpressionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XPathExpressionException(String message)`

  Constructs a new `XPathExpressionException`
  with the specified detail `message`.

  `XPathExpressionException(Throwable cause)`

  Constructs a new `XPathExpressionException`
  with the specified `cause`.
* ## Method Summary

  ### Methods inherited from class javax.xml.xpath.[XPathException](XPathException.md "class in javax.xml.xpath")

  `getCause, printStackTrace, printStackTrace, printStackTrace`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### XPathExpressionException

    public XPathExpressionException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a new `XPathExpressionException`
    with the specified detail `message`.

    The `cause` is not initialized.

    If `message` is `null`,
    then a `NullPointerException` is thrown.

    Parameters:
    :   `message` - The detail message.

    Throws:
    :   `NullPointerException` - When `message` is
        `null`.
  + ### XPathExpressionException

    public XPathExpressionException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `XPathExpressionException`
    with the specified `cause`.

    If `cause` is `null`,
    then a `NullPointerException` is thrown.

    Parameters:
    :   `cause` - The cause.

    Throws:
    :   `NullPointerException` - if `cause` is `null`.