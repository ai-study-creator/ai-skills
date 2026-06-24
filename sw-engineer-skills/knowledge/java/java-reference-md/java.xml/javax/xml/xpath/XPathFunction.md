Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Interface XPathFunction

---

public interface XPathFunction

`XPathFunction` provides access to XPath functions.

Functions are identified by QName and arity in XPath.

Since:
:   1.5

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `evaluate(List<?> args)`

  Evaluate the function with the specified arguments.

* ## Method Details

  + ### evaluate

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") evaluate([List](../../../../java.base/java/util/List.md "interface in java.util")<?> args)
    throws [XPathFunctionException](XPathFunctionException.md "class in javax.xml.xpath")

    Evaluate the function with the specified arguments.

    To the greatest extent possible, side-effects should be avoided in the
    definition of extension functions. The implementation evaluating an
    XPath expression is under no obligation to call extension functions in
    any particular order or any particular number of times.

    Parameters:
    :   `args` - The arguments, `null` is a valid value.

    Returns:
    :   The result of evaluating the `XPath` function as an `Object`.

    Throws:
    :   `XPathFunctionException` - If `args` cannot be evaluated with this `XPath` function.