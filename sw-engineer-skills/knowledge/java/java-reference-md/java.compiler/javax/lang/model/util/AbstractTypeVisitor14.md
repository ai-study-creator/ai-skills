Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractTypeVisitor14<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractTypeVisitor7](AbstractTypeVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractTypeVisitor8](AbstractTypeVisitor8.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractTypeVisitor9](AbstractTypeVisitor9.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.AbstractTypeVisitor14<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_21](../SourceVersion.md#RELEASE_21))
public abstract class AbstractTypeVisitor14<R,P>
extends [AbstractTypeVisitor9](AbstractTypeVisitor9.md "class in javax.lang.model.util")<R,P>

A skeletal visitor of types with default behavior appropriate for the
[`RELEASE_14`](../SourceVersion.md#RELEASE_14) source version.

Since:
:   14

See Also:
:   * [**Compatibility note for subclasses**](AbstractTypeVisitor6.md#note_for_subclasses)
    * [`AbstractTypeVisitor6`](AbstractTypeVisitor6.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor7`](AbstractTypeVisitor7.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor8`](AbstractTypeVisitor8.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor9`](AbstractTypeVisitor9.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractTypeVisitor14()`

  Constructor for concrete subclasses to call.
* ## Method Summary

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor8](AbstractTypeVisitor8.md "class in javax.lang.model.util")

  `visitIntersection`

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor7](AbstractTypeVisitor7.md "class in javax.lang.model.util")

  `visitUnion`

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.lang.model.type.[TypeVisitor](../type/TypeVisitor.md "interface in javax.lang.model.type")

  `visitArray, visitDeclared, visitError, visitExecutable, visitNoType, visitNull, visitPrimitive, visitTypeVariable, visitWildcard`

* ## Constructor Details

  + ### AbstractTypeVisitor14

    protected AbstractTypeVisitor14()

    Constructor for concrete subclasses to call.