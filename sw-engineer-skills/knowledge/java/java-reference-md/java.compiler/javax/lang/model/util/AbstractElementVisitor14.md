Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractElementVisitor14<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractElementVisitor7](AbstractElementVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractElementVisitor8](AbstractElementVisitor8.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractElementVisitor9](AbstractElementVisitor9.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.AbstractElementVisitor14<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_21](../SourceVersion.md#RELEASE_21))
public abstract class AbstractElementVisitor14<R,P>
extends [AbstractElementVisitor9](AbstractElementVisitor9.md "class in javax.lang.model.util")<R,P>

A skeletal visitor of program elements with default behavior
appropriate for the [`RELEASE_14`](../SourceVersion.md#RELEASE_14)
source version.

Since:
:   16

See Also:
:   * [**Compatibility note for subclasses**](AbstractElementVisitor6.md#note_for_subclasses)
    * [`AbstractElementVisitor6`](AbstractElementVisitor6.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor7`](AbstractElementVisitor7.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor8`](AbstractElementVisitor8.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor9`](AbstractElementVisitor9.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractElementVisitor14()`

  Constructor for concrete subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract R`

  `visitRecordComponent(RecordComponentElement e,
  P p)`

  Visits a record component element.

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor9](AbstractElementVisitor9.md "class in javax.lang.model.util")

  `visitModule`

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.lang.model.element.[ElementVisitor](../element/ElementVisitor.md "interface in javax.lang.model.element")

  `visitExecutable, visitPackage, visitType, visitTypeParameter, visitVariable`

* ## Constructor Details

  + ### AbstractElementVisitor14

    protected AbstractElementVisitor14()

    Constructor for concrete subclasses to call.
* ## Method Details

  + ### visitRecordComponent

    public abstract [R](AbstractElementVisitor14.md "type parameter in AbstractElementVisitor14") visitRecordComponent([RecordComponentElement](../element/RecordComponentElement.md "interface in javax.lang.model.element") e,
    [P](AbstractElementVisitor14.md "type parameter in AbstractElementVisitor14") p)

    Visits a record component element.

    Specified by:
    :   `visitRecordComponent` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitRecordComponent` in class `AbstractElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result