Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.helpers](package-summary.md)

# Class ParserFactory

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

org.xml.sax.helpers.ParserFactory

---

[@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="1.5")
public class ParserFactory
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Deprecated.

This class works with the deprecated
[`Parser`](../Parser.md "interface in org.xml.sax")
interface.

Java-specific class for dynamically loading SAX parsers.

**Note:** This class is designed to work with the now-deprecated
SAX1 [`Parser`](../Parser.md "interface in org.xml.sax") class. SAX2 applications should use
[`XMLReaderFactory`](XMLReaderFactory.md "class in org.xml.sax.helpers") instead.

ParserFactory is not part of the platform-independent definition
of SAX; it is an additional convenience class designed
specifically for Java XML application writers. SAX applications
can use the static methods in this class to allocate a SAX parser
dynamically at run-time based either on the value of the
`org.xml.sax.parser' system property or on a string containing the class
name.

Note that the application still requires an XML parser that
implements SAX1.

Since:
:   1.4, SAX 1.0

* ## Method Summary

  All MethodsStatic MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `static Parser`

  `makeParser()`

  Deprecated.

  Create a new SAX parser using the `org.xml.sax.parser' system property.

  `static Parser`

  `makeParser(String className)`

  Deprecated.

  Create a new SAX parser object using the class name provided.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### makeParser

    public static [Parser](../Parser.md "interface in org.xml.sax") makeParser()
    throws [ClassNotFoundException](../../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"),
    [IllegalAccessException](../../../../../java.base/java/lang/IllegalAccessException.md "class in java.lang"),
    [InstantiationException](../../../../../java.base/java/lang/InstantiationException.md "class in java.lang"),
    [NullPointerException](../../../../../java.base/java/lang/NullPointerException.md "class in java.lang"),
    [ClassCastException](../../../../../java.base/java/lang/ClassCastException.md "class in java.lang")

    Deprecated.

    Create a new SAX parser using the `org.xml.sax.parser' system property.

    The named class must exist and must implement the
    [`Parser`](../Parser.md "interface in org.xml.sax") interface.

    Returns:
    :   a new SAX parser

    Throws:
    :   `NullPointerException` - There is no value
        for the `org.xml.sax.parser' system property.
    :   `ClassNotFoundException` - The SAX parser
        class was not found (check your CLASSPATH).
    :   `IllegalAccessException` - The SAX parser class was
        found, but you do not have permission to load
        it.
    :   `InstantiationException` - The SAX parser class was
        found but could not be instantiated.
    :   `ClassCastException` - The SAX parser class
        was found and instantiated, but does not implement
        org.xml.sax.Parser.

    See Also:
    :   - [`makeParser(java.lang.String)`](#makeParser(java.lang.String))
        - [`Parser`](../Parser.md "interface in org.xml.sax")
  + ### makeParser

    public static [Parser](../Parser.md "interface in org.xml.sax") makeParser([String](../../../../../java.base/java/lang/String.md "class in java.lang") className)
    throws [ClassNotFoundException](../../../../../java.base/java/lang/ClassNotFoundException.md "class in java.lang"),
    [IllegalAccessException](../../../../../java.base/java/lang/IllegalAccessException.md "class in java.lang"),
    [InstantiationException](../../../../../java.base/java/lang/InstantiationException.md "class in java.lang"),
    [ClassCastException](../../../../../java.base/java/lang/ClassCastException.md "class in java.lang")

    Deprecated.

    Create a new SAX parser object using the class name provided.

    The named class must exist and must implement the
    [`Parser`](../Parser.md "interface in org.xml.sax") interface.

    Parameters:
    :   `className` - A string containing the name of the
        SAX parser class.

    Returns:
    :   a new SAX parser

    Throws:
    :   `ClassNotFoundException` - The SAX parser
        class was not found (check your CLASSPATH).
    :   `IllegalAccessException` - The SAX parser class was
        found, but you do not have permission to load
        it.
    :   `InstantiationException` - The SAX parser class was
        found but could not be instantiated.
    :   `ClassCastException` - The SAX parser class
        was found and instantiated, but does not implement
        org.xml.sax.Parser.

    See Also:
    :   - [`makeParser()`](#makeParser())
        - [`Parser`](../Parser.md "interface in org.xml.sax")