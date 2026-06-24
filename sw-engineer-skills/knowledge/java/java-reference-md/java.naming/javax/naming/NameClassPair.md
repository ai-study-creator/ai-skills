Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class NameClassPair

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.NameClassPair

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `Binding`

---

public class NameClassPair
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")

This class represents the object name and class name pair of a binding
found in a context.

A context consists of name-to-object bindings.
The NameClassPair class represents the name and the
class of the bound object. It consists
of a name and a string representing the
package-qualified class name.

Use subclassing for naming systems that generate contents of
a name/class pair dynamically.

A NameClassPair instance is not synchronized against concurrent
access by multiple threads. Threads that need to access a NameClassPair
concurrently should synchronize amongst themselves and provide
the necessary locking.

Since:
:   1.3

See Also:
:   * [`Context.list(javax.naming.Name)`](Context.md#list(javax.naming.Name))
    * [Serialized Form](../../../serialized-form.md#javax.naming.NameClassPair)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NameClassPair(String name,
  String className)`

  Constructs an instance of a NameClassPair given its
  name and class name.

  `NameClassPair(String name,
  String className,
  boolean isRelative)`

  Constructs an instance of a NameClassPair given its
  name, class name, and whether it is relative to the listing context.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `getClassName()`

  Retrieves the class name of the object bound to the name of this binding.

  `String`

  `getName()`

  Retrieves the name of this binding.

  `String`

  `getNameInNamespace()`

  Retrieves the full name of this binding.

  `boolean`

  `isRelative()`

  Determines whether the name of this binding is
  relative to the target context (which is named by
  the first parameter of the `list()` method).

  `void`

  `setClassName(String name)`

  Sets the class name of this binding.

  `void`

  `setName(String name)`

  Sets the name of this binding.

  `void`

  `setNameInNamespace(String fullName)`

  Sets the full name of this binding.

  `void`

  `setRelative(boolean r)`

  Sets whether the name of this binding is relative to the target
  context (which is named by the first parameter of the `list()`
  method).

  `String`

  `toString()`

  Generates the string representation of this name/class pair.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### NameClassPair

    public NameClassPair([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className)

    Constructs an instance of a NameClassPair given its
    name and class name.

    Parameters:
    :   `name` - The non-null name of the object. It is relative
        to the *target context* (which is
        named by the first parameter of the `list()` method)
    :   `className` - The possibly null class name of the object
        bound to name. It is null if the object bound is null.

    See Also:
    :   - [`getClassName()`](#getClassName())
        - [`setClassName(java.lang.String)`](#setClassName(java.lang.String))
        - [`getName()`](#getName())
        - [`setName(java.lang.String)`](#setName(java.lang.String))
  + ### NameClassPair

    public NameClassPair([String](../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../java.base/java/lang/String.md "class in java.lang") className,
    boolean isRelative)

    Constructs an instance of a NameClassPair given its
    name, class name, and whether it is relative to the listing context.

    Parameters:
    :   `name` - The non-null name of the object.
    :   `className` - The possibly null class name of the object
        bound to name. It is null if the object bound is null.
    :   `isRelative` - true if `name` is a name relative
        to the target context (which is named by the first parameter
        of the `list()` method); false if `name`
        is a URL string.

    See Also:
    :   - [`getClassName()`](#getClassName())
        - [`setClassName(java.lang.String)`](#setClassName(java.lang.String))
        - [`getName()`](#getName())
        - [`setName(java.lang.String)`](#setName(java.lang.String))
        - [`isRelative()`](#isRelative())
        - [`setRelative(boolean)`](#setRelative(boolean))
* ## Method Details

  + ### getClassName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getClassName()

    Retrieves the class name of the object bound to the name of this binding.
    If a reference or some other indirect information is bound,
    retrieves the class name of the eventual object that
    will be returned by `Binding.getObject()`.

    Returns:
    :   The possibly null class name of object bound.
        It is null if the object bound is null.

    See Also:
    :   - [`Binding.getObject()`](Binding.md#getObject())
        - [`Binding.getClassName()`](Binding.md#getClassName())
        - [`setClassName(java.lang.String)`](#setClassName(java.lang.String))
  + ### getName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getName()

    Retrieves the name of this binding.
    If `isRelative()` is true, this name is relative to the
    target context (which is named by the first parameter of the
    `list()`).
    If `isRelative()` is false, this name is a URL string.

    Returns:
    :   The non-null name of this binding.

    See Also:
    :   - [`isRelative()`](#isRelative())
        - [`setName(java.lang.String)`](#setName(java.lang.String))
  + ### setName

    public void setName([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Sets the name of this binding.

    Parameters:
    :   `name` - the non-null string to use as the name.

    See Also:
    :   - [`getName()`](#getName())
        - [`setRelative(boolean)`](#setRelative(boolean))
  + ### setClassName

    public void setClassName([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Sets the class name of this binding.

    Parameters:
    :   `name` - the possibly null string to use as the class name.
        If null, `Binding.getClassName()` will return
        the actual class name of the object in the binding.
        The class name will be null if the object bound is null.

    See Also:
    :   - [`getClassName()`](#getClassName())
        - [`Binding.getClassName()`](Binding.md#getClassName())
  + ### isRelative

    public boolean isRelative()

    Determines whether the name of this binding is
    relative to the target context (which is named by
    the first parameter of the `list()` method).

    Returns:
    :   true if the name of this binding is relative to the
        target context;
        false if the name of this binding is a URL string.

    See Also:
    :   - [`setRelative(boolean)`](#setRelative(boolean))
        - [`getName()`](#getName())
  + ### setRelative

    public void setRelative(boolean r)

    Sets whether the name of this binding is relative to the target
    context (which is named by the first parameter of the `list()`
    method).

    Parameters:
    :   `r` - If true, the name of binding is relative to the target context;
        if false, the name of binding is a URL string.

    See Also:
    :   - [`isRelative()`](#isRelative())
        - [`setName(java.lang.String)`](#setName(java.lang.String))
  + ### getNameInNamespace

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getNameInNamespace()

    Retrieves the full name of this binding.
    The full name is the absolute name of this binding within
    its own namespace. See [`Context.getNameInNamespace()`](Context.md#getNameInNamespace()).

    In naming systems for which the notion of full name does not
    apply to this binding an `UnsupportedOperationException`
    is thrown.
    This exception is also thrown when a service provider written before
    the introduction of the method is in use.

    The string returned by this method is not a JNDI composite name and
    should not be passed directly to context methods.

    Returns:
    :   The full name of this binding.

    Throws:
    :   `UnsupportedOperationException` - if the notion of full name
        does not apply to this binding in the naming system.

    Since:
    :   1.5

    See Also:
    :   - [`setNameInNamespace(java.lang.String)`](#setNameInNamespace(java.lang.String))
        - [`getName()`](#getName())
  + ### setNameInNamespace

    public void setNameInNamespace([String](../../../java.base/java/lang/String.md "class in java.lang") fullName)

    Sets the full name of this binding.
    This method must be called to set the full name whenever a
    `NameClassPair` is created and a full name is
    applicable to this binding.

    Setting the full name to null, or not setting it at all, will
    cause `getNameInNamespace()` to throw an exception.

    Parameters:
    :   `fullName` - The full name to use.

    Since:
    :   1.5

    See Also:
    :   - [`getNameInNamespace()`](#getNameInNamespace())
        - [`setName(java.lang.String)`](#setName(java.lang.String))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Generates the string representation of this name/class pair.
    The string representation consists of the name and class name separated
    by a colon (':').
    The contents of this string is useful
    for debugging and is not meant to be interpreted programmatically.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   The string representation of this name/class pair.