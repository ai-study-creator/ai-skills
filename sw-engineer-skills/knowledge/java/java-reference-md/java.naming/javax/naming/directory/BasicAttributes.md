Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class BasicAttributes

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.directory.BasicAttributes

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attributes`

---

public class BasicAttributes
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Attributes](Attributes.md "interface in javax.naming.directory")

This class provides a basic implementation
of the Attributes interface.

BasicAttributes is either case-sensitive or case-insensitive (case-ignore).
This property is determined at the time the BasicAttributes constructor
is called.
In a case-insensitive BasicAttributes, the case of its attribute identifiers
is ignored when searching for an attribute, or adding attributes.
In a case-sensitive BasicAttributes, the case is significant.

When the BasicAttributes class needs to create an Attribute, it
uses BasicAttribute. There is no other dependency on BasicAttribute.

Note that updates to BasicAttributes (such as adding or removing an attribute)
does not affect the corresponding representation in the directory.
Updates to the directory can only be effected
using operations in the DirContext interface.

A BasicAttributes instance is not synchronized against concurrent
multithreaded access. Multiple threads trying to access and modify
a single BasicAttributes instance should lock the object.

Since:
:   1.3

See Also:
:   * [`DirContext.getAttributes(javax.naming.Name)`](DirContext.md#getAttributes(javax.naming.Name))
    * [`DirContext.modifyAttributes(javax.naming.Name, int, javax.naming.directory.Attributes)`](DirContext.md#modifyAttributes(javax.naming.Name,int,javax.naming.directory.Attributes))
    * [`DirContext.bind(javax.naming.Name, java.lang.Object, javax.naming.directory.Attributes)`](DirContext.md#bind(javax.naming.Name,java.lang.Object,javax.naming.directory.Attributes))
    * [`DirContext.rebind(javax.naming.Name, java.lang.Object, javax.naming.directory.Attributes)`](DirContext.md#rebind(javax.naming.Name,java.lang.Object,javax.naming.directory.Attributes))
    * [`DirContext.createSubcontext(javax.naming.Name, javax.naming.directory.Attributes)`](DirContext.md#createSubcontext(javax.naming.Name,javax.naming.directory.Attributes))
    * [`DirContext.search(javax.naming.Name, javax.naming.directory.Attributes, java.lang.String[])`](DirContext.md#search(javax.naming.Name,javax.naming.directory.Attributes,java.lang.String%5B%5D))
    * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.BasicAttributes)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `BasicAttributes()`

  Constructs a new instance of Attributes.

  `BasicAttributes(boolean ignoreCase)`

  Constructs a new instance of Attributes.

  `BasicAttributes(String attrID,
  Object val)`

  Constructs a new instance of Attributes with one attribute.

  `BasicAttributes(String attrID,
  Object val,
  boolean ignoreCase)`

  Constructs a new instance of Attributes with one attribute.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates and returns a copy of this object.

  `boolean`

  `equals(Object obj)`

  Determines whether this `BasicAttributes` is equal to another
  `Attributes`
  Two `Attributes` are equal if they are both instances of
  `Attributes`,
  treat the case of attribute IDs the same way, and contain the
  same attributes.

  `Attribute`

  `get(String attrID)`

  Retrieves the attribute with the given attribute id from the
  attribute set.

  `NamingEnumeration<Attribute>`

  `getAll()`

  Retrieves an enumeration of the attributes in the attribute set.

  `NamingEnumeration<String>`

  `getIDs()`

  Retrieves an enumeration of the ids of the attributes in the
  attribute set.

  `int`

  `hashCode()`

  Calculates the hash code of this BasicAttributes.

  `boolean`

  `isCaseIgnored()`

  Determines whether the attribute set ignores the case of
  attribute identifiers when retrieving or adding attributes.

  `Attribute`

  `put(String attrID,
  Object val)`

  Adds a new attribute to the attribute set.

  `Attribute`

  `put(Attribute attr)`

  Adds a new attribute to the attribute set.

  `Attribute`

  `remove(String attrID)`

  Removes the attribute with the attribute id 'attrID' from
  the attribute set.

  `int`

  `size()`

  Retrieves the number of attributes in the attribute set.

  `String`

  `toString()`

  Generates the string representation of this attribute set.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### BasicAttributes

    public BasicAttributes()

    Constructs a new instance of Attributes.
    The character case of attribute identifiers
    is significant when subsequently retrieving or adding attributes.
  + ### BasicAttributes

    public BasicAttributes(boolean ignoreCase)

    Constructs a new instance of Attributes.
    If `ignoreCase` is true, the character case of attribute
    identifiers is ignored; otherwise the case is significant.

    Parameters:
    :   `ignoreCase` - true means this attribute set will ignore
        the case of its attribute identifiers
        when retrieving or adding attributes;
        false means case is respected.
  + ### BasicAttributes

    public BasicAttributes([String](../../../../java.base/java/lang/String.md "class in java.lang") attrID,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") val)

    Constructs a new instance of Attributes with one attribute.
    The attribute specified by attrID and val are added to the newly
    created attribute.
    The character case of attribute identifiers
    is significant when subsequently retrieving or adding attributes.

    Parameters:
    :   `attrID` - non-null The id of the attribute to add.
    :   `val` - The value of the attribute to add. If null, a null
        value is added to the attribute.
  + ### BasicAttributes

    public BasicAttributes([String](../../../../java.base/java/lang/String.md "class in java.lang") attrID,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") val,
    boolean ignoreCase)

    Constructs a new instance of Attributes with one attribute.
    The attribute specified by attrID and val are added to the newly
    created attribute.
    If `ignoreCase` is true, the character case of attribute
    identifiers is ignored; otherwise the case is significant.

    Parameters:
    :   `attrID` - non-null The id of the attribute to add.
        If this attribute set ignores the character
        case of its attribute ids, the case of attrID
        is ignored.
    :   `val` - The value of the attribute to add. If null, a null
        value is added to the attribute.
    :   `ignoreCase` - true means this attribute set will ignore
        the case of its attribute identifiers
        when retrieving or adding attributes;
        false means case is respected.
* ## Method Details

  + ### clone

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Description copied from class: `Object`

    Creates and returns a copy of this object. The precise meaning
    of "copy" may depend on the class of the object. The general
    intent is that, for any object `x`, the expression:
    > ```
    >  x.clone() != x
    > ```

    will be true, and that the expression:
    > ```
    >  x.clone().getClass() == x.getClass()
    > ```

    will be `true`, but these are not absolute requirements.
    While it is typically the case that:
    > ```
    >  x.clone().equals(x)
    > ```

    will be `true`, this is not an absolute requirement.

    By convention, the returned object should be obtained by calling
    `super.clone`. If a class and all of its superclasses (except
    `Object`) obey this convention, it will be the case that
    `x.clone().getClass() == x.getClass()`.

    By convention, the object returned by this method should be independent
    of this object (which is being cloned). To achieve this independence,
    it may be necessary to modify one or more fields of the object returned
    by `super.clone` before returning it. Typically, this means
    copying any mutable objects that comprise the internal "deep structure"
    of the object being cloned and replacing the references to these
    objects with references to the copies. If a class contains only
    primitive fields or references to immutable objects, then it is usually
    the case that no fields in the object returned by `super.clone`
    need to be modified.

    Specified by:
    :   `clone` in interface `Attributes`

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   a clone of this instance.

    See Also:
    :   - [`Cloneable`](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### isCaseIgnored

    public boolean isCaseIgnored()

    Description copied from interface: `Attributes`

    Determines whether the attribute set ignores the case of
    attribute identifiers when retrieving or adding attributes.

    Specified by:
    :   `isCaseIgnored` in interface `Attributes`

    Returns:
    :   true if case is ignored; false otherwise.
  + ### size

    public int size()

    Description copied from interface: `Attributes`

    Retrieves the number of attributes in the attribute set.

    Specified by:
    :   `size` in interface `Attributes`

    Returns:
    :   The nonnegative number of attributes in this attribute set.
  + ### get

    public [Attribute](Attribute.md "interface in javax.naming.directory") get([String](../../../../java.base/java/lang/String.md "class in java.lang") attrID)

    Description copied from interface: `Attributes`

    Retrieves the attribute with the given attribute id from the
    attribute set.

    Specified by:
    :   `get` in interface `Attributes`

    Parameters:
    :   `attrID` - The non-null id of the attribute to retrieve.
        If this attribute set ignores the character
        case of its attribute ids, the case of attrID
        is ignored.

    Returns:
    :   The attribute identified by attrID; null if not found.

    See Also:
    :   - [`Attributes.put(java.lang.String, java.lang.Object)`](Attributes.md#put(java.lang.String,java.lang.Object))
        - [`Attributes.remove(java.lang.String)`](Attributes.md#remove(java.lang.String))
  + ### getAll

    public [NamingEnumeration](../NamingEnumeration.md "interface in javax.naming")<[Attribute](Attribute.md "interface in javax.naming.directory")> getAll()

    Description copied from interface: `Attributes`

    Retrieves an enumeration of the attributes in the attribute set.
    The effects of updates to this attribute set on this enumeration
    are undefined.

    Specified by:
    :   `getAll` in interface `Attributes`

    Returns:
    :   A non-null enumeration of the attributes in this attribute set.
        Each element of the enumeration is of class `Attribute`.
        If attribute set has zero attributes, an empty enumeration
        is returned.
  + ### getIDs

    public [NamingEnumeration](../NamingEnumeration.md "interface in javax.naming")<[String](../../../../java.base/java/lang/String.md "class in java.lang")> getIDs()

    Description copied from interface: `Attributes`

    Retrieves an enumeration of the ids of the attributes in the
    attribute set.
    The effects of updates to this attribute set on this enumeration
    are undefined.

    Specified by:
    :   `getIDs` in interface `Attributes`

    Returns:
    :   A non-null enumeration of the attributes' ids in
        this attribute set. Each element of the enumeration is
        of class String.
        If attribute set has zero attributes, an empty enumeration
        is returned.
  + ### put

    public [Attribute](Attribute.md "interface in javax.naming.directory") put([String](../../../../java.base/java/lang/String.md "class in java.lang") attrID,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") val)

    Description copied from interface: `Attributes`

    Adds a new attribute to the attribute set.

    Specified by:
    :   `put` in interface `Attributes`

    Parameters:
    :   `attrID` - non-null The id of the attribute to add.
        If the attribute set ignores the character
        case of its attribute ids, the case of attrID
        is ignored.
    :   `val` - The possibly null value of the attribute to add.
        If null, the attribute does not have any values.

    Returns:
    :   The Attribute with attrID that was previous in this attribute set;
        null if no such attribute existed.

    See Also:
    :   - [`Attributes.remove(java.lang.String)`](Attributes.md#remove(java.lang.String))
  + ### put

    public [Attribute](Attribute.md "interface in javax.naming.directory") put([Attribute](Attribute.md "interface in javax.naming.directory") attr)

    Description copied from interface: `Attributes`

    Adds a new attribute to the attribute set.

    Specified by:
    :   `put` in interface `Attributes`

    Parameters:
    :   `attr` - The non-null attribute to add.
        If the attribute set ignores the character
        case of its attribute ids, the case of
        attr's identifier is ignored.

    Returns:
    :   The Attribute with the same ID as attr that was previous
        in this attribute set;
        null if no such attribute existed.

    See Also:
    :   - [`Attributes.remove(java.lang.String)`](Attributes.md#remove(java.lang.String))
  + ### remove

    public [Attribute](Attribute.md "interface in javax.naming.directory") remove([String](../../../../java.base/java/lang/String.md "class in java.lang") attrID)

    Description copied from interface: `Attributes`

    Removes the attribute with the attribute id 'attrID' from
    the attribute set. If the attribute does not exist, ignore.

    Specified by:
    :   `remove` in interface `Attributes`

    Parameters:
    :   `attrID` - The non-null id of the attribute to remove.
        If the attribute set ignores the character
        case of its attribute ids, the case of
        attrID is ignored.

    Returns:
    :   The Attribute with the same ID as attrID that was previous
        in the attribute set;
        null if no such attribute existed.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Generates the string representation of this attribute set.
    The string consists of each attribute identifier and the contents
    of each attribute. The contents of this string is useful
    for debugging and is not meant to be interpreted programmatically.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   A non-null string listing the contents of this attribute set.
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Determines whether this `BasicAttributes` is equal to another
    `Attributes`
    Two `Attributes` are equal if they are both instances of
    `Attributes`,
    treat the case of attribute IDs the same way, and contain the
    same attributes. Each `Attribute` in this `BasicAttributes`
    is checked for equality using `Object.equals()`, which may have
    be overridden by implementations of `Attribute`).
    If a subclass overrides `equals()`,
    it should override `hashCode()`
    as well so that two `Attributes` instances that are equal
    have the same hash code.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the possibly null object to compare against.

    Returns:
    :   true If obj is equal to this BasicAttributes.

    See Also:
    :   - [`hashCode()`](#hashCode())
  + ### hashCode

    public int hashCode()

    Calculates the hash code of this BasicAttributes.

    The hash code is computed by adding the hash code of
    the attributes of this object. If this BasicAttributes
    ignores case of its attribute IDs, one is added to the hash code.
    If a subclass overrides `hashCode()`,
    it should override `equals()`
    as well so that two `Attributes` instances that are equal
    have the same hash code.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   an int representing the hash code of this BasicAttributes instance.

    See Also:
    :   - [`equals(java.lang.Object)`](#equals(java.lang.Object))