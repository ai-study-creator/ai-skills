Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class Binding

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.NameClassPair](NameClassPair.md "class in javax.naming")

javax.naming.Binding

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `SearchResult`

---

public class Binding
extends [NameClassPair](NameClassPair.md "class in javax.naming")

This class represents a name-to-object binding found in a context.

A context consists of name-to-object bindings.
The Binding class represents such a binding. It consists
of a name and an object. The `Context.listBindings()`
method returns an enumeration of Binding.

Use subclassing for naming systems that generate contents of
a binding dynamically.

A Binding instance is not synchronized against concurrent access by multiple
threads. Threads that need to access a Binding concurrently should
synchronize amongst themselves and provide the necessary locking.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.Binding)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Binding(String name,
  Object obj)`

  Constructs an instance of a Binding given its name and object.

  `Binding(String name,
  Object obj,
  boolean isRelative)`

  Constructs an instance of a Binding given its name, object, and whether
  the name is relative.

  `Binding(String name,
  String className,
  Object obj)`

  Constructs an instance of a Binding given its name, class name, and object.

  `Binding(String name,
  String className,
  Object obj,
  boolean isRelative)`

  Constructs an instance of a Binding given its
  name, class name, object, and whether the name is relative.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getClassName()`

  Retrieves the class name of the object bound to the name of this binding.

  `Object`

  `getObject()`

  Retrieves the object bound to the name of this binding.

  `void`

  `setObject(Object obj)`

  Sets the object associated with this binding.

  `String`

  `toString()`

  Generates the string representation of this binding.

  ### Methods inherited from class javax.naming.[NameClassPair](NameClassPair.md "class in javax.naming")

  `getName, getNameInNamespace, isRelative, setClassName, setName, setNameInNamespace, setRelative`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Binding

    public Binding([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Constructs an instance of a Binding given its name and object.

    `getClassName()` will return
    the class name of `obj` (or null if `obj` is null)
    unless the class name has been explicitly set using `setClassName()`

    Parameters:
    :   `name` - The non-null name of the object. It is relative
        to the *target context* (which is
        named by the first parameter of the `listBindings()` method)
    :   `obj` - The possibly null object bound to name.

    See Also:
    :   - [`NameClassPair.setClassName(java.lang.String)`](NameClassPair.md#setClassName(java.lang.String))
  + ### Binding

    public Binding([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") obj,
    boolean isRelative)

    Constructs an instance of a Binding given its name, object, and whether
    the name is relative.

    `getClassName()` will return the class name of `obj`
    (or null if `obj` is null) unless the class name has been
    explicitly set using `setClassName()`

    Parameters:
    :   `name` - The non-null string name of the object.
    :   `obj` - The possibly null object bound to name.
    :   `isRelative` - true if `name` is a name relative
        to the target context (which is named by
        the first parameter of the `listBindings()` method);
        false if `name` is a URL string.

    See Also:
    :   - [`NameClassPair.isRelative()`](NameClassPair.md#isRelative())
        - [`NameClassPair.setRelative(boolean)`](NameClassPair.md#setRelative(boolean))
        - [`NameClassPair.setClassName(java.lang.String)`](NameClassPair.md#setClassName(java.lang.String))
  + ### Binding

    public Binding([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Constructs an instance of a Binding given its name, class name, and object.

    Parameters:
    :   `name` - The non-null name of the object. It is relative
        to the *target context* (which is
        named by the first parameter of the `listBindings()` method)
    :   `className` - The possibly null class name of the object
        bound to `name`. If null, the class name of `obj` is
        returned by `getClassName()`. If `obj` is also
        null, `getClassName()` will return null.
    :   `obj` - The possibly null object bound to name.

    See Also:
    :   - [`NameClassPair.setClassName(java.lang.String)`](NameClassPair.md#setClassName(java.lang.String))
  + ### Binding

    public Binding([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className,
    [Object](../../../java.base/java/lang/Object.md "class in java.lang") obj,
    boolean isRelative)

    Constructs an instance of a Binding given its
    name, class name, object, and whether the name is relative.

    Parameters:
    :   `name` - The non-null string name of the object.
    :   `className` - The possibly null class name of the object
        bound to `name`. If null, the class name of `obj` is
        returned by `getClassName()`. If `obj` is also
        null, `getClassName()` will return null.
    :   `obj` - The possibly null object bound to name.
    :   `isRelative` - true if `name` is a name relative
        to the target context (which is named by
        the first parameter of the `listBindings()` method);
        false if `name` is a URL string.

    See Also:
    :   - [`NameClassPair.isRelative()`](NameClassPair.md#isRelative())
        - [`NameClassPair.setRelative(boolean)`](NameClassPair.md#setRelative(boolean))
        - [`NameClassPair.setClassName(java.lang.String)`](NameClassPair.md#setClassName(java.lang.String))
* ## Method Details

  + ### getClassName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getClassName()

    Retrieves the class name of the object bound to the name of this binding.
    If the class name has been set explicitly, return it.
    Otherwise, if this binding contains a non-null object,
    that object's class name is used. Otherwise, null is returned.

    Overrides:
    :   `getClassName` in class `NameClassPair`

    Returns:
    :   A possibly null string containing class name of object bound.

    See Also:
    :   - [`getObject()`](#getObject())
        - [`getClassName()`](#getClassName())
        - [`NameClassPair.setClassName(java.lang.String)`](NameClassPair.md#setClassName(java.lang.String))
  + ### getObject

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getObject()

    Retrieves the object bound to the name of this binding.

    Returns:
    :   The object bound; null if this binding does not contain an object.

    See Also:
    :   - [`setObject(java.lang.Object)`](#setObject(java.lang.Object))
  + ### setObject

    public void setObject([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Sets the object associated with this binding.

    Parameters:
    :   `obj` - The possibly null object to use.

    See Also:
    :   - [`getObject()`](#getObject())
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Generates the string representation of this binding.
    The string representation consists of the string representation
    of the name/class pair and the string representation of
    this binding's object, separated by ':'.
    The contents of this string is useful
    for debugging and is not meant to be interpreted programmatically.

    Overrides:
    :   `toString` in class `NameClassPair`

    Returns:
    :   The non-null string representation of this binding.