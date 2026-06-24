Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DocumentFilter.FilterBypass

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.DocumentFilter.FilterBypass

Enclosing class:
:   `DocumentFilter`

---

public abstract static class DocumentFilter.FilterBypass
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Used as a way to circumvent calling back into the Document to
change it. Document implementations that wish to support
a DocumentFilter must provide an implementation that will
not callback into the DocumentFilter when the following methods
are invoked from the DocumentFilter.

Since:
:   1.4

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `FilterBypass()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract Document`

  `getDocument()`

  Returns the Document the mutation is occurring on.

  `abstract void`

  `insertString(int offset,
  String string,
  AttributeSet attr)`

  Inserts the specified text, bypassing the
  DocumentFilter.

  `abstract void`

  `remove(int offset,
  int length)`

  Removes the specified region of text, bypassing the
  DocumentFilter.

  `abstract void`

  `replace(int offset,
  int length,
  String string,
  AttributeSet attrs)`

  Deletes the region of text from `offset` to
  `offset + length`, and replaces it with
  `text`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### FilterBypass

    protected FilterBypass()

    Constructor for subclasses to call.
* ## Method Details

  + ### getDocument

    public abstract [Document](Document.md "interface in javax.swing.text") getDocument()

    Returns the Document the mutation is occurring on.

    Returns:
    :   Document that remove/insertString will operate on
  + ### remove

    public abstract void remove(int offset,
    int length)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Removes the specified region of text, bypassing the
    DocumentFilter.

    Parameters:
    :   `offset` - the offset from the beginning >= 0
    :   `length` - the number of characters to remove >= 0

    Throws:
    :   `BadLocationException` - some portion of the removal range
        was not a valid part of the document. The location in the
        exception is the first bad position encountered.
  + ### insertString

    public abstract void insertString(int offset,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") string,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Inserts the specified text, bypassing the
    DocumentFilter.

    Parameters:
    :   `offset` - the offset into the document to insert the
        content >= 0. All positions that track change at or after the
        given location will move.
    :   `string` - the string to insert
    :   `attr` - the attributes to associate with the inserted
        content. This may be null if there are no attributes.

    Throws:
    :   `BadLocationException` - the given insert position is not a
        valid position within the document
  + ### replace

    public abstract void replace(int offset,
    int length,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") string,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attrs)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Deletes the region of text from `offset` to
    `offset + length`, and replaces it with
    `text`.

    Parameters:
    :   `offset` - Location in Document
    :   `length` - Length of text to delete
    :   `string` - Text to insert, null indicates no text to insert
    :   `attrs` - AttributeSet indicating attributes of inserted text,
        null is legal.

    Throws:
    :   `BadLocationException` - the given insert is not a
        valid position within the document