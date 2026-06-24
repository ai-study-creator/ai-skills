Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface MutableAttributeSet

All Superinterfaces:
:   `AttributeSet`

All Known Subinterfaces:
:   `Style`

All Known Implementing Classes:
:   `AbstractDocument.AbstractElement`, `AbstractDocument.BranchElement`, `AbstractDocument.LeafElement`, `DefaultStyledDocument.SectionElement`, `HTMLDocument.BlockElement`, `HTMLDocument.RunElement`, `SimpleAttributeSet`, `StyleContext.NamedStyle`

---

public interface MutableAttributeSet
extends [AttributeSet](AttributeSet.md "interface in javax.swing.text")

A generic interface for a mutable collection of unique attributes.
Implementations will probably want to provide a constructor of the
form:

```
 public XXXAttributeSet(ConstAttributeSet source);
```

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

  `addAttribute(Object name,
  Object value)`

  Creates a new attribute set similar to this one except that it contains
  an attribute with the given name and value.

  `void`

  `addAttributes(AttributeSet attributes)`

  Creates a new attribute set similar to this one except that it contains
  the given attributes and values.

  `void`

  `removeAttribute(Object name)`

  Removes an attribute with the given `name`.

  `void`

  `removeAttributes(Enumeration<?> names)`

  Removes an attribute set with the given `names`.

  `void`

  `removeAttributes(AttributeSet attributes)`

  Removes a set of attributes with the given `name`.

  `void`

  `setResolveParent(AttributeSet parent)`

  Sets the resolving parent.

  ### Methods inherited from interface javax.swing.text.[AttributeSet](AttributeSet.md "interface in javax.swing.text")

  `containsAttribute, containsAttributes, copyAttributes, getAttribute, getAttributeCount, getAttributeNames, getResolveParent, isDefined, isEqual`

* ## Method Details

  + ### addAttribute

    void addAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Creates a new attribute set similar to this one except that it contains
    an attribute with the given name and value. The object must be
    immutable, or not mutated by any client.

    Parameters:
    :   `name` - the name
    :   `value` - the value
  + ### addAttributes

    void addAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attributes)

    Creates a new attribute set similar to this one except that it contains
    the given attributes and values.

    Parameters:
    :   `attributes` - the set of attributes
  + ### removeAttribute

    void removeAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name)

    Removes an attribute with the given `name`.

    Parameters:
    :   `name` - the attribute name
  + ### removeAttributes

    void removeAttributes([Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> names)

    Removes an attribute set with the given `names`.

    Parameters:
    :   `names` - the set of names
  + ### removeAttributes

    void removeAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attributes)

    Removes a set of attributes with the given `name`.

    Parameters:
    :   `attributes` - the set of attributes
  + ### setResolveParent

    void setResolveParent([AttributeSet](AttributeSet.md "interface in javax.swing.text") parent)

    Sets the resolving parent. This is the set
    of attributes to resolve through if an attribute
    isn't defined locally.

    Parameters:
    :   `parent` - the parent