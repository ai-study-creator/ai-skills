Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class AbstractDocument.BranchElement

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.AbstractDocument.AbstractElement](AbstractDocument.AbstractElement.md "class in javax.swing.text")

javax.swing.text.AbstractDocument.BranchElement

All Implemented Interfaces:
:   `Serializable`, `AttributeSet`, `Element`, `MutableAttributeSet`, `TreeNode`

Direct Known Subclasses:
:   `DefaultStyledDocument.SectionElement`, `HTMLDocument.BlockElement`

Enclosing class:
:   `AbstractDocument`

---

public class AbstractDocument.BranchElement
extends [AbstractDocument.AbstractElement](AbstractDocument.AbstractElement.md "class in javax.swing.text")

Implements a composite element that contains other elements.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.swing.text.[AttributeSet](AttributeSet.md "interface in javax.swing.text")

  `AttributeSet.CharacterAttribute, AttributeSet.ColorAttribute, AttributeSet.FontAttribute, AttributeSet.ParagraphAttribute`
* ## Field Summary

  ### Fields inherited from interface javax.swing.text.[AttributeSet](AttributeSet.md "interface in javax.swing.text")

  `NameAttribute, ResolveAttribute`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BranchElement(Element parent,
  AttributeSet a)`

  Constructs a composite element that initially contains
  no children.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Enumeration<TreeNode>`

  `children()`

  Returns the children of the receiver as an
  `Enumeration`.

  `boolean`

  `getAllowsChildren()`

  Returns true if the receiver allows children.

  `Element`

  `getElement(int index)`

  Gets a child element.

  `int`

  `getElementCount()`

  Gets the number of children for the element.

  `int`

  `getElementIndex(int offset)`

  Gets the child element index closest to the given model offset.

  `int`

  `getEndOffset()`

  Gets the ending offset in the model for the element.

  `String`

  `getName()`

  Gets the element name.

  `int`

  `getStartOffset()`

  Gets the starting offset in the model for the element.

  `boolean`

  `isLeaf()`

  Checks whether the element is a leaf.

  `Element`

  `positionToElement(int pos)`

  Gets the child element that contains
  the given model position.

  `void`

  `replace(int offset,
  int length,
  Element[] elems)`

  Replaces content with a new set of elements.

  `String`

  `toString()`

  Converts the element to a string.

  ### Methods inherited from class javax.swing.text.[AbstractDocument.AbstractElement](AbstractDocument.AbstractElement.md "class in javax.swing.text")

  `addAttribute, addAttributes, containsAttribute, containsAttributes, copyAttributes, dump, getAttribute, getAttributeCount, getAttributeNames, getAttributes, getChildAt, getChildCount, getDocument, getIndex, getParent, getParentElement, getResolveParent, isDefined, isEqual, removeAttribute, removeAttributes, removeAttributes, setResolveParent`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BranchElement

    public BranchElement([Element](Element.md "interface in javax.swing.text") parent,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") a)

    Constructs a composite element that initially contains
    no children.

    Parameters:
    :   `parent` - The parent element
    :   `a` - the attributes for the element

    Since:
    :   1.4
* ## Method Details

  + ### positionToElement

    public [Element](Element.md "interface in javax.swing.text") positionToElement(int pos)

    Gets the child element that contains
    the given model position.

    Parameters:
    :   `pos` - the position >= 0

    Returns:
    :   the element, null if none
  + ### replace

    public void replace(int offset,
    int length,
    [Element](Element.md "interface in javax.swing.text")[] elems)

    Replaces content with a new set of elements.

    Parameters:
    :   `offset` - the starting offset >= 0
    :   `length` - the length to replace >= 0
    :   `elems` - the new elements
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Converts the element to a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string
  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Gets the element name.

    Specified by:
    :   `getName` in interface `Element`

    Overrides:
    :   `getName` in class `AbstractDocument.AbstractElement`

    Returns:
    :   the element name
  + ### getStartOffset

    public int getStartOffset()

    Gets the starting offset in the model for the element.

    Specified by:
    :   `getStartOffset` in interface `Element`

    Specified by:
    :   `getStartOffset` in class `AbstractDocument.AbstractElement`

    Returns:
    :   the offset >= 0

    See Also:
    :   - [`Document`](Document.md "interface in javax.swing.text")
        - [`AbstractDocument`](AbstractDocument.md "class in javax.swing.text")
  + ### getEndOffset

    public int getEndOffset()

    Gets the ending offset in the model for the element.

    Specified by:
    :   `getEndOffset` in interface `Element`

    Specified by:
    :   `getEndOffset` in class `AbstractDocument.AbstractElement`

    Returns:
    :   the offset >= 0

    Throws:
    :   `NullPointerException` - if this element has no children

    See Also:
    :   - [`Document`](Document.md "interface in javax.swing.text")
        - [`AbstractDocument`](AbstractDocument.md "class in javax.swing.text")
  + ### getElement

    public [Element](Element.md "interface in javax.swing.text") getElement(int index)

    Gets a child element.

    Specified by:
    :   `getElement` in interface `Element`

    Specified by:
    :   `getElement` in class `AbstractDocument.AbstractElement`

    Parameters:
    :   `index` - the child index, >= 0 && < getElementCount()

    Returns:
    :   the child element, null if none
  + ### getElementCount

    public int getElementCount()

    Gets the number of children for the element.

    Specified by:
    :   `getElementCount` in interface `Element`

    Specified by:
    :   `getElementCount` in class `AbstractDocument.AbstractElement`

    Returns:
    :   the number of children >= 0
  + ### getElementIndex

    public int getElementIndex(int offset)

    Gets the child element index closest to the given model offset.

    Specified by:
    :   `getElementIndex` in interface `Element`

    Specified by:
    :   `getElementIndex` in class `AbstractDocument.AbstractElement`

    Parameters:
    :   `offset` - the offset >= 0

    Returns:
    :   the element index >= 0
  + ### isLeaf

    public boolean isLeaf()

    Checks whether the element is a leaf.

    Specified by:
    :   `isLeaf` in interface `Element`

    Specified by:
    :   `isLeaf` in interface `TreeNode`

    Specified by:
    :   `isLeaf` in class `AbstractDocument.AbstractElement`

    Returns:
    :   true if a leaf
  + ### getAllowsChildren

    public boolean getAllowsChildren()

    Returns true if the receiver allows children.

    Specified by:
    :   `getAllowsChildren` in interface `TreeNode`

    Specified by:
    :   `getAllowsChildren` in class `AbstractDocument.AbstractElement`

    Returns:
    :   true if the receiver allows children, otherwise false
  + ### children

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreeNode](../tree/TreeNode.md "interface in javax.swing.tree")> children()

    Returns the children of the receiver as an
    `Enumeration`.

    Specified by:
    :   `children` in interface `TreeNode`

    Specified by:
    :   `children` in class `AbstractDocument.AbstractElement`

    Returns:
    :   the children of the receiver