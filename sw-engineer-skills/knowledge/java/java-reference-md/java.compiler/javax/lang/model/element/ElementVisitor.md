Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface ElementVisitor<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Known Implementing Classes:
:   `AbstractElementVisitor14`, `AbstractElementVisitor6`, `AbstractElementVisitor7`, `AbstractElementVisitor8`, `AbstractElementVisitor9`, `ElementKindVisitor14`, `ElementKindVisitor6`, `ElementKindVisitor7`, `ElementKindVisitor8`, `ElementKindVisitor9`, `ElementScanner14`, `ElementScanner6`, `ElementScanner7`, `ElementScanner8`, `ElementScanner9`, `SimpleElementVisitor14`, `SimpleElementVisitor6`, `SimpleElementVisitor7`, `SimpleElementVisitor8`, `SimpleElementVisitor9`

---

public interface ElementVisitor<R,P>

A visitor of program elements, in the style of the visitor design
pattern. Classes implementing this interface are used to operate
on an element when the kind of element is unknown at compile time.
When a visitor is passed to an element's [`accept`](Element.md#accept(javax.lang.model.element.ElementVisitor,P)) method, the `visitXyz` method most applicable
to that element is invoked.

Classes implementing this interface may or may not throw a
`NullPointerException` if the additional parameter `p`
is `null`; see documentation of the implementing class for
details.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `default R`

  `visit(Element e)`

  A convenience method equivalent to `visit(e, null)`.

  `R`

  `visit(Element e,
  P p)`

  Visits an element.

  `R`

  `visitExecutable(ExecutableElement e,
  P p)`

  Visits an executable element.

  `default R`

  `visitModule(ModuleElement e,
  P p)`

  Visits a module element.

  `R`

  `visitPackage(PackageElement e,
  P p)`

  Visits a package element.

  `default R`

  `visitRecordComponent(RecordComponentElement e,
  P p)`

  Visits a record component element.

  `R`

  `visitType(TypeElement e,
  P p)`

  Visits a type element.

  `R`

  `visitTypeParameter(TypeParameterElement e,
  P p)`

  Visits a type parameter element.

  `R`

  `visitUnknown(Element e,
  P p)`

  Visits an unknown kind of element.

  `R`

  `visitVariable(VariableElement e,
  P p)`

  Visits a variable element.

* ## Method Details

  + ### visit

    [R](ElementVisitor.md "type parameter in ElementVisitor") visit([Element](Element.md "interface in javax.lang.model.element") e,
    [P](ElementVisitor.md "type parameter in ElementVisitor") p)

    Visits an element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visit

    default [R](ElementVisitor.md "type parameter in ElementVisitor") visit([Element](Element.md "interface in javax.lang.model.element") e)

    A convenience method equivalent to `visit(e, null)`.

    Parameters:
    :   `e` - the element to visit

    Returns:
    :   a visitor-specified result
  + ### visitPackage

    [R](ElementVisitor.md "type parameter in ElementVisitor") visitPackage([PackageElement](PackageElement.md "interface in javax.lang.model.element") e,
    [P](ElementVisitor.md "type parameter in ElementVisitor") p)

    Visits a package element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitType

    [R](ElementVisitor.md "type parameter in ElementVisitor") visitType([TypeElement](TypeElement.md "interface in javax.lang.model.element") e,
    [P](ElementVisitor.md "type parameter in ElementVisitor") p)

    Visits a type element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitVariable

    [R](ElementVisitor.md "type parameter in ElementVisitor") visitVariable([VariableElement](VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementVisitor.md "type parameter in ElementVisitor") p)

    Visits a variable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitExecutable

    [R](ElementVisitor.md "type parameter in ElementVisitor") visitExecutable([ExecutableElement](ExecutableElement.md "interface in javax.lang.model.element") e,
    [P](ElementVisitor.md "type parameter in ElementVisitor") p)

    Visits an executable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitTypeParameter

    [R](ElementVisitor.md "type parameter in ElementVisitor") visitTypeParameter([TypeParameterElement](TypeParameterElement.md "interface in javax.lang.model.element") e,
    [P](ElementVisitor.md "type parameter in ElementVisitor") p)

    Visits a type parameter element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitUnknown

    [R](ElementVisitor.md "type parameter in ElementVisitor") visitUnknown([Element](Element.md "interface in javax.lang.model.element") e,
    [P](ElementVisitor.md "type parameter in ElementVisitor") p)

    Visits an unknown kind of element.
    This can occur if the language evolves and new kinds
    of elements are added to the `Element` hierarchy.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Throws:
    :   `UnknownElementException` - a visitor implementation may optionally throw this exception
  + ### visitModule

    default [R](ElementVisitor.md "type parameter in ElementVisitor") visitModule([ModuleElement](ModuleElement.md "interface in javax.lang.model.element") e,
    [P](ElementVisitor.md "type parameter in ElementVisitor") p)

    Visits a module element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Since:
    :   9
  + ### visitRecordComponent

    default [R](ElementVisitor.md "type parameter in ElementVisitor") visitRecordComponent([RecordComponentElement](RecordComponentElement.md "interface in javax.lang.model.element") e,
    [P](ElementVisitor.md "type parameter in ElementVisitor") p)

    Visits a record component element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result

    Since:
    :   16