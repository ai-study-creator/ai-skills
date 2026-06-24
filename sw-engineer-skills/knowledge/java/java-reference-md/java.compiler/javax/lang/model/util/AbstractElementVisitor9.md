Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractElementVisitor9<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractElementVisitor7](AbstractElementVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractElementVisitor8](AbstractElementVisitor8.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.AbstractElementVisitor9<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `AbstractElementVisitor14`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_14](../SourceVersion.md#RELEASE_14))
public abstract class AbstractElementVisitor9<R,P>
extends [AbstractElementVisitor8](AbstractElementVisitor8.md "class in javax.lang.model.util")<R,P>

A skeletal visitor of program elements with default behavior
appropriate for source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

Since:
:   9

See Also:
:   * [**Compatibility note for subclasses**](AbstractElementVisitor6.md#note_for_subclasses)
    * [`AbstractElementVisitor6`](AbstractElementVisitor6.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor7`](AbstractElementVisitor7.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor8`](AbstractElementVisitor8.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractElementVisitor9()`

  Constructor for concrete subclasses to call.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract R`

  `visitModule(ModuleElement e,
  P p)`

  Visits a module element.

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitRecordComponent, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.lang.model.element.[ElementVisitor](../element/ElementVisitor.md "interface in javax.lang.model.element")

  `visitExecutable, visitPackage, visitType, visitTypeParameter, visitVariable`

* ## Constructor Details

  + ### AbstractElementVisitor9

    protected AbstractElementVisitor9()

    Constructor for concrete subclasses to call.
* ## Method Details

  + ### visitModule

    public abstract [R](AbstractElementVisitor9.md "type parameter in AbstractElementVisitor9") visitModule([ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element") e,
    [P](AbstractElementVisitor9.md "type parameter in AbstractElementVisitor9") p)

    Visits a module element.

    Specified by:
    :   `visitModule` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitModule` in class `AbstractElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result