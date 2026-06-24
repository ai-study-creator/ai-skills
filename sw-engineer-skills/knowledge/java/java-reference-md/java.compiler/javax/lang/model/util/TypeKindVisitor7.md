Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class TypeKindVisitor7<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.TypeKindVisitor6](TypeKindVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.TypeKindVisitor7<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `TypeKindVisitor8`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_7](../SourceVersion.md#RELEASE_7))
public class TypeKindVisitor7<R,P>
extends [TypeKindVisitor6](TypeKindVisitor6.md "class in javax.lang.model.util")<R,P>

A visitor of types based on their [kind](../type/TypeKind.md "enum class in javax.lang.model.type") with
default behavior appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7) source version. For [types](../type/TypeMirror.md "interface in javax.lang.model.type") `Xyz` that may have more than one
kind, the `visitXyz` methods in this class delegate
to the `visitXyzAsKind` method corresponding to the
first argument's kind. The `visitXyzAsKind` methods
call [`defaultAction`](SimpleTypeVisitor6.md#defaultAction(javax.lang.model.type.TypeMirror,P)), passing their arguments
to `defaultAction`'s corresponding parameters.

Since:
:   1.7

See Also:
:   * [**Compatibility note for subclasses**](TypeKindVisitor6.md#note_for_subclasses)
    * [`TypeKindVisitor6`](TypeKindVisitor6.md "class in javax.lang.model.util")
    * [`TypeKindVisitor8`](TypeKindVisitor8.md "class in javax.lang.model.util")
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

  `TypeKindVisitor7()`

  Deprecated.

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `TypeKindVisitor7(R defaultValue)`

  Deprecated.

  Release 7 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `R`

  `visitUnion(UnionType t,
  P p)`

  Visits a union type.

  ### Methods inherited from class javax.lang.model.util.[TypeKindVisitor6](TypeKindVisitor6.md "class in javax.lang.model.util")

  `visitNoType, visitNoTypeAsModule, visitNoTypeAsNone, visitNoTypeAsPackage, visitNoTypeAsVoid, visitPrimitive, visitPrimitiveAsBoolean, visitPrimitiveAsByte, visitPrimitiveAsChar, visitPrimitiveAsDouble, visitPrimitiveAsFloat, visitPrimitiveAsInt, visitPrimitiveAsLong, visitPrimitiveAsShort`

  ### Methods inherited from class javax.lang.model.util.[SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitArray, visitDeclared, visitError, visitExecutable, visitNull, visitTypeVariable, visitWildcard`

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitIntersection, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TypeKindVisitor7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected TypeKindVisitor7()

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses to call; uses `null`
    for the default value.
  + ### TypeKindVisitor7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected TypeKindVisitor7([R](TypeKindVisitor7.md "type parameter in TypeKindVisitor7") defaultValue)

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses to call; uses the argument
    for the default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleTypeVisitor6.DEFAULT_VALUE`](SimpleTypeVisitor6.md#DEFAULT_VALUE)
* ## Method Details

  + ### visitUnion

    public [R](TypeKindVisitor7.md "type parameter in TypeKindVisitor7") visitUnion([UnionType](../type/UnionType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor7.md "type parameter in TypeKindVisitor7") p)

    Visits a union type.

    Specified by:
    :   `visitUnion` in interface `TypeVisitor<R,P>`

    Overrides:
    :   `visitUnion` in class `AbstractTypeVisitor6<R,P>`

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`