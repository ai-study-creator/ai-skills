Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class StyleContext.SmallAttributeSet

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.StyleContext.SmallAttributeSet

All Implemented Interfaces:
:   `AttributeSet`

Enclosing class:
:   `StyleContext`

---

public class StyleContext.SmallAttributeSet
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [AttributeSet](AttributeSet.md "interface in javax.swing.text")

This class holds a small number of attributes in an array.
The storage format is key, value, key, value, etc. The size
of the set is the length of the array divided by two. By
default, this is the class that will be used to store attributes
when held in the compact shareable form.

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

  `SmallAttributeSet(Object[] attributes)`

  Constructs a SmallAttributeSet.

  `SmallAttributeSet(AttributeSet attrs)`

  Constructs a SmallAttributeSet.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Clones a set of attributes.

  `boolean`

  `containsAttribute(Object name,
  Object value)`

  Checks whether a given attribute name/value is defined.

  `boolean`

  `containsAttributes(AttributeSet attrs)`

  Checks whether the attribute set contains all of
  the given attributes.

  `AttributeSet`

  `copyAttributes()`

  Copies a set of attributes.

  `boolean`

  `equals(Object obj)`

  Compares this object to the specified object.

  `Object`

  `getAttribute(Object key)`

  Gets the value of an attribute.

  `int`

  `getAttributeCount()`

  Gets the number of attributes that are defined.

  `Enumeration<?>`

  `getAttributeNames()`

  Gets the names of all attributes.

  `AttributeSet`

  `getResolveParent()`

  If not overridden, the resolving parent defaults to
  the parent element.

  `int`

  `hashCode()`

  Returns a hashcode for this set of attributes.

  `boolean`

  `isDefined(Object key)`

  Checks whether a given attribute is defined.

  `boolean`

  `isEqual(AttributeSet attr)`

  Checks whether two attribute sets are equal.

  `String`

  `toString()`

  Returns a string showing the key/value pairs.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SmallAttributeSet

    public SmallAttributeSet([Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] attributes)

    Constructs a SmallAttributeSet.

    Parameters:
    :   `attributes` - the attributes
  + ### SmallAttributeSet

    public SmallAttributeSet([AttributeSet](AttributeSet.md "interface in javax.swing.text") attrs)

    Constructs a SmallAttributeSet.

    Parameters:
    :   `attrs` - the attributes
* ## Method Details

  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string showing the key/value pairs.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string showing the key/value pairs
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
    :   `obj` - the object to compare with.

    Returns:
    :   `true` if the objects are equal;
        `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Clones a set of attributes. Since the set is immutable, a
    clone is basically the same set.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the set of attributes

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### getAttributeCount

    public int getAttributeCount()

    Gets the number of attributes that are defined.

    Specified by:
    :   `getAttributeCount` in interface `AttributeSet`

    Returns:
    :   the number of attributes

    See Also:
    :   - [`AttributeSet.getAttributeCount()`](AttributeSet.md#getAttributeCount())
  + ### isDefined

    public boolean isDefined([Object](../../../../java.base/java/lang/Object.md "class in java.lang") key)

    Checks whether a given attribute is defined.

    Specified by:
    :   `isDefined` in interface `AttributeSet`

    Parameters:
    :   `key` - the attribute key

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

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") key)

    Gets the value of an attribute.

    Specified by:
    :   `getAttribute` in interface `AttributeSet`

    Parameters:
    :   `key` - the attribute name

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
    :   the attribute names

    See Also:
    :   - [`AttributeSet.getAttributeNames()`](AttributeSet.md#getAttributeNames())
  + ### containsAttribute

    public boolean containsAttribute([Object](../../../../java.base/java/lang/Object.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Checks whether a given attribute name/value is defined.

    Specified by:
    :   `containsAttribute` in interface `AttributeSet`

    Parameters:
    :   `name` - the attribute name
    :   `value` - the attribute value

    Returns:
    :   true if the name/value is defined

    See Also:
    :   - [`AttributeSet.containsAttribute(java.lang.Object, java.lang.Object)`](AttributeSet.md#containsAttribute(java.lang.Object,java.lang.Object))
  + ### containsAttributes

    public boolean containsAttributes([AttributeSet](AttributeSet.md "interface in javax.swing.text") attrs)

    Checks whether the attribute set contains all of
    the given attributes.

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

    If not overridden, the resolving parent defaults to
    the parent element.

    Specified by:
    :   `getResolveParent` in interface `AttributeSet`

    Returns:
    :   the attributes from the parent

    See Also:
    :   - [`AttributeSet.getResolveParent()`](AttributeSet.md#getResolveParent())