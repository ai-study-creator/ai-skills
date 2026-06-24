Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleTypeVisitor9<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleTypeVisitor7](SimpleTypeVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleTypeVisitor8](SimpleTypeVisitor8.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleTypeVisitor9<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `TypeVisitor<R,P>`

Direct Known Subclasses:
:   `SimpleTypeVisitor14`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_14](../SourceVersion.md#RELEASE_14))
public class SimpleTypeVisitor9<R,P>
extends [SimpleTypeVisitor8](SimpleTypeVisitor8.md "class in javax.lang.model.util")<R,P>

A simple visitor of types with default behavior appropriate for
source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through
[`RELEASE_14`](../SourceVersion.md#RELEASE_14).
Visit methods corresponding to `RELEASE_9` and earlier
language constructs call [`defaultAction`](SimpleTypeVisitor6.md#defaultAction(javax.lang.model.type.TypeMirror,P)),
passing their arguments to `defaultAction`'s corresponding
parameters.

Since:
:   9

See Also:
:   * [**Compatibility note for subclasses**](SimpleTypeVisitor6.md#note_for_subclasses)
    * [`SimpleTypeVisitor6`](SimpleTypeVisitor6.md "class in javax.lang.model.util")
    * [`SimpleTypeVisitor7`](SimpleTypeVisitor7.md "class in javax.lang.model.util")
    * [`SimpleTypeVisitor8`](SimpleTypeVisitor8.md "class in javax.lang.model.util")
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

  `SimpleTypeVisitor9()`

  Constructor for concrete subclasses; uses `null` for the
  default value.

  `protected`

  `SimpleTypeVisitor9(R defaultValue)`

  Constructor for concrete subclasses; uses the argument for the
  default value.
* ## Method Summary

  ### Methods inherited from class javax.lang.model.util.[SimpleTypeVisitor8](SimpleTypeVisitor8.md "class in javax.lang.model.util")

  `visitIntersection`

  ### Methods inherited from class javax.lang.model.util.[SimpleTypeVisitor7](SimpleTypeVisitor7.md "class in javax.lang.model.util")

  `visitUnion`

  ### Methods inherited from class javax.lang.model.util.[SimpleTypeVisitor6](SimpleTypeVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitArray, visitDeclared, visitError, visitExecutable, visitNoType, visitNull, visitPrimitive, visitTypeVariable, visitWildcard`

  ### Methods inherited from class javax.lang.model.util.[AbstractTypeVisitor6](AbstractTypeVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleTypeVisitor9

    protected SimpleTypeVisitor9()

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleTypeVisitor9

    protected SimpleTypeVisitor9([R](SimpleTypeVisitor9.md "type parameter in SimpleTypeVisitor9") defaultValue)

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleTypeVisitor6.DEFAULT_VALUE`](SimpleTypeVisitor6.md#DEFAULT_VALUE)