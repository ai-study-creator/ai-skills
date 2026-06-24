Module [java.xml](../../../module-summary.md)

Package [org.w3c.dom](package-summary.md)

# Interface UserDataHandler

---

public interface UserDataHandler

When associating an object to a key on a node using
`Node.setUserData()` the application can provide a handler
that gets called when the node the object is associated to is being
cloned, imported, or renamed. This can be used by the application to
implement various behaviors regarding the data it associates to the DOM
nodes. This interface defines that handler.

See also the [Document Object Model (DOM) Level 3 Core Specification](http://www.w3.org/TR/2004/REC-DOM-Level-3-Core-20040407).

Since:
:   1.5, DOM Level 3

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final short`

  `NODE_ADOPTED`

  The node is adopted, using `Document.adoptNode()`.

  `static final short`

  `NODE_CLONED`

  The node is cloned, using `Node.cloneNode()`.

  `static final short`

  `NODE_DELETED`

  The node is deleted.

  `static final short`

  `NODE_IMPORTED`

  The node is imported, using `Document.importNode()`.

  `static final short`

  `NODE_RENAMED`

  The node is renamed, using `Document.renameNode()`.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `handle(short operation,
  String key,
  Object data,
  Node src,
  Node dst)`

  This method is called whenever the node for which this handler is
  registered is imported or cloned.

* ## Field Details

  + ### NODE\_CLONED

    static final short NODE\_CLONED

    The node is cloned, using `Node.cloneNode()`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.UserDataHandler.NODE_CLONED)
  + ### NODE\_IMPORTED

    static final short NODE\_IMPORTED

    The node is imported, using `Document.importNode()`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.UserDataHandler.NODE_IMPORTED)
  + ### NODE\_DELETED

    static final short NODE\_DELETED

    The node is deleted.

    **Note:** This may not be supported or may not be reliable in
    certain environments, such as Java, where the implementation has no
    real control over when objects are actually deleted.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.UserDataHandler.NODE_DELETED)
  + ### NODE\_RENAMED

    static final short NODE\_RENAMED

    The node is renamed, using `Document.renameNode()`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.UserDataHandler.NODE_RENAMED)
  + ### NODE\_ADOPTED

    static final short NODE\_ADOPTED

    The node is adopted, using `Document.adoptNode()`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.w3c.dom.UserDataHandler.NODE_ADOPTED)
* ## Method Details

  + ### handle

    void handle(short operation,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") key,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") data,
    [Node](Node.md "interface in org.w3c.dom") src,
    [Node](Node.md "interface in org.w3c.dom") dst)

    This method is called whenever the node for which this handler is
    registered is imported or cloned.
      
     DOM applications must not raise exceptions in a
    `UserDataHandler`. The effect of throwing exceptions from
    the handler is DOM implementation dependent.

    Parameters:
    :   `operation` - Specifies the type of operation that is being
        performed on the node.
    :   `key` - Specifies the key for which this handler is being called.
    :   `data` - Specifies the data for which this handler is being called.
    :   `src` - Specifies the node being cloned, adopted, imported, or
        renamed. This is `null` when the node is being deleted.
    :   `dst` - Specifies the node newly created if any, or
        `null`.