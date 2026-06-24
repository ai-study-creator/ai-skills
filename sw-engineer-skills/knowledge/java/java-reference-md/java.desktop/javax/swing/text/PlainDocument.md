Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class PlainDocument

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.AbstractDocument](AbstractDocument.md "class in javax.swing.text")

javax.swing.text.PlainDocument

All Implemented Interfaces:
:   `Serializable`, `Document`

---

public class PlainDocument
extends [AbstractDocument](AbstractDocument.md "class in javax.swing.text")

A plain document that maintains no character attributes. The
default element structure for this document is a map of the lines in
the text. The Element returned by getDefaultRootElement is
a map of the lines, and each child element represents a line.
This model does not maintain any character level attributes,
but each line can be tagged with an arbitrary set of attributes.
Line to offset, and offset to line translations can be quickly
performed using the default root element. The structure information
of the DocumentEvent's fired by edits will indicate the line
structure changes.

The default content storage management is performed by a
gapped buffer implementation (GapContent). It supports
editing reasonably large documents with good efficiency when
the edits are contiguous or clustered, as is typical.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

See Also:
:   * [`Document`](Document.md "interface in javax.swing.text")
    * [`AbstractDocument`](AbstractDocument.md "class in javax.swing.text")

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class javax.swing.text.[AbstractDocument](AbstractDocument.md "class in javax.swing.text")

  `AbstractDocument.AbstractElement, AbstractDocument.AttributeContext, AbstractDocument.BranchElement, AbstractDocument.Content, AbstractDocument.DefaultDocumentEvent, AbstractDocument.ElementEdit, AbstractDocument.LeafElement`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `lineLimitAttribute`

  Name of the attribute that specifies the maximum
  length of a line, if there is a maximum length.

  `static final String`

  `tabSizeAttribute`

  Name of the attribute that specifies the tab
  size for tabs contained in the content.

  ### Fields inherited from class javax.swing.text.[AbstractDocument](AbstractDocument.md "class in javax.swing.text")

  `BAD_LOCATION, BidiElementName, ContentElementName, ElementNameAttribute, listenerList, ParagraphElementName, SectionElementName`

  ### Fields inherited from interface javax.swing.text.[Document](Document.md "interface in javax.swing.text")

  `StreamDescriptionProperty, TitleProperty`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PlainDocument()`

  Constructs a plain text document.

  `PlainDocument(AbstractDocument.Content c)`

  Constructs a plain text document.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected AbstractDocument.AbstractElement`

  `createDefaultRoot()`

  Creates the root element to be used to represent the
  default document structure.

  `Element`

  `getDefaultRootElement()`

  Gets the default root element for the document model.

  `Element`

  `getParagraphElement(int pos)`

  Get the paragraph element containing the given position.

  `void`

  `insertString(int offs,
  String str,
  AttributeSet a)`

  Inserts some content into the document.

  `protected void`

  `insertUpdate(AbstractDocument.DefaultDocumentEvent chng,
  AttributeSet attr)`

  Updates document structure as a result of text insertion.

  `protected void`

  `removeUpdate(AbstractDocument.DefaultDocumentEvent chng)`

  Updates any document structure as a result of text removal.

  ### Methods inherited from class javax.swing.text.[AbstractDocument](AbstractDocument.md "class in javax.swing.text")

  `addDocumentListener, addUndoableEditListener, createBranchElement, createLeafElement, createPosition, dump, fireChangedUpdate, fireInsertUpdate, fireRemoveUpdate, fireUndoableEditUpdate, getAsynchronousLoadPriority, getAttributeContext, getBidiRootElement, getContent, getCurrentWriter, getDocumentFilter, getDocumentListeners, getDocumentProperties, getEndPosition, getLength, getListeners, getProperty, getRootElements, getStartPosition, getText, getText, getUndoableEditListeners, postRemoveUpdate, putProperty, readLock, readUnlock, remove, removeDocumentListener, removeUndoableEditListener, render, replace, setAsynchronousLoadPriority, setDocumentFilter, setDocumentProperties, writeLock, writeUnlock`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### tabSizeAttribute

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") tabSizeAttribute

    Name of the attribute that specifies the tab
    size for tabs contained in the content. The
    type for the value is Integer.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.PlainDocument.tabSizeAttribute)
  + ### lineLimitAttribute

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") lineLimitAttribute

    Name of the attribute that specifies the maximum
    length of a line, if there is a maximum length.
    The type for the value is Integer.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.PlainDocument.lineLimitAttribute)
* ## Constructor Details

  + ### PlainDocument

    public PlainDocument()

    Constructs a plain text document. A default model using
    `GapContent` is constructed and set.
  + ### PlainDocument

    public PlainDocument([AbstractDocument.Content](AbstractDocument.Content.md "interface in javax.swing.text") c)

    Constructs a plain text document. A default root element is created,
    and the tab size set to 8.

    Parameters:
    :   `c` - the container for the content
* ## Method Details

  + ### insertString

    public void insertString(int offs,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") str,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") a)
    throws [BadLocationException](BadLocationException.md "class in javax.swing.text")

    Inserts some content into the document.
    Inserting content causes a write lock to be held while the
    actual changes are taking place, followed by notification
    to the observers on the thread that grabbed the write lock.

    This method is thread safe, although most Swing methods
    are not. Please see
    [Concurrency
    in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html) for more information.

    Specified by:
    :   `insertString` in interface `Document`

    Overrides:
    :   `insertString` in class `AbstractDocument`

    Parameters:
    :   `offs` - the starting offset >= 0
    :   `str` - the string to insert; does nothing with null/empty strings
    :   `a` - the attributes for the inserted content

    Throws:
    :   `BadLocationException` - the given insert position is not a valid
        position within the document

    See Also:
    :   - [`Document.insertString(int, java.lang.String, javax.swing.text.AttributeSet)`](Document.md#insertString(int,java.lang.String,javax.swing.text.AttributeSet))
  + ### getDefaultRootElement

    public [Element](Element.md "interface in javax.swing.text") getDefaultRootElement()

    Gets the default root element for the document model.

    Specified by:
    :   `getDefaultRootElement` in interface `Document`

    Specified by:
    :   `getDefaultRootElement` in class `AbstractDocument`

    Returns:
    :   the root

    See Also:
    :   - [`Document.getDefaultRootElement()`](Document.md#getDefaultRootElement())
  + ### createDefaultRoot

    protected [AbstractDocument.AbstractElement](AbstractDocument.AbstractElement.md "class in javax.swing.text") createDefaultRoot()

    Creates the root element to be used to represent the
    default document structure.

    Returns:
    :   the element base
  + ### getParagraphElement

    public [Element](Element.md "interface in javax.swing.text") getParagraphElement(int pos)

    Get the paragraph element containing the given position. Since this
    document only models lines, it returns the line instead.

    Specified by:
    :   `getParagraphElement` in class `AbstractDocument`

    Parameters:
    :   `pos` - the starting offset >= 0

    Returns:
    :   the element
  + ### insertUpdate

    protected void insertUpdate([AbstractDocument.DefaultDocumentEvent](AbstractDocument.DefaultDocumentEvent.md "class in javax.swing.text") chng,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Updates document structure as a result of text insertion. This
    will happen within a write lock. Since this document simply
    maps out lines, we refresh the line map.

    Overrides:
    :   `insertUpdate` in class `AbstractDocument`

    Parameters:
    :   `chng` - the change event describing the dit
    :   `attr` - the set of attributes for the inserted text
  + ### removeUpdate

    protected void removeUpdate([AbstractDocument.DefaultDocumentEvent](AbstractDocument.DefaultDocumentEvent.md "class in javax.swing.text") chng)

    Updates any document structure as a result of text removal.
    This will happen within a write lock. Since the structure
    represents a line map, this just checks to see if the
    removal spans lines. If it does, the two lines outside
    of the removal area are joined together.

    Overrides:
    :   `removeUpdate` in class `AbstractDocument`

    Parameters:
    :   `chng` - the change event describing the edit