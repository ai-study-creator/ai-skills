Module [java.desktop](../../../../../module-summary.md)

Package [javax.swing.text.html.parser](package-summary.md)

# Class ParserDelegator

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.html.HTMLEditorKit.Parser](../HTMLEditorKit.Parser.md "class in javax.swing.text.html")

javax.swing.text.html.parser.ParserDelegator

All Implemented Interfaces:
:   `Serializable`

---

public class ParserDelegator
extends [HTMLEditorKit.Parser](../HTMLEditorKit.Parser.md "class in javax.swing.text.html")
implements [Serializable](../../../../../../java.base/java/io/Serializable.md "interface in java.io")

Responsible for starting up a new DocumentParser
each time its parse method is invoked. Stores a
reference to the dtd.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans has been added to the `java.beans` package.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ParserDelegator()`

  Creates `ParserDelegator` with default DTD.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected static DTD`

  `createDTD(DTD dtd,
  String name)`

  Recreates a DTD from an archived format with the specified `name`.

  `void`

  `parse(Reader r,
  HTMLEditorKit.ParserCallback cb,
  boolean ignoreCharSet)`

  Parse the given stream and drive the given callback
  with the results of the parse.

  `protected static void`

  `setDefaultDTD()`

  Sets the default DTD.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ParserDelegator

    public ParserDelegator()

    Creates `ParserDelegator` with default DTD.
* ## Method Details

  + ### setDefaultDTD

    protected static void setDefaultDTD()

    Sets the default DTD.
  + ### createDTD

    protected static [DTD](DTD.md "class in javax.swing.text.html.parser") createDTD([DTD](DTD.md "class in javax.swing.text.html.parser") dtd,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Recreates a DTD from an archived format with the specified `name`.

    Parameters:
    :   `dtd` - a DTD
    :   `name` - the name of the resource, relative to the ParserDelegator class.

    Returns:
    :   the DTD with the specified `name`.
  + ### parse

    public void parse([Reader](../../../../../../java.base/java/io/Reader.md "class in java.io") r,
    [HTMLEditorKit.ParserCallback](../HTMLEditorKit.ParserCallback.md "class in javax.swing.text.html") cb,
    boolean ignoreCharSet)
    throws [IOException](../../../../../../java.base/java/io/IOException.md "class in java.io")

    Description copied from class: `HTMLEditorKit.Parser`

    Parse the given stream and drive the given callback
    with the results of the parse. This method should
    be implemented to be thread-safe.

    Specified by:
    :   `parse` in class `HTMLEditorKit.Parser`

    Parameters:
    :   `r` - a reader
    :   `cb` - a parser callback
    :   `ignoreCharSet` - if `true` charset is ignoring

    Throws:
    :   `IOException` - if an I/O exception occurs