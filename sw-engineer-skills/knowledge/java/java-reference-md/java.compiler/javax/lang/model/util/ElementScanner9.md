Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class ElementScanner9<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementScanner6](ElementScanner6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementScanner7](ElementScanner7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementScanner8](ElementScanner8.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.ElementScanner9<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `ElementScanner14`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_14](../SourceVersion.md#RELEASE_14))
public class ElementScanner9<R,P>
extends [ElementScanner8](ElementScanner8.md "class in javax.lang.model.util")<R,P>

A scanning visitor of program elements with default behavior
appropriate for source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).
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
:   9

See Also:
:   * [**Compatibility note for subclasses**](ElementScanner6.md#note_for_subclasses)
    * [`ElementScanner6`](ElementScanner6.md "class in javax.lang.model.util")
    * [`ElementScanner7`](ElementScanner7.md "class in javax.lang.model.util")
    * [`ElementScanner8`](ElementScanner8.md "class in javax.lang.model.util")
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

  `ElementScanner9()`

  Constructor for concrete subclasses; uses `null` for the
  default value.

  `protected`

  `ElementScanner9(R defaultValue)`

  Constructor for concrete subclasses; uses the argument for the
  default value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `R`

  `visitModule(ModuleElement e,
  P p)`

  Visits a module element.

  ### Methods inherited from class javax.lang.model.util.[ElementScanner7](ElementScanner7.md "class in javax.lang.model.util")

  `visitVariable`

  ### Methods inherited from class javax.lang.model.util.[ElementScanner6](ElementScanner6.md "class in javax.lang.model.util")

  `scan, scan, scan, visitExecutable, visitPackage, visitType, visitTypeParameter`

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitRecordComponent, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ElementScanner9

    protected ElementScanner9()

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### ElementScanner9

    protected ElementScanner9([R](ElementScanner9.md "type parameter in ElementScanner9") defaultValue)

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the default value
* ## Method Details

  + ### visitModule

    public [R](ElementScanner9.md "type parameter in ElementScanner9") visitModule([ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element") e,
    [P](ElementScanner9.md "type parameter in ElementScanner9") p)

    Visits a module element.

    Specified by:
    :   `visitModule` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitModule` in class `AbstractElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the scan