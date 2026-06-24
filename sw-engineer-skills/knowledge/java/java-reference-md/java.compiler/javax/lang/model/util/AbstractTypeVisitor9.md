Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractTypeVisitor9<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractTypeVisitor7](AbstractTypeVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractTypeVisitor8](AbstractTypeVisitor8.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.AbstractTypeVisitor9<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `AbstractTypeVisitor14`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_14](../SourceVersion.md#RELEASE_14))
public abstract class AbstractTypeVisitor9<R,P>
extends [AbstractTypeVisitor8](AbstractTypeVisitor8.md "class in javax.lang.model.util")<R,P>

A skeletal visitor of types with default behavior appropriate for
source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through
[`RELEASE_14`](../SourceVersion.md#RELEASE_14).

Since:
:   9

See Also:
:   * [**Compatibility note for subclasses**](AbstractTypeVisitor6.md#note_for_subclasses)
    * [`AbstractTypeVisitor6`](AbstractTypeVisitor6.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor7`](AbstractTypeVisitor7.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor8`](AbstractTypeVisitor8.md "class in javax.lang.model.util")
    * [`AbstractTypeVisitor14`](AbstractTypeVisitor14.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractTypeVisitor9()`

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

  + ### AbstractTypeVisitor9

    protected AbstractTypeVisitor9()

    Constructor for concrete subclasses to call.