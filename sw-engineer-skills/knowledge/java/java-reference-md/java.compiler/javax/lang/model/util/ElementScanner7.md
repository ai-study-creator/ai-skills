Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class ElementScanner7<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementScanner6](ElementScanner6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.ElementScanner7<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `ElementScanner8`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_7](../SourceVersion.md#RELEASE_7))
public class ElementScanner7<R,P>
extends [ElementScanner6](ElementScanner6.md "class in javax.lang.model.util")<R,P>

A scanning visitor of program elements with default behavior
appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
source version. The `visitXyz` methods in this
class scan their component elements by calling [`scan`](ElementScanner6.md#scan(javax.lang.model.element.Element,P)) on their [enclosed elements](../element/Element.md#getEnclosedElements()), [parameters](../element/ExecutableElement.md#getParameters()), etc., as indicated in
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
:   1.7

See Also:
:   * [**Compatibility note for subclasses**](ElementScanner6.md#note_for_subclasses)
    * [`ElementScanner6`](ElementScanner6.md "class in javax.lang.model.util")
    * [`ElementScanner8`](ElementScanner8.md "class in javax.lang.model.util")
    * [`ElementScanner9`](ElementScanner9.md "class in javax.lang.model.util")
    * [`ElementScanner14`](ElementScanner14.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[ElementScanner6](ElementScanner6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ElementScanner7()`

  Deprecated.

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `ElementScanner7(R defaultValue)`

  Deprecated.

  Release 7 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `R`

  `visitVariable(VariableElement e,
  P p)`

  Visits a variable element.

  ### Methods inherited from class javax.lang.model.util.[ElementScanner6](ElementScanner6.md "class in javax.lang.model.util")

  `scan, scan, scan, visitExecutable, visitPackage, visitType, visitTypeParameter`

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitModule, visitRecordComponent, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ElementScanner7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected ElementScanner7()

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### ElementScanner7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected ElementScanner7([R](ElementScanner7.md "type parameter in ElementScanner7") defaultValue)

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the default value
* ## Method Details

  + ### visitVariable

    public [R](ElementScanner7.md "type parameter in ElementScanner7") visitVariable([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementScanner7.md "type parameter in ElementScanner7") p)

    Visits a variable element.

    Specified by:
    :   `visitVariable` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitVariable` in class `ElementScanner6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of scanning