Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLEditorKit.Parser

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.HTMLEditorKit.Parser

Direct Known Subclasses:
:   `ParserDelegator`

Enclosing class:
:   `HTMLEditorKit`

---

public abstract static class HTMLEditorKit.Parser
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

Interface to be supported by the parser. This enables
providing a different parser while reusing some of the
implementation provided by this editor kit.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Parser()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract void`

  `parse(Reader r,
  HTMLEditorKit.ParserCallback cb,
  boolean ignoreCharSet)`

  Parse the given stream and drive the given callback
  with the results of the parse.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Parser

    protected Parser()

    Constructor for subclasses to call.
* ## Method Details

  + ### parse

    public abstract void parse([Reader](../../../../../java.base/java/io/Reader.md "class in java.io") r,
    [HTMLEditorKit.ParserCallback](HTMLEditorKit.ParserCallback.md "class in javax.swing.text.html") cb,
    boolean ignoreCharSet)
    throws [IOException](../../../../../java.base/java/io/IOException.md "class in java.io")

    Parse the given stream and drive the given callback
    with the results of the parse. This method should
    be implemented to be thread-safe.

    Parameters:
    :   `r` - a reader
    :   `cb` - a parser callback
    :   `ignoreCharSet` - if `true` charset is ignoring

    Throws:
    :   `IOException` - if an I/O exception occurs