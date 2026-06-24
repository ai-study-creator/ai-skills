Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface Style

All Superinterfaces:
:   `AttributeSet`, `MutableAttributeSet`

All Known Implementing Classes:
:   `StyleContext.NamedStyle`

---

public interface Style
extends [MutableAttributeSet](MutableAttributeSet.md "interface in javax.swing.text")

A collection of attributes to associate with an element in a document.
Since these are typically used to associate character and paragraph
styles with the element, operations for this are provided. Other
customized attributes that get associated with the element will
effectively be name-value pairs that live in a hierarchy and if a name
(key) is not found locally, the request is forwarded to the parent.
Commonly used attributes are separated out to facilitate alternative
implementations that are more efficient.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.swing.text.[AttributeSet](AttributeSet.md "interface in javax.swing.text")

  `AttributeSet.CharacterAttribute, AttributeSet.ColorAttribute, AttributeSet.FontAttribute, AttributeSet.ParagraphAttribute`
* ## Field Summary

  ### Fields inherited from interface javax.swing.text.[AttributeSet](AttributeSet.md "interface in javax.swing.text")

  `NameAttribute, ResolveAttribute`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addChangeListener(ChangeListener l)`

  Adds a listener to track whenever an attribute
  has been changed.

  `String`

  `getName()`

  Fetches the name of the style.

  `void`

  `removeChangeListener(ChangeListener l)`

  Removes a listener that was tracking attribute changes.

  ### Methods inherited from interface javax.swing.text.[AttributeSet](AttributeSet.md "interface in javax.swing.text")

  `containsAttribute, containsAttributes, copyAttributes, getAttribute, getAttributeCount, getAttributeNames, getResolveParent, isDefined, isEqual`

  ### Methods inherited from interface javax.swing.text.[MutableAttributeSet](MutableAttributeSet.md "interface in javax.swing.text")

  `addAttribute, addAttributes, removeAttribute, removeAttributes, removeAttributes, setResolveParent`

* ## Method Details

  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Fetches the name of the style. A style is not required to be named,
    so `null` is returned if there is no name
    associated with the style.

    Returns:
    :   the name
  + ### addChangeListener

    void addChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Adds a listener to track whenever an attribute
    has been changed.

    Parameters:
    :   `l` - the change listener
  + ### removeChangeListener

    void removeChangeListener([ChangeListener](../event/ChangeListener.md "interface in javax.swing.event") l)

    Removes a listener that was tracking attribute changes.

    Parameters:
    :   `l` - the change listener