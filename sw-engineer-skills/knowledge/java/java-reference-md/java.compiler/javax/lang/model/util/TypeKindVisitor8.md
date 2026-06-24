Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class TypeKindVisitor8<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.TypeKindVisitor6](TypeKindVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.TypeKindVisitor7](TypeKindVisitor7.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.TypeKindVisitor8<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `TypeKindVisitor9`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_8](../SourceVersion.md#RELEASE_8))
public class TypeKindVisitor8<R,P>
extends [TypeKindVisitor7](TypeKindVisitor7.md "class in javax.lang.model.util")<R,P>

A visitor of types based on their [kind](../type/TypeKind.md "enum class in javax.lang.model.type") with
default behavior appropriate for the [`RELEASE_8`](../SourceVersion.md#RELEASE_8) source version. For [types](../type/TypeMirror.md "interface in javax.lang.model.type") `Xyz` that may have more than one
kind, the `visitXyz` methods in this class delegate
to the `visitXyzAsKind` method corresponding to the
first argument's kind. The `visitXyzAsKind` methods
call [`defaultAction`](SimpleTypeVisitor6.md#defaultAction(javax.lang.model.type.TypeMirror,P)), passing their arguments
to `defaultAction`'s corresponding parameters.

Since:
:   1.8

See Also:
:   * [**Compatibility note for subclasses**](TypeKindVisitor6.md#note_for_subclasses)
    * [`TypeKindVisitor6`](TypeKindVisitor6.md "class in javax.lang.model.util")
    * [`TypeKindVisitor7`](TypeKindVisitor7.md "class in javax.lang.model.util")
    * [`TypeKindVisitor9`](TypeKindVisitor9.md "class in javax.lang.model.util")
    * [`TypeKindVisitor14`](TypeKindVisitor14.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TypeKindVisitor8()`

  Constructor for concrete subclasses to call; uses `null`
  for the default value.

  `protected`

  `TypeKindVisitor8(R defaultValue)`

  Constructor for concrete subclasses to call; uses the argument
  for the default value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `R`

  `visitIntersection(IntersectionType t,
  P p)`

  Visits an intersection type.

  ### Methods inherited from class javax.lang.model.util.[TypeKindVisitor7](TypeKindVisitor7.md "class in javax.lang.model.util")

  `visitUnion`

  ### Methods inherited from class javax.lang.model.util.[TypeKindVisitor6](TypeKindVisitor6.md "class in javax.lang.model.util")

  `visitNoType, visitNoTypeAsModule, visitNoTypeAsNone, visitNoTypeAsPackage, visitNoTypeAsVoid, visitPrimitive, visitPrimitiveAsBoolean, visitPrimitiveAsByte, visitPrimitiveAsChar, visitPrimitiveAsDouble, visitPrimitiveAsFloat, visitPrimitiveAsInt, visitPrimitiveAsLong, visitPrimitiveAsShort`

  ### Methods inherited from class javax.lang.model.util.[SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitArray, visitDeclared, visitError, visitExecutable, visitNull, visitTypeVariable, visitWildcard`

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TypeKindVisitor8

    protected TypeKindVisitor8()

    Constructor for concrete subclasses to call; uses `null`
    for the default value.
  + ### TypeKindVisitor8

    protected TypeKindVisitor8([R](TypeKindVisitor8.md "type parameter in TypeKindVisitor8") defaultValue)

    Constructor for concrete subclasses to call; uses the argument
    for the default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleTypeVisitor6.DEFAULT_VALUE`](SimpleTypeVisitor6.md#DEFAULT_VALUE)
* ## Method Details

  + ### visitIntersection

    public [R](TypeKindVisitor8.md "type parameter in TypeKindVisitor8") visitIntersection([IntersectionType](../type/IntersectionType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor8.md "type parameter in TypeKindVisitor8") p)

    Visits an intersection type.

    Specified by:
    :   `visitIntersection` in interface `TypeVisitor<R,P>`

    Overrides:
    :   `visitIntersection` in class `AbstractTypeVisitor6<R,P>`

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`