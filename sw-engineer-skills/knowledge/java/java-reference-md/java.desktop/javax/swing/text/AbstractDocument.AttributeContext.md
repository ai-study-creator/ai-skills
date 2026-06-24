Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Interface AbstractDocument.AttributeContext

All Known Implementing Classes:
:   `StyleContext`, `StyleSheet`

Enclosing class:
:   `AbstractDocument`

---

public static interface AbstractDocument.AttributeContext

An interface that can be used to allow MutableAttributeSet
implementations to use pluggable attribute compression
techniques. Each mutation of the attribute set can be
used to exchange a previous AttributeSet instance with
another, preserving the possibility of the AttributeSet
remaining immutable. An implementation is provided by
the StyleContext class.
The Element implementations provided by this class use
this interface to provide their MutableAttributeSet
implementations, so that different AttributeSet compression
techniques can be employed. The method
`getAttributeContext` should be implemented to
return the object responsible for implementing the desired
compression technique.

See Also:
:   * [`StyleContext`](StyleContext.md "class in javax.swing.text")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `AttributeSet`

  `addAttribute(AttributeSet old,
  Object name,
  Object value)`

  Adds an attribute to the given set, and returns
  the new representative set.

  `AttributeSet`

  `addAttributes(AttributeSet old,
  AttributeSet attr)`

  Adds a set of attributes to the element.

  `AttributeSet`

  `getEmptySet()`

  Fetches an empty AttributeSet.

  `void`

  `reclaim(AttributeSet a)`

  Reclaims an attribute set.

  `AttributeSet`

  `removeAttribute(AttributeSet old,
  Object name)`

  Removes an attribute from the set.

  `AttributeSet`

  `removeAttributes(AttributeSet old,
  Enumeration<?> names)`

  Removes a set of attributes for the element.

  `AttributeSet`

  `removeAttributes(AttributeSet old,
  AttributeSet attrs)`

  Removes a set of attributes for the element.

* ## Method Details

  + ### addAttribute

    [AttributeSet](AttributeSet.md "interface in javax.swing.text") addAttribute([AttributeSet](AttributeSet.md "interface in javax.swing.text") old,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Adds an attribute to the given set, and returns
    the new representative set.

    Parameters:
    :   `old` - the old attribute set
    :   `name` - the non-null attribute name
    :   `value` - the attribute value

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.addAttribute(java.lang.Object, java.lang.Object)`](MutableAttributeSet.md#addAttribute(java.lang.Object,java.lang.Object))
  + ### addAttributes

    [AttributeSet](AttributeSet.md "interface in javax.swing.text") addAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") old,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Adds a set of attributes to the element.

    Parameters:
    :   `old` - the old attribute set
    :   `attr` - the attributes to add

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.addAttribute(java.lang.Object, java.lang.Object)`](MutableAttributeSet.md#addAttribute(java.lang.Object,java.lang.Object))
  + ### removeAttribute

    [AttributeSet](AttributeSet.md "interface in javax.swing.text") removeAttribute([AttributeSet](AttributeSet.md "interface in javax.swing.text") old,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") name)

    Removes an attribute from the set.

    Parameters:
    :   `old` - the old attribute set
    :   `name` - the non-null attribute name

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.removeAttribute(java.lang.Object)`](MutableAttributeSet.md#removeAttribute(java.lang.Object))
  + ### removeAttributes

    [AttributeSet](AttributeSet.md "interface in javax.swing.text") removeAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") old,
    [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> names)

    Removes a set of attributes for the element.

    Parameters:
    :   `old` - the old attribute set
    :   `names` - the attribute names

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.removeAttributes(java.util.Enumeration<?>)`](MutableAttributeSet.md#removeAttributes(java.util.Enumeration))
  + ### removeAttributes

    [AttributeSet](AttributeSet.md "interface in javax.swing.text") removeAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") old,
    [AttributeSet](AttributeSet.md "interface in javax.swing.text") attrs)

    Removes a set of attributes for the element.

    Parameters:
    :   `old` - the old attribute set
    :   `attrs` - the attributes

    Returns:
    :   the updated attribute set

    See Also:
    :   - [`MutableAttributeSet.removeAttributes(java.util.Enumeration<?>)`](MutableAttributeSet.md#removeAttributes(java.util.Enumeration))
  + ### getEmptySet

    [AttributeSet](AttributeSet.md "interface in javax.swing.text") getEmptySet()

    Fetches an empty AttributeSet.

    Returns:
    :   the attribute set
  + ### reclaim

    void reclaim([AttributeSet](AttributeSet.md "interface in javax.swing.text") a)

    Reclaims an attribute set.
    This is a way for a MutableAttributeSet to mark that it no
    longer need a particular immutable set. This is only necessary
    in 1.1 where there are no weak references. A 1.1 implementation
    would call this in its finalize method.

    Parameters:
    :   `a` - the attribute set to reclaim