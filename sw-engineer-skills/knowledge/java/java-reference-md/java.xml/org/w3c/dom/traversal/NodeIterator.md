Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.traversal](package-summary.md)

# Interface NodeIterator

---

public interface NodeIterator

`NodeIterators` are used to step through a set of nodes, e.g.
the set of nodes in a `NodeList`, the document subtree
governed by a particular `Node`, the results of a query, or
any other set of nodes. The set of nodes to be iterated is determined by
the implementation of the `NodeIterator`. DOM Level 2
specifies a single `NodeIterator` implementation for
document-order traversal of a document subtree. Instances of these
`NodeIterators` are created by calling
`DocumentTraversal``.createNodeIterator()`.

See also the [Document Object Model (DOM) Level 2 Traversal and Range Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Traversal-Range-20001113).

Since:
:   9, DOM Level 2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `detach()`

  Detaches the `NodeIterator` from the set which it iterated
  over, releasing any computational resources and placing the
  `NodeIterator` in the INVALID state.

  `boolean`

  `getExpandEntityReferences()`

  The value of this flag determines whether the children of entity
  reference nodes are visible to the `NodeIterator`.

  `NodeFilter`

  `getFilter()`

  The `NodeFilter` used to screen nodes.

  `Node`

  `getRoot()`

  The root node of the `NodeIterator`, as specified when it
  was created.

  `int`

  `getWhatToShow()`

  This attribute determines which node types are presented via the
  `NodeIterator`.

  `Node`

  `nextNode()`

  Returns the next node in the set and advances the position of the
  `NodeIterator` in the set.

  `Node`

  `previousNode()`

  Returns the previous node in the set and moves the position of the
  `NodeIterator` backwards in the set.

* ## Method Details

  + ### getRoot

    [Node](../Node.md "interface in org.w3c.dom") getRoot()

    The root node of the `NodeIterator`, as specified when it
    was created.
  + ### getWhatToShow

    int getWhatToShow()

    This attribute determines which node types are presented via the
    `NodeIterator`. The available set of constants is defined
    in the `NodeFilter` interface. Nodes not accepted by
    `whatToShow` will be skipped, but their children may still
    be considered. Note that this skip takes precedence over the filter,
    if any.
  + ### getFilter

    [NodeFilter](NodeFilter.md "interface in org.w3c.dom.traversal") getFilter()

    The `NodeFilter` used to screen nodes.
  + ### getExpandEntityReferences

    boolean getExpandEntityReferences()

    The value of this flag determines whether the children of entity
    reference nodes are visible to the `NodeIterator`. If
    false, these children and their descendants will be rejected. Note
    that this rejection takes precedence over `whatToShow` and
    the filter. Also note that this is currently the only situation where
    `NodeIterators` may reject a complete subtree rather than
    skipping individual nodes.
      
      
     To produce a view of the document that has entity references
    expanded and does not expose the entity reference node itself, use
    the `whatToShow` flags to hide the entity reference node
    and set `expandEntityReferences` to true when creating the
    `NodeIterator`. To produce a view of the document that has
    entity reference nodes but no entity expansion, use the
    `whatToShow` flags to show the entity reference node and
    set `expandEntityReferences` to false.
  + ### nextNode

    [Node](../Node.md "interface in org.w3c.dom") nextNode()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Returns the next node in the set and advances the position of the
    `NodeIterator` in the set. After a
    `NodeIterator` is created, the first call to
    `nextNode()` returns the first node in the set.

    Returns:
    :   The next `Node` in the set being iterated over, or
        `null` if there are no more members in that set.

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if this method is called after the
        `detach` method was invoked.
  + ### previousNode

    [Node](../Node.md "interface in org.w3c.dom") previousNode()
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    Returns the previous node in the set and moves the position of the
    `NodeIterator` backwards in the set.

    Returns:
    :   The previous `Node` in the set being iterated over,
        or `null` if there are no more members in that set.

    Throws:
    :   `DOMException` - INVALID\_STATE\_ERR: Raised if this method is called after the
        `detach` method was invoked.
  + ### detach

    void detach()

    Detaches the `NodeIterator` from the set which it iterated
    over, releasing any computational resources and placing the
    `NodeIterator` in the INVALID state. After
    `detach` has been invoked, calls to `nextNode`
    or `previousNode` will raise the exception
    INVALID\_STATE\_ERR.