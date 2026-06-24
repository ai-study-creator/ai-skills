Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractTypeVisitor7<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.AbstractTypeVisitor7<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `AbstractTypeVisitor8`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_7](../SourceVersion.md#RELEASE_7))
public abstract class AbstractTypeVisitor7<R,P>
extends [AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

A skeletal visitor of types with default behavior appropriate for
the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
source version.

Since:
:   1.7

See Also:
:   * [**Compatibility note for subclasses**](AbstractTypeVisitor6.md#note_for_subclasses)
    * [`AbstractTypeVisitor6`](AbstractTypeVisitor6.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor8`](AbstractTypeVisitor8.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor9`](AbstractTypeVisitor9.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor14`](AbstractTypeVisitor14.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractTypeVisitor7()`

  Deprecated.

  Release 7 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract R`

  `visitUnion(UnionType t,
  P p)`

  Visits a `UnionType` in a manner defined by a subclass.

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitIntersection, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.lang.model.type.[TypeVisitor](../type/TypeVisitor.md "interface in javax.lang.model.type")

  `visitArray, visitDeclared, visitError, visitExecutable, visitNoType, visitNull, visitPrimitive, visitTypeVariable, visitWildcard`

* ## Constructor Details

  + ### AbstractTypeVisitor7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected AbstractTypeVisitor7()

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses to call.
* ## Method Details

  + ### visitUnion

    public abstract [R](AbstractTypeVisitor7.md "type parameter in AbstractTypeVisitor7") visitUnion([UnionType](../type/UnionType.md "interface in javax.lang.model.type") t,
    [P](AbstractTypeVisitor7.md "type parameter in AbstractTypeVisitor7") p)

    Visits a `UnionType` in a manner defined by a subclass.

    Specified by:
    :   `visitUnion` in interface `TypeVisitor<R,P>`

    Overrides:
    :   `visitUnion` in class `AbstractTypeVisitor6<R,P>`

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit as defined by a subclass