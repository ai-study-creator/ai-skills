Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Class ForwardingJavaFileObject<F extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")>

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[javax.tools.ForwardingFileObject](ForwardingFileObject.md "class in javax.tools")<F>

javax.tools.ForwardingJavaFileObject<F>

Type Parameters:
:   `F` - the kind of file object forwarded to by this object

All Implemented Interfaces:
:   `FileObject`, `JavaFileObject`

---

public class ForwardingJavaFileObject<F extends [JavaFileObject](JavaFileObject.md "interface in javax.tools")>
extends [ForwardingFileObject](ForwardingFileObject.md "class in javax.tools")<F>
implements [JavaFileObject](JavaFileObject.md "interface in javax.tools")

Forwards calls to a given file object. Subclasses of this class
might override some of these methods and might also provide
additional fields and methods.

Unless stated otherwise, references in this class to "*this file object*"
should be interpreted as referring indirectly to the [`delegate file object`](ForwardingFileObject.md#fileObject).

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface javax.tools.[JavaFileObject](JavaFileObject.md "interface in javax.tools")

  `JavaFileObject.Kind`
* ## Field Summary

  ### Fields inherited from class javax.tools.[ForwardingFileObject](ForwardingFileObject.md "class in javax.tools")

  `fileObject`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ForwardingJavaFileObject(F fileObject)`

  Creates a new instance of `ForwardingJavaFileObject`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

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

  ### Methods inherited from class javax.tools.[ForwardingFileObject](ForwardingFileObject.md "class in javax.tools")

  `delete, getCharContent, getLastModified, getName, openInputStream, openOutputStream, openReader, openWriter, toUri`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.tools.[FileObject](FileObject.md "interface in javax.tools")

  `delete, getCharContent, getLastModified, getName, openInputStream, openOutputStream, openReader, openWriter, toUri`

* ## Constructor Details

  + ### ForwardingJavaFileObject

    protected ForwardingJavaFileObject([F](ForwardingJavaFileObject.md "type parameter in ForwardingJavaFileObject") fileObject)

    Creates a new instance of `ForwardingJavaFileObject`.

    Parameters:
    :   `fileObject` - delegate to this file object
* ## Method Details

  + ### getKind

    public [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") getKind()

    Description copied from interface: `JavaFileObject`

    Returns the kind of this file object.

    Specified by:
    :   `getKind` in interface `JavaFileObject`

    Returns:
    :   the kind
  + ### isNameCompatible

    public boolean isNameCompatible([String](../../../java.base/java/lang/String.md "class in java.lang") simpleName,
    [JavaFileObject.Kind](JavaFileObject.Kind.md "enum class in javax.tools") kind)

    Description copied from interface: `JavaFileObject`

    Checks if this file object is compatible with the specified
    simple name and kind. A simple name is a single identifier
    (not qualified) as defined in
    The Java Language Specification, section .

    Specified by:
    :   `isNameCompatible` in interface `JavaFileObject`

    Parameters:
    :   `simpleName` - a simple name of a class
    :   `kind` - a kind

    Returns:
    :   `true` if this file object is compatible; `false`
        otherwise
  + ### getNestingKind

    public [NestingKind](../lang/model/element/NestingKind.md "enum class in javax.lang.model.element") getNestingKind()

    Description copied from interface: `JavaFileObject`

    Provides a hint about the nesting level of the class
    represented by this file object. This method may return
    [`NestingKind.MEMBER`](../lang/model/element/NestingKind.md#MEMBER) to mean
    [`NestingKind.LOCAL`](../lang/model/element/NestingKind.md#LOCAL) or [`NestingKind.ANONYMOUS`](../lang/model/element/NestingKind.md#ANONYMOUS).
    If the nesting level is not known or this file object does not
    represent a class file this method returns `null`.

    Specified by:
    :   `getNestingKind` in interface `JavaFileObject`

    Returns:
    :   the nesting kind, or `null` if the nesting kind
        is not known
  + ### getAccessLevel

    public [Modifier](../lang/model/element/Modifier.md "enum class in javax.lang.model.element") getAccessLevel()

    Description copied from interface: `JavaFileObject`

    Provides a hint about the access level of the class represented
    by this file object. If the access level is not known or
    this file object does not represent a class file this method
    returns `null`.

    Specified by:
    :   `getAccessLevel` in interface `JavaFileObject`

    Returns:
    :   the access level