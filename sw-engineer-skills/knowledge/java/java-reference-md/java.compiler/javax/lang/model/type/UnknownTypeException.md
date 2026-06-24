Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Class UnknownTypeException

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../../../java.base/java/lang/Exception.md "class in java.lang")

[java.lang.RuntimeException](../../../../../java.base/java/lang/RuntimeException.md "class in java.lang")

[javax.lang.model.UnknownEntityException](../UnknownEntityException.md "class in javax.lang.model")

javax.lang.model.type.UnknownTypeException

All Implemented Interfaces:
:   `Serializable`

---

public class UnknownTypeException
extends [UnknownEntityException](../UnknownEntityException.md "class in javax.lang.model")

Indicates that an unknown kind of type was encountered. This can
occur if the language evolves and new kinds of types are added to
the `TypeMirror` hierarchy. May be thrown by a [type visitor](TypeVisitor.md "interface in javax.lang.model.type") to indicate that the visitor was created
for a prior version of the language.

Since:
:   1.6

See Also:
:   * [`TypeVisitor.visitUnknown(javax.lang.model.type.TypeMirror, P)`](TypeVisitor.md#visitUnknown(javax.lang.model.type.TypeMirror,P))
    * [Serialized Form](../../../../../serialized-form.md#javax.lang.model.type.UnknownTypeException)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `UnknownTypeException(TypeMirror t,
  Object p)`

  Creates a new `UnknownTypeException`.The `p`
  parameter may be used to pass in an additional argument with
  information about the context in which the unknown type was
  encountered; for example, the visit methods of [`TypeVisitor`](TypeVisitor.md "interface in javax.lang.model.type") may pass in their additional parameter.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getArgument()`

  Returns the additional argument.

  `TypeMirror`

  `getUnknownType()`

  Returns the unknown type.

  ### Methods inherited from class java.lang.[Throwable](../../../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getCause, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, initCause, printStackTrace, printStackTrace, printStackTrace, setStackTrace, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### UnknownTypeException

    public UnknownTypeException([TypeMirror](TypeMirror.md "interface in javax.lang.model.type") t,
    [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") p)

    Creates a new `UnknownTypeException`.The `p`
    parameter may be used to pass in an additional argument with
    information about the context in which the unknown type was
    encountered; for example, the visit methods of [`TypeVisitor`](TypeVisitor.md "interface in javax.lang.model.type") may pass in their additional parameter.

    Parameters:
    :   `t` - the unknown type, may be `null`
    :   `p` - an additional parameter, may be `null`
* ## Method Details

  + ### getUnknownType

    public [TypeMirror](TypeMirror.md "interface in javax.lang.model.type") getUnknownType()

    Returns the unknown type.
    The value may be unavailable if this exception has been
    serialized and then read back in.

    Returns:
    :   the unknown type, or `null` if unavailable
  + ### getArgument

    public [Object](../../../../../java.base/java/lang/Object.md "class in java.lang") getArgument()

    Returns the additional argument.

    Returns:
    :   the additional argument, or `null` if unavailable