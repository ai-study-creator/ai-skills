Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.ranges](package-summary.md)

# Interface Range

---

public interface Range

See also the [Document Object Model (DOM) Level 2 Traversal and Range Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Traversal-Range-20001113).

Since:
:   9, DOM Level 2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final short`

  `END_TO_END`

  Compare end boundary-point of `sourceRange` to end
  boundary-point of Range on which `compareBoundaryPoints`
  is invoked.

  `static final short`

  `END_TO_START`

  Compare end boundary-point of `sourceRange` to start
  boundary-point of Range on which `compareBoundaryPoints`
  is invoked.

  `static final short`

  `START_TO_END`

  Compare start boundary-point of `sourceRange` to end
  boundary-point of Range on which `compareBoundaryPoints`
  is invoked.

  `static final short`

  `START_TO_START`

  Compare start boundary-point of `sourceRange` to start
  boundary-point of Range on which `compareBoundaryPoints`
  is invoked.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `DocumentFragment`

  `cloneContents()`

  Duplicates the contents of a Range

  `Range`

  `cloneRange()`

  Produces a new Range whose boundary-points are equal to the
  boundary-points of the Range.

  `void`

  `collapse(boolean toStart)`

  Collapse a Range onto one of its boundary-points

  `short`

  `compareBoundaryPoints(short how,
  Range sourceRange)`

  Compare the boundary-points of two Ranges in a document.

  `void`

  `deleteContents()`

  Removes the contents of a Range from the containing document or
  document fragment without returning a reference to the removed
  content.

  `void`

  `detach()`

  Called to indicate that the Range is no longer in use and that the
  implementation may relinquish any resources associated with this
  Range.

  `DocumentFragment`

  `extractContents()`

  Moves the contents of a Range from the containing document or document
  fragment to a new DocumentFragment.

  `boolean`

  `getCollapsed()`

  TRUE if the Range is collapsed

  `Node`

  `getCommonAncestorContainer()`

  The deepest common ancestor container of the Range's two
  boundary-points.

  `Node`

  `getEndContainer()`

  Node within which the Range ends

  `int`

  `getEndOffset()`

  Offset within the ending node of the Range.

  `Node`

  `getStartContainer()`

  Node within which the Range begins

  `int`

  `getStartOffset()`

  Offset within the starting node of the Range.

  `void`

  `insertNode(Node newNode)`

  Inserts a node into the Document or DocumentFragment at the start of
  the Range.

  `void`

  `selectNode(Node refNode)`

  Select a node and its contents

  `void`

  `selectNodeContents(Node refNode)`

  Select the contents within a node

  `void`

  `setEnd(Node refNode,
  int offset)`

  Sets the attributes describing the end of a Range.

  `void`

  `setEndAfter(Node refNode)`

  Sets the end of a Range to be after a node

  `void`

  `setEndBefore(Node refNode)`

  Sets the end position to be before a node.

  `void`

  `setStart(Node refNode,
  int offset)`

  Sets the attributes describing the start of the Range.

  `void`

  `setStartAfter(Node refNode)`

  Sets the start position to be after a node

  `void`

  `setStartBefore(Node refNode)`

  Sets the start position to be before a node

  `void`

  `surroundContents(Node newParent)`

  Reparents the contents of the Range to the given node and inserts the
  node at the position of the start of the Range.

  `String`

  `toString()`

  Returns the contents of a Range as a string.

* ## Field Details

  + ### START\_TO\_START

    static final short START\_TO\_START

    Compare start boundary-point of `sourceRange` to start
    boundary-point of Range on which `compareBoundaryPoints`
    is invoked.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.ranges.Range.START_TO_START)
  + ### START\_TO\_END

    static final short START\_TO\_END

    Compare start boundary-point of `sourceRange` to end
    boundary-point of Range on which `compareBoundaryPoints`
    is invoked.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.ranges.Range.START_TO_END)
  + ### END\_TO\_END

    static final short END\_TO\_END

    Compare end boundary-point of `sourceRange` to end
    boundary-point of Range on which `compareBoundaryPoints`
    is invoked.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.ranges.Range.END_TO_END)
  + ### END\_TO\_START

    static final short END\_TO\_START

    Compare end boundary-point of `sourceRange` to start
    boundary-point of Range on which `compareBoundaryPoints`
    is invoked.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.ranges.Range.END_TO_START)
* ## Method Details

  + ### getStartContainer

    [Node](../Node.md "interface in org.w3c.dom") getStartContainer()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Node within which the Range begins

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
  + ### getStartOffset

    int getStartOffset()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Offset within the starting node of the Range.

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
  + ### getEndContainer

    [Node](../Node.md "interface in org.w3c.dom") getEndContainer()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Node within which the Range ends

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
  + ### getEndOffset

    int getEndOffset()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Offset within the ending node of the Range.

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
  + ### getCollapsed

    boolean getCollapsed()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    TRUE if the Range is collapsed

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
  + ### getCommonAncestorContainer

    [Node](../Node.md "interface in org.w3c.dom") getCommonAncestorContainer()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    The deepest common ancestor container of the Range's two
    boundary-points.

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
  + ### setStart

    void setStart([Node](../Node.md "interface in org.w3c.dom") refNode,
    int offset)
    throws [RangeException](RangeException.md "class in org.w3c.dom.ranges"),
    [DOMException](../DOMException.md "class in org.w3c.dom")

    Sets the attributes describing the start of the Range.

    Parameters:
    :   `refNode` - The `refNode` value. This parameter must be
        different from `null`.
    :   `offset` - The `startOffset` value.

    Throws:
    :   `RangeException` - INVALID\_NODE\_TYPE\_ERR: Raised if `refNode` or an ancestor
        of `refNode` is an Entity, Notation, or DocumentType
        node.
    :   `DOMException` - INDEX\_SIZE\_ERR: Raised if `offset` is negative or greater
        than the number of child units in `refNode`. Child units
        are 16-bit units if `refNode` is a type of CharacterData
        node (e.g., a Text or Comment node) or a ProcessingInstruction
        node. Child units are Nodes in all other cases.
          
        INVALID\_STATE\_ERR: Raised if `detach()` has already
        been invoked on this object.
          
        WRONG\_DOCUMENT\_ERR: Raised if `refNode` was created
        from a different document than the one that created this range.
  + ### setEnd

    void setEnd([Node](../Node.md "interface in org.w3c.dom") refNode,
    int offset)
    throws [RangeException](RangeException.md "class in org.w3c.dom.ranges"),
    [DOMException](../DOMException.md "class in org.w3c.dom")

    Sets the attributes describing the end of a Range.

    Parameters:
    :   `refNode` - The `refNode` value. This parameter must be
        different from `null`.
    :   `offset` - The `endOffset` value.

    Throws:
    :   `RangeException` - INVALID\_NODE\_TYPE\_ERR: Raised if `refNode` or an ancestor
        of `refNode` is an Entity, Notation, or DocumentType
        node.
    :   `DOMException` - INDEX\_SIZE\_ERR: Raised if `offset` is negative or greater
        than the number of child units in `refNode`. Child units
        are 16-bit units if `refNode` is a type of CharacterData
        node (e.g., a Text or Comment node) or a ProcessingInstruction
        node. Child units are Nodes in all other cases.
          
        INVALID\_STATE\_ERR: Raised if `detach()` has already
        been invoked on this object.
          
        WRONG\_DOCUMENT\_ERR: Raised if `refNode` was created
        from a different document than the one that created this range.
  + ### setStartBefore

    void setStartBefore([Node](../Node.md "interface in org.w3c.dom") refNode)
    throws [RangeException](RangeException.md "class in org.w3c.dom.ranges"),
    [DOMException](../DOMException.md "class in org.w3c.dom")

    Sets the start position to be before a node

    Parameters:
    :   `refNode` - Range starts before `refNode`

    Throws:
    :   `RangeException` - INVALID\_NODE\_TYPE\_ERR: Raised if the root container of
        `refNode` is not an Attr, Document, or DocumentFragment
        node or if `refNode` is a Document, DocumentFragment,
        Attr, Entity, or Notation node.
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
          
        WRONG\_DOCUMENT\_ERR: Raised if `refNode` was created
        from a different document than the one that created this range.
  + ### setStartAfter

    void setStartAfter([Node](../Node.md "interface in org.w3c.dom") refNode)
    throws [RangeException](RangeException.md "class in org.w3c.dom.ranges"),
    [DOMException](../DOMException.md "class in org.w3c.dom")

    Sets the start position to be after a node

    Parameters:
    :   `refNode` - Range starts after `refNode`

    Throws:
    :   `RangeException` - INVALID\_NODE\_TYPE\_ERR: Raised if the root container of
        `refNode` is not an Attr, Document, or DocumentFragment
        node or if `refNode` is a Document, DocumentFragment,
        Attr, Entity, or Notation node.
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
          
        WRONG\_DOCUMENT\_ERR: Raised if `refNode` was created
        from a different document than the one that created this range.
  + ### setEndBefore

    void setEndBefore([Node](../Node.md "interface in org.w3c.dom") refNode)
    throws [RangeException](RangeException.md "class in org.w3c.dom.ranges"),
    [DOMException](../DOMException.md "class in org.w3c.dom")

    Sets the end position to be before a node.

    Parameters:
    :   `refNode` - Range ends before `refNode`

    Throws:
    :   `RangeException` - INVALID\_NODE\_TYPE\_ERR: Raised if the root container of
        `refNode` is not an Attr, Document, or DocumentFragment
        node or if `refNode` is a Document, DocumentFragment,
        Attr, Entity, or Notation node.
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
          
        WRONG\_DOCUMENT\_ERR: Raised if `refNode` was created
        from a different document than the one that created this range.
  + ### setEndAfter

    void setEndAfter([Node](../Node.md "interface in org.w3c.dom") refNode)
    throws [RangeException](RangeException.md "class in org.w3c.dom.ranges"),
    [DOMException](../DOMException.md "class in org.w3c.dom")

    Sets the end of a Range to be after a node

    Parameters:
    :   `refNode` - Range ends after `refNode`.

    Throws:
    :   `RangeException` - INVALID\_NODE\_TYPE\_ERR: Raised if the root container of
        `refNode` is not an Attr, Document or DocumentFragment
        node or if `refNode` is a Document, DocumentFragment,
        Attr, Entity, or Notation node.
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
          
        WRONG\_DOCUMENT\_ERR: Raised if `refNode` was created
        from a different document than the one that created this range.
  + ### collapse

    void collapse(boolean toStart)
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Collapse a Range onto one of its boundary-points

    Parameters:
    :   `toStart` - If TRUE, collapses the Range onto its start; if FALSE,
        collapses it onto its end.

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
  + ### selectNode

    void selectNode([Node](../Node.md "interface in org.w3c.dom") refNode)
    throws [RangeException](RangeException.md "class in org.w3c.dom.ranges"),
    [DOMException](../DOMException.md "class in org.w3c.dom")

    Select a node and its contents

    Parameters:
    :   `refNode` - The node to select.

    Throws:
    :   `RangeException` - INVALID\_NODE\_TYPE\_ERR: Raised if an ancestor of `refNode`
        is an Entity, Notation or DocumentType node or if
        `refNode` is a Document, DocumentFragment, Attr, Entity,
        or Notation node.
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
          
        WRONG\_DOCUMENT\_ERR: Raised if `refNode` was created
        from a different document than the one that created this range.
  + ### selectNodeContents

    void selectNodeContents([Node](../Node.md "interface in org.w3c.dom") refNode)
    throws [RangeException](RangeException.md "class in org.w3c.dom.ranges"),
    [DOMException](../DOMException.md "class in org.w3c.dom")

    Select the contents within a node

    Parameters:
    :   `refNode` - Node to select from

    Throws:
    :   `RangeException` - INVALID\_NODE\_TYPE\_ERR: Raised if `refNode` or an ancestor
        of `refNode` is an Entity, Notation or DocumentType node.
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
          
        WRONG\_DOCUMENT\_ERR: Raised if `refNode` was created
        from a different document than the one that created this range.
  + ### compareBoundaryPoints

    short compareBoundaryPoints(short how,
    [Range](Range.md "interface in org.w3c.dom.ranges") sourceRange)
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Compare the boundary-points of two Ranges in a document.

    Parameters:
    :   `how` - A code representing the type of comparison, as defined
        above.
    :   `sourceRange` - The `Range` on which this current
        `Range` is compared to.

    Returns:
    :   -1, 0 or 1 depending on whether the corresponding
        boundary-point of the Range is respectively before, equal to, or
        after the corresponding boundary-point of `sourceRange`.

    Throws:
    :   `DOMException` - WRONG\_DOCUMENT\_ERR: Raised if the two Ranges are not in the same
        Document or DocumentFragment.
          
        INVALID\_STATE\_ERR: Raised if `detach()` has already
        been invoked on this object.
  + ### deleteContents

    void deleteContents()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Removes the contents of a Range from the containing document or
    document fragment without returning a reference to the removed
    content.

    Throws:
    :   `DOMException` - NO\_MODIFICATION\_ALLOWED\_ERR: Raised if any portion of the content of
        the Range is read-only or any of the nodes that contain any of the
        content of the Range are read-only.
          
        INVALID\_STATE\_ERR: Raised if `detach()` has already
        been invoked on this object.
  + ### extractContents

    [DocumentFragment](../DocumentFragment.md "interface in org.w3c.dom") extractContents()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Moves the contents of a Range from the containing document or document
    fragment to a new DocumentFragment.

    Returns:
    :   A DocumentFragment containing the extracted contents.

    Throws:
    :   `DOMException` - NO\_MODIFICATION\_ALLOWED\_ERR: Raised if any portion of the content of
        the Range is read-only or any of the nodes which contain any of the
        content of the Range are read-only.
          
        HIERARCHY\_REQUEST\_ERR: Raised if a DocumentType node would be
        extracted into the new DocumentFragment.
          
        INVALID\_STATE\_ERR: Raised if `detach()` has already
        been invoked on this object.
  + ### cloneContents

    [DocumentFragment](../DocumentFragment.md "interface in org.w3c.dom") cloneContents()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Duplicates the contents of a Range

    Returns:
    :   A DocumentFragment that contains content equivalent to this
        Range.

    Throws:
    :   `DOMException` - HIERARCHY\_REQUEST\_ERR: Raised if a DocumentType node would be
        extracted into the new DocumentFragment.
          
        INVALID\_STATE\_ERR: Raised if `detach()` has already
        been invoked on this object.
  + ### insertNode

    void insertNode([Node](../Node.md "interface in org.w3c.dom") newNode)
    throws [DOMException](../DOMException.md "class in org.w3c.dom"),
    [RangeException](RangeException.md "class in org.w3c.dom.ranges")

    Inserts a node into the Document or DocumentFragment at the start of
    the Range. If the container is a Text node, this will be split at the
    start of the Range (as if the Text node's splitText method was
    performed at the insertion point) and the insertion will occur
    between the two resulting Text nodes. Adjacent Text nodes will not be
    automatically merged. If the node to be inserted is a
    DocumentFragment node, the children will be inserted rather than the
    DocumentFragment node itself.

    Parameters:
    :   `newNode` - The node to insert at the start of the Range

    Throws:
    :   `DOMException` - NO\_MODIFICATION\_ALLOWED\_ERR: Raised if an ancestor container of the
        start of the Range is read-only.
          
        WRONG\_DOCUMENT\_ERR: Raised if `newNode` and the
        container of the start of the Range were not created from the same
        document.
          
        HIERARCHY\_REQUEST\_ERR: Raised if the container of the start of
        the Range is of a type that does not allow children of the type of
        `newNode` or if `newNode` is an ancestor of
        the container.
          
        INVALID\_STATE\_ERR: Raised if `detach()` has already
        been invoked on this object.
    :   `RangeException` - INVALID\_NODE\_TYPE\_ERR: Raised if `newNode` is an Attr,
        Entity, Notation, or Document node.
  + ### surroundContents

    void surroundContents([Node](../Node.md "interface in org.w3c.dom") newParent)
    throws [DOMException](../DOMException.md "class in org.w3c.dom"),
    [RangeException](RangeException.md "class in org.w3c.dom.ranges")

    Reparents the contents of the Range to the given node and inserts the
    node at the position of the start of the Range.

    Parameters:
    :   `newParent` - The node to surround the contents with.

    Throws:
    :   `DOMException` - NO\_MODIFICATION\_ALLOWED\_ERR: Raised if an ancestor container of
        either boundary-point of the Range is read-only.
          
        WRONG\_DOCUMENT\_ERR: Raised if  `newParent` and the
        container of the start of the Range were not created from the same
        document.
          
        HIERARCHY\_REQUEST\_ERR: Raised if the container of the start of
        the Range is of a type that does not allow children of the type of
        `newParent` or if `newParent` is an ancestor
        of the container or if `node` would end up with a child
        node of a type not allowed by the type of `node`.
          
        INVALID\_STATE\_ERR: Raised if `detach()` has already
        been invoked on this object.
    :   `RangeException` - BAD\_BOUNDARYPOINTS\_ERR: Raised if the Range partially selects a
        non-text node.
          
        INVALID\_NODE\_TYPE\_ERR: Raised if  `node` is an Attr,
        Entity, DocumentType, Notation, Document, or DocumentFragment node.
  + ### cloneRange

    [Range](Range.md "interface in org.w3c.dom.ranges") cloneRange()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Produces a new Range whose boundary-points are equal to the
    boundary-points of the Range.

    Returns:
    :   The duplicated Range.

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
  + ### toString

    [String](../../../../../java.base/java/lang/String.md "class in java.lang") toString()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Returns the contents of a Range as a string. This string contains only
    the data characters, not any markup.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   The contents of the Range.

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.
  + ### detach

    void detach()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Called to indicate that the Range is no longer in use and that the
    implementation may relinquish any resources associated with this
    Range. Subsequent calls to any methods or attribute getters on this
    Range will result in a `DOMException` being thrown with an
    error code of `INVALID_STATE_ERR`.

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if `detach()` has already been
        invoked on this object.