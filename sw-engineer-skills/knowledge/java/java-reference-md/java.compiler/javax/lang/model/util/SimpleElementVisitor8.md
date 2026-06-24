Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleElementVisitor8<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleElementVisitor7](SimpleElementVisitor7.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleElementVisitor8<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use `Void`
    for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's methods. Use `Void`
    for visitors that do not need an additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `SimpleElementVisitor9`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_8](../SourceVersion.md#RELEASE_8))
public class SimpleElementVisitor8<R,P>
extends [SimpleElementVisitor7](SimpleElementVisitor7.md "class in javax.lang.model.util")<R,P>

A simple visitor of program elements with default behavior
appropriate for the [`RELEASE_8`](../SourceVersion.md#RELEASE_8)
source version.
Visit methods corresponding to `RELEASE_8` and earlier
language constructs call [`defaultAction`](SimpleElementVisitor6.md#defaultAction(javax.lang.model.element.Element,P)),
passing their arguments to `defaultAction`'s corresponding
parameters.

Since:
:   1.8

See Also:
:   * [**Compatibility note for subclasses**](SimpleElementVisitor6.md#note_for_subclasses)
    * [`SimpleElementVisitor6`](SimpleElementVisitor6.md "class in javax.lang.model.util")
    * [`SimpleElementVisitor7`](SimpleElementVisitor7.md "class in javax.lang.model.util")
    * [`SimpleElementVisitor9`](SimpleElementVisitor9.md "class in javax.lang.model.util")
    * [`SimpleElementVisitor14`](SimpleElementVisitor14.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SimpleElementVisitor8()`

  Constructor for concrete subclasses; uses `null` for the
  default value.

  `protected`

  `SimpleElementVisitor8(R defaultValue)`

  Constructor for concrete subclasses; uses the argument for the
  default value.
* ## Method Summary

  ### Methods inherited from class javax.lang.model.util.[SimpleElementVisitor7](SimpleElementVisitor7.md "class in javax.lang.model.util")

  `visitVariable`

  ### Methods inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitExecutable, visitPackage, visitType, visitTypeParameter`

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitModule, visitRecordComponent, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleElementVisitor8

    protected SimpleElementVisitor8()

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleElementVisitor8

    protected SimpleElementVisitor8([R](SimpleElementVisitor8.md "type parameter in SimpleElementVisitor8") defaultValue)

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleElementVisitor6.DEFAULT_VALUE`](SimpleElementVisitor6.md#DEFAULT_VALUE)