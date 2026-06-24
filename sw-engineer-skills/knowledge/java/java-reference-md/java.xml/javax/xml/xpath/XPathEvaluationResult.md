Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Interface XPathEvaluationResult<T>

Type Parameters:
:   `T` - the object type returned by the XPath evaluation.

---

public interface XPathEvaluationResult<T>

The `XPathEvaluationResult` interface represents the result of the
evaluation of an XPath expression within the context of a particular node.
The evaluation of an XPath expression can result in various result types as
defined in XML Path Language (XPath) Version 1.0.

Since:
:   9

See Also:
:   * [XML Path Language (XPath) Version
      1.0](http://www.w3.org/TR/xpath)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static enum`

  `XPathEvaluationResult.XPathResultType`

  XPathResultType represents possible return types of an XPath evaluation.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `XPathEvaluationResult.XPathResultType`

  `type()`

  Return the result type as an enum specified by `XPathResultType`

  `T`

  `value()`

  Returns the value of the result as the type `<T>` specified for the class.

* ## Method Details

  + ### type

    [XPathEvaluationResult.XPathResultType](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath") type()

    Return the result type as an enum specified by `XPathResultType`

    Returns:
    :   the result type
  + ### value

    [T](XPathEvaluationResult.md "type parameter in XPathEvaluationResult") value()

    Returns the value of the result as the type `<T>` specified for the class.

    Returns:
    :   The value of the result.