Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Class XPathFunctionException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

[javax.xml.xpath.XPathException](XPathException.md "class in javax.xml.xpath")

[javax.xml.xpath.XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

javax.xml.xpath.XPathFunctionException

All Implemented Interfaces:
:   `Serializable`

---

public class XPathFunctionException
extends [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

`XPathFunctionException` represents an error with an XPath function.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.xml.xpath.XPathFunctionException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XPathFunctionException(String message)`

  Constructs a new `XPathFunctionException` with the specified detail `message`.

  `XPathFunctionException(Throwable cause)`

  Constructs a new `XPathFunctionException` with the specified `cause`.
* ## Method Summary

  ### Methods inherited from class javax.xml.xpath.[XPathException](XPathException.md "class in javax.xml.xpath")

  `getCause, printStackTrace, printStackTrace, printStackTrace`

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### XPathFunctionException

    public XPathFunctionException([String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Constructs a new `XPathFunctionException` with the specified detail `message`.

    The `cause` is not initialized.

    If `message` is `null`,
    then a `NullPointerException` is thrown.

    Parameters:
    :   `message` - The detail message.

    Throws:
    :   `NullPointerException` - When `message` is
        `null`.
  + ### XPathFunctionException

    public XPathFunctionException([Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Constructs a new `XPathFunctionException` with the specified `cause`.

    If `cause` is `null`,
    then a `NullPointerException` is thrown.

    Parameters:
    :   `cause` - The cause.

    Throws:
    :   `NullPointerException` - if `cause` is `null`.