Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleElementVisitor14<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleElementVisitor7](SimpleElementVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleElementVisitor8](SimpleElementVisitor8.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleElementVisitor9](SimpleElementVisitor9.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleElementVisitor14<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use `Void`
    for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's methods. Use `Void`
    for visitors that do not need an additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_21](../SourceVersion.md#RELEASE_21))
public class SimpleElementVisitor14<R,P>
extends [SimpleElementVisitor9](SimpleElementVisitor9.md "class in javax.lang.model.util")<R,P>

A simple visitor of program elements with default behavior
appropriate for the [`RELEASE_14`](../SourceVersion.md#RELEASE_14)
source version.
Visit methods corresponding to `RELEASE_14` and earlier
language constructs call [`defaultAction`](SimpleElementVisitor6.md#defaultAction(javax.lang.model.element.Element,P)),
passing their arguments to `defaultAction`'s corresponding
parameters.

Since:
:   16

See Also:
:   * [**Compatibility note for subclasses**](SimpleElementVisitor6.md#note_for_subclasses)
    * [`SimpleElementVisitor6`](SimpleElementVisitor6.md "class in javax.lang.model.util")
    * [`SimpleElementVisitor7`](SimpleElementVisitor7.md "class in javax.lang.model.util")
    * [`SimpleElementVisitor8`](SimpleElementVisitor8.md "class in javax.lang.model.util")
    * [`SimpleElementVisitor9`](SimpleElementVisitor9.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SimpleElementVisitor14()`

  Constructor for concrete subclasses; uses `null` for the
  default value.

  `protected`

  `SimpleElementVisitor14(R defaultValue)`

  Constructor for concrete subclasses; uses the argument for the
  default value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `R`

  `visitRecordComponent(RecordComponentElement e,
  P p)`

  Visits a record component element.

  ### Methods inherited from class javax.lang.model.util.[SimpleElementVisitor9](SimpleElementVisitor9.md "class in javax.lang.model.util")

  `visitModule`

  ### Methods inherited from class javax.lang.model.util.[SimpleElementVisitor7](SimpleElementVisitor7.md "class in javax.lang.model.util")

  `visitVariable`

  ### Methods inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitExecutable, visitPackage, visitType, visitTypeParameter`

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleElementVisitor14

    protected SimpleElementVisitor14()

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleElementVisitor14

    protected SimpleElementVisitor14([R](SimpleElementVisitor14.md "type parameter in SimpleElementVisitor14") defaultValue)

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleElementVisitor6.DEFAULT_VALUE`](SimpleElementVisitor6.md#DEFAULT_VALUE)
* ## Method Details

  + ### visitRecordComponent

    public [R](SimpleElementVisitor14.md "type parameter in SimpleElementVisitor14") visitRecordComponent([RecordComponentElement](../element/RecordComponentElement.md "interface in javax.lang.model.element") e,
    [P](SimpleElementVisitor14.md "type parameter in SimpleElementVisitor14") p)

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