Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractTypeVisitor8<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractTypeVisitor7](AbstractTypeVisitor7.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.AbstractTypeVisitor8<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `AbstractTypeVisitor9`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_8](../SourceVersion.md#RELEASE_8))
public abstract class AbstractTypeVisitor8<R,P>
extends [AbstractTypeVisitor7](AbstractTypeVisitor7.md "class in javax.lang.model.util")<R,P>

A skeletal visitor of types with default behavior appropriate for
the [`RELEASE_8`](../SourceVersion.md#RELEASE_8)
source version.

Since:
:   1.8

See Also:
:   * [**Compatibility note for subclasses**](AbstractTypeVisitor6.md#note_for_subclasses)
    * [`AbstractTypeVisitor6`](AbstractTypeVisitor6.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor7`](AbstractTypeVisitor7.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor9`](AbstractTypeVisitor9.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor14`](AbstractTypeVisitor14.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractTypeVisitor8()`

  Constructor for concrete subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract R`

  `visitIntersection(IntersectionType t,
  P p)`

  Visits an `IntersectionType` in a manner defined by a subclass.

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor7](AbstractTypeVisitor7.md "class in javax.lang.model.util")

  `visitUnion`

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.lang.model.type.[TypeVisitor](../type/TypeVisitor.md "interface in javax.lang.model.type")

  `visitArray, visitDeclared, visitError, visitExecutable, visitNoType, visitNull, visitPrimitive, visitTypeVariable, visitWildcard`

* ## Constructor Details

  + ### AbstractTypeVisitor8

    protected AbstractTypeVisitor8()

    Constructor for concrete subclasses to call.
* ## Method Details

  + ### visitIntersection

    public abstract [R](AbstractTypeVisitor8.md "type parameter in AbstractTypeVisitor8") visitIntersection([IntersectionType](../type/IntersectionType.md "interface in javax.lang.model.type") t,
    [P](AbstractTypeVisitor8.md "type parameter in AbstractTypeVisitor8") p)

    Visits an `IntersectionType` in a manner defined by a subclass.

    Specified by:
    :   `visitIntersection` in interface `TypeVisitor<R,P>`

    Overrides:
    :   `visitIntersection` in class `AbstractTypeVisitor6<R,P>`

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit as defined by a subclass