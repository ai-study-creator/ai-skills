Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class TypeKindVisitor6<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.TypeKindVisitor6<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `TypeKindVisitor7`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_6](../SourceVersion.md#RELEASE_6))
public class TypeKindVisitor6<R,P>
extends [SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")<R,P>

A visitor of types based on their [kind](../type/TypeKind.md "enum class in javax.lang.model.type") with
default behavior appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6) source version. For [types](../type/TypeMirror.md "interface in javax.lang.model.type") `Xyz` that may have more than one
kind, the `visitXyz` methods in this class delegate
to the `visitXyzAsKind` method corresponding to the
first argument's kind. The `visitXyzAsKind` methods
call [`defaultAction`](SimpleTypeVisitor6.md#defaultAction(javax.lang.model.type.TypeMirror,P)), passing their arguments
to `defaultAction`'s corresponding parameters.

Since:
:   1.6

See Also:
:   * [`TypeKindVisitor7`](TypeKindVisitor7.md "class in javax.lang.model.util")
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

  `TypeKindVisitor6()`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `TypeKindVisitor6(R defaultValue)`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `R`

  `visitNoType(NoType t,
  P p)`

  Visits a [`NoType`](../type/NoType.md "interface in javax.lang.model.type") instance.

  `R`

  `visitNoTypeAsModule(NoType t,
  P p)`

  Visits a [`MODULE`](../type/TypeKind.md#MODULE) pseudo-type.

  `R`

  `visitNoTypeAsNone(NoType t,
  P p)`

  Visits a [`NONE`](../type/TypeKind.md#NONE) pseudo-type.

  `R`

  `visitNoTypeAsPackage(NoType t,
  P p)`

  Visits a [`PACKAGE`](../type/TypeKind.md#PACKAGE) pseudo-type.

  `R`

  `visitNoTypeAsVoid(NoType t,
  P p)`

  Visits a [`VOID`](../type/TypeKind.md#VOID) pseudo-type.

  `R`

  `visitPrimitive(PrimitiveType t,
  P p)`

  Visits a primitive type.

  `R`

  `visitPrimitiveAsBoolean(PrimitiveType t,
  P p)`

  Visits a `BOOLEAN` primitive type.

  `R`

  `visitPrimitiveAsByte(PrimitiveType t,
  P p)`

  Visits a `BYTE` primitive type.

  `R`

  `visitPrimitiveAsChar(PrimitiveType t,
  P p)`

  Visits a `CHAR` primitive type.

  `R`

  `visitPrimitiveAsDouble(PrimitiveType t,
  P p)`

  Visits a `DOUBLE` primitive type.

  `R`

  `visitPrimitiveAsFloat(PrimitiveType t,
  P p)`

  Visits a `FLOAT` primitive type.

  `R`

  `visitPrimitiveAsInt(PrimitiveType t,
  P p)`

  Visits an `INT` primitive type.

  `R`

  `visitPrimitiveAsLong(PrimitiveType t,
  P p)`

  Visits a `LONG` primitive type.

  `R`

  `visitPrimitiveAsShort(PrimitiveType t,
  P p)`

  Visits a `SHORT` primitive type.

  ### Methods inherited from class javax.lang.model.util.[SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitArray, visitDeclared, visitError, visitExecutable, visitNull, visitTypeVariable, visitWildcard`

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitIntersection, visitUnion, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TypeKindVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected TypeKindVisitor6()

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses to call; uses `null`
    for the default value.
  + ### TypeKindVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected TypeKindVisitor6([R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") defaultValue)

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses to call; uses the argument
    for the default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleTypeVisitor6.DEFAULT_VALUE`](SimpleTypeVisitor6.md#DEFAULT_VALUE)
* ## Method Details

  + ### visitPrimitive

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitPrimitive([PrimitiveType](../type/PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a primitive type.

    Specified by:
    :   `visitPrimitive` in interface `TypeVisitor<R,P>`

    Overrides:
    :   `visitPrimitive` in class `SimpleTypeVisitor6<R,P>`

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the kind-specific visit method
  + ### visitPrimitiveAsBoolean

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitPrimitiveAsBoolean([PrimitiveType](../type/PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a `BOOLEAN` primitive type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitPrimitiveAsByte

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitPrimitiveAsByte([PrimitiveType](../type/PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a `BYTE` primitive type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitPrimitiveAsShort

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitPrimitiveAsShort([PrimitiveType](../type/PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a `SHORT` primitive type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitPrimitiveAsInt

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitPrimitiveAsInt([PrimitiveType](../type/PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits an `INT` primitive type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitPrimitiveAsLong

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitPrimitiveAsLong([PrimitiveType](../type/PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a `LONG` primitive type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitPrimitiveAsChar

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitPrimitiveAsChar([PrimitiveType](../type/PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a `CHAR` primitive type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitPrimitiveAsFloat

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitPrimitiveAsFloat([PrimitiveType](../type/PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a `FLOAT` primitive type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitPrimitiveAsDouble

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitPrimitiveAsDouble([PrimitiveType](../type/PrimitiveType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a `DOUBLE` primitive type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitNoType

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitNoType([NoType](../type/NoType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a [`NoType`](../type/NoType.md "interface in javax.lang.model.type") instance.

    Specified by:
    :   `visitNoType` in interface `TypeVisitor<R,P>`

    Overrides:
    :   `visitNoType` in class `SimpleTypeVisitor6<R,P>`

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the kind-specific visit method
  + ### visitNoTypeAsVoid

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitNoTypeAsVoid([NoType](../type/NoType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a [`VOID`](../type/TypeKind.md#VOID) pseudo-type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitNoTypeAsPackage

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitNoTypeAsPackage([NoType](../type/NoType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a [`PACKAGE`](../type/TypeKind.md#PACKAGE) pseudo-type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitNoTypeAsModule

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitNoTypeAsModule([NoType](../type/NoType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a [`MODULE`](../type/TypeKind.md#MODULE) pseudo-type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `visitUnknown`

    Since:
    :   10
  + ### visitNoTypeAsNone

    public [R](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") visitNoTypeAsNone([NoType](../type/NoType.md "interface in javax.lang.model.type") t,
    [P](TypeKindVisitor6.md "type parameter in TypeKindVisitor6") p)

    Visits a [`NONE`](../type/TypeKind.md#NONE) pseudo-type.

    Parameters:
    :   `t` - the type to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`