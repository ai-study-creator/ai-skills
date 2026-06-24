Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class ElementScanner14<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementScanner6](ElementScanner6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementScanner7](ElementScanner7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementScanner8](ElementScanner8.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementScanner9](ElementScanner9.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.ElementScanner14<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_21](../SourceVersion.md#RELEASE_21))
public class ElementScanner14<R,P>
extends [ElementScanner9](ElementScanner9.md "class in javax.lang.model.util")<R,P>

A scanning visitor of program elements with default behavior
appropriate for the [`RELEASE_14`](../SourceVersion.md#RELEASE_14)
source version.
The `visitXyz` methods in this class scan their
component elements by calling [`scan`](ElementScanner6.md#scan(javax.lang.model.element.Element,P)) on their [enclosed elements](../element/Element.md#getEnclosedElements()), [parameters](../element/ExecutableElement.md#getParameters()), etc., as indicated in the individual method
specifications. A subclass can control the order elements are
visited by overriding the `visitXyz` methods.
Note that clients of a scanner may get the desired behavior by
invoking `v.scan(e, p)` rather than `v.visit(e, p)` on
the root objects of interest.

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
:   16

See Also:
:   * [**Compatibility note for subclasses**](ElementScanner6.md#note_for_subclasses)
    * [`ElementScanner6`](ElementScanner6.md "class in javax.lang.model.util")
    * [`ElementScanner7`](ElementScanner7.md "class in javax.lang.model.util")
    * [`ElementScanner8`](ElementScanner8.md "class in javax.lang.model.util")
    * [`ElementScanner9`](ElementScanner9.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[ElementScanner6](ElementScanner6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ElementScanner14()`

  Constructor for concrete subclasses; uses `null` for the
  default value.

  `protected`

  `ElementScanner14(R defaultValue)`

  Constructor for concrete subclasses; uses the argument for the
  default value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `R`

  `visitExecutable(ExecutableElement e,
  P p)`

  Visits an executable element.

  `R`

  `visitRecordComponent(RecordComponentElement e,
  P p)`

  Visits a record component element.

  `R`

  `visitType(TypeElement e,
  P p)`

  Visits a type element.

  ### Methods inherited from class javax.lang.model.util.[ElementScanner9](ElementScanner9.md "class in javax.lang.model.util")

  `visitModule`

  ### Methods inherited from class javax.lang.model.util.[ElementScanner7](ElementScanner7.md "class in javax.lang.model.util")

  `visitVariable`

  ### Methods inherited from class javax.lang.model.util.[ElementScanner6](ElementScanner6.md "class in javax.lang.model.util")

  `scan, scan, scan, visitPackage, visitTypeParameter`

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ElementScanner14

    protected ElementScanner14()

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### ElementScanner14

    protected ElementScanner14([R](ElementScanner14.md "type parameter in ElementScanner14") defaultValue)

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the default value
* ## Method Details

  + ### visitType

    public [R](ElementScanner14.md "type parameter in ElementScanner14") visitType([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") e,
    [P](ElementScanner14.md "type parameter in ElementScanner14") p)

    Visits a type element.

    Specified by:
    :   `visitType` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitType` in class `ElementScanner6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of scanning
  + ### visitExecutable

    public [R](ElementScanner14.md "type parameter in ElementScanner14") visitExecutable([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e,
    [P](ElementScanner14.md "type parameter in ElementScanner14") p)

    Visits an executable element.

    Specified by:
    :   `visitExecutable` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitExecutable` in class `ElementScanner6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of scanning
  + ### visitRecordComponent

    public [R](ElementScanner14.md "type parameter in ElementScanner14") visitRecordComponent([RecordComponentElement](../element/RecordComponentElement.md "interface in javax.lang.model.element") e,
    [P](ElementScanner14.md "type parameter in ElementScanner14") p)

    Visits a record component element.

    Specified by:
    :   `visitRecordComponent` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitRecordComponent` in class `AbstractElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the scan