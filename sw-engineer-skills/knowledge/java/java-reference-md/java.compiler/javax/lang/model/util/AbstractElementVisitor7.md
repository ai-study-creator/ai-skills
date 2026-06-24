Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractElementVisitor7<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.AbstractElementVisitor7<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `AbstractElementVisitor8`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_7](../SourceVersion.md#RELEASE_7))
public abstract class AbstractElementVisitor7<R,P>
extends [AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

A skeletal visitor of program elements with default behavior
appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
source version.

Since:
:   1.7

See Also:
:   * [**Compatibility note for subclasses**](AbstractElementVisitor6.md#note_for_subclasses)
    * [`AbstractElementVisitor6`](AbstractElementVisitor6.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor8`](AbstractElementVisitor8.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor9`](AbstractElementVisitor9.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor14`](AbstractElementVisitor14.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractElementVisitor7()`

  Deprecated.

  Release 7 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitModule, visitRecordComponent, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.lang.model.element.[ElementVisitor](../element/ElementVisitor.md "interface in javax.lang.model.element")

  `visitExecutable, visitPackage, visitType, visitTypeParameter, visitVariable`

* ## Constructor Details

  + ### AbstractElementVisitor7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected AbstractElementVisitor7()

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses to call.