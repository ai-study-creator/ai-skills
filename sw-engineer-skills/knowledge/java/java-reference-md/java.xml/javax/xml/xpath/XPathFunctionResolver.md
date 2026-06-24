Module [java.xml](../../../module-summary.md)

Package [javax.xml.xpath](package-summary.md)

# Interface XPathFunctionResolver

---

public interface XPathFunctionResolver

`XPathFunctionResolver` provides access to the set of user defined `XPathFunction`s.

XPath functions are resolved by name and arity.
The resolver is not needed for XPath built-in functions and the resolver
***cannot*** be used to override those functions.

In particular, the resolver is only called for functions in an another
namespace (functions with an explicit prefix). This means that you cannot
use the `XPathFunctionResolver` to implement specifications
like [XML-Signature Syntax
and Processing](http://www.w3.org/TR/xmldsig-core/) which extend the function library of XPath 1.0 in the
same namespace. This is a consequence of the design of the resolver.

If you wish to implement additional built-in functions, you will have to
extend the underlying implementation directly.

Since:
:   1.5

See Also:
:   * [XML Path Language (XPath) Version 1.0, Core Function Library](http://www.w3.org/TR/xpath#corelib)

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `XPathFunction`

  `resolveFunction(QName functionName,
  int arity)`

  Find a function in the set of available functions.

* ## Method Details

  + ### resolveFunction

    [XPathFunction](XPathFunction.md "interface in javax.xml.xpath") resolveFunction([QName](../namespace/QName.md "class in javax.xml.namespace") functionName,
    int arity)

    Find a function in the set of available functions.

    If `functionName` or `arity` is `null`, then a `NullPointerException` is thrown.

    Parameters:
    :   `functionName` - The function name.
    :   `arity` - The number of arguments that the returned function must accept.

    Returns:
    :   The function or `null` if no function named `functionName` with `arity` arguments exists.

    Throws:
    :   `NullPointerException` - If `functionName` or `arity` is `null`.