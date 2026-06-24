Module [java.management](../../../module-summary.md)

Package [javax.management.modelmbean](package-summary.md)

# Class XMLParseException

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

javax.management.modelmbean.XMLParseException

All Implemented Interfaces:
:   `Serializable`

---

public class XMLParseException
extends [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

This exception is thrown when an XML formatted string is being parsed into ModelMBean objects
or when XML formatted strings are being created from ModelMBean objects.
It is also used to wrapper exceptions from XML parsers that may be used.

The **serialVersionUID** of this class is `3176664577895105181L`.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.management.modelmbean.XMLParseException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `XMLParseException()`

  Default constructor .

  `XMLParseException(Exception e,
  String s)`

  Constructor taking a string and an exception.

  `XMLParseException(String s)`

  Constructor taking a string.
* ## Method Summary

  ### Methods inherited from class java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### XMLParseException

    public XMLParseException()

    Default constructor .
  + ### XMLParseException

    public XMLParseException([String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructor taking a string.

    Parameters:
    :   `s` - the detail message.
  + ### XMLParseException

    public XMLParseException([Exception](../../../../java.base/java/lang/Exception.md "class in java.lang") e,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") s)

    Constructor taking a string and an exception.

    Parameters:
    :   `e` - the nested exception.
    :   `s` - the detail message.