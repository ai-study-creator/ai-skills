Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class ElementScanner6<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.ElementScanner6<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `ElementScanner7`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_6](../SourceVersion.md#RELEASE_6))
public class ElementScanner6<R,P>
extends [AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

A scanning visitor of program elements with default behavior
appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
source version. The `visitXyz` methods in this
class scan their component elements by calling [`scan`](#scan(javax.lang.model.element.Element,P)) on their [enclosed elements](../element/Element.md#getEnclosedElements()), [parameters](../element/ExecutableElement.md#getParameters()), etc., as indicated in
the individual method specifications. A subclass can control the
order elements are visited by overriding the
`visitXyz` methods. Note that clients of a
scanner may get the desired behavior by invoking `v.scan(e,
p)` rather than `v.visit(e, p)` on the root objects of
interest.

When a subclass overrides a `visitXyz` method, the
new method can cause the enclosed elements to be scanned in the
default way by calling `super.visitXyz`. In this
fashion, the concrete visitor can control the ordering of traversal
over the component elements with respect to the additional
processing; for example, consistently calling
`super.visitXyz` at the start of the overridden
methods will yield a preorder traversal, etc. If the component
elements should be traversed in some other order, instead of
calling `super.visitXyz`, an overriding visit method
should call `scan` with the elements in the desired order.

Since:
:   1.6

See Also:
:   * [`ElementScanner7`](ElementScanner7.md "class in javax.lang.model.util")
    * [`ElementScanner8`](ElementScanner8.md "class in javax.lang.model.util")
    * [`ElementScanner9`](ElementScanner9.md "class in javax.lang.model.util")
    * [`ElementScanner14`](ElementScanner14.md "class in javax.lang.model.util")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final R`

  `DEFAULT_VALUE`

  The specified default value.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ElementScanner6()`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `ElementScanner6(R defaultValue)`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final R`

  `scan(Iterable<? extends Element> iterable,
  P p)`

  Iterates over the given elements and calls [`scan(Element, P)`](#scan(javax.lang.model.element.Element,P)) on each one.

  `final R`

  `scan(Element e)`

  Convenience method equivalent to `v.scan(e, null)`.

  `R`

  `scan(Element e,
  P p)`

  Processes an element by calling `e.accept(this, p)`;
  this method may be overridden by subclasses.

  `R`

  `visitExecutable(ExecutableElement e,
  P p)`

  Visits an executable element.

  `R`

  `visitPackage(PackageElement e,
  P p)`

  Visits a package element.

  `R`

  `visitType(TypeElement e,
  P p)`

  Visits a type element.

  `R`

  `visitTypeParameter(TypeParameterElement e,
  P p)`

  Visits a type parameter element.

  `R`

  `visitVariable(VariableElement e,
  P p)`

  Visits a variable element.

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitModule, visitRecordComponent, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_VALUE

    protected final [R](ElementScanner6.md "type parameter in ElementScanner6") DEFAULT\_VALUE

    The specified default value.
* ## Constructor Details

  + ### ElementScanner6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected ElementScanner6()

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### ElementScanner6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected ElementScanner6([R](ElementScanner6.md "type parameter in ElementScanner6") defaultValue)

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the default value
* ## Method Details

  + ### scan

    public final [R](ElementScanner6.md "type parameter in ElementScanner6") scan([Iterable](../../../../../java.base/java/lang/Iterable.md "interface in java.lang")<? extends [Element](../element/Element.md "interface in javax.lang.model.element")> iterable,
    [P](ElementScanner6.md "type parameter in ElementScanner6") p)

    Iterates over the given elements and calls [`scan(Element, P)`](#scan(javax.lang.model.element.Element,P)) on each one. Returns
    the result of the last call to `scan` or `DEFAULT_VALUE` for an empty iterable.

    Parameters:
    :   `iterable` - the elements to scan
    :   `p` - additional parameter

    Returns:
    :   the scan of the last element or `DEFAULT_VALUE` if no elements
  + ### scan

    public [R](ElementScanner6.md "type parameter in ElementScanner6") scan([Element](../element/Element.md "interface in javax.lang.model.element") e,
    [P](ElementScanner6.md "type parameter in ElementScanner6") p)

    Processes an element by calling `e.accept(this, p)`;
    this method may be overridden by subclasses.

    Parameters:
    :   `e` - the element to scan
    :   `p` - a scanner-specified parameter

    Returns:
    :   the result of visiting `e`.
  + ### scan

    public final [R](ElementScanner6.md "type parameter in ElementScanner6") scan([Element](../element/Element.md "interface in javax.lang.model.element") e)

    Convenience method equivalent to `v.scan(e, null)`.

    Parameters:
    :   `e` - the element to scan

    Returns:
    :   the result of scanning `e`.
  + ### visitPackage

    public [R](ElementScanner6.md "type parameter in ElementScanner6") visitPackage([PackageElement](../element/PackageElement.md "interface in javax.lang.model.element") e,
    [P](ElementScanner6.md "type parameter in ElementScanner6") p)

    Visits a package element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of scanning
  + ### visitType

    public [R](ElementScanner6.md "type parameter in ElementScanner6") visitType([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") e,
    [P](ElementScanner6.md "type parameter in ElementScanner6") p)

    Visits a type element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of scanning
  + ### visitVariable

    public [R](ElementScanner6.md "type parameter in ElementScanner6") visitVariable([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementScanner6.md "type parameter in ElementScanner6") p)

    Visits a variable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of scanning
  + ### visitExecutable

    public [R](ElementScanner6.md "type parameter in ElementScanner6") visitExecutable([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e,
    [P](ElementScanner6.md "type parameter in ElementScanner6") p)

    Visits an executable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of scanning
  + ### visitTypeParameter

    public [R](ElementScanner6.md "type parameter in ElementScanner6") visitTypeParameter([TypeParameterElement](../element/TypeParameterElement.md "interface in javax.lang.model.element") e,
    [P](ElementScanner6.md "type parameter in ElementScanner6") p)

    Visits a type parameter element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of scanning