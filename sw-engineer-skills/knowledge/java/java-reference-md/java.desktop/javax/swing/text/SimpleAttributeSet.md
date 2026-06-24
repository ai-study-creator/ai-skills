Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class SimpleAttributeSet

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.SimpleAttributeSet

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `AttributeSet`, `MutableAttributeSet`

---

public class SimpleAttributeSet
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [MutableAttributeSet](MutableAttributeSet.md "interface in javax.swing.text"), [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

A straightforward implementation of MutableAttributeSet using a
hash table.

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

  Fields

  Modifier and Type

  Field

  Description

  `static final AttributeSet`

  `EMPTY`

  An empty attribute set.

  ### Fields inherited from interface javax.swing.text.[AttributeSet](AttributeSet.md "interface in javax.swing.text")

  `NameAttribute, ResolveAttribute`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SimpleAttributeSet()`

  Creates a new attribute set.

  `SimpleAttributeSet(AttributeSet source)`

  Creates a new attribute set based on a supplied set of attributes.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAttribute(Object name,
  Object value)`

  Adds an attribute to the list.

  `void`

  `addAttributes(AttributeSet attributes)`

  Adds a set of attributes to the list.

  `Object`

  `clone()`

  Clones a set of attributes.

  `boolean`

  `containsAttribute(Object name,
  Object value)`

  Checks whether the attribute list contains a
  specified attribute name/value pair.

  `boolean`

  `containsAttributes(AttributeSet attributes)`

  Checks whether the attribute list contains all the
  specified name/value pairs.

  `AttributeSet`

  `copyAttributes()`

  Makes a copy of the attributes.

  `boolean`

  `equals(Object obj)`

  Compares this object to the specified object.

  `Object`

  `getAttribute(Object name)`

  Gets the value of an attribute.

  `int`

  `getAttributeCount()`

  Gets a count of the number of attributes.

  `Enumeration<?>`

  `getAttributeNames()`

  Gets the names of the attributes in the set.

  `AttributeSet`

  `getResolveParent()`

  Gets the resolving parent.

  `int`

  `hashCode()`

  Returns a hashcode for this set of attributes.

  `boolean`

  `isDefined(Object attrName)`

  Tells whether a given attribute is defined.

  `boolean`

  `isEmpty()`

  Checks whether the set of attributes is empty.

  `boolean`

  `isEqual(AttributeSet attr)`

  Compares two attribute sets.

  `void`

  `removeAttribute(Object name)`

  Removes an attribute from the list.

  `void`

  `removeAttributes(Enumeration<?> names)`

  Removes a set of attributes from the list.

  `void`

  `removeAttributes(AttributeSet attributes)`

  Removes a set of attributes from the list.

  `void`

  `setResolveParent(AttributeSet parent)`

  Sets the resolving parent.

  `String`

  `toString()`

  Converts the attribute set to a String.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### EMPTY

    public static final [AttributeSet](AttributeSet.md "interface in javax.swing.text") EMPTY

    An empty attribute set.
* ## Constructor Details

  + ### SimpleAttributeSet

    public SimpleAttributeSet()

    Creates a new attribute set.
  + ### SimpleAttributeSet

    public SimpleAttributeSet([AttributeSet](AttributeSet.md "interface in javax.swing.text") source)

    Creates a new attribute set based on a supplied set of attributes.

    Parameters:
    :   `source` - the set of attributes
* ## Method Details

  + ### isEmpty

    public boolean isEmpty()

    Checks whether the set of attributes is empty.

    Returns:
    :   true if the set is empty else false
  + ### getAttributeCount

    public int getAttributeCount()

    Gets a count of the number of attributes.

    Specified by:
    :   `getAttributeCount` in interface `AttributeSet`

    Returns:
    :   the count
  + ### isDefined

    public boolean isDefined([Object](../../../../java.base/java/lang/Object.md "class in java.lang") attrName)

    Tells whether a given attribute is defined.

    Specified by:
    :   `isDefined` in interface `AttributeSet`

    Parameters:
    :   `attrName` - the attribute name

    Returns:
    :   true if the attribute is defined
  + ### isEqual

    public boolean isEqual([AttributeSet](AttributeSet.md "interface in javax.swing.text") attr)

    Compares two attribute sets.

    Specified by:
    :   `isEqual` in interface `AttributeSet`

    Parameters:
    :   `attr` - the second attribute set

    Returns:
    :   true if the sets are equal, false otherwise
  + ### copyAttributes

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") copyAttributes()

    Makes a copy of the attributes.

    Specified by:
    :   `copyAttributes` in interface `AttributeSet`

    Returns:
    :   the copy
  + ### getAttributeNames

    public [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> getAttributeNames()

    Gets the names of the attributes in the set.

    Specified by:
    :   `getAttributeNames` in interface `AttributeSet`

    Returns:
    :   the names as an `Enumeration`
  + ### getAttribute

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name)

    Gets the value of an attribute.

    Specified by:
    :   `getAttribute` in interface `AttributeSet`

    Parameters:
    :   `name` - the attribute name

    Returns:
    :   the value
  + ### containsAttribute

    public boolean containsAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Checks whether the attribute list contains a
    specified attribute name/value pair.

    Specified by:
    :   `containsAttribute` in interface `AttributeSet`

    Parameters:
    :   `name` - the name
    :   `value` - the value

    Returns:
    :   true if the name/value pair is in the list
  + ### containsAttributes

    public boolean containsAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attributes)

    Checks whether the attribute list contains all the
    specified name/value pairs.

    Specified by:
    :   `containsAttributes` in interface `AttributeSet`

    Parameters:
    :   `attributes` - the attribute list

    Returns:
    :   true if the list contains all the name/value pairs
  + ### addAttribute

    public void addAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Adds an attribute to the list.

    Specified by:
    :   `addAttribute` in interface `MutableAttributeSet`

    Parameters:
    :   `name` - the attribute name
    :   `value` - the attribute value
  + ### addAttributes

    public void addAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attributes)

    Adds a set of attributes to the list.

    Specified by:
    :   `addAttributes` in interface `MutableAttributeSet`

    Parameters:
    :   `attributes` - the set of attributes to add
  + ### removeAttribute

    public void removeAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name)

    Removes an attribute from the list.

    Specified by:
    :   `removeAttribute` in interface `MutableAttributeSet`

    Parameters:
    :   `name` - the attribute name
  + ### removeAttributes

    public void removeAttributes([Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> names)

    Removes a set of attributes from the list.

    Specified by:
    :   `removeAttributes` in interface `MutableAttributeSet`

    Parameters:
    :   `names` - the set of names to remove
  + ### removeAttributes

    public void removeAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attributes)

    Removes a set of attributes from the list.

    Specified by:
    :   `removeAttributes` in interface `MutableAttributeSet`

    Parameters:
    :   `attributes` - the set of attributes to remove
  + ### getResolveParent

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") getResolveParent()

    Gets the resolving parent. This is the set
    of attributes to resolve through if an attribute
    isn't defined locally. This is null if there
    are no other sets of attributes to resolve
    through.

    Specified by:
    :   `getResolveParent` in interface `AttributeSet`

    Returns:
    :   the parent
  + ### setResolveParent

    public void setResolveParent([AttributeSet](AttributeSet.md "interface in javax.swing.text") parent)

    Sets the resolving parent.

    Specified by:
    :   `setResolveParent` in interface `MutableAttributeSet`

    Parameters:
    :   `parent` - the parent
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Clones a set of attributes.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the new set of attributes

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### hashCode

    public int hashCode()

    Returns a hashcode for this set of attributes.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hashcode value for this set of attributes.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this object to the specified object.
    The result is `true` if the object is an equivalent
    set of attributes.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to compare this attribute set with

    Returns:
    :   `true` if the objects are equal;
        `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Converts the attribute set to a String.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string