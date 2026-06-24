Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Interface XPath

---

public interface XPath

`XPath` provides access to the XPath evaluation environment and expressions.
The XPath evaluation is affected by the factors described in the following table.

Evaluation of XPath Expressions

| Factor | Behavior |
| --- | --- |
| context | The type of the context is implementation-dependent. If the value is null, the operation must have no dependency on the context, otherwise an XPathExpressionException will be thrown. For the purposes of evaluating XPath expressions, a DocumentFragment is treated like a Document node. |
| variables | If the expression contains a variable reference, its value will be found through the [`XPathVariableResolver`](XPathVariableResolver.md "interface in javax.xml.xpath") set with [`setXPathVariableResolver(XPathVariableResolver resolver)`](#setXPathVariableResolver(javax.xml.xpath.XPathVariableResolver)). An [`XPathExpressionException`](XPathExpressionException.md "class in javax.xml.xpath") is raised if the variable resolver is undefined or the resolver returns `null` for the variable. The value of a variable must be immutable through the course of any single evaluation. |
| functions | If the expression contains a function reference, the function will be found through the [`XPathFunctionResolver`](XPathFunctionResolver.md "interface in javax.xml.xpath") set with [`setXPathFunctionResolver(XPathFunctionResolver resolver)`](#setXPathFunctionResolver(javax.xml.xpath.XPathFunctionResolver)). An [`XPathExpressionException`](XPathExpressionException.md "class in javax.xml.xpath") is raised if the function resolver is undefined or the function resolver returns `null` for the function. |
| QNames | QNames in the expression are resolved against the XPath namespace context set with [`setNamespaceContext(NamespaceContext nsContext)`](#setNamespaceContext(javax.xml.namespace.NamespaceContext)). |
| result | This result of evaluating an expression is converted to an instance of the desired return type. Valid return types are defined in [`XPathConstants`](XPathConstants.md "class in javax.xml.xpath"). Conversion to the return type follows XPath conversion rules. |

An XPath object is not thread-safe and not reentrant.
In other words, it is the application's responsibility to make
sure that one [`XPath`](XPath.md "interface in javax.xml.xpath") object is not used from
more than one thread at any given time, and while the `evaluate`
method is invoked, applications may not recursively call
the `evaluate` method.

Since:
:   1.5

See Also:
:   * [XML Path Language (XPath) Version 1.0](http://www.w3.org/TR/xpath)

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `XPathExpression`

  `compile(String expression)`

  Compile an XPath expression for later evaluation.

  `String`

  `evaluate(String expression,
  Object item)`

  Evaluate an XPath expression in the specified context and return the result as a `String`.

  `Object`

  `evaluate(String expression,
  Object item,
  QName returnType)`

  Evaluate an `XPath` expression in the specified context and
  return the result as the specified type.

  `String`

  `evaluate(String expression,
  InputSource source)`

  Evaluate an XPath expression in the context of the specified `InputSource`
  and return the result as a `String`.

  `Object`

  `evaluate(String expression,
  InputSource source,
  QName returnType)`

  Evaluate an XPath expression in the context of the specified `InputSource`
  and return the result as the specified type.

  `default XPathEvaluationResult<?>`

  `evaluateExpression(String expression,
  Object item)`

  Evaluate an XPath expression in the specified context.

  `default <T> T`

  `evaluateExpression(String expression,
  Object item,
  Class<T> type)`

  Evaluate an XPath expression in the specified context and return
  the result with the type specified through the `class type`

  `default XPathEvaluationResult<?>`

  `evaluateExpression(String expression,
  InputSource source)`

  Evaluate an XPath expression in the specified context.

  `default <T> T`

  `evaluateExpression(String expression,
  InputSource source,
  Class<T> type)`

  Evaluate an XPath expression in the context of the specified `source`
  and return the result as specified.

  `NamespaceContext`

  `getNamespaceContext()`

  Return the current namespace context.

  `XPathFunctionResolver`

  `getXPathFunctionResolver()`

  Return the current function resolver.

  `XPathVariableResolver`

  `getXPathVariableResolver()`

  Return the current variable resolver.

  `void`

  `reset()`

  Reset this `XPath` to its original configuration.

  `void`

  `setNamespaceContext(NamespaceContext nsContext)`

  Establish a namespace context.

  `void`

  `setXPathFunctionResolver(XPathFunctionResolver resolver)`

  Establish a function resolver.

  `void`

  `setXPathVariableResolver(XPathVariableResolver resolver)`

  Establish a variable resolver.

* ## Method Details

  + ### reset

    void reset()

    Reset this `XPath` to its original configuration.

    `XPath` is reset to the same state as when it was created with
    [`XPathFactory.newXPath()`](XPathFactory.md#newXPath()).
    `reset()` is designed to allow the reuse of existing `XPath`s
    thus saving resources associated with the creation of new `XPath`s.

    The reset `XPath` is not guaranteed to have the same
    [`XPathFunctionResolver`](XPathFunctionResolver.md "interface in javax.xml.xpath"), [`XPathVariableResolver`](XPathVariableResolver.md "interface in javax.xml.xpath")
    or [`NamespaceContext`](../namespace/NamespaceContext.md "interface in javax.xml.namespace") `Object`s, e.g. [`Object.equals(Object obj)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object)).
    It is guaranteed to have a functionally equal `XPathFunctionResolver`,
    `XPathVariableResolver` and `NamespaceContext`.
  + ### setXPathVariableResolver

    void setXPathVariableResolver([XPathVariableResolver](XPathVariableResolver.md "interface in javax.xml.xpath") resolver)

    Establish a variable resolver.

    A `NullPointerException` is thrown if `resolver` is `null`.

    Parameters:
    :   `resolver` - Variable resolver.

    Throws:
    :   `NullPointerException` - If `resolver` is `null`.
  + ### getXPathVariableResolver

    [XPathVariableResolver](XPathVariableResolver.md "interface in javax.xml.xpath") getXPathVariableResolver()

    Return the current variable resolver.

    `null` is returned in no variable resolver is in effect.

    Returns:
    :   Current variable resolver.
  + ### setXPathFunctionResolver

    void setXPathFunctionResolver([XPathFunctionResolver](XPathFunctionResolver.md "interface in javax.xml.xpath") resolver)

    Establish a function resolver.

    A `NullPointerException` is thrown if `resolver` is `null`.

    Parameters:
    :   `resolver` - XPath function resolver.

    Throws:
    :   `NullPointerException` - If `resolver` is `null`.
  + ### getXPathFunctionResolver

    [XPathFunctionResolver](XPathFunctionResolver.md "interface in javax.xml.xpath") getXPathFunctionResolver()

    Return the current function resolver.

    `null` is returned in no function resolver is in effect.

    Returns:
    :   Current function resolver.
  + ### setNamespaceContext

    void setNamespaceContext([NamespaceContext](../namespace/NamespaceContext.md "interface in javax.xml.namespace") nsContext)

    Establish a namespace context.

    A `NullPointerException` is thrown if `nsContext` is `null`.

    Parameters:
    :   `nsContext` - Namespace context to use.

    Throws:
    :   `NullPointerException` - If `nsContext` is `null`.
  + ### getNamespaceContext

    [NamespaceContext](../namespace/NamespaceContext.md "interface in javax.xml.namespace") getNamespaceContext()

    Return the current namespace context.

    `null` is returned in no namespace context is in effect.

    Returns:
    :   Current Namespace context.
  + ### compile

    [XPathExpression](XPathExpression.md "interface in javax.xml.xpath") compile([String](../../../../java.base/java/lang/String.md "class in java.lang") expression)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Compile an XPath expression for later evaluation.

    If `expression` contains any [`XPathFunction`](XPathFunction.md "interface in javax.xml.xpath")s,
    they must be available via the [`XPathFunctionResolver`](XPathFunctionResolver.md "interface in javax.xml.xpath").
    An [`XPathExpressionException`](XPathExpressionException.md "class in javax.xml.xpath") will be thrown if the
    `XPathFunction`
    cannot be resovled with the `XPathFunctionResolver`.

    If `expression` contains any variables, the
    [`XPathVariableResolver`](XPathVariableResolver.md "interface in javax.xml.xpath") in effect
    **at compile time** will be used to resolve them.

    Parameters:
    :   `expression` - The XPath expression.

    Returns:
    :   Compiled XPath expression.

    Throws:
    :   `XPathExpressionException` - If `expression` cannot be compiled.
    :   `NullPointerException` - If `expression` is `null`.
  + ### evaluate

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") evaluate([String](../../../../java.base/java/lang/String.md "class in java.lang") expression,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") item,
    [QName](../namespace/QName.md "class in javax.xml.namespace") returnType)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate an `XPath` expression in the specified context and
    return the result as the specified type.

    See [Evaluation of XPath Expressions](#XPath-evaluation)
    for context item evaluation, variable, function and `QName` resolution
    and return type conversion.

    The parameter `item` represents the context the XPath expression
    will be operated on. The type of the context is implementation-dependent.
    If the value is `null`, the operation must have no dependency on
    the context, otherwise an XPathExpressionException will be thrown.

    Parameters:
    :   `expression` - The XPath expression.
    :   `item` - The context the XPath expression will be evaluated in.
    :   `returnType` - The result type expected to be returned by the XPath expression.

    Returns:
    :   The result of evaluating an XPath expression as an `Object` of `returnType`.

    Throws:
    :   `XPathExpressionException` - If `expression` cannot be evaluated.
    :   `IllegalArgumentException` - If `returnType` is not one of the types defined in [`XPathConstants`](XPathConstants.md "class in javax.xml.xpath") (
        [`NUMBER`](XPathConstants.md#NUMBER),
        [`STRING`](XPathConstants.md#STRING),
        [`BOOLEAN`](XPathConstants.md#BOOLEAN),
        [`NODE`](XPathConstants.md#NODE) or
        [`NODESET`](XPathConstants.md#NODESET)).
    :   `NullPointerException` - If `expression or returnType` is `null`.
  + ### evaluate

    [String](../../../../java.base/java/lang/String.md "class in java.lang") evaluate([String](../../../../java.base/java/lang/String.md "class in java.lang") expression,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") item)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate an XPath expression in the specified context and return the result as a `String`.

    This method calls [`evaluate(String expression, Object item, QName returnType)`](#evaluate(java.lang.String,java.lang.Object,javax.xml.namespace.QName)) with a `returnType` of
    [`XPathConstants.STRING`](XPathConstants.md#STRING).

    See [Evaluation of XPath Expressions](#XPath-evaluation) for context item evaluation,
    variable, function and QName resolution and return type conversion.

    The parameter `item` represents the context the XPath expression
    will be operated on. The type of the context is implementation-dependent.
    If the value is `null`, the operation must have no dependency on
    the context, otherwise an XPathExpressionException will be thrown.

    Parameters:
    :   `expression` - The XPath expression.
    :   `item` - The context the XPath expression will be evaluated in.

    Returns:
    :   The result of evaluating an XPath expression as a `String`.

    Throws:
    :   `XPathExpressionException` - If `expression` cannot be evaluated.
    :   `NullPointerException` - If `expression` is `null`.
  + ### evaluate

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") evaluate([String](../../../../java.base/java/lang/String.md "class in java.lang") expression,
    [InputSource](../../../org/xml/sax/InputSource.md "class in org.xml.sax") source,
    [QName](../namespace/QName.md "class in javax.xml.namespace") returnType)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate an XPath expression in the context of the specified `InputSource`
    and return the result as the specified type.

    This method builds a data model for the [`InputSource`](../../../org/xml/sax/InputSource.md "class in org.xml.sax") and calls
    [`evaluate(String expression, Object item, QName returnType)`](#evaluate(java.lang.String,java.lang.Object,javax.xml.namespace.QName)) on the resulting document object.

    See [Evaluation of XPath Expressions](#XPath-evaluation) for context item evaluation,
    variable, function and QName resolution and return type conversion.

    Parameters:
    :   `expression` - The XPath expression.
    :   `source` - The input source of the document to evaluate over.
    :   `returnType` - The desired return type.

    Returns:
    :   The `Object` that encapsulates the result of evaluating the expression.

    Throws:
    :   `XPathExpressionException` - If expression cannot be evaluated.
    :   `IllegalArgumentException` - If `returnType` is not one of the types defined in [`XPathConstants`](XPathConstants.md "class in javax.xml.xpath").
    :   `NullPointerException` - If `expression, source or returnType` is `null`.
  + ### evaluate

    [String](../../../../java.base/java/lang/String.md "class in java.lang") evaluate([String](../../../../java.base/java/lang/String.md "class in java.lang") expression,
    [InputSource](../../../org/xml/sax/InputSource.md "class in org.xml.sax") source)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate an XPath expression in the context of the specified `InputSource`
    and return the result as a `String`.

    This method calls [`evaluate(String expression, InputSource source, QName returnType)`](#evaluate(java.lang.String,org.xml.sax.InputSource,javax.xml.namespace.QName)) with a
    `returnType` of [`XPathConstants.STRING`](XPathConstants.md#STRING).

    See [Evaluation of XPath Expressions](#XPath-evaluation) for context item evaluation,
    variable, function and QName resolution and return type conversion.

    Parameters:
    :   `expression` - The XPath expression.
    :   `source` - The `InputSource` of the document to evaluate over.

    Returns:
    :   The `String` that is the result of evaluating the expression and
        converting the result to a `String`.

    Throws:
    :   `XPathExpressionException` - If expression cannot be evaluated.
    :   `NullPointerException` - If `expression or source` is `null`.
  + ### evaluateExpression

    default <T> T evaluateExpression([String](../../../../java.base/java/lang/String.md "class in java.lang") expression,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") item,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> type)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate an XPath expression in the specified context and return
    the result with the type specified through the `class type`

    The parameter `item` represents the context the XPath expression
    will be operated on. The type of the context is implementation-dependent.
    If the value is `null`, the operation must have no dependency on
    the context, otherwise an XPathExpressionException will be thrown.

    Type Parameters:
    :   `T` - The class type that will be returned by the XPath expression.

    Parameters:
    :   `expression` - The XPath expression.
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
        corresponding to the types defined in the [`XPathEvaluationResult.XPathResultType`](XPathEvaluationResult.XPathResultType.md "enum class in javax.xml.xpath"),
        or XPathEvaluationResult is specified as the type but an implementation supporting the
        [`ANY`](XPathEvaluationResult.XPathResultType.md#ANY) type is not available.
    :   `NullPointerException` - If `expression or type` is `null`.

    Since:
    :   9
  + ### evaluateExpression

    default [XPathEvaluationResult](XPathEvaluationResult.md "interface in javax.xml.xpath")<?> evaluateExpression([String](../../../../java.base/java/lang/String.md "class in java.lang") expression,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") item)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate an XPath expression in the specified context. This is equivalent to
    calling [`evaluateExpression(String expression, Object item, Class type)`](#evaluateExpression(java.lang.String,java.lang.Object,java.lang.Class))
    with type [`XPathEvaluationResult`](XPathEvaluationResult.md "interface in javax.xml.xpath"):

    ```
         evaluateExpression(expression, item, XPathEvaluationResult.class);
    ```

    The parameter `item` represents the context the XPath expression
    will be operated on. The type of the context is implementation-dependent.
    If the value is `null`, the operation must have no dependency on
    the context, otherwise an XPathExpressionException will be thrown.

    Parameters:
    :   `expression` - The XPath expression.
    :   `item` - The context the XPath expression will be evaluated in.

    Returns:
    :   The result of evaluating the expression.

    Throws:
    :   `XPathExpressionException` - If the expression cannot be evaluated.
    :   `IllegalArgumentException` - If the implementation of this method
        does not support the
        [`ANY`](XPathEvaluationResult.XPathResultType.md#ANY) type.
    :   `NullPointerException` - If `expression` is `null`.

    Since:
    :   9
  + ### evaluateExpression

    default <T> T evaluateExpression([String](../../../../java.base/java/lang/String.md "class in java.lang") expression,
    [InputSource](../../../org/xml/sax/InputSource.md "class in org.xml.sax") source,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<T> type)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate an XPath expression in the context of the specified `source`
    and return the result as specified.

    This method builds a data model for the [`InputSource`](../../../org/xml/sax/InputSource.md "class in org.xml.sax") and calls
    [`evaluateExpression(String expression, Object item, Class type)`](#evaluateExpression(java.lang.String,java.lang.Object,java.lang.Class))
    on the resulting document object. The data model is usually
    [`Document`](../../../org/w3c/dom/Document.md "interface in org.w3c.dom")

    Type Parameters:
    :   `T` - The class type that will be returned by the XPath expression.

    Parameters:
    :   `expression` - The XPath expression.
    :   `source` - The input source of the document to evaluate over.
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
    :   `NullPointerException` - If `expression, source or type`is `null`.

    Since:
    :   9
  + ### evaluateExpression

    default [XPathEvaluationResult](XPathEvaluationResult.md "interface in javax.xml.xpath")<?> evaluateExpression([String](../../../../java.base/java/lang/String.md "class in java.lang") expression,
    [InputSource](../../../org/xml/sax/InputSource.md "class in org.xml.sax") source)
    throws [XPathExpressionException](XPathExpressionException.md "class in javax.xml.xpath")

    Evaluate an XPath expression in the specified context. This is equivalent to
    calling [`evaluateExpression(String expression, Object item, Class type)`](#evaluateExpression(java.lang.String,java.lang.Object,java.lang.Class))
    with type [`XPathEvaluationResult`](XPathEvaluationResult.md "interface in javax.xml.xpath"):

    ```
         evaluateExpression(expression, item, XPathEvaluationResult.class);
    ```

    Parameters:
    :   `expression` - The XPath expression.
    :   `source` - The input source of the document to evaluate over.

    Returns:
    :   The result of evaluating the expression.

    Throws:
    :   `XPathExpressionException` - If the expression cannot be evaluated.
    :   `IllegalArgumentException` - If the implementation of this method
        does not support the
        [`ANY`](XPathEvaluationResult.XPathResultType.md#ANY) type.
    :   `NullPointerException` - If `expression or source` is `null`.

    Since:
    :   9