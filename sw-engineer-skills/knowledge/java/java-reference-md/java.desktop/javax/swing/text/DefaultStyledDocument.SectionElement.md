Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultStyledDocument.SectionElement

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.text.AbstractDocument.AbstractElement](AbstractDocument.AbstractElement.md "class in javax.swing.text")

[javax.swing.text.AbstractDocument.BranchElement](AbstractDocument.BranchElement.md "class in javax.swing.text")

javax.swing.text.DefaultStyledDocument.SectionElement

All Implemented Interfaces:
:   `Serializable`, `AttributeSet`, `Element`, `MutableAttributeSet`, `TreeNode`

Enclosing class:
:   `DefaultStyledDocument`

---

protected class DefaultStyledDocument.SectionElement
extends [AbstractDocument.BranchElement](AbstractDocument.BranchElement.md "class in javax.swing.text")

Default root element for a document... maps out the
paragraphs/lines contained.

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

  `SectionElement()`

  Creates a new SectionElement.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getName()`

  Gets the name of the element.

  ### Methods inherited from class javax.swing.text.[AbstractDocument.BranchElement](AbstractDocument.BranchElement.md "class in javax.swing.text")

  `children, getAllowsChildren, getElement, getElementCount, getElementIndex, getEndOffset, getStartOffset, isLeaf, positionToElement, replace, toString`

  ### Methods inherited from class javax.swing.text.[AbstractDocument.AbstractElement](AbstractDocument.AbstractElement.md "class in javax.swing.text")

  `addAttribute, addAttributes, containsAttribute, containsAttributes, copyAttributes, dump, getAttribute, getAttributeCount, getAttributeNames, getAttributes, getChildAt, getChildCount, getDocument, getIndex, getParent, getParentElement, getResolveParent, isDefined, isEqual, removeAttribute, removeAttributes, removeAttributes, setResolveParent`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SectionElement

    public SectionElement()

    Creates a new SectionElement.
* ## Method Details

  + ### getName

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Gets the name of the element.

    Specified by:
    :   `getName` in interface `Element`

    Overrides:
    :   `getName` in class `AbstractDocument.BranchElement`

    Returns:
    :   the name