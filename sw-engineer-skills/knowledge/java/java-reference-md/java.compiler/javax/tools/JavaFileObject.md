Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Interface JavaFileObject

All Superinterfaces:
:   `FileObject`

All Known Implementing Classes:
:   `ForwardingJavaFileObject`, `SimpleJavaFileObject`

---

public interface JavaFileObject
extends [FileObject](FileObject.md "interface in javax.tools")

File abstraction for tools operating on Java programming language
source and class files.

All methods in this interface might throw a SecurityException if
a security exception occurs.

Unless explicitly allowed, all methods in this interface might
throw a NullPointerException if given a `null` argument.

Since:
:   1.6

See Also:
:   * [`JavaFileManager`](JavaFileManager.md "interface in javax.tools")

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static enum`

  `JavaFileObject.Kind`

  Kinds of JavaFileObjects.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Modifier`

  `getAccessLevel()`

  Provides a hint about the access level of the class represented
  by this file object.

  `JavaFileObject.Kind`

  `getKind()`

  Returns the kind of this file object.

  `NestingKind`

  `getNestingKind()`

  Provides a hint about the nesting level of the class
  represented by this file object.

  `boolean`

  `isNameCompatible(String simpleName,
  JavaFileObject.Kind kind)`

  Checks if this file object is compatible with the specified
  simple name and kind.

  ### Methods inherited from interface javax.tools.[FileObject](FileObject.md "interface in javax.tools")

  `delete, getCharContent, getLastModified, getName, openInputStream, openOutputStream, openReader, openWriter, toUri`

* ## Method Details

  + ### getKind

    [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") getKind()

    Returns the kind of this file object.

    Returns:
    :   the kind
  + ### isNameCompatible

    boolean isNameCompatible([String](../../../java.base/java/lang/String.md "class in java.lang") simpleName,
    [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") kind)

    Checks if this file object is compatible with the specified
    simple name and kind. A simple name is a single identifier
    (not qualified) as defined in
    The Java Language Specification, section .

    Parameters:
    :   `simpleName` - a simple name of a class
    :   `kind` - a kind

    Returns:
    :   `true` if this file object is compatible; `false`
        otherwise
  + ### getNestingKind

    [NestingKind](../lang/model/element/NestingKind.md "enum class in javax.lang.model.element") getNestingKind()

    Provides a hint about the nesting level of the class
    represented by this file object. This method may return
    [`NestingKind.MEMBER`](../lang/model/element/NestingKind.md#MEMBER) to mean
    [`NestingKind.LOCAL`](../lang/model/element/NestingKind.md#LOCAL) or [`NestingKind.ANONYMOUS`](../lang/model/element/NestingKind.md#ANONYMOUS).
    If the nesting level is not known or this file object does not
    represent a class file this method returns `null`.

    Returns:
    :   the nesting kind, or `null` if the nesting kind
        is not known
  + ### getAccessLevel

    [Modifier](../lang/model/element/Modifier.md "enum class in javax.lang.model.element") getAccessLevel()

    Provides a hint about the access level of the class represented
    by this file object. If the access level is not known or
    this file object does not represent a class file this method
    returns `null`.

    Returns:
    :   the access level