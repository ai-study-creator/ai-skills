Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class ElementKindVisitor14<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementKindVisitor6](ElementKindVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementKindVisitor7](ElementKindVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementKindVisitor8](ElementKindVisitor8.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementKindVisitor9](ElementKindVisitor9.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.ElementKindVisitor14<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_21](../SourceVersion.md#RELEASE_21))
public class ElementKindVisitor14<R,P>
extends [ElementKindVisitor9](ElementKindVisitor9.md "class in javax.lang.model.util")<R,P>

A visitor of program elements based on their [kind](../element/ElementKind.md "enum class in javax.lang.model.element") with default behavior appropriate for the [`RELEASE_14`](../SourceVersion.md#RELEASE_14) source version.
For [elements](../element/Element.md "interface in javax.lang.model.element") `Xyz` that may have more than one
kind, the `visitXyz` methods in this class delegate
to the `visitXyzAsKind` method corresponding to the
first argument's kind. The `visitXyzAsKind` methods
call [`defaultAction`](SimpleElementVisitor6.md#defaultAction(javax.lang.model.element.Element,P)), passing their arguments
to `defaultAction`'s corresponding parameters.

Since:
:   16

See Also:
:   * [**Compatibility note for subclasses**](ElementKindVisitor6.md#note_for_subclasses)
    * [`ElementKindVisitor6`](ElementKindVisitor6.md "class in javax.lang.model.util")
    * [`ElementKindVisitor7`](ElementKindVisitor7.md "class in javax.lang.model.util")
    * [`ElementKindVisitor8`](ElementKindVisitor8.md "class in javax.lang.model.util")
    * [`ElementKindVisitor9`](ElementKindVisitor9.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ElementKindVisitor14()`

  Constructor for concrete subclasses; uses `null` for the
  default value.

  `protected`

  `ElementKindVisitor14(R defaultValue)`

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

  `R`

  `visitTypeAsRecord(TypeElement e,
  P p)`

  Visits a `RECORD` type element.

  `R`

  `visitVariableAsBindingVariable(VariableElement e,
  P p)`

  Visits a `BINDING_VARIABLE` variable element.

  ### Methods inherited from class javax.lang.model.util.[ElementKindVisitor9](ElementKindVisitor9.md "class in javax.lang.model.util")

  `visitModule`

  ### Methods inherited from class javax.lang.model.util.[ElementKindVisitor7](ElementKindVisitor7.md "class in javax.lang.model.util")

  `visitVariableAsResourceVariable`

  ### Methods inherited from class javax.lang.model.util.[ElementKindVisitor6](ElementKindVisitor6.md "class in javax.lang.model.util")

  `visitExecutable, visitExecutableAsConstructor, visitExecutableAsInstanceInit, visitExecutableAsMethod, visitExecutableAsStaticInit, visitPackage, visitType, visitTypeAsAnnotationType, visitTypeAsClass, visitTypeAsEnum, visitTypeAsInterface, visitTypeParameter, visitVariable, visitVariableAsEnumConstant, visitVariableAsExceptionParameter, visitVariableAsField, visitVariableAsLocalVariable, visitVariableAsParameter`

  ### Methods inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `defaultAction`

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ElementKindVisitor14

    protected ElementKindVisitor14()

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### ElementKindVisitor14

    protected ElementKindVisitor14([R](ElementKindVisitor14.md "type parameter in ElementKindVisitor14") defaultValue)

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleElementVisitor6.DEFAULT_VALUE`](SimpleElementVisitor6.md#DEFAULT_VALUE)
* ## Method Details

  + ### visitRecordComponent

    public [R](ElementKindVisitor14.md "type parameter in ElementKindVisitor14") visitRecordComponent([RecordComponentElement](../element/RecordComponentElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor14.md "type parameter in ElementKindVisitor14") p)

    Visits a record component element.

    Specified by:
    :   `visitRecordComponent` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitRecordComponent` in class `AbstractElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitTypeAsRecord

    public [R](ElementKindVisitor14.md "type parameter in ElementKindVisitor14") visitTypeAsRecord([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor14.md "type parameter in ElementKindVisitor14") p)

    Visits a `RECORD` type element.

    Overrides:
    :   `visitTypeAsRecord` in class `ElementKindVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitVariableAsBindingVariable

    public [R](ElementKindVisitor14.md "type parameter in ElementKindVisitor14") visitVariableAsBindingVariable([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor14.md "type parameter in ElementKindVisitor14") p)

    Visits a `BINDING_VARIABLE` variable element.

    Overrides:
    :   `visitVariableAsBindingVariable` in class `ElementKindVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`

    Since:
    :   14