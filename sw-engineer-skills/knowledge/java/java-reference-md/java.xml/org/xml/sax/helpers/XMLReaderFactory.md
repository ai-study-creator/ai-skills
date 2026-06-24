Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.helpers](package-summary.md)

# Class XMLReaderFactory

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

org.xml.sax.helpers.XMLReaderFactory

---

[@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
public final class XMLReaderFactory
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Deprecated.

It is recommended to use [`SAXParserFactory`](../../../../javax/xml/parsers/SAXParserFactory.md "class in javax.xml.parsers")
instead.

Factory for creating an XML reader.

This class contains static methods for creating an XML reader
from an explicit class name, or based on runtime defaults:

```
 try {
   XMLReader myReader = XMLReaderFactory.createXMLReader();
 } catch (SAXException e) {
   System.err.println(e.getMessage());
 }
```

**Note to Distributions bundled with parsers:**
You should modify the implementation of the no-arguments
*createXMLReader* to handle cases where the external
configuration mechanisms aren't set up. That method should do its
best to return a parser when one is in the class path, even when
nothing bound its class name to `org.xml.sax.driver` so
those configuration mechanisms would see it.

Since:
:   1.4, SAX 2.0

* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static XMLReader`

  `createXMLReader()`

  Deprecated.

  Obtains a new instance of a [`XMLReader`](../XMLReader.md "interface in org.xml.sax").

  `static XMLReader`

  `createXMLReader(String className)`

  Deprecated.

  Attempt to create an XML reader from a class name.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### createXMLReader

    public static [XMLReader](../XMLReader.md "interface in org.xml.sax") createXMLReader()
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Deprecated.

    Obtains a new instance of a [`XMLReader`](../XMLReader.md "interface in org.xml.sax").
    This method uses the following ordered lookup procedure to find and load
    the [`XMLReader`](../XMLReader.md "interface in org.xml.sax") implementation class:
    1. If the system property `org.xml.sax.driver`
       has a value, that is used as an XMLReader class name.
    2. Use the service-provider loading facility, defined by the
       [`ServiceLoader`](../../../../../java.base/java/util/ServiceLoader.md "class in java.util") class, to attempt to locate and load an
       implementation of the service [`XMLReader`](../XMLReader.md "interface in org.xml.sax") by using the
       [current thread's context class loader](../../../../../java.base/java/lang/Thread.md#getContextClassLoader()).
       If the context class loader is null, the
       [system class loader](../../../../../java.base/java/lang/ClassLoader.md#getSystemClassLoader()) will
       be used.
    3. Deprecated. Look for a class name in the `META-INF/services/org.xml.sax.driver`
       file in a jar file available to the runtime.
    4. Otherwise, the system-default implementation is returned.

    Returns:
    :   a new XMLReader.

    Throws:
    :   `SAXException` - If no default XMLReader class
        can be identified and instantiated.

    See Also:
    :   - [`createXMLReader(java.lang.String)`](#createXMLReader(java.lang.String))
  + ### createXMLReader

    public static [XMLReader](../XMLReader.md "interface in org.xml.sax") createXMLReader([String](../../../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [SAXException](../SAXException.md "class in org.xml.sax")

    Deprecated.

    Attempt to create an XML reader from a class name.

    Given a class name, this method attempts to load
    and instantiate the class as an XML reader.

    Note that this method will not be usable in environments where
    the caller (perhaps an applet) is not permitted to load classes
    dynamically.

    Parameters:
    :   `className` - a class name

    Returns:
    :   A new XML reader.

    Throws:
    :   `SAXException` - If the class cannot be
        loaded, instantiated, and cast to XMLReader.

    See Also:
    :   - [`createXMLReader()`](#createXMLReader())