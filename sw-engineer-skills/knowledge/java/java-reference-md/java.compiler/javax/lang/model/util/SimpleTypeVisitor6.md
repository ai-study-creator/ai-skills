Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleTypeVisitor6<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleTypeVisitor6<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `SimpleTypeVisitor7`, `TypeKindVisitor6`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_6](../SourceVersion.md#RELEASE_6))
public class SimpleTypeVisitor6<R,P>
extends [AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

A simple visitor of types with default behavior appropriate for the
[`RELEASE_6`](../SourceVersion.md#RELEASE_6) source version.
Visit methods corresponding to `RELEASE_6` language
constructs call [`defaultAction`](#defaultAction(javax.lang.model.type.TypeMirror,P)), passing their
arguments to `defaultAction`'s corresponding parameters.
For constructs introduced in `RELEASE_7` and later, `visitUnknown` is called instead.

Since:
:   1.6

See Also:
:   * [`SimpleTypeVisitor7`](SimpleTypeVisitor7.md "class in javax.lang.model.util")
    * [`SimpleTypeVisitor8`](SimpleTypeVisitor8.md "class in javax.lang.model.util")
    * [`SimpleTypeVisitor9`](SimpleTypeVisitor9.md "class in javax.lang.model.util")
    * [`SimpleTypeVisitor14`](SimpleTypeVisitor14.md "class in javax.lang.model.util")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final R`

  `DEFAULT_VALUE`

  Default value to be returned; [`defaultAction`](#defaultAction(javax.lang.model.type.TypeMirror,P)) returns this value unless the method is
  overridden.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SimpleTypeVisitor6()`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `SimpleTypeVisitor6(R defaultValue)`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected R`

  `defaultAction(TypeMirror t,
  P p)`

  The default action for visit methods.

  `R`

  `visitArray(ArrayType t,
  P p)`

  Visits an array type.

  `R`

  `visitDeclared(DeclaredType t,
  P p)`

  Visits a declared type.

  `R`

  `visitError(ErrorType t,
  P p)`

  Visits an error type.

  `R`

  `visitExecutable(ExecutableType t,
  P p)`

  Visits an executable type.

  `R`

  `visitNoType(NoType t,
  P p)`

  Visits a [`NoType`](../type/NoType.md "interface in javax.lang.model.type") instance.

  `R`

  `visitNull(NullType t,
  P p)`

  Visits the null type.

  `R`

  `visitPrimitive(PrimitiveType t,
  P p)`

  Visits a primitive type.

  `R`

  `visitTypeVariable(TypeVariable t,
  P p)`

  Visits a type variable.

  `R`

  `visitWildcard(WildcardType t,
  P p)`

  Visits a wildcard type.

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitIntersection, visitUnion, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_VALUE

    protected final [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") DEFAULT\_VALUE

    Default value to be returned; [`defaultAction`](#defaultAction(javax.lang.model.type.TypeMirror,P)) returns this value unless the method is
    overridden.
* ## Constructor Details

  + ### SimpleTypeVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected SimpleTypeVisitor6()

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleTypeVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected SimpleTypeVisitor6([R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") defaultValue)

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`DEFAULT_VALUE`](#DEFAULT_VALUE)
* ## Method Details

  + ### defaultAction

    protected [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") defaultAction([TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") p)

    The default action for visit methods.

    Parameters:
    :   `t` - the type to process
    :   `p` - a visitor-specified parameter

    Returns:
    :   `DEFAULT_VALUE` unless overridden
  + ### visitPrimitive

    public [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") visitPrimitive([PrimitiveType](../type/PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") p)

    Visits a primitive type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitNull

    public [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") visitNull([NullType](../type/NullType.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") p)

    Visits the null type. This implementation calls `defaultAction`.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitArray

    public [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") visitArray([ArrayType](../type/ArrayType.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") p)

    Visits an array type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitDeclared

    public [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") visitDeclared([DeclaredType](../type/DeclaredType.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") p)

    Visits a declared type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitError

    public [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") visitError([ErrorType](../type/ErrorType.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") p)

    Visits an error type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitTypeVariable

    public [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") visitTypeVariable([TypeVariable](../type/TypeVariable.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") p)

    Visits a type variable.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitWildcard

    public [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") visitWildcard([WildcardType](../type/WildcardType.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") p)

    Visits a wildcard type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitExecutable

    public [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") visitExecutable([ExecutableType](../type/ExecutableType.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") p)

    Visits an executable type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitNoType

    public [R](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") visitNoType([NoType](../type/NoType.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor6.md "type parameter in SimpleTypeVisitor6") p)

    Visits a [`NoType`](../type/NoType.md "interface in javax.lang.model.type") instance.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`