Module [java.desktop](../../../../module-summary.md)

Package [javax.swing.text.html](package-summary.md)

# Class HTMLDocument.BlockElement

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.AbstractDocument.AbstractElement](../AbstractDocument.AbstractElement.md "class in javax.swing.text")

[javax.swing.text.AbstractDocument.BranchElement](../AbstractDocument.BranchElement.md "class in javax.swing.text")

javax.swing.text.html.HTMLDocument.BlockElement

All Implemented Interfaces:
:   `Serializable`, `AttributeSet`, `Element`, `MutableAttributeSet`, `TreeNode`

Enclosing class:
:   `HTMLDocument`

---

public class HTMLDocument.BlockElement
extends [AbstractDocument.BranchElement](../AbstractDocument.BranchElement.md "class in javax.swing.text")

An element that represents a structural *block* of
HTML.

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.swing.text.[AttributeSet](../AttributeSet.md "interface in javax.swing.text")

  `AttributeSet.CharacterAttribute, AttributeSet.ColorAttribute, AttributeSet.FontAttribute, AttributeSet.ParagraphAttribute`
* ## Field Summary

  ### Fields inherited from interface javax.swing.text.[AttributeSet](../AttributeSet.md "interface in javax.swing.text")

  `NameAttribute, ResolveAttribute`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BlockElement(Element parent,
  AttributeSet a)`

  Constructs a composite element that initially contains
  no children.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Gets the name of the element.

  `AttributeSet`

  `getResolveParent()`

  Gets the resolving parent.

  ### Methods inherited from class javax.swing.text.[AbstractDocument.BranchElement](../AbstractDocument.BranchElement.md "class in javax.swing.text")

  `children, getAllowsChildren, getElement, getElementCount, getElementIndex, getEndOffset, getStartOffset, isLeaf, positionToElement, replace, toString`

  ### Methods inherited from class javax.swing.text.[AbstractDocument.AbstractElement](../AbstractDocument.AbstractElement.md "class in javax.swing.text")

  `addAttribute, addAttributes, containsAttribute, containsAttributes, copyAttributes, dump, getAttribute, getAttributeCount, getAttributeNames, getAttributes, getChildAt, getChildCount, getDocument, getIndex, getParent, getParentElement, isDefined, isEqual, removeAttribute, removeAttributes, removeAttributes, setResolveParent`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BlockElement

    public BlockElement([Element](../Element.md "interface in javax.swing.text") parent,
    [AttributeSet](../AttributeSet.md "interface in javax.swing.text") a)

    Constructs a composite element that initially contains
    no children.

    Parameters:
    :   `parent` - the parent element
    :   `a` - the attributes for the element

    Since:
    :   1.4
* ## Method Details

  + ### getName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Gets the name of the element.

    Specified by:
    :   `getName` in interface `Element`

    Overrides:
    :   `getName` in class `AbstractDocument.BranchElement`

    Returns:
    :   the name, null if none
  + ### getResolveParent

    public [AttributeSet](../AttributeSet.md "interface in javax.swing.text") getResolveParent()

    Gets the resolving parent. HTML attributes are not inherited
    at the model level so we override this to return null.

    Specified by:
    :   `getResolveParent` in interface `AttributeSet`

    Overrides:
    :   `getResolveParent` in class `AbstractDocument.AbstractElement`

    Returns:
    :   null, there are none

    See Also:
    :   - [`AttributeSet.getResolveParent()`](../AttributeSet.md#getResolveParent())