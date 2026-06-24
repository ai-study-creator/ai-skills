Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface DOMImplementationSource

---

public interface DOMImplementationSource

This interface permits a DOM implementer to supply one or more
implementations, based upon requested features and versions, as specified
in [DOM
Features](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407/core.html#DOMFeatures). Each implemented `DOMImplementationSource` object is
listed in the binding-specific list of available sources so that its
`DOMImplementation` objects are made available.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

Since:
:   1.5, DOM Level 3

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `DOMImplementation`

  `getDOMImplementation(String features)`

  A method to request the first DOM implementation that supports the
  specified features.

  `DOMImplementationList`

  `getDOMImplementationList(String features)`

  A method to request a list of DOM implementations that support the
  specified features and versions, as specified in .

* ## Method Details

  + ### getDOMImplementation

    [DOMImplementation](DOMImplementation.md "interface in org.w3c.dom") getDOMImplementation([String](../../../../java.base/java/lang/String.md "class in java.lang") features)

    A method to request the first DOM implementation that supports the
    specified features.

    Parameters:
    :   `features` - A string that specifies which features and versions
        are required. This is a space separated list in which each feature
        is specified by its name optionally followed by a space and a
        version number. This method returns the first item of the list
        returned by `getDOMImplementationList`. As an example,
        the string `"XML 3.0 Traversal +Events 2.0"` will
        request a DOM implementation that supports the module "XML" for its
        3.0 version, a module that support of the "Traversal" module for
        any version, and the module "Events" for its 2.0 version. The
        module "Events" must be accessible using the method
        `Node.getFeature()` and
        `DOMImplementation.getFeature()`.

    Returns:
    :   The first DOM implementation that support the desired
        features, or `null` if this source has none.
  + ### getDOMImplementationList

    [DOMImplementationList](DOMImplementationList.md "interface in org.w3c.dom") getDOMImplementationList([String](../../../../java.base/java/lang/String.md "class in java.lang") features)

    A method to request a list of DOM implementations that support the
    specified features and versions, as specified in .

    Parameters:
    :   `features` - A string that specifies which features and versions
        are required. This is a space separated list in which each feature
        is specified by its name optionally followed by a space and a
        version number. This is something like: "XML 3.0 Traversal +Events
        2.0"

    Returns:
    :   A list of DOM implementations that support the desired
        features.