Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleTypeVisitor7<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleTypeVisitor7<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `SimpleTypeVisitor8`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_7](../SourceVersion.md#RELEASE_7))
public class SimpleTypeVisitor7<R,P>
extends [SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")<R,P>

A simple visitor of types with default behavior appropriate for the
[`RELEASE_7`](../SourceVersion.md#RELEASE_7) source version.
Visit methods corresponding to `RELEASE_7` and earlier
language constructs call [`defaultAction`](SimpleTypeVisitor6.md#defaultAction(javax.lang.model.type.TypeMirror,P)),
passing their arguments to `defaultAction`'s corresponding
parameters.

Since:
:   1.7

See Also:
:   * [**Compatibility note for subclasses**](SimpleTypeVisitor6.md#note_for_subclasses)
    * [`SimpleTypeVisitor6`](SimpleTypeVisitor6.md "class in javax.lang.model.util")
    * [`SimpleTypeVisitor8`](SimpleTypeVisitor8.md "class in javax.lang.model.util")
    * [`SimpleTypeVisitor9`](SimpleTypeVisitor9.md "class in javax.lang.model.util")
    * [`SimpleTypeVisitor14`](SimpleTypeVisitor14.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SimpleTypeVisitor7()`

  Deprecated.

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `SimpleTypeVisitor7(R defaultValue)`

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

  ### Methods inherited from class javax.lang.model.util.[SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitArray, visitDeclared, visitError, visitExecutable, visitNoType, visitNull, visitPrimitive, visitTypeVariable, visitWildcard`

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitIntersection, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleTypeVisitor7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected SimpleTypeVisitor7()

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleTypeVisitor7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected SimpleTypeVisitor7([R](SimpleTypeVisitor7.md "type parameter in SimpleTypeVisitor7") defaultValue)

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleTypeVisitor6.DEFAULT_VALUE`](SimpleTypeVisitor6.md#DEFAULT_VALUE)
* ## Method Details

  + ### visitUnion

    public [R](SimpleTypeVisitor7.md "type parameter in SimpleTypeVisitor7") visitUnion([UnionType](../type/UnionType.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor7.md "type parameter in SimpleTypeVisitor7") p)

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