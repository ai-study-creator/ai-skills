Module [java.desktop](../../../module-summary.md)

Package [javax.swing.event](package-summary.md)

# Interface DocumentEvent

All Known Implementing Classes:
:   `AbstractDocument.DefaultDocumentEvent`

---

public interface DocumentEvent

Interface for document change notifications. This provides
detailed information to Document observers about how the
Document changed. It provides high level information such
as type of change and where it occurred, as well as the more
detailed structural changes (What Elements were inserted and
removed).

See Also:
:   * [`Document`](../text/Document.md "interface in javax.swing.text")
    * [`DocumentListener`](DocumentListener.md "interface in javax.swing.event")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `DocumentEvent.ElementChange`

  Describes changes made to a specific element.

  `static final class`

  `DocumentEvent.EventType`

  Enumeration for document event types
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `DocumentEvent.ElementChange`

  `getChange(Element elem)`

  Gets the change information for the given element.

  `Document`

  `getDocument()`

  Gets the document that sourced the change event.

  `int`

  `getLength()`

  Returns the length of the change.

  `int`

  `getOffset()`

  Returns the offset within the document of the start
  of the change.

  `DocumentEvent.EventType`

  `getType()`

  Gets the type of event.

* ## Method Details

  + ### getOffset

    int getOffset()

    Returns the offset within the document of the start
    of the change.

    Returns:
    :   the offset >= 0
  + ### getLength

    int getLength()

    Returns the length of the change.

    Returns:
    :   the length >= 0
  + ### getDocument

    [Document](../text/Document.md "interface in javax.swing.text") getDocument()

    Gets the document that sourced the change event.

    Returns:
    :   the document
  + ### getType

    [DocumentEvent.EventType](DocumentEvent.EventType.md "class in javax.swing.event") getType()

    Gets the type of event.

    Returns:
    :   the type
  + ### getChange

    [DocumentEvent.ElementChange](DocumentEvent.ElementChange.md "interface in javax.swing.event") getChange([Element](../text/Element.md "interface in javax.swing.text") elem)

    Gets the change information for the given element.
    The change information describes what elements were
    added and removed and the location. If there were
    no changes, null is returned.

    This method is for observers to discover the structural
    changes that were made. This means that only elements
    that existed prior to the mutation (and still exist after
    the mutation) need to have ElementChange records.
    The changes made available need not be recursive.

    For example, if an element is removed from its
    parent, this method should report that the parent
    changed and provide an ElementChange implementation
    that describes the change to the parent. If the
    child element removed had children, these elements
    do not need to be reported as removed.

    If a child element is inserted into a parent element,
    the parent element should report a change. If the
    child element also had elements inserted into it
    (grandchildren to the parent) these elements need
    not report change.

    Parameters:
    :   `elem` - the element

    Returns:
    :   the change information, or null if the
        element was not modified