Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface StyledDocument

All Superinterfaces:
:   `Document`

All Known Implementing Classes:
:   `DefaultStyledDocument`, `HTMLDocument`

---

public interface StyledDocument
extends [Document](Document.md "interface in javax.swing.text")

Interface for a generic styled document.

* ## Field Summary

  ### Fields inherited from interface javax.swing.text.[Document](Document.md "interface in javax.swing.text")

  `StreamDescriptionProperty, TitleProperty`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Style`

  `addStyle(String nm,
  Style parent)`

  Adds a new style into the logical style hierarchy.

  `Color`

  `getBackground(AttributeSet attr)`

  Takes a set of attributes and turn it into a background color
  specification.

  `Element`

  `getCharacterElement(int pos)`

  Gets the element that represents the character that
  is at the given offset within the document.

  `Font`

  `getFont(AttributeSet attr)`

  Takes a set of attributes and turn it into a font
  specification.

  `Color`

  `getForeground(AttributeSet attr)`

  Takes a set of attributes and turn it into a foreground color
  specification.

  `Style`

  `getLogicalStyle(int p)`

  Gets a logical style for a given position in a paragraph.

  `Element`

  `getParagraphElement(int pos)`

  Gets the element that represents the paragraph that
  encloses the given offset within the document.

  `Style`

  `getStyle(String nm)`

  Fetches a named style previously added.

  `void`

  `removeStyle(String nm)`

  Removes a named style previously added to the document.

  `void`

  `setCharacterAttributes(int offset,
  int length,
  AttributeSet s,
  boolean replace)`

  Changes the content element attributes used for the given range of
  existing content in the document.

  `void`

  `setLogicalStyle(int pos,
  Style s)`

  Sets the logical style to use for the paragraph at the
  given position.

  `void`

  `setParagraphAttributes(int offset,
  int length,
  AttributeSet s,
  boolean replace)`

  Sets paragraph attributes.

  ### Methods inherited from interface javax.swing.text.[Document](Document.md "interface in javax.swing.text")

  `addDocumentListener, addUndoableEditListener, createPosition, getDefaultRootElement, getEndPosition, getLength, getProperty, getRootElements, getStartPosition, getText, getText, insertString, putProperty, remove, removeDocumentListener, removeUndoableEditListener, render`

* ## Method Details

  + ### addStyle

    [Style](Style.md "interface in javax.swing.text") addStyle([String](../../../../java.base/java/lang/String.md "class in java.lang") nm,
    [Style](Style.md "interface in javax.swing.text") parent)

    Adds a new style into the logical style hierarchy. Style attributes
    resolve from bottom up so an attribute specified in a child
    will override an attribute specified in the parent.

    Parameters:
    :   `nm` - the name of the style (must be unique within the
        collection of named styles). The name may be null if the style
        is unnamed, but the caller is responsible
        for managing the reference returned as an unnamed style can't
        be fetched by name. An unnamed style may be useful for things
        like character attribute overrides such as found in a style
        run.
    :   `parent` - the parent style. This may be null if unspecified
        attributes need not be resolved in some other style.

    Returns:
    :   the style
  + ### removeStyle

    void removeStyle([String](../../../../java.base/java/lang/String.md "class in java.lang") nm)

    Removes a named style previously added to the document.

    Parameters:
    :   `nm` - the name of the style to remove
  + ### getStyle

    [Style](Style.md "interface in javax.swing.text") getStyle([String](../../../../java.base/java/lang/String.md "class in java.lang") nm)

    Fetches a named style previously added.

    Parameters:
    :   `nm` - the name of the style

    Returns:
    :   the style
  + ### setCharacterAttributes

    void setCharacterAttributes(int offset,
    int length,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") s,
    boolean replace)

    Changes the content element attributes used for the given range of
    existing content in the document. All of the attributes
    defined in the given Attributes argument are applied to the
    given range. This method can be used to completely remove
    all content level attributes for the given range by
    giving an Attributes argument that has no attributes defined
    and setting replace to true.

    Parameters:
    :   `offset` - the start of the change >= 0
    :   `length` - the length of the change >= 0
    :   `s` - the non-null attributes to change to. Any attributes
        defined will be applied to the text for the given range.
    :   `replace` - indicates whether or not the previous
        attributes should be cleared before the new attributes
        as set. If true, the operation will replace the
        previous attributes entirely. If false, the new
        attributes will be merged with the previous attributes.
  + ### setParagraphAttributes

    void setParagraphAttributes(int offset,
    int length,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") s,
    boolean replace)

    Sets paragraph attributes.

    Parameters:
    :   `offset` - the start of the change >= 0
    :   `length` - the length of the change >= 0
    :   `s` - the non-null attributes to change to. Any attributes
        defined will be applied to the text for the given range.
    :   `replace` - indicates whether or not the previous
        attributes should be cleared before the new attributes
        are set. If true, the operation will replace the
        previous attributes entirely. If false, the new
        attributes will be merged with the previous attributes.
  + ### setLogicalStyle

    void setLogicalStyle(int pos,
    [Style](Style.md "interface in javax.swing.text") s)

    Sets the logical style to use for the paragraph at the
    given position. If attributes aren't explicitly set
    for character and paragraph attributes they will resolve
    through the logical style assigned to the paragraph, which
    in turn may resolve through some hierarchy completely
    independent of the element hierarchy in the document.

    Parameters:
    :   `pos` - the starting position >= 0
    :   `s` - the style to set
  + ### getLogicalStyle

    [Style](Style.md "interface in javax.swing.text") getLogicalStyle(int p)

    Gets a logical style for a given position in a paragraph.

    Parameters:
    :   `p` - the position >= 0

    Returns:
    :   the style
  + ### getParagraphElement

    [Element](Element.md "interface in javax.swing.text") getParagraphElement(int pos)

    Gets the element that represents the paragraph that
    encloses the given offset within the document.

    Parameters:
    :   `pos` - the offset >= 0

    Returns:
    :   the element
  + ### getCharacterElement

    [Element](Element.md "interface in javax.swing.text") getCharacterElement(int pos)

    Gets the element that represents the character that
    is at the given offset within the document.

    Parameters:
    :   `pos` - the offset >= 0

    Returns:
    :   the element
  + ### getForeground

    [Color](../../../java/awt/Color.md "class in java.awt") getForeground([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Takes a set of attributes and turn it into a foreground color
    specification. This might be used to specify things
    like brighter, more hue, etc.

    Parameters:
    :   `attr` - the set of attributes

    Returns:
    :   the color
  + ### getBackground

    [Color](../../../java/awt/Color.md "class in java.awt") getBackground([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Takes a set of attributes and turn it into a background color
    specification. This might be used to specify things
    like brighter, more hue, etc.

    Parameters:
    :   `attr` - the set of attributes

    Returns:
    :   the color
  + ### getFont

    [Font](../../../java/awt/Font.md "class in java.awt") getFont([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Takes a set of attributes and turn it into a font
    specification. This can be used to turn things like
    family, style, size, etc into a font that is available
    on the system the document is currently being used on.

    Parameters:
    :   `attr` - the set of attributes

    Returns:
    :   the font