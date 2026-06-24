Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLEditorKit.HTMLTextAction

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../../AbstractAction.md "class in javax.swing")

[javax.swing.text.TextAction](../TextAction.md "class in javax.swing.text")

[javax.swing.text.StyledEditorKit.StyledTextAction](../StyledEditorKit.StyledTextAction.md "class in javax.swing.text")

javax.swing.text.html.HTMLEditorKit.HTMLTextAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Direct Known Subclasses:
:   `HTMLEditorKit.InsertHTMLTextAction`

Enclosing class:
:   `HTMLEditorKit`

---

public abstract static class HTMLEditorKit.HTMLTextAction
extends [StyledEditorKit.StyledTextAction](../StyledEditorKit.StyledTextAction.md "class in javax.swing.text")

An abstract Action providing some convenience methods that may
be useful in inserting HTML into an existing document.

NOTE: None of the convenience methods obtain a lock on the
document. If you have another thread modifying the text these
methods may have inconsistent behavior, or return the wrong thing.

* ## Field Summary

  ### Fields inherited from class javax.swing.[AbstractAction](../../AbstractAction.md "class in javax.swing")

  `changeSupport, enabled`

  ### Fields inherited from interface javax.swing.[Action](../../Action.md "interface in javax.swing")

  `ACCELERATOR_KEY, ACTION_COMMAND_KEY, DEFAULT, DISPLAYED_MNEMONIC_INDEX_KEY, LARGE_ICON_KEY, LONG_DESCRIPTION, MNEMONIC_KEY, NAME, SELECTED_KEY, SHORT_DESCRIPTION, SMALL_ICON`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `HTMLTextAction(String name)`

  Creates a new HTMLTextAction from a string action name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected int`

  `elementCountToTag(HTMLDocument doc,
  int offset,
  HTML.Tag tag)`

  Returns number of elements, starting at the deepest leaf, needed
  to get to an element representing `tag`.

  `protected Element`

  `findElementMatchingTag(HTMLDocument doc,
  int offset,
  HTML.Tag tag)`

  Returns the deepest element at `offset` matching
  `tag`.

  `protected Element[]`

  `getElementsAt(HTMLDocument doc,
  int offset)`

  Returns an array of the Elements that contain `offset`.

  `protected HTMLDocument`

  `getHTMLDocument(JEditorPane e)`

  Returns `HTMLDocument` of the given `JEditorPane`.

  `protected HTMLEditorKit`

  `getHTMLEditorKit(JEditorPane e)`

  Returns `HTMLEditorKit` of the given `JEditorPane`.

  ### Methods inherited from class javax.swing.text.[StyledEditorKit.StyledTextAction](../StyledEditorKit.StyledTextAction.md "class in javax.swing.text")

  `getEditor, getStyledDocument, getStyledEditorKit, setCharacterAttributes, setParagraphAttributes`

  ### Methods inherited from class javax.swing.text.[TextAction](../TextAction.md "class in javax.swing.text")

  `augmentList, getFocusedComponent, getTextComponent`

  ### Methods inherited from class javax.swing.[AbstractAction](../../AbstractAction.md "class in javax.swing")

  `addPropertyChangeListener, clone, firePropertyChange, getKeys, getPropertyChangeListeners, getValue, isEnabled, putValue, removePropertyChangeListener, setEnabled`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.swing.[Action](../../Action.md "interface in javax.swing")

  `accept`

  ### Methods inherited from interface java.awt.event.[ActionListener](../../../../java/awt/event/ActionListener.md "interface in java.awt.event")

  `actionPerformed`

* ## Constructor Details

  + ### HTMLTextAction

    public HTMLTextAction([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Creates a new HTMLTextAction from a string action name.

    Parameters:
    :   `name` - the name of the action
* ## Method Details

  + ### getHTMLDocument

    protected [HTMLDocument](HTMLDocument.md "class in javax.swing.text.html") getHTMLDocument([JEditorPane](../../JEditorPane.md "class in javax.swing") e)

    Returns `HTMLDocument` of the given `JEditorPane`.

    Parameters:
    :   `e` - the JEditorPane

    Returns:
    :   HTMLDocument of `e`.
  + ### getHTMLEditorKit

    protected [HTMLEditorKit](HTMLEditorKit.md "class in javax.swing.text.html") getHTMLEditorKit([JEditorPane](../../JEditorPane.md "class in javax.swing") e)

    Returns `HTMLEditorKit` of the given `JEditorPane`.

    Parameters:
    :   `e` - the JEditorPane

    Returns:
    :   HTMLEditorKit for `e`.
  + ### getElementsAt

    protected [Element](../Element.md "interface in javax.swing.text")[] getElementsAt([HTMLDocument](HTMLDocument.md "class in javax.swing.text.html") doc,
    int offset)

    Returns an array of the Elements that contain `offset`.
    The first elements corresponds to the root.

    Parameters:
    :   `doc` - an instance of HTMLDocument
    :   `offset` - value of offset

    Returns:
    :   an array of the Elements that contain `offset`
  + ### elementCountToTag

    protected int elementCountToTag([HTMLDocument](HTMLDocument.md "class in javax.swing.text.html") doc,
    int offset,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") tag)

    Returns number of elements, starting at the deepest leaf, needed
    to get to an element representing `tag`. This will
    return -1 if no elements is found representing `tag`,
    or 0 if the parent of the leaf at `offset` represents
    `tag`.

    Parameters:
    :   `doc` - an instance of HTMLDocument
    :   `offset` - an offset to start from
    :   `tag` - tag to represent

    Returns:
    :   number of elements
  + ### findElementMatchingTag

    protected [Element](../Element.md "interface in javax.swing.text") findElementMatchingTag([HTMLDocument](HTMLDocument.md "class in javax.swing.text.html") doc,
    int offset,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") tag)

    Returns the deepest element at `offset` matching
    `tag`.

    Parameters:
    :   `doc` - an instance of HTMLDocument
    :   `offset` - the specified offset >= 0
    :   `tag` - an instance of HTML.Tag

    Returns:
    :   the deepest element