Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleTypeVisitor8<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleTypeVisitor7](SimpleTypeVisitor7.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleTypeVisitor8<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `SimpleTypeVisitor9`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_8](../SourceVersion.md#RELEASE_8))
public class SimpleTypeVisitor8<R,P>
extends [SimpleTypeVisitor7](SimpleTypeVisitor7.md "class in javax.lang.model.util")<R,P>

A simple visitor of types with default behavior appropriate for the
[`RELEASE_8`](../SourceVersion.md#RELEASE_8) source version.
Visit methods corresponding to `RELEASE_8` and earlier
language constructs call [`defaultAction`](SimpleTypeVisitor6.md#defaultAction(javax.lang.model.type.TypeMirror,P)),
passing their arguments to `defaultAction`'s corresponding
parameters.

Since:
:   1.8

See Also:
:   * [**Compatibility note for subclasses**](SimpleTypeVisitor6.md#note_for_subclasses)
    * [`SimpleTypeVisitor6`](SimpleTypeVisitor6.md "class in javax.lang.model.util")
    * [`SimpleTypeVisitor7`](SimpleTypeVisitor7.md "class in javax.lang.model.util")
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

  `SimpleTypeVisitor8()`

  Constructor for concrete subclasses; uses `null` for the
  default value.

  `protected`

  `SimpleTypeVisitor8(R defaultValue)`

  Constructor for concrete subclasses; uses the argument for the
  default value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `R`

  `visitIntersection(IntersectionType t,
  P p)`

  Visits an intersection type.

  ### Methods inherited from class javax.lang.model.util.[SimpleTypeVisitor7](SimpleTypeVisitor7.md "class in javax.lang.model.util")

  `visitUnion`

  ### Methods inherited from class javax.lang.model.util.[SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitArray, visitDeclared, visitError, visitExecutable, visitNoType, visitNull, visitPrimitive, visitTypeVariable, visitWildcard`

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleTypeVisitor8

    protected SimpleTypeVisitor8()

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleTypeVisitor8

    protected SimpleTypeVisitor8([R](SimpleTypeVisitor8.md "type parameter in SimpleTypeVisitor8") defaultValue)

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleTypeVisitor6.DEFAULT_VALUE`](SimpleTypeVisitor6.md#DEFAULT_VALUE)
* ## Method Details

  + ### visitIntersection

    public [R](SimpleTypeVisitor8.md "type parameter in SimpleTypeVisitor8") visitIntersection([IntersectionType](../type/IntersectionType.md "interface in javax.lang.model.type") t,
    [P](SimpleTypeVisitor8.md "type parameter in SimpleTypeVisitor8") p)

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