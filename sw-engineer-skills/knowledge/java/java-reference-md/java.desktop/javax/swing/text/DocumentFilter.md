Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DocumentFilter

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.DocumentFilter

---

public class DocumentFilter
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

`DocumentFilter`, as the name implies, is a filter for the
`Document` mutation methods. When a `Document`
containing a `DocumentFilter` is modified (either through
`insert` or `remove`), it forwards the appropriate
method invocation to the `DocumentFilter`. The
default implementation allows the modification to
occur. Subclasses can filter the modifications by conditionally invoking
methods on the superclass, or invoking the necessary methods on
the passed in `FilterBypass`. Subclasses should NOT call back
into the Document for the modification
instead call into the superclass or the `FilterBypass`.

When `remove` or `insertString` is invoked
on the `DocumentFilter`, the `DocumentFilter`
may callback into the
`FilterBypass` multiple times, or for different regions, but
it should not callback into the `FilterBypass` after returning
from the `remove` or `insertString` method.

By default, text related document mutation methods such as
`insertString`, `replace` and `remove`
in `AbstractDocument` use `DocumentFilter` when
available, and `Element` related mutation methods such as
`create`, `insert` and `removeElement` in
`DefaultStyledDocument` do not use `DocumentFilter`.
If a method doesn't follow these defaults, this must be explicitly stated
in the method documentation.

Since:
:   1.4

See Also:
:   * [`Document`](Document.md "interface in javax.swing.text")
    * [`AbstractDocument`](AbstractDocument.md "class in javax.swing.text")
    * [`DefaultStyledDocument`](DefaultStyledDocument.md "class in javax.swing.text")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `DocumentFilter.FilterBypass`

  Used as a way to circumvent calling back into the Document to
  change it.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `DocumentFilter()`

  Constructs a `DocumentFilter`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `insertString(DocumentFilter.FilterBypass fb,
  int offset,
  String string,
  AttributeSet attr)`

  Invoked prior to insertion of text into the
  specified Document.

  `void`

  `remove(DocumentFilter.FilterBypass fb,
  int offset,
  int length)`

  Invoked prior to removal of the specified region in the
  specified Document.

  `void`

  `replace(DocumentFilter.FilterBypass fb,
  int offset,
  int length,
  String text,
  AttributeSet attrs)`

  Invoked prior to replacing a region of text in the
  specified Document.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### DocumentFilter

    public DocumentFilter()

    Constructs a `DocumentFilter`.
* ## Method Details

  + ### remove

    public void remove([DocumentFilter.FilterBypass](DocumentFilter.FilterBypass.md "class in javax.swing.text") fb,
    int offset,
    int length)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Invoked prior to removal of the specified region in the
    specified Document. Subclasses that want to conditionally allow
    removal should override this and only call supers implementation as
    necessary, or call directly into the `FilterBypass` as
    necessary.

    Parameters:
    :   `fb` - FilterBypass that can be used to mutate Document
    :   `offset` - the offset from the beginning >= 0
    :   `length` - the number of characters to remove >= 0

    Throws:
    :   `BadLocationException` - some portion of the removal range
        was not a valid part of the document. The location in the exception
        is the first bad position encountered.
  + ### insertString

    public void insertString([DocumentFilter.FilterBypass](DocumentFilter.FilterBypass.md "class in javax.swing.text") fb,
    int offset,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") string,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Invoked prior to insertion of text into the
    specified Document. Subclasses that want to conditionally allow
    insertion should override this and only call supers implementation as
    necessary, or call directly into the FilterBypass.

    Parameters:
    :   `fb` - FilterBypass that can be used to mutate Document
    :   `offset` - the offset into the document to insert the content >= 0.
        All positions that track change at or after the given location
        will move.
    :   `string` - the string to insert
    :   `attr` - the attributes to associate with the inserted
        content. This may be null if there are no attributes.

    Throws:
    :   `BadLocationException` - the given insert position is not a
        valid position within the document
  + ### replace

    public void replace([DocumentFilter.FilterBypass](DocumentFilter.FilterBypass.md "class in javax.swing.text") fb,
    int offset,
    int length,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") text,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attrs)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Invoked prior to replacing a region of text in the
    specified Document. Subclasses that want to conditionally allow
    replace should override this and only call supers implementation as
    necessary, or call directly into the FilterBypass.

    Parameters:
    :   `fb` - FilterBypass that can be used to mutate Document
    :   `offset` - Location in Document
    :   `length` - Length of text to delete
    :   `text` - Text to insert, null indicates no text to insert
    :   `attrs` - AttributeSet indicating attributes of inserted text,
        null is legal.

    Throws:
    :   `BadLocationException` - the given insert position is not a
        valid position within the document