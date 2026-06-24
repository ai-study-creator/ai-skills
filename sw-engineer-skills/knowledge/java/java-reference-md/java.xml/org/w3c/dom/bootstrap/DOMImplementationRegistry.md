Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.bootstrap](package-summary.md)

# Class DOMImplementationRegistry

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

org.w3c.dom.bootstrap.DOMImplementationRegistry

---

public final class DOMImplementationRegistry
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

A factory that enables applications to obtain instances of
`DOMImplementation`.

Example:

```
  // get an instance of the DOMImplementation registry
  DOMImplementationRegistry registry =
       DOMImplementationRegistry.newInstance();
  // get a DOM implementation the Level 3 XML module
  DOMImplementation domImpl =
       registry.getDOMImplementation("XML 3.0");
```

This provides an application with an implementation-independent starting
point. DOM implementations may modify this class to meet new security
standards or to provide \*additional\* fallbacks for the list of
DOMImplementationSources.

Since:
:   1.5, DOM Level 3

See Also:
:   * [`DOMImplementation`](../DOMImplementation.md "interface in org.w3c.dom")
    * [`DOMImplementationSource`](../DOMImplementationSource.md "interface in org.w3c.dom")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `PROPERTY`

  The system property to specify the
  DOMImplementationSource class names.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addSource(DOMImplementationSource s)`

  Register an implementation.

  `DOMImplementation`

  `getDOMImplementation(String features)`

  Return the first implementation that has the desired
  features, or `null` if none is found.

  `DOMImplementationList`

  `getDOMImplementationList(String features)`

  Return a list of implementations that support the
  desired features.

  `static DOMImplementationRegistry`

  `newInstance()`

  Obtain a new instance of a `DOMImplementationRegistry`.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### PROPERTY

    public static final [String](../../../../../java.base/java/lang/String.md "class in java.lang") PROPERTY

    The system property to specify the
    DOMImplementationSource class names.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.bootstrap.DOMImplementationRegistry.PROPERTY)
* ## Method Details

  + ### newInstance

    public static [DOMImplementationRegistry](DOMImplementationRegistry.md "class in org.w3c.dom.bootstrap") newInstance()
    throws [ClassNotFoundException](../../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"),
    [InstantiationException](../../../../../java.base/java/lang/InstantiationException.md "class in java.lang"),
    [IllegalAccessException](../../../../../java.base/java/lang/IllegalAccessException.md "class in java.lang"),
    [ClassCastException](../../../../../java.base/java/lang/ClassCastException.md "class in java.lang")

    Obtain a new instance of a `DOMImplementationRegistry`.
    The `DOMImplementationRegistry` is initialized by the
    application or the implementation, depending on the context, by
    first checking the value of the Java system property
    `org.w3c.dom.DOMImplementationSourceList` and
    the service provider whose contents are at
    "`META_INF/services/org.w3c.dom.DOMImplementationSourceList`".
    The value of this property is a white-space separated list of
    names of availables classes implementing the
    `DOMImplementationSource` interface. Each class listed
    in the class name list is instantiated and any exceptions
    encountered are thrown to the application.

    Returns:
    :   an initialized instance of DOMImplementationRegistry

    Throws:
    :   `ClassNotFoundException` - If any specified class can not be found
    :   `InstantiationException` - If any specified class is an interface or abstract class
    :   `IllegalAccessException` - If the default constructor of a specified class is not accessible
    :   `ClassCastException` - If any specified class does not implement
        `DOMImplementationSource`
  + ### getDOMImplementation

    public [DOMImplementation](../DOMImplementation.md "interface in org.w3c.dom") getDOMImplementation([String](../../../../../java.base/java/lang/String.md "class in java.lang") features)

    Return the first implementation that has the desired
    features, or `null` if none is found.

    Parameters:
    :   `features` - A string that specifies which features are required. This is
        a space separated list in which each feature is specified by
        its name optionally followed by a space and a version number.
        This is something like: "XML 1.0 Traversal +Events 2.0"

    Returns:
    :   An implementation that has the desired features,
        or `null` if none found.
  + ### getDOMImplementationList

    public [DOMImplementationList](../DOMImplementationList.md "interface in org.w3c.dom") getDOMImplementationList([String](../../../../../java.base/java/lang/String.md "class in java.lang") features)

    Return a list of implementations that support the
    desired features.

    Parameters:
    :   `features` - A string that specifies which features are required. This is
        a space separated list in which each feature is specified by
        its name optionally followed by a space and a version number.
        This is something like: "XML 1.0 Traversal +Events 2.0"

    Returns:
    :   A list of DOMImplementations that support the desired features.
  + ### addSource

    public void addSource([DOMImplementationSource](../DOMImplementationSource.md "interface in org.w3c.dom") s)

    Register an implementation.

    Parameters:
    :   `s` - The source to be registered, may not be `null`