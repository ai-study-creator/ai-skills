Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleElementVisitor7<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleElementVisitor7<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use `Void`
    for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's methods. Use `Void`
    for visitors that do not need an additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `SimpleElementVisitor8`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_7](../SourceVersion.md#RELEASE_7))
public class SimpleElementVisitor7<R,P>
extends [SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")<R,P>

A simple visitor of program elements with default behavior
appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
source version.
Visit methods corresponding to `RELEASE_7` and earlier
language constructs call [`defaultAction`](SimpleElementVisitor6.md#defaultAction(javax.lang.model.element.Element,P)),
passing their arguments to `defaultAction`'s corresponding
parameters.

Since:
:   1.7

See Also:
:   * [**Compatibility note for subclasses**](SimpleElementVisitor6.md#note_for_subclasses)
    * [`SimpleElementVisitor6`](SimpleElementVisitor6.md "class in javax.lang.model.util")
    * [`SimpleElementVisitor8`](SimpleElementVisitor8.md "class in javax.lang.model.util")
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

  `SimpleElementVisitor7()`

  Deprecated.

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `SimpleElementVisitor7(R defaultValue)`

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

  ### Methods inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitExecutable, visitPackage, visitType, visitTypeParameter`

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitModule, visitRecordComponent, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleElementVisitor7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected SimpleElementVisitor7()

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleElementVisitor7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected SimpleElementVisitor7([R](SimpleElementVisitor7.md "type parameter in SimpleElementVisitor7") defaultValue)

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleElementVisitor6.DEFAULT_VALUE`](SimpleElementVisitor6.md#DEFAULT_VALUE)
* ## Method Details

  + ### visitVariable

    public [R](SimpleElementVisitor7.md "type parameter in SimpleElementVisitor7") visitVariable([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](SimpleElementVisitor7.md "type parameter in SimpleElementVisitor7") p)

    Visits a variable element.

    Specified by:
    :   `visitVariable` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitVariable` in class `SimpleElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result