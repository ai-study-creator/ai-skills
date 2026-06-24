Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class SearchResult

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.NameClassPair](../NameClassPair.md "class in javax.naming")

[javax.naming.Binding](../Binding.md "class in javax.naming")

javax.naming.directory.SearchResult

All Implemented Interfaces:
:   `Serializable`

---

public class SearchResult
extends [Binding](../Binding.md "class in javax.naming")

This class represents an item in the NamingEnumeration returned as a
result of the DirContext.search() methods.

A SearchResult instance is not synchronized against concurrent
multithreaded access. Multiple threads trying to access and modify
a single SearchResult instance should lock the object.

Since:
:   1.3

See Also:
:   * [`DirContext.search(javax.naming.Name, javax.naming.directory.Attributes, java.lang.String[])`](DirContext.md#search(javax.naming.Name,javax.naming.directory.Attributes,java.lang.String%5B%5D))
    * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.SearchResult)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SearchResult(String name,
  Object obj,
  Attributes attrs)`

  Constructs a search result using the result's name, its bound object, and
  its attributes.

  `SearchResult(String name,
  Object obj,
  Attributes attrs,
  boolean isRelative)`

  Constructs a search result using the result's name, its bound object, and
  its attributes, and whether the name is relative.

  `SearchResult(String name,
  String className,
  Object obj,
  Attributes attrs)`

  Constructs a search result using the result's name, its class name,
  its bound object, and its attributes.

  `SearchResult(String name,
  String className,
  Object obj,
  Attributes attrs,
  boolean isRelative)`

  Constructs a search result using the result's name, its class name,
  its bound object, its attributes, and whether the name is relative.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Attributes`

  `getAttributes()`

  Retrieves the attributes in this search result.

  `void`

  `setAttributes(Attributes attrs)`

  Sets the attributes of this search result to `attrs`.

  `String`

  `toString()`

  Generates the string representation of this SearchResult.

  ### Methods inherited from class javax.naming.[Binding](../Binding.md "class in javax.naming")

  `getClassName, getObject, setObject`

  ### Methods inherited from class javax.naming.[NameClassPair](../NameClassPair.md "class in javax.naming")

  `getName, getNameInNamespace, isRelative, setClassName, setName, setNameInNamespace, setRelative`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### SearchResult

    public SearchResult([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs)

    Constructs a search result using the result's name, its bound object, and
    its attributes.

    `getClassName()` will return the class name of `obj`
    (or null if `obj` is null) unless the class name has been
    explicitly set using `setClassName()`.

    Parameters:
    :   `name` - The non-null name of the search item. It is relative
        to the *target context* of the search (which is
        named by the first parameter of the `search()` method)
    :   `obj` - The object bound to name. Can be null.
    :   `attrs` - The attributes that were requested to be returned with
        this search item. Cannot be null.

    See Also:
    :   - [`NameClassPair.setClassName(java.lang.String)`](../NameClassPair.md#setClassName(java.lang.String))
        - [`NameClassPair.getClassName()`](../NameClassPair.md#getClassName())
  + ### SearchResult

    public SearchResult([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs,
    boolean isRelative)

    Constructs a search result using the result's name, its bound object, and
    its attributes, and whether the name is relative.

    `getClassName()` will return the class name of `obj`
    (or null if `obj` is null) unless the class name has been
    explicitly set using `setClassName()`

    Parameters:
    :   `name` - The non-null name of the search item.
    :   `obj` - The object bound to name. Can be null.
    :   `attrs` - The attributes that were requested to be returned with
        this search item. Cannot be null.
    :   `isRelative` - true if `name` is relative
        to the target context of the search (which is named by
        the first parameter of the `search()` method);
        false if `name` is a URL string.

    See Also:
    :   - [`NameClassPair.setClassName(java.lang.String)`](../NameClassPair.md#setClassName(java.lang.String))
        - [`NameClassPair.getClassName()`](../NameClassPair.md#getClassName())
  + ### SearchResult

    public SearchResult([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") className,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs)

    Constructs a search result using the result's name, its class name,
    its bound object, and its attributes.

    Parameters:
    :   `name` - The non-null name of the search item. It is relative
        to the *target context* of the search (which is
        named by the first parameter of the `search()` method)
    :   `className` - The possibly null class name of the object
        bound to `name`. If null, the class name of `obj` is
        returned by `getClassName()`. If `obj` is also null,
        `getClassName()` will return null.
    :   `obj` - The object bound to name. Can be null.
    :   `attrs` - The attributes that were requested to be returned with
        this search item. Cannot be null.

    See Also:
    :   - [`NameClassPair.setClassName(java.lang.String)`](../NameClassPair.md#setClassName(java.lang.String))
        - [`NameClassPair.getClassName()`](../NameClassPair.md#getClassName())
  + ### SearchResult

    public SearchResult([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") className,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs,
    boolean isRelative)

    Constructs a search result using the result's name, its class name,
    its bound object, its attributes, and whether the name is relative.

    Parameters:
    :   `name` - The non-null name of the search item.
    :   `className` - The possibly null class name of the object
        bound to `name`. If null, the class name of `obj` is
        returned by `getClassName()`. If `obj` is also null,
        `getClassName()` will return null.
    :   `obj` - The object bound to name. Can be null.
    :   `attrs` - The attributes that were requested to be returned with
        this search item. Cannot be null.
    :   `isRelative` - true if `name` is relative
        to the target context of the search (which is named by
        the first parameter of the `search()` method);
        false if `name` is a URL string.

    See Also:
    :   - [`NameClassPair.setClassName(java.lang.String)`](../NameClassPair.md#setClassName(java.lang.String))
        - [`NameClassPair.getClassName()`](../NameClassPair.md#getClassName())
* ## Method Details

  + ### getAttributes

    public [Attributes](Attributes.md "interface in javax.naming.directory") getAttributes()

    Retrieves the attributes in this search result.

    Returns:
    :   The non-null attributes in this search result. Can be empty.

    See Also:
    :   - [`setAttributes(javax.naming.directory.Attributes)`](#setAttributes(javax.naming.directory.Attributes))
  + ### setAttributes

    public void setAttributes([Attributes](Attributes.md "interface in javax.naming.directory") attrs)

    Sets the attributes of this search result to `attrs`.

    Parameters:
    :   `attrs` - The non-null attributes to use. Can be empty.

    See Also:
    :   - [`getAttributes()`](#getAttributes())
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Generates the string representation of this SearchResult.
    The string representation consists of the string representation
    of the binding and the string representation of
    this search result's attributes, separated by ':'.
    The contents of this string is useful
    for debugging and is not meant to be interpreted programmatically.

    Overrides:
    :   `toString` in class `Binding`

    Returns:
    :   The string representation of this SearchResult. Cannot be null.