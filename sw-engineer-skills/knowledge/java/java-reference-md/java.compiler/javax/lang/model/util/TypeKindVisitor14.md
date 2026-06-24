Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class TypeKindVisitor14<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.TypeKindVisitor6](TypeKindVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.TypeKindVisitor7](TypeKindVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.TypeKindVisitor8](TypeKindVisitor8.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.TypeKindVisitor9](TypeKindVisitor9.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.TypeKindVisitor14<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_21](../SourceVersion.md#RELEASE_21))
public class TypeKindVisitor14<R,P>
extends [TypeKindVisitor9](TypeKindVisitor9.md "class in javax.lang.model.util")<R,P>

A visitor of types based on their [kind](../type/TypeKind.md "enum class in javax.lang.model.type") with
default behavior appropriate for source version [`RELEASE_14`](../SourceVersion.md#RELEASE_14).
For [types](../type/TypeMirror.md "interface in javax.lang.model.type") `Xyz` that may have more than one
kind, the `visitXyz` methods in this class delegate
to the `visitXyzAsKind` method corresponding to the
first argument's kind. The `visitXyzAsKind` methods
call [`defaultAction`](SimpleTypeVisitor6.md#defaultAction(javax.lang.model.type.TypeMirror,P)), passing their arguments
to `defaultAction`'s corresponding parameters.

Since:
:   14

See Also:
:   * [**Compatibility note for subclasses**](TypeKindVisitor6.md#note_for_subclasses)
    * [`TypeKindVisitor6`](TypeKindVisitor6.md "class in javax.lang.model.util")
    * [`TypeKindVisitor7`](TypeKindVisitor7.md "class in javax.lang.model.util")
    * [`TypeKindVisitor8`](TypeKindVisitor8.md "class in javax.lang.model.util")
    * [`TypeKindVisitor9`](TypeKindVisitor9.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TypeKindVisitor14()`

  Constructor for concrete subclasses to call; uses `null`
  for the default value.

  `protected`

  `TypeKindVisitor14(R defaultValue)`

  Constructor for concrete subclasses to call; uses the argument
  for the default value.
* ## Method Summary

  ### Methods inherited from class javax.lang.model.util.[TypeKindVisitor9](TypeKindVisitor9.md "class in javax.lang.model.util")

  `visitNoTypeAsModule`

  ### Methods inherited from class javax.lang.model.util.[TypeKindVisitor8](TypeKindVisitor8.md "class in javax.lang.model.util")

  `visitIntersection`

  ### Methods inherited from class javax.lang.model.util.[TypeKindVisitor7](TypeKindVisitor7.md "class in javax.lang.model.util")

  `visitUnion`

  ### Methods inherited from class javax.lang.model.util.[TypeKindVisitor6](TypeKindVisitor6.md "class in javax.lang.model.util")

  `visitNoType, visitNoTypeAsNone, visitNoTypeAsPackage, visitNoTypeAsVoid, visitPrimitive, visitPrimitiveAsBoolean, visitPrimitiveAsByte, visitPrimitiveAsChar, visitPrimitiveAsDouble, visitPrimitiveAsFloat, visitPrimitiveAsInt, visitPrimitiveAsLong, visitPrimitiveAsShort`

  ### Methods inherited from class javax.lang.model.util.[SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitArray, visitDeclared, visitError, visitExecutable, visitNull, visitTypeVariable, visitWildcard`

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TypeKindVisitor14

    protected TypeKindVisitor14()

    Constructor for concrete subclasses to call; uses `null`
    for the default value.
  + ### TypeKindVisitor14

    protected TypeKindVisitor14([R](TypeKindVisitor14.md "type parameter in TypeKindVisitor14") defaultValue)

    Constructor for concrete subclasses to call; uses the argument
    for the default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleTypeVisitor6.DEFAULT_VALUE`](SimpleTypeVisitor6.md#DEFAULT_VALUE)