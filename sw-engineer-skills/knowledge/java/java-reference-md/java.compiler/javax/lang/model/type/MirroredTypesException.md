Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Class MirroredTypesException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

javax.lang.model.type.MirroredTypesException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `MirroredTypeException`

---

public class MirroredTypesException
extends [RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

Thrown when an application attempts to access a sequence of [`Class`](../../../../../java.base/java/lang/Class.md "class in java.lang") objects each corresponding to a [`TypeMirror`](TypeMirror.md "interface in javax.lang.model.type").

Since:
:   1.6

See Also:
:   * [`MirroredTypeException`](MirroredTypeException.md "class in javax.lang.model.type")
    * [`Element.getAnnotation(Class)`](../element/Element.md#getAnnotation(java.lang.Class))
    * [Serialized Form](../../../../../serialized-form.md#javax.lang.model.type.MirroredTypesException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MirroredTypesException(List<? extends TypeMirror> types)`

  Constructs a new MirroredTypesException for the specified types.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `List<? extends TypeMirror>`

  `getTypeMirrors()`

  Returns the type mirrors corresponding to the types being accessed.

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MirroredTypesException

    public MirroredTypesException([List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")> types)

    Constructs a new MirroredTypesException for the specified types.

    Parameters:
    :   `types` - the types being accessed
* ## Method Details

  + ### getTypeMirrors

    public [List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [TypeMirror](TypeMirror.md "interface in javax.lang.model.type")> getTypeMirrors()

    Returns the type mirrors corresponding to the types being accessed.
    The type mirrors may be unavailable if this exception has been
    serialized and then read back in.

    Returns:
    :   the type mirrors in construction order, or `null` if unavailable