Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.ext](package-summary.md)

# Class Locator2Impl

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[org.xml.sax.helpers.LocatorImpl](../helpers/LocatorImpl.md "class in org.xml.sax.helpers")

org.xml.sax.ext.Locator2Impl

All Implemented Interfaces:
:   `Locator2`, `Locator`

---

public class Locator2Impl
extends [LocatorImpl](../helpers/LocatorImpl.md "class in org.xml.sax.helpers")
implements [Locator2](Locator2.md "interface in org.xml.sax.ext")

SAX2 extension helper for holding additional Entity information,
implementing the [`Locator2`](Locator2.md "interface in org.xml.sax.ext") interface.

This is not part of core-only SAX2 distributions.

Since:
:   1.5, SAX 2.0.2

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Locator2Impl()`

  Construct a new, empty Locator2Impl object.

  `Locator2Impl(Locator locator)`

  Copy an existing Locator or Locator2 object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getEncoding()`

  Returns the current value of the encoding property.

  `String`

  `getXMLVersion()`

  Returns the current value of the version property.

  `void`

  `setEncoding(String encoding)`

  Assigns the current value of the encoding property.

  `void`

  `setXMLVersion(String version)`

  Assigns the current value of the version property.

  ### Methods inherited from class org.xml.sax.helpers.[LocatorImpl](../helpers/LocatorImpl.md "class in org.xml.sax.helpers")

  `getColumnNumber, getLineNumber, getPublicId, getSystemId, setColumnNumber, setLineNumber, setPublicId, setSystemId`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface org.xml.sax.[Locator](../Locator.md "interface in org.xml.sax")

  `getColumnNumber, getLineNumber, getPublicId, getSystemId`

* ## Constructor Details

  + ### Locator2Impl

    public Locator2Impl()

    Construct a new, empty Locator2Impl object.
    This will not normally be useful, since the main purpose
    of this class is to make a snapshot of an existing Locator.
  + ### Locator2Impl

    public Locator2Impl([Locator](../Locator.md "interface in org.xml.sax") locator)

    Copy an existing Locator or Locator2 object.
    If the object implements Locator2, values of the
    *encoding* and *version*strings are copied,
    otherwise they set to *null*.

    Parameters:
    :   `locator` - The existing Locator object.
* ## Method Details

  + ### getXMLVersion

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getXMLVersion()

    Returns the current value of the version property.

    Specified by:
    :   `getXMLVersion` in interface `Locator2`

    Returns:
    :   Identifier for the XML version being used to interpret
        the entity's text, or null if that information is not yet
        available in the current parsing state.

    See Also:
    :   - [`setXMLVersion(java.lang.String)`](#setXMLVersion(java.lang.String))
  + ### getEncoding

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getEncoding()

    Returns the current value of the encoding property.

    Specified by:
    :   `getEncoding` in interface `Locator2`

    Returns:
    :   Name of the character encoding being used to interpret
        \* the entity's text, or null if this was not provided for a \*
        character stream passed through an InputSource or is otherwise
        not yet available in the current parsing state.

    See Also:
    :   - [`setEncoding(java.lang.String)`](#setEncoding(java.lang.String))
  + ### setXMLVersion

    public void setXMLVersion([String](../../../../../java.base/java/lang/String.md "class in java.lang") version)

    Assigns the current value of the version property.

    Parameters:
    :   `version` - the new "version" value

    See Also:
    :   - [`getXMLVersion()`](#getXMLVersion())
  + ### setEncoding

    public void setEncoding([String](../../../../../java.base/java/lang/String.md "class in java.lang") encoding)

    Assigns the current value of the encoding property.

    Parameters:
    :   `encoding` - the new "encoding" value

    See Also:
    :   - [`getEncoding()`](#getEncoding())