Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLEditorKit.InsertHTMLTextAction

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.AbstractAction](../../AbstractAction.md "class in javax.swing")

[javax.swing.text.TextAction](../TextAction.md "class in javax.swing.text")

[javax.swing.text.StyledEditorKit.StyledTextAction](../StyledEditorKit.StyledTextAction.md "class in javax.swing.text")

[javax.swing.text.html.HTMLEditorKit.HTMLTextAction](HTMLEditorKit.HTMLTextAction.md "class in javax.swing.text.html")

javax.swing.text.html.HTMLEditorKit.InsertHTMLTextAction

All Implemented Interfaces:
:   `ActionListener`, `Serializable`, `Cloneable`, `EventListener`, `Action`

Enclosing class:
:   `HTMLEditorKit`

---

public static class HTMLEditorKit.InsertHTMLTextAction
extends [HTMLEditorKit.HTMLTextAction](HTMLEditorKit.HTMLTextAction.md "class in javax.swing.text.html")

InsertHTMLTextAction can be used to insert an arbitrary string of HTML
into an existing HTML document. At least two HTML.Tags need to be
supplied. The first Tag, parentTag, identifies the parent in
the document to add the elements to. The second tag, addTag,
identifies the first tag that should be added to the document as
seen in the HTML string. One important thing to remember, is that
the parser is going to generate all the appropriate tags, even if
they aren't in the HTML string passed in.

For example, lets say you wanted to create an action to insert
a table into the body. The parentTag would be HTML.Tag.BODY,
addTag would be HTML.Tag.TABLE, and the string could be something
like <table><tr><td></td></tr></table>.

There is also an option to supply an alternate parentTag and
addTag. These will be checked for if there is no parentTag at
offset.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected HTML.Tag`

  `addTag`

  Tag in HTML to start adding tags from.

  `protected HTML.Tag`

  `alternateAddTag`

  Alternate tag in HTML to start adding tags from if parentTag
  is not found and alternateParentTag is found.

  `protected HTML.Tag`

  `alternateParentTag`

  Alternate Tag to check for in the document if parentTag is
  not found.

  `protected String`

  `html`

  HTML to insert.

  `protected HTML.Tag`

  `parentTag`

  Tag to check for in the document.

  ### Fields inherited from class javax.swing.[AbstractAction](../../AbstractAction.md "class in javax.swing")

  `changeSupport, enabled`

  ### Fields inherited from interface javax.swing.[Action](../../Action.md "interface in javax.swing")

  `ACCELERATOR_KEY, ACTION_COMMAND_KEY, DEFAULT, DISPLAYED_MNEMONIC_INDEX_KEY, LARGE_ICON_KEY, LONG_DESCRIPTION, MNEMONIC_KEY, NAME, SELECTED_KEY, SHORT_DESCRIPTION, SMALL_ICON`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InsertHTMLTextAction(String name,
  String html,
  HTML.Tag parentTag,
  HTML.Tag addTag)`

  Creates a new InsertHTMLTextAction.

  `InsertHTMLTextAction(String name,
  String html,
  HTML.Tag parentTag,
  HTML.Tag addTag,
  HTML.Tag alternateParentTag,
  HTML.Tag alternateAddTag)`

  Creates a new InsertHTMLTextAction.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `actionPerformed(ActionEvent ae)`

  Inserts the HTML into the document.

  `protected void`

  `insertAtBoundary(JEditorPane editor,
  HTMLDocument doc,
  int offset,
  Element insertElement,
  String html,
  HTML.Tag parentTag,
  HTML.Tag addTag)`

  This is invoked when inserting at a boundary.

  `protected void`

  `insertAtBoundry(JEditorPane editor,
  HTMLDocument doc,
  int offset,
  Element insertElement,
  String html,
  HTML.Tag parentTag,
  HTML.Tag addTag)`

  Deprecated.

  As of Java 2 platform v1.3, use insertAtBoundary

  `protected void`

  `insertHTML(JEditorPane editor,
  HTMLDocument doc,
  int offset,
  String html,
  int popDepth,
  int pushDepth,
  HTML.Tag addTag)`

  A cover for HTMLEditorKit.insertHTML.

  ### Methods inherited from class javax.swing.text.html.[HTMLEditorKit.HTMLTextAction](HTMLEditorKit.HTMLTextAction.md "class in javax.swing.text.html")

  `elementCountToTag, findElementMatchingTag, getElementsAt, getHTMLDocument, getHTMLEditorKit`

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

* ## Field Details

  + ### html

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang") html

    HTML to insert.
  + ### parentTag

    protected [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") parentTag

    Tag to check for in the document.
  + ### addTag

    protected [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") addTag

    Tag in HTML to start adding tags from.
  + ### alternateParentTag

    protected [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") alternateParentTag

    Alternate Tag to check for in the document if parentTag is
    not found.
  + ### alternateAddTag

    protected [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") alternateAddTag

    Alternate tag in HTML to start adding tags from if parentTag
    is not found and alternateParentTag is found.
* ## Constructor Details

  + ### InsertHTMLTextAction

    public InsertHTMLTextAction([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") html,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") parentTag,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") addTag)

    Creates a new InsertHTMLTextAction.

    Parameters:
    :   `name` - a name of the action
    :   `html` - an HTML string
    :   `parentTag` - a parent tag
    :   `addTag` - the first tag to start inserting into document
  + ### InsertHTMLTextAction

    public InsertHTMLTextAction([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") html,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") parentTag,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") addTag,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") alternateParentTag,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") alternateAddTag)

    Creates a new InsertHTMLTextAction.

    Parameters:
    :   `name` - a name of the action
    :   `html` - an HTML string
    :   `parentTag` - a parent tag
    :   `addTag` - the first tag to start inserting into document
    :   `alternateParentTag` - an alternative parent tag
    :   `alternateAddTag` - an alternative tag
* ## Method Details

  + ### insertHTML

    protected void insertHTML([JEditorPane](../../JEditorPane.md "class in javax.swing") editor,
    [HTMLDocument](HTMLDocument.md "class in javax.swing.text.html") doc,
    int offset,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") html,
    int popDepth,
    int pushDepth,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") addTag)

    A cover for HTMLEditorKit.insertHTML. If an exception it
    thrown it is wrapped in a RuntimeException and thrown.

    Parameters:
    :   `editor` - an instance of JEditorPane
    :   `doc` - the document to insert into
    :   `offset` - the offset to insert HTML at
    :   `html` - an HTML string
    :   `popDepth` - the number of ElementSpec.EndTagTypes to generate
        before inserting
    :   `pushDepth` - the number of ElementSpec.StartTagTypes with a direction
        of ElementSpec.JoinNextDirection that should be generated
        before inserting, but after the end tags have been generated
    :   `addTag` - the first tag to start inserting into document
  + ### insertAtBoundary

    protected void insertAtBoundary([JEditorPane](../../JEditorPane.md "class in javax.swing") editor,
    [HTMLDocument](HTMLDocument.md "class in javax.swing.text.html") doc,
    int offset,
    [Element](../Element.md "interface in javax.swing.text") insertElement,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") html,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") parentTag,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") addTag)

    This is invoked when inserting at a boundary. It determines
    the number of pops, and then the number of pushes that need
    to be performed, and then invokes insertHTML.

    Parameters:
    :   `editor` - an instance of JEditorPane
    :   `doc` - an instance of HTMLDocument
    :   `offset` - an offset to start from
    :   `insertElement` - an instance of Element
    :   `html` - an HTML string
    :   `parentTag` - a parent tag
    :   `addTag` - the first tag to start inserting into document

    Since:
    :   1.3
  + ### insertAtBoundry

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")
    protected void insertAtBoundry([JEditorPane](../../JEditorPane.md "class in javax.swing") editor,
    [HTMLDocument](HTMLDocument.md "class in javax.swing.text.html") doc,
    int offset,
    [Element](../Element.md "interface in javax.swing.text") insertElement,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") html,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") parentTag,
    [HTML.Tag](HTML.Tag.md "class in javax.swing.text.html") addTag)

    Deprecated.

    As of Java 2 platform v1.3, use insertAtBoundary

    This is invoked when inserting at a boundary. It determines
    the number of pops, and then the number of pushes that need
    to be performed, and then invokes insertHTML.

    Parameters:
    :   `editor` - an instance of JEditorPane
    :   `doc` - an instance of HTMLDocument
    :   `offset` - an offset to start from
    :   `insertElement` - an instance of Element
    :   `html` - an HTML string
    :   `parentTag` - a parent tag
    :   `addTag` - the first tag to start inserting into document
  + ### actionPerformed

    public void actionPerformed([ActionEvent](../../../../java/awt/event/ActionEvent.md "class in java.awt.event") ae)

    Inserts the HTML into the document.

    Parameters:
    :   `ae` - the event