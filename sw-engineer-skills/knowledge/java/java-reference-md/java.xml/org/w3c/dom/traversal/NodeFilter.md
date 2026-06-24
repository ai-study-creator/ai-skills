Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.traversal](package-summary.md)

# Interface NodeFilter

All Known Subinterfaces:
:   `LSSerializerFilter`

---

public interface NodeFilter

Filters are objects that know how to "filter out" nodes. If a
`NodeIterator` or `TreeWalker` is given a
`NodeFilter`, it applies the filter before it returns the next
node. If the filter says to accept the node, the traversal logic returns
it; otherwise, traversal looks for the next node and pretends that the
node that was rejected was not there.

The DOM does not provide any filters. `NodeFilter` is just an
interface that users can implement to provide their own filters.

`NodeFilters` do not need to know how to traverse from node
to node, nor do they need to know anything about the data structure that
is being traversed. This makes it very easy to write filters, since the
only thing they have to know how to do is evaluate a single node. One
filter may be used with a number of different kinds of traversals,
encouraging code reuse.

See also the [Document Object Model (DOM) Level 2 Traversal and Range Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Traversal-Range-20001113).

Since:
:   9, DOM Level 2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final short`

  `FILTER_ACCEPT`

  Accept the node.

  `static final short`

  `FILTER_REJECT`

  Reject the node.

  `static final short`

  `FILTER_SKIP`

  Skip this single node.

  `static final int`

  `SHOW_ALL`

  Show all `Nodes`.

  `static final int`

  `SHOW_ATTRIBUTE`

  Show `Attr` nodes.

  `static final int`

  `SHOW_CDATA_SECTION`

  Show `CDATASection` nodes.

  `static final int`

  `SHOW_COMMENT`

  Show `Comment` nodes.

  `static final int`

  `SHOW_DOCUMENT`

  Show `Document` nodes.

  `static final int`

  `SHOW_DOCUMENT_FRAGMENT`

  Show `DocumentFragment` nodes.

  `static final int`

  `SHOW_DOCUMENT_TYPE`

  Show `DocumentType` nodes.

  `static final int`

  `SHOW_ELEMENT`

  Show `Element` nodes.

  `static final int`

  `SHOW_ENTITY`

  Show `Entity` nodes.

  `static final int`

  `SHOW_ENTITY_REFERENCE`

  Show `EntityReference` nodes.

  `static final int`

  `SHOW_NOTATION`

  Show `Notation` nodes.

  `static final int`

  `SHOW_PROCESSING_INSTRUCTION`

  Show `ProcessingInstruction` nodes.

  `static final int`

  `SHOW_TEXT`

  Show `Text` nodes.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `short`

  `acceptNode(Node n)`

  Test whether a specified node is visible in the logical view of a
  `TreeWalker` or `NodeIterator`.

* ## Field Details

  + ### FILTER\_ACCEPT

    static final short FILTER\_ACCEPT

    Accept the node. Navigation methods defined for
    `NodeIterator` or `TreeWalker` will return this
    node.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.FILTER_ACCEPT)
  + ### FILTER\_REJECT

    static final short FILTER\_REJECT

    Reject the node. Navigation methods defined for
    `NodeIterator` or `TreeWalker` will not return
    this node. For `TreeWalker`, the children of this node
    will also be rejected. `NodeIterators` treat this as a
    synonym for `FILTER_SKIP`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.FILTER_REJECT)
  + ### FILTER\_SKIP

    static final short FILTER\_SKIP

    Skip this single node. Navigation methods defined for
    `NodeIterator` or `TreeWalker` will not return
    this node. For both `NodeIterator` and
    `TreeWalker`, the children of this node will still be
    considered.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.FILTER_SKIP)
  + ### SHOW\_ALL

    static final int SHOW\_ALL

    Show all `Nodes`.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_ALL)
  + ### SHOW\_ELEMENT

    static final int SHOW\_ELEMENT

    Show `Element` nodes.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_ELEMENT)
  + ### SHOW\_ATTRIBUTE

    static final int SHOW\_ATTRIBUTE

    Show `Attr` nodes. This is meaningful only when creating an
    `NodeIterator` or `TreeWalker` with an
    attribute node as its `root`; in this case, it means that
    the attribute node will appear in the first position of the iteration
    or traversal. Since attributes are never children of other nodes,
    they do not appear when traversing over the document tree.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_ATTRIBUTE)
  + ### SHOW\_TEXT

    static final int SHOW\_TEXT

    Show `Text` nodes.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_TEXT)
  + ### SHOW\_CDATA\_SECTION

    static final int SHOW\_CDATA\_SECTION

    Show `CDATASection` nodes.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_CDATA_SECTION)
  + ### SHOW\_ENTITY\_REFERENCE

    static final int SHOW\_ENTITY\_REFERENCE

    Show `EntityReference` nodes.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_ENTITY_REFERENCE)
  + ### SHOW\_ENTITY

    static final int SHOW\_ENTITY

    Show `Entity` nodes. This is meaningful only when creating
    an `NodeIterator` or `TreeWalker` with an
    `Entity` node as its `root`; in this case, it
    means that the `Entity` node will appear in the first
    position of the traversal. Since entities are not part of the
    document tree, they do not appear when traversing over the document
    tree.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_ENTITY)
  + ### SHOW\_PROCESSING\_INSTRUCTION

    static final int SHOW\_PROCESSING\_INSTRUCTION

    Show `ProcessingInstruction` nodes.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_PROCESSING_INSTRUCTION)
  + ### SHOW\_COMMENT

    static final int SHOW\_COMMENT

    Show `Comment` nodes.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_COMMENT)
  + ### SHOW\_DOCUMENT

    static final int SHOW\_DOCUMENT

    Show `Document` nodes.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_DOCUMENT)
  + ### SHOW\_DOCUMENT\_TYPE

    static final int SHOW\_DOCUMENT\_TYPE

    Show `DocumentType` nodes.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_DOCUMENT_TYPE)
  + ### SHOW\_DOCUMENT\_FRAGMENT

    static final int SHOW\_DOCUMENT\_FRAGMENT

    Show `DocumentFragment` nodes.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_DOCUMENT_FRAGMENT)
  + ### SHOW\_NOTATION

    static final int SHOW\_NOTATION

    Show `Notation` nodes. This is meaningful only when creating
    an `NodeIterator` or `TreeWalker` with a
    `Notation` node as its `root`; in this case, it
    means that the `Notation` node will appear in the first
    position of the traversal. Since notations are not part of the
    document tree, they do not appear when traversing over the document
    tree.

    See Also:
    :   - [Constant Field Values](../../../../../constant-values.md#org.w3c.dom.traversal.NodeFilter.SHOW_NOTATION)
* ## Method Details

  + ### acceptNode

    short acceptNode([Node](../Node.md "interface in org.w3c.dom") n)

    Test whether a specified node is visible in the logical view of a
    `TreeWalker` or `NodeIterator`. This function
    will be called by the implementation of `TreeWalker` and
    `NodeIterator`; it is not normally called directly from
    user code. (Though you could do so if you wanted to use the same
    filter to guide your own application logic.)

    Parameters:
    :   `n` - The node to check to see if it passes the filter or not.

    Returns:
    :   A constant to determine whether the node is accepted,
        rejected, or skipped, as defined above.