Module [java.rmi](../../../module-summary.md)

Package [java.rmi.server](package-summary.md)

# Interface LoaderHandler

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
public interface LoaderHandler

Deprecated.

no replacement

`LoaderHandler` is an interface used internally by the RMI
runtime in previous implementation versions. It should never be accessed
by application code.

Since:
:   1.1

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `packagePrefix`

  Deprecated.

  package of system `LoaderHandler` implementation.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getSecurityContext(ClassLoader loader)`

  Deprecated.

  no replacement

  `Class<?>`

  `loadClass(String name)`

  Deprecated.

  no replacement

  `Class<?>`

  `loadClass(URL codebase,
  String name)`

  Deprecated.

  no replacement

* ## Field Details

  + ### packagePrefix

    static final [String](../../../../java.base/java/lang/String.md "class in java.lang") packagePrefix

    Deprecated.

    package of system `LoaderHandler` implementation.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.rmi.server.LoaderHandler.packagePrefix)
* ## Method Details

  + ### loadClass

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> loadClass([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [MalformedURLException](../../../../java.base/java/net/MalformedURLException.md "class in java.net"),
    [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Deprecated.

    no replacement

    Loads a class from the location specified by the
    `java.rmi.server.codebase` property.

    Parameters:
    :   `name` - the name of the class to load

    Returns:
    :   the `Class` object representing the loaded class

    Throws:
    :   `MalformedURLException` - if the system property **java.rmi.server.codebase**
        contains an invalid URL
    :   `ClassNotFoundException` - if a definition for the class could not
        be found at the codebase location.

    Since:
    :   1.1
  + ### loadClass

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<?> loadClass([URL](../../../../java.base/java/net/URL.md "class in java.net") codebase,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [MalformedURLException](../../../../java.base/java/net/MalformedURLException.md "class in java.net"),
    [ClassNotFoundException](../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang")

    Deprecated.

    no replacement

    Loads a class from a URL.

    Parameters:
    :   `codebase` - the URL from which to load the class
    :   `name` - the name of the class to load

    Returns:
    :   the `Class` object representing the loaded class

    Throws:
    :   `MalformedURLException` - if the `codebase` parameter
        contains an invalid URL
    :   `ClassNotFoundException` - if a definition for the class could not
        be found at the specified URL

    Since:
    :   1.1
  + ### getSecurityContext

    [@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getSecurityContext([ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang") loader)

    Deprecated.

    no replacement

    Returns the security context of the given class loader.

    Parameters:
    :   `loader` - a class loader from which to get the security context

    Returns:
    :   the security context

    Since:
    :   1.1