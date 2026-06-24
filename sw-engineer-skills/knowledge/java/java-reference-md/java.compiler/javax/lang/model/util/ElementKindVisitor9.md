Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class ElementKindVisitor9<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementKindVisitor6](ElementKindVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementKindVisitor7](ElementKindVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.ElementKindVisitor8](ElementKindVisitor8.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.ElementKindVisitor9<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `ElementKindVisitor14`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_14](../SourceVersion.md#RELEASE_14))
public class ElementKindVisitor9<R,P>
extends [ElementKindVisitor8](ElementKindVisitor8.md "class in javax.lang.model.util")<R,P>

A visitor of program elements based on their [kind](../element/ElementKind.md "enum class in javax.lang.model.element") with default behavior appropriate for source
versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).
For [elements](../element/Element.md "interface in javax.lang.model.element") `Xyz` that may have more than one
kind, the `visitXyz` methods in this class delegate
to the `visitXyzAsKind` method corresponding to the
first argument's kind. The `visitXyzAsKind` methods
call [`defaultAction`](SimpleElementVisitor6.md#defaultAction(javax.lang.model.element.Element,P)), passing their arguments
to `defaultAction`'s corresponding parameters.

Since:
:   9

See Also:
:   * [**Compatibility note for subclasses**](ElementKindVisitor6.md#note_for_subclasses)
    * [`ElementKindVisitor6`](ElementKindVisitor6.md "class in javax.lang.model.util")
    * [`ElementKindVisitor7`](ElementKindVisitor7.md "class in javax.lang.model.util")
    * [`ElementKindVisitor8`](ElementKindVisitor8.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ElementKindVisitor9()`

  Constructor for concrete subclasses; uses `null` for the
  default value.

  `protected`

  `ElementKindVisitor9(R defaultValue)`

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

  ### Methods inherited from class javax.lang.model.util.[ElementKindVisitor7](ElementKindVisitor7.md "class in javax.lang.model.util")

  `visitVariableAsResourceVariable`

  ### Methods inherited from class javax.lang.model.util.[ElementKindVisitor6](ElementKindVisitor6.md "class in javax.lang.model.util")

  `visitExecutable, visitExecutableAsConstructor, visitExecutableAsInstanceInit, visitExecutableAsMethod, visitExecutableAsStaticInit, visitPackage, visitType, visitTypeAsAnnotationType, visitTypeAsClass, visitTypeAsEnum, visitTypeAsInterface, visitTypeAsRecord, visitTypeParameter, visitVariable, visitVariableAsBindingVariable, visitVariableAsEnumConstant, visitVariableAsExceptionParameter, visitVariableAsField, visitVariableAsLocalVariable, visitVariableAsParameter`

  ### Methods inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `defaultAction`

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitRecordComponent, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ElementKindVisitor9

    protected ElementKindVisitor9()

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### ElementKindVisitor9

    protected ElementKindVisitor9([R](ElementKindVisitor9.md "type parameter in ElementKindVisitor9") defaultValue)

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleElementVisitor6.DEFAULT_VALUE`](SimpleElementVisitor6.md#DEFAULT_VALUE)
* ## Method Details

  + ### visitModule

    public [R](ElementKindVisitor9.md "type parameter in ElementKindVisitor9") visitModule([ModuleElement](../element/ModuleElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor9.md "type parameter in ElementKindVisitor9") p)

    Visits a module element.

    Specified by:
    :   `visitModule` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitModule` in class `AbstractElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`