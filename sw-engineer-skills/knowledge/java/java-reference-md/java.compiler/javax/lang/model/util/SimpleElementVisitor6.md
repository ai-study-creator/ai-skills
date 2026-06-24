Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleElementVisitor6<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleElementVisitor6<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods. Use `Void`
    for visitors that do not need to return results.
:   `P` - the type of the additional parameter to this visitor's methods. Use `Void`
    for visitors that do not need an additional parameter.

All Implemented Interfaces:
:   `ElementVisitor<R,P>`

Direct Known Subclasses:
:   `ElementKindVisitor6`, `SimpleElementVisitor7`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_6](../SourceVersion.md#RELEASE_6))
public class SimpleElementVisitor6<R,P>
extends [AbstractElementVisitor6](AbstractElementVisitor6.md "class in javax.lang.model.util")<R,P>

A simple visitor of program elements with default behavior
appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
source version.
Visit methods corresponding to `RELEASE_6` language
constructs call [`defaultAction`](#defaultAction(javax.lang.model.element.Element,P)), passing their
arguments to `defaultAction`'s corresponding parameters.
For constructs introduced in `RELEASE_7` and later, `visitUnknown` is called instead.

Since:
:   1.6

See Also:
:   * [`SimpleElementVisitor7`](SimpleElementVisitor7.md "class in javax.lang.model.util")
    * [`SimpleElementVisitor8`](SimpleElementVisitor8.md "class in javax.lang.model.util")
    * [`SimpleElementVisitor9`](SimpleElementVisitor9.md "class in javax.lang.model.util")
    * [`SimpleElementVisitor14`](SimpleElementVisitor14.md "class in javax.lang.model.util")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final R`

  `DEFAULT_VALUE`

  Default value to be returned; [`defaultAction`](#defaultAction(javax.lang.model.element.Element,P)) returns this value unless the method is
  overridden.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SimpleElementVisitor6()`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `SimpleElementVisitor6(R defaultValue)`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected R`

  `defaultAction(Element e,
  P p)`

  The default action for visit methods.

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

    protected final [R](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") DEFAULT\_VALUE

    Default value to be returned; [`defaultAction`](#defaultAction(javax.lang.model.element.Element,P)) returns this value unless the method is
    overridden.
* ## Constructor Details

  + ### SimpleElementVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected SimpleElementVisitor6()

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleElementVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected SimpleElementVisitor6([R](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") defaultValue)

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`DEFAULT_VALUE`](#DEFAULT_VALUE)
* ## Method Details

  + ### defaultAction

    protected [R](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") defaultAction([Element](../element/Element.md "interface in javax.lang.model.element") e,
    [P](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") p)

    The default action for visit methods.

    Parameters:
    :   `e` - the element to process
    :   `p` - a visitor-specified parameter

    Returns:
    :   `DEFAULT_VALUE` unless overridden
  + ### visitPackage

    public [R](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") visitPackage([PackageElement](../element/PackageElement.md "interface in javax.lang.model.element") e,
    [P](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") p)

    Visits a package element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitType

    public [R](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") visitType([TypeElement](../element/TypeElement.md "interface in javax.lang.model.element") e,
    [P](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") p)

    Visits a type element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitVariable

    public [R](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") visitVariable([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") e,
    [P](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") p)

    Visits a variable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitExecutable

    public [R](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") visitExecutable([ExecutableElement](../element/ExecutableElement.md "interface in javax.lang.model.element") e,
    [P](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") p)

    Visits an executable element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visitTypeParameter

    public [R](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") visitTypeParameter([TypeParameterElement](../element/TypeParameterElement.md "interface in javax.lang.model.element") e,
    [P](SimpleElementVisitor6.md "type parameter in SimpleElementVisitor6") p)

    Visits a type parameter element.

    Parameters:
    :   `e` - the element to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result