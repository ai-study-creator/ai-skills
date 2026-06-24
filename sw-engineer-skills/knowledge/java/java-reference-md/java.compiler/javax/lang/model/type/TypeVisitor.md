Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.type](package-summary.md)

# Interface TypeVisitor<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Known Implementing Classes:
:   `AbstractTypeVisitor14`, `AbstractTypeVisitor6`, `AbstractTypeVisitor7`, `AbstractTypeVisitor8`, `AbstractTypeVisitor9`, `SimpleTypeVisitor14`, `SimpleTypeVisitor6`, `SimpleTypeVisitor7`, `SimpleTypeVisitor8`, `SimpleTypeVisitor9`, `TypeKindVisitor14`, `TypeKindVisitor6`, `TypeKindVisitor7`, `TypeKindVisitor8`, `TypeKindVisitor9`

---

public interface TypeVisitor<R,P>

A visitor of types, in the style of the
visitor design pattern. Classes implementing this
interface are used to operate on a type when the kind of
type is unknown at compile time. When a visitor is passed to a
type's [`accept`](TypeMirror.md#accept(javax.lang.model.type.TypeVisitor,P)) method, the `visitXyz`
method most applicable to that type is invoked.

Classes implementing this interface may or may not throw a
`NullPointerException` if the additional parameter `p`
is `null`; see documentation of the implementing class for
details.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default R`

  `visit(TypeMirror t)`

  A convenience method equivalent to `visit(t, null)`.

  `R`

  `visit(TypeMirror t,
  P p)`

  Visits a type.

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

  `visitIntersection(IntersectionType t,
  P p)`

  Visits an intersection type.

  `R`

  `visitNoType(NoType t,
  P p)`

  Visits a [`NoType`](NoType.md "interface in javax.lang.model.type") instance.

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

  `visitUnion(UnionType t,
  P p)`

  Visits a union type.

  `R`

  `visitUnknown(TypeMirror t,
  P p)`

  Visits an unknown kind of type.

  `R`

  `visitWildcard(WildcardType t,
  P p)`

  Visits a wildcard type.

* ## Method Details

  + ### visit

    [R](TypeVisitor.md "type parameter in TypeVisitor") visit([TypeMirror](TypeMirror.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits a type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visit

    default [R](TypeVisitor.md "type parameter in TypeVisitor") visit([TypeMirror](TypeMirror.md "interface in javax.lang.model.type") t)

    A convenience method equivalent to `visit(t, null)`.

    Parameters:
    :   `t` - the element to visit

    Returns:
    :   a visitor-specified result
  + ### visitPrimitive

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitPrimitive([PrimitiveType](PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits a primitive type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitNull

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitNull([NullType](NullType.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits the null type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitArray

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitArray([ArrayType](ArrayType.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits an array type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitDeclared

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitDeclared([DeclaredType](DeclaredType.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits a declared type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitError

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitError([ErrorType](ErrorType.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits an error type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitTypeVariable

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitTypeVariable([TypeVariable](TypeVariable.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits a type variable.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitWildcard

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitWildcard([WildcardType](WildcardType.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits a wildcard type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitExecutable

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitExecutable([ExecutableType](ExecutableType.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits an executable type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitNoType

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitNoType([NoType](NoType.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits a [`NoType`](NoType.md "interface in javax.lang.model.type") instance.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitUnknown

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitUnknown([TypeMirror](TypeMirror.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits an unknown kind of type.
    This can occur if the language evolves and new kinds
    of types are added to the `TypeMirror` hierarchy.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Throws:
    :   `UnknownTypeException` - a visitor implementation may optionally throw this exception
  + ### visitUnion

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitUnion([UnionType](UnionType.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits a union type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Since:
    :   1.7
  + ### visitIntersection

    [R](TypeVisitor.md "type parameter in TypeVisitor") visitIntersection([IntersectionType](IntersectionType.md "interface in javax.lang.model.type") t,
    [P](TypeVisitor.md "type parameter in TypeVisitor") p)

    Visits an intersection type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Since:
    :   1.8