Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractTypeVisitor6<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.lang.model.util.AbstractTypeVisitor6<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `AbstractTypeVisitor7`, `SimpleTypeVisitor6`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_6](../SourceVersion.md#RELEASE_6))
public abstract class AbstractTypeVisitor6<R,P>
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [TypeVisitor](../type/TypeVisitor.md "interface in javax.lang.model.type")<R,P>

A skeletal visitor of types with default behavior appropriate for
the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
source version.

Since:
:   1.6

See Also:
:   * [`AbstractTypeVisitor7`](AbstractTypeVisitor7.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor8`](AbstractTypeVisitor8.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor9`](AbstractTypeVisitor9.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor14`](AbstractTypeVisitor14.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractTypeVisitor6()`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final R`

  `visit(TypeMirror t)`

  Visits any type mirror as if by passing itself to that type
  mirror's [`accept`](../type/TypeMirror.md#accept(javax.lang.model.type.TypeVisitor,P)) method and passing
  `null` for the additional parameter.

  `final R`

  `visit(TypeMirror t,
  P p)`

  Visits any type mirror as if by passing itself to that type
  mirror's [`accept`](../type/TypeMirror.md#accept(javax.lang.model.type.TypeVisitor,P)) method.

  `R`

  `visitIntersection(IntersectionType t,
  P p)`

  Visits an intersection type.

  `R`

  `visitUnion(UnionType t,
  P p)`

  Visits a union type.

  `R`

  `visitUnknown(TypeMirror t,
  P p)`

  Visits an unknown kind of type.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.lang.model.type.[TypeVisitor](../type/TypeVisitor.md "interface in javax.lang.model.type")

  `visitArray, visitDeclared, visitError, visitExecutable, visitNoType, visitNull, visitPrimitive, visitTypeVariable, visitWildcard`

* ## Constructor Details

  + ### AbstractTypeVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected AbstractTypeVisitor6()

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses to call.
* ## Method Details

  + ### visit

    public final [R](AbstractTypeVisitor6.md "type parameter in AbstractTypeVisitor6") visit([TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") t,
    [P](AbstractTypeVisitor6.md "type parameter in AbstractTypeVisitor6") p)

    Visits any type mirror as if by passing itself to that type
    mirror's [`accept`](../type/TypeMirror.md#accept(javax.lang.model.type.TypeVisitor,P)) method. The
    invocation `v.visit(t, p)` is equivalent to `t.accept(v, p)`.

    Specified by:
    :   `visit` in interface `TypeVisitor<R,P>`

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visit

    public final [R](AbstractTypeVisitor6.md "type parameter in AbstractTypeVisitor6") visit([TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") t)

    Visits any type mirror as if by passing itself to that type
    mirror's [`accept`](../type/TypeMirror.md#accept(javax.lang.model.type.TypeVisitor,P)) method and passing
    `null` for the additional parameter. The invocation
    `v.visit(t)` is equivalent to `t.accept(v, null)`.

    Specified by:
    :   `visit` in interface `TypeVisitor<R,P>`

    Parameters:
    :   `t` - the type to visit

    Returns:
    :   a visitor-specified result
  + ### visitUnion

    public [R](AbstractTypeVisitor6.md "type parameter in AbstractTypeVisitor6") visitUnion([UnionType](../type/UnionType.md "interface in javax.lang.model.type") t,
    [P](AbstractTypeVisitor6.md "type parameter in AbstractTypeVisitor6") p)

    Visits a union type.

    Specified by:
    :   `visitUnion` in interface `TypeVisitor<R,P>`

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `visitUnknown`

    Since:
    :   1.7
  + ### visitIntersection

    public [R](AbstractTypeVisitor6.md "type parameter in AbstractTypeVisitor6") visitIntersection([IntersectionType](../type/IntersectionType.md "interface in javax.lang.model.type") t,
    [P](AbstractTypeVisitor6.md "type parameter in AbstractTypeVisitor6") p)

    Visits an intersection type.

    Specified by:
    :   `visitIntersection` in interface `TypeVisitor<R,P>`

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `visitUnknown`

    Since:
    :   1.8
  + ### visitUnknown

    public [R](AbstractTypeVisitor6.md "type parameter in AbstractTypeVisitor6") visitUnknown([TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") t,
    [P](AbstractTypeVisitor6.md "type parameter in AbstractTypeVisitor6") p)

    Visits an unknown kind of type.
    This can occur if the language evolves and new kinds
    of types are added to the `TypeMirror` hierarchy.

    Specified by:
    :   `visitUnknown` in interface `TypeVisitor<R,P>`

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Throws:
    :   `UnknownTypeException` - a visitor implementation may optionally throw this exception