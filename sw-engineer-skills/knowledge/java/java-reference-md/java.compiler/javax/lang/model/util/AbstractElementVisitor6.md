Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractElementVisitor6<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.lang.model.util.AbstractElementVisitor6<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `AbstractElementVisitor7`, `ElementScanner6`, `SimpleElementVisitor6`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_6](../SourceVersion.md#RELEASE_6))
public abstract class AbstractElementVisitor6<R,P>
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [ElementVisitor](../element/ElementVisitor.md "interface in javax.lang.model.element")<R,P>

A skeletal visitor of program elements with default behavior
appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
source version.

Since:
:   1.6

See Also:
:   * [`AbstractElementVisitor7`](AbstractElementVisitor7.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor8`](AbstractElementVisitor8.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor9`](AbstractElementVisitor9.md "class in javax.lang.model.util")
    * [`AbstractElementVisitor14`](AbstractElementVisitor14.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractElementVisitor6()`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final R`

  `visit(Element e)`

  Visits any program element as if by passing itself to that
  element's [`accept`](../element/Element.md#accept(javax.lang.model.element.ElementVisitor,P)) method and passing
  `null` for the additional parameter.

  `final R`

  `visit(Element e,
  P p)`

  Visits any program element as if by passing itself to that
  element's [`accept`](../element/Element.md#accept(javax.lang.model.element.ElementVisitor,P)) method.

  `R`

  `visitModule(ModuleElement e,
  P p)`

  Visits a module element.

  `R`

  `visitRecordComponent(RecordComponentElement e,
  P p)`

  Visits a record component element.

  `R`

  `visitUnknown(Element e,
  P p)`

  Visits an unknown kind of element.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.lang.model.element.[ElementVisitor](../element/ElementVisitor.md "interface in javax.lang.model.element")

  `visitExecutable, visitPackage, visitType, visitTypeParameter, visitVariable`

* ## Constructor Details

  + ### AbstractElementVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected AbstractElementVisitor6()

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses to call.
* ## Method Details

  + ### visit

    public final [R](AbstractElementVisitor6.md "type parameter in AbstractElementVisitor6") visit([Element](../element/Element.md "interface in javax.lang.model.element") e,
    [P](AbstractElementVisitor6.md "type parameter in AbstractElementVisitor6") p)

    Visits any program element as if by passing itself to that
    element's [`accept`](../element/Element.md#accept(javax.lang.model.element.ElementVisitor,P)) method. The invocation
    `v.visit(elem, p)` is equivalent to `elem.accept(v,
    p)`.

    Specified by:
    :   `visit` in interface `ElementVisitor<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visit

    public final [R](AbstractElementVisitor6.md "type parameter in AbstractElementVisitor6") visit([Element](../element/Element.md "interface in javax.lang.model.element") e)

    Visits any program element as if by passing itself to that
    element's [`accept`](../element/Element.md#accept(javax.lang.model.element.ElementVisitor,P)) method and passing
    `null` for the additional parameter. The invocation
    `v.visit(elem)` is equivalent to `elem.accept(v,
    null)`.

    Specified by:
    :   `visit` in interface `ElementVisitor<R,P>`

    Parameters:
    :   `e` - the element to visit

    Returns:
    :   a visitor-specified result
  + ### visitUnknown

    public [R](AbstractElementVisitor6.md "type parameter in AbstractElementVisitor6") visitUnknown([Element](../element/Element.md "interface in javax.lang.model.element") e,
    [P](AbstractElementVisitor6.md "type parameter in AbstractElementVisitor6") p)

    Visits an unknown kind of element.
    This can occur if the language evolves and new kinds
    of elements are added to the `Element` hierarchy.

    Specified by:
    :   `visitUnknown` in interface `ElementVisitor<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Throws:
    :   `UnknownElementException` - a visitor implementation may optionally throw this exception
  + ### visitModule

    public [R](AbstractElementVisitor6.md "type parameter in AbstractElementVisitor6") visitModule([ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element") e,
    [P](AbstractElementVisitor6.md "type parameter in AbstractElementVisitor6") p)

    Visits a module element.

    Specified by:
    :   `visitModule` in interface `ElementVisitor<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Since:
    :   9
  + ### visitRecordComponent

    public [R](AbstractElementVisitor6.md "type parameter in AbstractElementVisitor6") visitRecordComponent([RecordComponentElement](../element/RecordComponentElement.md "interface in javax.lang.model.element") e,
    [P](AbstractElementVisitor6.md "type parameter in AbstractElementVisitor6") p)

    Visits a record component element.

    Specified by:
    :   `visitRecordComponent` in interface `ElementVisitor<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Since:
    :   14