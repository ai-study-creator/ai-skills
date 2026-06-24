Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class ElementKindVisitor6<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.ElementKindVisitor6<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use [`Void`](../../../../../java.base/java/lang/Void.md "class in java.lang") for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's
    methods. Use `Void` for visitors that do not need an
    additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `ElementKindVisitor7`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_6](../SourceVersion.md#RELEASE_6))
public class ElementKindVisitor6<R,P>
extends [SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")<R,P>

A visitor of program elements based on their [kind](../element/ElementKind.md "enum class in javax.lang.model.element") with default behavior appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6) source version. For [elements](../element/Element.md "interface in javax.lang.model.element") `Xyz` that may have more than one
kind, the `visitXyz` methods in this class delegate
to the `visitXyzAsKind` method corresponding to the
first argument's kind. The `visitXyzAsKind` methods
call [`defaultAction`](SimpleElementVisitor6.md#defaultAction(javax.lang.model.element.Element,P)), passing their arguments
to `defaultAction`'s corresponding parameters.

Since:
:   1.6

See Also:
:   * [`ElementKindVisitor7`](ElementKindVisitor7.md "class in javax.lang.model.util")
    * [`ElementKindVisitor8`](ElementKindVisitor8.md "class in javax.lang.model.util")
    * [`ElementKindVisitor9`](ElementKindVisitor9.md "class in javax.lang.model.util")
    * [`ElementKindVisitor14`](ElementKindVisitor14.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ElementKindVisitor6()`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `ElementKindVisitor6(R defaultValue)`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.
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

  `visitExecutableAsConstructor(ExecutableElement e,
  P p)`

  Visits a `CONSTRUCTOR` executable element.

  `R`

  `visitExecutableAsInstanceInit(ExecutableElement e,
  P p)`

  Visits an `INSTANCE_INIT` executable element.

  `R`

  `visitExecutableAsMethod(ExecutableElement e,
  P p)`

  Visits a `METHOD` executable element.

  `R`

  `visitExecutableAsStaticInit(ExecutableElement e,
  P p)`

  Visits a `STATIC_INIT` executable element.

  `R`

  `visitPackage(PackageElement e,
  P p)`

  Visits a package element.

  `R`

  `visitType(TypeElement e,
  P p)`

  Visits a type element.

  `R`

  `visitTypeAsAnnotationType(TypeElement e,
  P p)`

  Visits an `ANNOTATION_TYPE` type element.

  `R`

  `visitTypeAsClass(TypeElement e,
  P p)`

  Visits a `CLASS` type element.

  `R`

  `visitTypeAsEnum(TypeElement e,
  P p)`

  Visits an `ENUM` type element.

  `R`

  `visitTypeAsInterface(TypeElement e,
  P p)`

  Visits an `INTERFACE` type element.

  `R`

  `visitTypeAsRecord(TypeElement e,
  P p)`

  Visits a `RECORD` type element.

  `R`

  `visitTypeParameter(TypeParameterElement e,
  P p)`

  Visits a type parameter element.

  `R`

  `visitVariable(VariableElement e,
  P p)`

  Visits a variable element

  `R`

  `visitVariableAsBindingVariable(VariableElement e,
  P p)`

  Visits a `BINDING_VARIABLE` variable element.

  `R`

  `visitVariableAsEnumConstant(VariableElement e,
  P p)`

  Visits an `ENUM_CONSTANT` variable element.

  `R`

  `visitVariableAsExceptionParameter(VariableElement e,
  P p)`

  Visits an `EXCEPTION_PARAMETER` variable element.

  `R`

  `visitVariableAsField(VariableElement e,
  P p)`

  Visits a `FIELD` variable element.

  `R`

  `visitVariableAsLocalVariable(VariableElement e,
  P p)`

  Visits a `LOCAL_VARIABLE` variable element.

  `R`

  `visitVariableAsParameter(VariableElement e,
  P p)`

  Visits a `PARAMETER` variable element.

  `R`

  `visitVariableAsResourceVariable(VariableElement e,
  P p)`

  Visits a `RESOURCE_VARIABLE` variable element.

  ### Methods inherited from class javax.lang.model.util.[SimpleElementVisitor6](SimpleElementVisitor6.md "class in javax.lang.model.util")

  `defaultAction`

  ### Methods inherited from class javax.lang.model.util.[AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitModule, visitRecordComponent, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### ElementKindVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected ElementKindVisitor6()

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### ElementKindVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected ElementKindVisitor6([R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") defaultValue)

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleElementVisitor6.DEFAULT_VALUE`](SimpleElementVisitor6.md#DEFAULT_VALUE)
* ## Method Details

  + ### visitPackage

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitPackage([PackageElement](../element/PackageElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a package element.
    The element argument has kind `PACKAGE`.

    Specified by:
    :   `visitPackage` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitPackage` in class `SimpleElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitType

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitType([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a type element.

    Specified by:
    :   `visitType` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitType` in class `SimpleElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the kind-specific visit method
  + ### visitTypeAsAnnotationType

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitTypeAsAnnotationType([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits an `ANNOTATION_TYPE` type element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitTypeAsClass

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitTypeAsClass([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a `CLASS` type element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitTypeAsEnum

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitTypeAsEnum([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits an `ENUM` type element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitTypeAsInterface

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitTypeAsInterface([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits an `INTERFACE` type element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitTypeAsRecord

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitTypeAsRecord([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a `RECORD` type element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `visitUnknown`

    Since:
    :   16
  + ### visitVariable

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitVariable([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a variable element

    Specified by:
    :   `visitVariable` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitVariable` in class `SimpleElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the kind-specific visit method
  + ### visitVariableAsEnumConstant

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitVariableAsEnumConstant([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits an `ENUM_CONSTANT` variable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitVariableAsExceptionParameter

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitVariableAsExceptionParameter([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits an `EXCEPTION_PARAMETER` variable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitVariableAsField

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitVariableAsField([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a `FIELD` variable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitVariableAsLocalVariable

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitVariableAsLocalVariable([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a `LOCAL_VARIABLE` variable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitVariableAsParameter

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitVariableAsParameter([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a `PARAMETER` variable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitVariableAsResourceVariable

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitVariableAsResourceVariable([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a `RESOURCE_VARIABLE` variable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `visitUnknown`

    Since:
    :   1.7
  + ### visitVariableAsBindingVariable

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitVariableAsBindingVariable([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a `BINDING_VARIABLE` variable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `visitUnknown`

    Since:
    :   14
  + ### visitExecutable

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitExecutable([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits an executable element.

    Specified by:
    :   `visitExecutable` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitExecutable` in class `SimpleElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the kind-specific visit method
  + ### visitExecutableAsConstructor

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitExecutableAsConstructor([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a `CONSTRUCTOR` executable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitExecutableAsInstanceInit

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitExecutableAsInstanceInit([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits an `INSTANCE_INIT` executable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitExecutableAsMethod

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitExecutableAsMethod([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a `METHOD` executable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitExecutableAsStaticInit

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitExecutableAsStaticInit([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a `STATIC_INIT` executable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitTypeParameter

    public [R](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") visitTypeParameter([TypeParameterElement](../element/TypeParameterElement.md "interface in javax.lang.model.element") e,
    [P](ElementKindVisitor6.md "type parameter in ElementKindVisitor6") p)

    Visits a type parameter element.
    The element argument has kind `TYPE_PARAMETER`.

    Specified by:
    :   `visitTypeParameter` in interface `ElementVisitor<R,P>`

    Overrides:
    :   `visitTypeParameter` in class `SimpleElementVisitor6<R,P>`

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result