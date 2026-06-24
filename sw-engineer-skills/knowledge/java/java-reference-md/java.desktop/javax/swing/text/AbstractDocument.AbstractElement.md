Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class AbstractDocument.AbstractElement

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.AbstractDocument.AbstractElement

All Implemented Interfaces:
:   `Serializable`, `AttributeSet`, `Element`, `MutableAttributeSet`, `TreeNode`

Direct Known Subclasses:
:   `AbstractDocument.BranchElement`, `AbstractDocument.LeafElement`

Enclosing class:
:   `AbstractDocument`

---

public abstract class AbstractDocument.AbstractElement
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Element](Element.md "interface in javax.swing.text"), [MutableAttributeSet](MutableAttributeSet.md "interface in javax.swing.text"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), [TreeNode](../tree/TreeNode.md "interface in javax.swing.tree")

Implements the abstract part of an element. By default elements
support attributes by having a field that represents the immutable
part of the current attribute set for the element. The element itself
implements MutableAttributeSet which can be used to modify the set
by fetching a new immutable set. The immutable sets are provided
by the AttributeContext associated with the document.

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

  `AbstractElement(Element parent,
  AttributeSet a)`

  Creates a new AbstractElement.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAttribute(Object name,
  Object value)`

  Adds an attribute to the element.

  `void`

  `addAttributes(AttributeSet attr)`

  Adds a set of attributes to the element.

  `abstract Enumeration<TreeNode>`

  `children()`

  Returns the children of the receiver as an
  `Enumeration`.

  `boolean`

  `containsAttribute(Object name,
  Object value)`

  Checks whether a given attribute name/value is defined.

  `boolean`

  `containsAttributes(AttributeSet attrs)`

  Checks whether the element contains all the attributes.

  `AttributeSet`

  `copyAttributes()`

  Copies a set of attributes.

  `void`

  `dump(PrintStream psOut,
  int indentAmount)`

  Dumps a debugging representation of the element hierarchy.

  `abstract boolean`

  `getAllowsChildren()`

  Returns true if the receiver allows children.

  `Object`

  `getAttribute(Object attrName)`

  Gets the value of an attribute.

  `int`

  `getAttributeCount()`

  Gets the number of attributes that are defined.

  `Enumeration<?>`

  `getAttributeNames()`

  Gets the names of all attributes.

  `AttributeSet`

  `getAttributes()`

  Gets the attributes for the element.

  `TreeNode`

  `getChildAt(int childIndex)`

  Returns the child `TreeNode` at index
  `childIndex`.

  `int`

  `getChildCount()`

  Returns the number of children `TreeNode`'s
  receiver contains.

  `Document`

  `getDocument()`

  Retrieves the underlying model.

  `abstract Element`

  `getElement(int index)`

  Gets a child element.

  `abstract int`

  `getElementCount()`

  Gets the number of children for the element.

  `abstract int`

  `getElementIndex(int offset)`

  Gets the child element index closest to the given model offset.

  `abstract int`

  `getEndOffset()`

  Gets the ending offset in the model for the element.

  `int`

  `getIndex(TreeNode node)`

  Returns the index of `node` in the receivers children.

  `String`

  `getName()`

  Gets the name of the element.

  `TreeNode`

  `getParent()`

  Returns the parent `TreeNode` of the receiver.

  `Element`

  `getParentElement()`

  Gets the parent of the element.

  `AttributeSet`

  `getResolveParent()`

  Gets the resolving parent.

  `abstract int`

  `getStartOffset()`

  Gets the starting offset in the model for the element.

  `boolean`

  `isDefined(Object attrName)`

  Checks whether a given attribute is defined.

  `boolean`

  `isEqual(AttributeSet attr)`

  Checks whether two attribute sets are equal.

  `abstract boolean`

  `isLeaf()`

  Checks whether the element is a leaf.

  `void`

  `removeAttribute(Object name)`

  Removes an attribute from the set.

  `void`

  `removeAttributes(Enumeration<?> names)`

  Removes a set of attributes for the element.

  `void`

  `removeAttributes(AttributeSet attrs)`

  Removes a set of attributes for the element.

  `void`

  `setResolveParent(AttributeSet parent)`

  Sets the resolving parent.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AbstractElement

    public AbstractElement([Element](Element.md "interface in javax.swing.text") parent,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") a)

    Creates a new AbstractElement.

    Parameters:
    :   `parent` - the parent element
    :   `a` - the attributes for the element

    Since:
    :   1.4
* ## Method Details

  + ### dump

    public void dump([PrintStream](../../../../java.base/java/io/PrintStream.md "class in java.io") psOut,
    int indentAmount)

    Dumps a debugging representation of the element hierarchy.

    Parameters:
    :   `psOut` - the output stream
    :   `indentAmount` - the indentation level >= 0
  + ### getAttributeCount

    public int getAttributeCount()

    Gets the number of attributes that are defined.

    Specified by:
    :   `getAttributeCount` in interface `AttributeSet`

    Returns:
    :   the number of attributes >= 0

    See Also:
    :   - [`AttributeSet.getAttributeCount()`](AttributeSet.md#getAttributeCount())
  + ### isDefined

    public boolean isDefined([Object](../../../../java.base/java/lang/Object.md "class in java.lang") attrName)

    Checks whether a given attribute is defined.

    Specified by:
    :   `isDefined` in interface `AttributeSet`

    Parameters:
    :   `attrName` - the non-null attribute name

    Returns:
    :   true if the attribute is defined

    See Also:
    :   - [`AttributeSet.isDefined(java.lang.Object)`](AttributeSet.md#isDefined(java.lang.Object))
  + ### isEqual

    public boolean isEqual([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Checks whether two attribute sets are equal.

    Specified by:
    :   `isEqual` in interface `AttributeSet`

    Parameters:
    :   `attr` - the attribute set to check against

    Returns:
    :   true if the same

    See Also:
    :   - [`AttributeSet.isEqual(javax.swing.text.AttributeSet)`](AttributeSet.md#isEqual(javax.swing.text.AttributeSet))
  + ### copyAttributes

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") copyAttributes()

    Copies a set of attributes.

    Specified by:
    :   `copyAttributes` in interface `AttributeSet`

    Returns:
    :   the copy

    See Also:
    :   - [`AttributeSet.copyAttributes()`](AttributeSet.md#copyAttributes())
  + ### getAttribute

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") attrName)

    Gets the value of an attribute.

    Specified by:
    :   `getAttribute` in interface `AttributeSet`

    Parameters:
    :   `attrName` - the non-null attribute name

    Returns:
    :   the attribute value

    See Also:
    :   - [`AttributeSet.getAttribute(java.lang.Object)`](AttributeSet.md#getAttribute(java.lang.Object))
  + ### getAttributeNames

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> getAttributeNames()

    Gets the names of all attributes.

    Specified by:
    :   `getAttributeNames` in interface `AttributeSet`

    Returns:
    :   the attribute names as an enumeration

    See Also:
    :   - [`AttributeSet.getAttributeNames()`](AttributeSet.md#getAttributeNames())
  + ### containsAttribute

    public boolean containsAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Checks whether a given attribute name/value is defined.

    Specified by:
    :   `containsAttribute` in interface `AttributeSet`

    Parameters:
    :   `name` - the non-null attribute name
    :   `value` - the attribute value

    Returns:
    :   true if the name/value is defined

    See Also:
    :   - [`AttributeSet.containsAttribute(java.lang.Object, java.lang.Object)`](AttributeSet.md#containsAttribute(java.lang.Object,java.lang.Object))
  + ### containsAttributes

    public boolean containsAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attrs)

    Checks whether the element contains all the attributes.

    Specified by:
    :   `containsAttributes` in interface `AttributeSet`

    Parameters:
    :   `attrs` - the attributes to check

    Returns:
    :   true if the element contains all the attributes

    See Also:
    :   - [`AttributeSet.containsAttributes(javax.swing.text.AttributeSet)`](AttributeSet.md#containsAttributes(javax.swing.text.AttributeSet))
  + ### getResolveParent

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") getResolveParent()

    Gets the resolving parent.
    If not overridden, the resolving parent defaults to
    the parent element.

    Specified by:
    :   `getResolveParent` in interface `AttributeSet`

    Returns:
    :   the attributes from the parent, `null` if none

    See Also:
    :   - [`AttributeSet.getResolveParent()`](AttributeSet.md#getResolveParent())
  + ### addAttribute

    public void addAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Adds an attribute to the element.

    Specified by:
    :   `addAttribute` in interface `MutableAttributeSet`

    Parameters:
    :   `name` - the non-null attribute name
    :   `value` - the attribute value

    See Also:
    :   - [`MutableAttributeSet.addAttribute(java.lang.Object, java.lang.Object)`](MutableAttributeSet.md#addAttribute(java.lang.Object,java.lang.Object))
  + ### addAttributes

    public void addAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Adds a set of attributes to the element.

    Specified by:
    :   `addAttributes` in interface `MutableAttributeSet`

    Parameters:
    :   `attr` - the attributes to add

    See Also:
    :   - [`MutableAttributeSet.addAttribute(java.lang.Object, java.lang.Object)`](MutableAttributeSet.md#addAttribute(java.lang.Object,java.lang.Object))
  + ### removeAttribute

    public void removeAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name)

    Removes an attribute from the set.

    Specified by:
    :   `removeAttribute` in interface `MutableAttributeSet`

    Parameters:
    :   `name` - the non-null attribute name

    See Also:
    :   - [`MutableAttributeSet.removeAttribute(java.lang.Object)`](MutableAttributeSet.md#removeAttribute(java.lang.Object))
  + ### removeAttributes

    public void removeAttributes([Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> names)

    Removes a set of attributes for the element.

    Specified by:
    :   `removeAttributes` in interface `MutableAttributeSet`

    Parameters:
    :   `names` - the attribute names

    See Also:
    :   - [`MutableAttributeSet.removeAttributes(java.util.Enumeration<?>)`](MutableAttributeSet.md#removeAttributes(java.util.Enumeration))
  + ### removeAttributes

    public void removeAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attrs)

    Removes a set of attributes for the element.

    Specified by:
    :   `removeAttributes` in interface `MutableAttributeSet`

    Parameters:
    :   `attrs` - the attributes

    See Also:
    :   - [`MutableAttributeSet.removeAttributes(java.util.Enumeration<?>)`](MutableAttributeSet.md#removeAttributes(java.util.Enumeration))
  + ### setResolveParent

    public void setResolveParent([AttributeSet](AttributeSet.md "interface in javax.swing.text") parent)

    Sets the resolving parent.

    Specified by:
    :   `setResolveParent` in interface `MutableAttributeSet`

    Parameters:
    :   `parent` - the parent, null if none

    See Also:
    :   - [`MutableAttributeSet.setResolveParent(javax.swing.text.AttributeSet)`](MutableAttributeSet.md#setResolveParent(javax.swing.text.AttributeSet))
  + ### getDocument

    public [Document](Document.md "interface in javax.swing.text") getDocument()

    Retrieves the underlying model.

    Specified by:
    :   `getDocument` in interface `Element`

    Returns:
    :   the model
  + ### getParentElement

    public [Element](Element.md "interface in javax.swing.text") getParentElement()

    Gets the parent of the element.

    Specified by:
    :   `getParentElement` in interface `Element`

    Returns:
    :   the parent
  + ### getAttributes

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") getAttributes()

    Gets the attributes for the element.

    Specified by:
    :   `getAttributes` in interface `Element`

    Returns:
    :   the attribute set
  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Gets the name of the element.

    Specified by:
    :   `getName` in interface `Element`

    Returns:
    :   the name, null if none
  + ### getStartOffset

    public abstract int getStartOffset()

    Gets the starting offset in the model for the element.

    Specified by:
    :   `getStartOffset` in interface `Element`

    Returns:
    :   the offset >= 0

    See Also:
    :   - [`Document`](Document.md "interface in javax.swing.text")
        - [`AbstractDocument`](AbstractDocument.md "class in javax.swing.text")
  + ### getEndOffset

    public abstract int getEndOffset()

    Gets the ending offset in the model for the element.

    Specified by:
    :   `getEndOffset` in interface `Element`

    Returns:
    :   the offset >= 0

    See Also:
    :   - [`Document`](Document.md "interface in javax.swing.text")
        - [`AbstractDocument`](AbstractDocument.md "class in javax.swing.text")
  + ### getElement

    public abstract [Element](Element.md "interface in javax.swing.text") getElement(int index)

    Gets a child element.

    Specified by:
    :   `getElement` in interface `Element`

    Parameters:
    :   `index` - the child index, >= 0 && < getElementCount()

    Returns:
    :   the child element
  + ### getElementCount

    public abstract int getElementCount()

    Gets the number of children for the element.

    Specified by:
    :   `getElementCount` in interface `Element`

    Returns:
    :   the number of children >= 0
  + ### getElementIndex

    public abstract int getElementIndex(int offset)

    Gets the child element index closest to the given model offset.

    Specified by:
    :   `getElementIndex` in interface `Element`

    Parameters:
    :   `offset` - the offset >= 0

    Returns:
    :   the element index >= 0
  + ### isLeaf

    public abstract boolean isLeaf()

    Checks whether the element is a leaf.

    Specified by:
    :   `isLeaf` in interface `Element`

    Specified by:
    :   `isLeaf` in interface `TreeNode`

    Returns:
    :   true if a leaf
  + ### getChildAt

    public [TreeNode](../tree/TreeNode.md "interface in javax.swing.tree") getChildAt(int childIndex)

    Returns the child `TreeNode` at index
    `childIndex`.

    Specified by:
    :   `getChildAt` in interface `TreeNode`

    Parameters:
    :   `childIndex` - index of child

    Returns:
    :   the child node at given index
  + ### getChildCount

    public int getChildCount()

    Returns the number of children `TreeNode`'s
    receiver contains.

    Specified by:
    :   `getChildCount` in interface `TreeNode`

    Returns:
    :   the number of children `TreeNodews`'s
        receiver contains
  + ### getParent

    public [TreeNode](../tree/TreeNode.md "interface in javax.swing.tree") getParent()

    Returns the parent `TreeNode` of the receiver.

    Specified by:
    :   `getParent` in interface `TreeNode`

    Returns:
    :   the parent `TreeNode` of the receiver
  + ### getIndex

    public int getIndex([TreeNode](../tree/TreeNode.md "interface in javax.swing.tree") node)

    Returns the index of `node` in the receivers children.
    If the receiver does not contain `node`, -1 will be
    returned.

    Specified by:
    :   `getIndex` in interface `TreeNode`

    Parameters:
    :   `node` - the location of interest

    Returns:
    :   the index of `node` in the receiver's
        children, or -1 if absent
  + ### getAllowsChildren

    public abstract boolean getAllowsChildren()

    Returns true if the receiver allows children.

    Specified by:
    :   `getAllowsChildren` in interface `TreeNode`

    Returns:
    :   true if the receiver allows children, otherwise false
  + ### children

    public abstract [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[TreeNode](../tree/TreeNode.md "interface in javax.swing.tree")> children()

    Returns the children of the receiver as an
    `Enumeration`.

    Specified by:
    :   `children` in interface `TreeNode`

    Returns:
    :   the children of the receiver as an `Enumeration`