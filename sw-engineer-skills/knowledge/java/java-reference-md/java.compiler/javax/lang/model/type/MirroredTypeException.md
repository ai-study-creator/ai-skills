Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Class MirroredTypeException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[javax.lang.model.type.MirroredTypesException](MirroredTypesException.md "class in javax.lang.model.type")

javax.lang.model.type.MirroredTypeException

All Implemented Interfaces:
:   `Serializable`

---

public class MirroredTypeException
extends [MirroredTypesException](MirroredTypesException.md "class in javax.lang.model.type")

Thrown when an application attempts to access the [`Class`](../../../../../java.base/java/lang/Class.md "class in java.lang") object
corresponding to a [`TypeMirror`](TypeMirror.md "interface in javax.lang.model.type").

Since:
:   1.6

See Also:
:   * [`MirroredTypesException`](MirroredTypesException.md "class in javax.lang.model.type")
    * [`Element.getAnnotation(Class)`](../element/Element.md#getAnnotation(java.lang.Class))
    * [Serialized Form](../../../../../serialized-form.md#javax.lang.model.type.MirroredTypeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `MirroredTypeException(TypeMirror type)`

  Constructs a new MirroredTypeException for the specified type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `TypeMirror`

  `getTypeMirror()`

  Returns the type mirror corresponding to the type being accessed.

  ### Methods inherited from class javax.lang.model.type.[MirroredTypesException](MirroredTypesException.md "class in javax.lang.model.type")

  `getTypeMirrors`

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### MirroredTypeException

    public MirroredTypeException([TypeMirror](TypeMirror.md "interface in javax.lang.model.type") type)

    Constructs a new MirroredTypeException for the specified type.

    Parameters:
    :   `type` - the type being accessed
* ## Method Details

  + ### getTypeMirror

    public [TypeMirror](TypeMirror.md "interface in javax.lang.model.type") getTypeMirror()

    Returns the type mirror corresponding to the type being accessed.
    The type mirror may be unavailable if this exception has been
    serialized and then read back in.

    Returns:
    :   the type mirror, or `null` if unavailable