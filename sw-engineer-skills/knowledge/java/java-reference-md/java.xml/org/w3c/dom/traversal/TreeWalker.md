Module [java.xml](../../../../module-summary.md)

Package [org.w3c.dom.traversal](package-summary.md)

# Interface TreeWalker

---

public interface TreeWalker

`TreeWalker` objects are used to navigate a document tree or
subtree using the view of the document defined by their
`whatToShow` flags and filter (if any). Any function which
performs navigation using a `TreeWalker` will automatically
support any view defined by a `TreeWalker`.

Omitting nodes from the logical view of a subtree can result in a
structure that is substantially different from the same subtree in the
complete, unfiltered document. Nodes that are siblings in the
`TreeWalker` view may be children of different, widely
separated nodes in the original view. For instance, consider a
`NodeFilter` that skips all nodes except for Text nodes and
the root node of a document. In the logical view that results, all text
nodes will be siblings and appear as direct children of the root node, no
matter how deeply nested the structure of the original document.

See also the [Document Object Model (DOM) Level 2 Traversal and Range Specification](http://www.w3.org/TR/2000/REC-DOM-Level-2-Traversal-Range-20001113).

Since:
:   9, DOM Level 2

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Node`

  `firstChild()`

  Moves the `TreeWalker` to the first visible child of the
  current node, and returns the new node.

  `Node`

  `getCurrentNode()`

  The node at which the `TreeWalker` is currently positioned.

  `boolean`

  `getExpandEntityReferences()`

  The value of this flag determines whether the children of entity
  reference nodes are visible to the `TreeWalker`.

  `NodeFilter`

  `getFilter()`

  The filter used to screen nodes.

  `Node`

  `getRoot()`

  The `root` node of the `TreeWalker`, as specified
  when it was created.

  `int`

  `getWhatToShow()`

  This attribute determines which node types are presented via the
  `TreeWalker`.

  `Node`

  `lastChild()`

  Moves the `TreeWalker` to the last visible child of the
  current node, and returns the new node.

  `Node`

  `nextNode()`

  Moves the `TreeWalker` to the next visible node in document
  order relative to the current node, and returns the new node.

  `Node`

  `nextSibling()`

  Moves the `TreeWalker` to the next sibling of the current
  node, and returns the new node.

  `Node`

  `parentNode()`

  Moves to and returns the closest visible ancestor node of the current
  node.

  `Node`

  `previousNode()`

  Moves the `TreeWalker` to the previous visible node in
  document order relative to the current node, and returns the new
  node.

  `Node`

  `previousSibling()`

  Moves the `TreeWalker` to the previous sibling of the
  current node, and returns the new node.

  `void`

  `setCurrentNode(Node currentNode)`

  The node at which the `TreeWalker` is currently positioned.

* ## Method Details

  + ### getRoot

    [Node](../Node.md "interface in org.w3c.dom") getRoot()

    The `root` node of the `TreeWalker`, as specified
    when it was created.
  + ### getWhatToShow

    int getWhatToShow()

    This attribute determines which node types are presented via the
    `TreeWalker`. The available set of constants is defined in
    the `NodeFilter` interface. Nodes not accepted by
    `whatToShow` will be skipped, but their children may still
    be considered. Note that this skip takes precedence over the filter,
    if any.
  + ### getFilter

    [NodeFilter](NodeFilter.md "interface in org.w3c.dom.traversal") getFilter()

    The filter used to screen nodes.
  + ### getExpandEntityReferences

    boolean getExpandEntityReferences()

    The value of this flag determines whether the children of entity
    reference nodes are visible to the `TreeWalker`. If false,
    these children and their descendants will be rejected. Note that
    this rejection takes precedence over `whatToShow` and the
    filter, if any.
      
     To produce a view of the document that has entity references
    expanded and does not expose the entity reference node itself, use
    the `whatToShow` flags to hide the entity reference node
    and set `expandEntityReferences` to true when creating the
    `TreeWalker`. To produce a view of the document that has
    entity reference nodes but no entity expansion, use the
    `whatToShow` flags to show the entity reference node and
    set `expandEntityReferences` to false.
  + ### getCurrentNode

    [Node](../Node.md "interface in org.w3c.dom") getCurrentNode()

    The node at which the `TreeWalker` is currently positioned.
      
    Alterations to the DOM tree may cause the current node to no longer
    be accepted by the `TreeWalker`'s associated filter.
    `currentNode` may also be explicitly set to any node,
    whether or not it is within the subtree specified by the
    `root` node or would be accepted by the filter and
    `whatToShow` flags. Further traversal occurs relative to
    `currentNode` even if it is not part of the current view,
    by applying the filters in the requested direction; if no traversal
    is possible, `currentNode` is not changed.
  + ### setCurrentNode

    void setCurrentNode([Node](../Node.md "interface in org.w3c.dom") currentNode)
    throws [DOMException](../DOMException.md "class in org.w3c.dom")

    The node at which the `TreeWalker` is currently positioned.
      
    Alterations to the DOM tree may cause the current node to no longer
    be accepted by the `TreeWalker`'s associated filter.
    `currentNode` may also be explicitly set to any node,
    whether or not it is within the subtree specified by the
    `root` node or would be accepted by the filter and
    `whatToShow` flags. Further traversal occurs relative to
    `currentNode` even if it is not part of the current view,
    by applying the filters in the requested direction; if no traversal
    is possible, `currentNode` is not changed.

    Throws:
    :   `DOMException` - NOT\_SUPPORTED\_ERR: Raised if an attempt is made to set
        `currentNode` to `null`.
  + ### parentNode

    [Node](../Node.md "interface in org.w3c.dom") parentNode()

    Moves to and returns the closest visible ancestor node of the current
    node. If the search for `parentNode` attempts to step
    upward from the `TreeWalker`'s `root` node, or
    if it fails to find a visible ancestor node, this method retains the
    current position and returns `null`.

    Returns:
    :   The new parent node, or `null` if the current node
        has no parent in the `TreeWalker`'s logical view.
  + ### firstChild

    [Node](../Node.md "interface in org.w3c.dom") firstChild()

    Moves the `TreeWalker` to the first visible child of the
    current node, and returns the new node. If the current node has no
    visible children, returns `null`, and retains the current
    node.

    Returns:
    :   The new node, or `null` if the current node has no
        visible children in the `TreeWalker`'s logical view.
  + ### lastChild

    [Node](../Node.md "interface in org.w3c.dom") lastChild()

    Moves the `TreeWalker` to the last visible child of the
    current node, and returns the new node. If the current node has no
    visible children, returns `null`, and retains the current
    node.

    Returns:
    :   The new node, or `null` if the current node has no
        children in the `TreeWalker`'s logical view.
  + ### previousSibling

    [Node](../Node.md "interface in org.w3c.dom") previousSibling()

    Moves the `TreeWalker` to the previous sibling of the
    current node, and returns the new node. If the current node has no
    visible previous sibling, returns `null`, and retains the
    current node.

    Returns:
    :   The new node, or `null` if the current node has no
        previous sibling. in the `TreeWalker`'s logical view.
  + ### nextSibling

    [Node](../Node.md "interface in org.w3c.dom") nextSibling()

    Moves the `TreeWalker` to the next sibling of the current
    node, and returns the new node. If the current node has no visible
    next sibling, returns `null`, and retains the current node.

    Returns:
    :   The new node, or `null` if the current node has no
        next sibling. in the `TreeWalker`'s logical view.
  + ### previousNode

    [Node](../Node.md "interface in org.w3c.dom") previousNode()

    Moves the `TreeWalker` to the previous visible node in
    document order relative to the current node, and returns the new
    node. If the current node has no previous node, or if the search for
    `previousNode` attempts to step upward from the
    `TreeWalker`'s `root` node, returns
    `null`, and retains the current node.

    Returns:
    :   The new node, or `null` if the current node has no
        previous node in the `TreeWalker`'s logical view.
  + ### nextNode

    [Node](../Node.md "interface in org.w3c.dom") nextNode()

    Moves the `TreeWalker` to the next visible node in document
    order relative to the current node, and returns the new node. If the
    current node has no next node, or if the search for nextNode attempts
    to step upward from the `TreeWalker`'s `root`
    node, returns `null`, and retains the current node.

    Returns:
    :   The new node, or `null` if the current node has no
        next node in the `TreeWalker`'s logical view.