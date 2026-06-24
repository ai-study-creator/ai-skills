Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Interface XPathExpression

---

public interface XPathExpression

`XPathExpression` provides access to compiled XPath expressions.
The XPath evaluation is affected by the factors described in the following table.

Evaluation of XPath Expressions

| Factor | Behavior |
| --- | --- |
| context | The type of the context is implementation-dependent. If the value is null, the operation must have no dependency on the context, otherwise an XPathExpressionException will be thrown. For the purposes of evaluating XPath expressions, a DocumentFragment is treated like a Document node. |
| variables | If the expression contains a variable reference, its value will be found through the [`XPathVariableResolver`](XPathVariableResolver.md "interface in javax.xml.xpath"). An [`XPathExpressionException`](XPathExpressionException.md "class in javax.xml.xpath") is raised if the variable resolver is undefined or the resolver returns `null` for the variable. The value of a variable must be immutable through the course of any single evaluation. |
| functions | If the expression contains a function reference, the function will be found through the [`XPathFunctionResolver`](XPathFunctionResolver.md "interface in javax.xml.xpath"). An [`XPathExpressionException`](XPathExpressionException.md "class in javax.xml.xpath") is raised if the function resolver is undefined or the function resolver returns `null` for the function. |
| QNames | QNames in the expression are resolved against the XPath namespace context. |
| result | This result of evaluating an expression is converted to an instance of the desired return type. Valid return types are defined in [`XPathConstants`](XPathConstants.md "class in javax.xml.xpath"). Conversion to the return type follows XPath conversion rules. |

An XPath expression is not thread-safe and not reentrant.
In other words, it is the application's responsibility to make
sure that one [`XPathExpression`](XPathExpression.md "interface in javax.xml.xpath") object is not used from
more than one thread at any given time, and while the `evaluate`
method is invoked, applications may not recursively call
the `evaluate` method.

Since:
:   1.5

See Also:
:   * [XML Path Language (XPath) Version 1.0, Expressions](http://www.w3.org/TR/xpath#section-Expressions)

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `String`

  `evaluate(Object item)`

  Evaluate the compiled XPath expression in the specified context and return the result as a `String`.

  `Object`

  `evaluate(Object item,
  QName returnType)`

  Evaluate the compiled XPath expression in the specified context and return the result as the specified type.

  `String`

  `evaluate(InputSource source)`

  Evaluate the compiled XPath expression in the context
  of the specified `InputSource` and return the result as a
  `String`.

  `Object`

  `evaluate(InputSource source,
  QName returnType)`

  Evaluate the compiled XPath expression in the context
  of the specified `InputSource` and return the result as the
  specified type.

  `default XPathEvaluationResult<?>`

  `evaluateExpression(Object item)`

  Evaluate the compiled XPath expression in the specified context.

  `default <T> T`

  `evaluateExpression(Object item,
  Class<T> type)`

  Evaluate the compiled XPath expression in the specified context, and return
  the result with the type specified through the `class type`.

  `default XPathEvaluationResult<?>`

  `evaluateExpression(InputSource source)`

  Evaluate the compiled XPath expression in the specified context.

  `default <T> T`

  `evaluateExpression(InputSource source,
  Class<T> type)`

  Evaluate the compiled XPath expression in the specified context,
  and return the result with the type specified through the `class type`

* ## Method Details

  + ### evaluate

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") evaluate([Object](../../../../java.base/java/lang/Object.md "class in java.lang") item,
    [QName](../namespace/QName.md "class in javax.xml.namespace") returnType)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate the compiled XPath expression in the specified context and return the result as the specified type.

    See [Evaluation of XPath Expressions](#XPathExpression-evaluation) for context item evaluation,
    variable, function and QName resolution and return type conversion.

    The parameter `item` represents the context the XPath expression
    will be operated on. The type of the context is implementation-dependent.
    If the value is `null`, the operation must have no dependency on
    the context, otherwise an XPathExpressionException will be thrown.

    Parameters:
    :   `item` - The context the XPath expression will be evaluated in.
    :   `returnType` - The result type expected to be returned by the XPath expression.

    Returns:
    :   The `Object` that is the result of evaluating the expression and converting the result to
        `returnType`.

    Throws:
    :   `XPathExpressionException` - If the expression cannot be evaluated.
    :   `IllegalArgumentException` - If `returnType` is not one of the types defined in [`XPathConstants`](XPathConstants.md "class in javax.xml.xpath").
    :   `NullPointerException` - If `returnType` is `null`.
  + ### evaluate

    [String](../../../../java.base/java/lang/String.md "class in java.lang") evaluate([Object](../../../../java.base/java/lang/Object.md "class in java.lang") item)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate the compiled XPath expression in the specified context and return the result as a `String`.

    This method calls [`evaluate(Object item, QName returnType)`](#evaluate(java.lang.Object,javax.xml.namespace.QName)) with a `returnType` of
    [`XPathConstants.STRING`](XPathConstants.md#STRING).

    See [Evaluation of XPath Expressions](#XPathExpression-evaluation) for context item evaluation,
    variable, function and QName resolution and return type conversion.

    The parameter `item` represents the context the XPath expression
    will be operated on. The type of the context is implementation-dependent.
    If the value is `null`, the operation must have no dependency on
    the context, otherwise an XPathExpressionException will be thrown.

    Parameters:
    :   `item` - The context the XPath expression will be evaluated in.

    Returns:
    :   The result of evaluating an XPath expression as a `String`.

    Throws:
    :   `XPathExpressionException` - If the expression cannot be evaluated.
  + ### evaluate

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") evaluate([InputSource](../../../org/xml/sax/InputSource.md "class in org.xml.sax") source,
    [QName](../namespace/QName.md "class in javax.xml.namespace") returnType)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate the compiled XPath expression in the context
    of the specified `InputSource` and return the result as the
    specified type.

    This method builds a data model for the [`InputSource`](../../../org/xml/sax/InputSource.md "class in org.xml.sax") and calls
    [`evaluate(Object item, QName returnType)`](#evaluate(java.lang.Object,javax.xml.namespace.QName)) on the resulting document object.

    See [Evaluation of XPath Expressions](#XPathExpression-evaluation) for context item evaluation,
    variable, function and QName resolution and return type conversion.

    If `returnType` is not one of the types defined in [`XPathConstants`](XPathConstants.md "class in javax.xml.xpath"),
    then an `IllegalArgumentException` is thrown.

    If `source` or `returnType` is `null`,
    then a `NullPointerException` is thrown.

    Parameters:
    :   `source` - The `InputSource` of the document to evaluate over.
    :   `returnType` - The desired return type.

    Returns:
    :   The `Object` that is the result of evaluating the expression and converting the result to
        `returnType`.

    Throws:
    :   `XPathExpressionException` - If the expression cannot be evaluated.
    :   `IllegalArgumentException` - If `returnType` is not one of the types defined in [`XPathConstants`](XPathConstants.md "class in javax.xml.xpath").
    :   `NullPointerException` - If `source or returnType` is `null`.
  + ### evaluate

    [String](../../../../java.base/java/lang/String.md "class in java.lang") evaluate([InputSource](../../../org/xml/sax/InputSource.md "class in org.xml.sax") source)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate the compiled XPath expression in the context
    of the specified `InputSource` and return the result as a
    `String`.

    This method calls [`evaluate(InputSource source, QName returnType)`](#evaluate(org.xml.sax.InputSource,javax.xml.namespace.QName)) with a `returnType` of
    [`XPathConstants.STRING`](XPathConstants.md#STRING).

    See [Evaluation of XPath Expressions](#XPathExpression-evaluation) for context item evaluation,
    variable, function and QName resolution and return type conversion.

    If `source` is `null`, then a `NullPointerException` is thrown.

    Parameters:
    :   `source` - The `InputSource` of the document to evaluate over.

    Returns:
    :   The `String` that is the result of evaluating the expression and converting the result to a
        `String`.

    Throws:
    :   `XPathExpressionException` - If the expression cannot be evaluated.
    :   `NullPointerException` - If `source` is `null`.
  + ### evaluateExpression

    default <T> T evaluateExpression([Object](../../../../java.base/java/lang/Object.md "class in java.lang") item,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> type)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate the compiled XPath expression in the specified context, and return
    the result with the type specified through the `class type`.

    The parameter `item` represents the context the XPath expression
    will be operated on. The type of the context is implementation-dependent.
    If the value is `null`, the operation must have no dependency on
    the context, otherwise an XPathExpressionException will be thrown.

    Type Parameters:
    :   `T` - The class type that will be returned by the XPath expression.

    Parameters:
    :   `item` - The context the XPath expression will be evaluated in.
    :   `type` - The class type expected to be returned by the XPath expression,
        must be one of the types described in section
        [3.2 Class types](package-summary.md#XPath.Datatypes.Class)
        in the package summary.

    Returns:
    :   The result of evaluating the expression.

    Throws:
    :   `XPathExpressionException` - If the expression cannot be evaluated.
    :   `IllegalArgumentException` - If `type` is not of the types
        corresponding to the types defined in the [`XPathResultType`](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath"), or XPathEvaluationResult is specified as the type but an
        implementation supporting the
        [`ANY`](XPathEvaluationResult.XPathResultType.md#ANY) type is not available.
    :   `NullPointerException` - If `type` is `null`.

    Since:
    :   9
  + ### evaluateExpression

    default [XPathEvaluationResult](XPathEvaluationResult.md "interface in javax.xml.xpath")<?> evaluateExpression([Object](../../../../java.base/java/lang/Object.md "class in java.lang") item)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate the compiled XPath expression in the specified context. This is
    equivalent to calling [`evaluateExpression(Object item, Class type)`](#evaluateExpression(java.lang.Object,java.lang.Class))
    with type [`XPathEvaluationResult`](XPathEvaluationResult.md "interface in javax.xml.xpath"):

    ```
         evaluateExpression(item, XPathEvaluationResult.class);
    ```

    The parameter `item` represents the context the XPath expression
    will be operated on. The type of the context is implementation-dependent.
    If the value is `null`, the operation must have no dependency on
    the context, otherwise an XPathExpressionException will be thrown.

    Parameters:
    :   `item` - The context the XPath expression will be evaluated in.

    Returns:
    :   The result of evaluating the expression.

    Throws:
    :   `XPathExpressionException` - If the expression cannot be evaluated.
    :   `IllegalArgumentException` - If the implementation of this method
        does not support the
        [`ANY`](XPathEvaluationResult.XPathResultType.md#ANY) type.

    Since:
    :   9
  + ### evaluateExpression

    default <T> T evaluateExpression([InputSource](../../../org/xml/sax/InputSource.md "class in org.xml.sax") source,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> type)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate the compiled XPath expression in the specified context,
    and return the result with the type specified through the `class type`

    This method builds a data model for the [`InputSource`](../../../org/xml/sax/InputSource.md "class in org.xml.sax") and calls
    [`evaluateExpression(Object item, Class type)`](#evaluateExpression(java.lang.Object,java.lang.Class)) on the resulting
    document object.

    By default, the JDK's data model is [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom").

    Type Parameters:
    :   `T` - The class type that will be returned by the XPath expression.

    Parameters:
    :   `source` - The `InputSource` of the document to evaluate over.
    :   `type` - The class type expected to be returned by the XPath expression,
        must be one of the types described in section
        [3.2 Class types](package-summary.md#XPath.Datatypes.Class)
        in the package summary.

    Returns:
    :   The result of evaluating the expression.

    Throws:
    :   `XPathExpressionException` - If the expression cannot be evaluated.
    :   `IllegalArgumentException` - If `type` is not of the types
        corresponding to the types defined in the [`XPathResultType`](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath"), or XPathEvaluationResult is specified as the type but an
        implementation supporting the
        [`ANY`](XPathEvaluationResult.XPathResultType.md#ANY) type
        is not available.
    :   `NullPointerException` - If `source or type` is `null`.

    Since:
    :   9
  + ### evaluateExpression

    default [XPathEvaluationResult](XPathEvaluationResult.md "interface in javax.xml.xpath")<?> evaluateExpression([InputSource](../../../org/xml/sax/InputSource.md "class in org.xml.sax") source)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate the compiled XPath expression in the specified context. This is
    equivalent to calling [`evaluateExpression(InputSource source, Class type)`](#evaluateExpression(org.xml.sax.InputSource,java.lang.Class))
    with type [`XPathEvaluationResult`](XPathEvaluationResult.md "interface in javax.xml.xpath"):

    ```
         evaluateExpression(source, XPathEvaluationResult.class);
    ```

    Parameters:
    :   `source` - The `InputSource` of the document to evaluate over.

    Returns:
    :   The result of evaluating the expression.

    Throws:
    :   `XPathExpressionException` - If the expression cannot be evaluated.
    :   `IllegalArgumentException` - If the implementation of this method
        does not support the
        [`ANY`](XPathEvaluationResult.XPathResultType.md#ANY) type.
    :   `NullPointerException` - If `source` is `null`.

    Since:
    :   9