Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractAnnotationValueVisitor6<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.lang.model.util.AbstractAnnotationValueVisitor6<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods
:   `P` - the type of the additional parameter to this visitor's methods.

All Implemented Interfaces:
:   `AnnotationValueVisitor<R,P>`

Direct Known Subclasses:
:   `AbstractAnnotationValueVisitor7`, `SimpleAnnotationValueVisitor6`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_6](../SourceVersion.md#RELEASE_6))
public abstract class AbstractAnnotationValueVisitor6<R,P>
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [AnnotationValueVisitor](../element/AnnotationValueVisitor.md "interface in javax.lang.model.element")<R,P>

A skeletal visitor for annotation values with default behavior
appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
source version.

Since:
:   1.6

See Also:
:   * [`AbstractAnnotationValueVisitor7`](AbstractAnnotationValueVisitor7.md "class in javax.lang.model.util")
    * [`AbstractAnnotationValueVisitor8`](AbstractAnnotationValueVisitor8.md "class in javax.lang.model.util")
    * [`AbstractAnnotationValueVisitor9`](AbstractAnnotationValueVisitor9.md "class in javax.lang.model.util")
    * [`AbstractAnnotationValueVisitor14`](AbstractAnnotationValueVisitor14.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractAnnotationValueVisitor6()`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final R`

  `visit(AnnotationValue av)`

  Visits an annotation value as if by passing itself to that
  value's [`accept`](../element/AnnotationValue.md#accept(javax.lang.model.element.AnnotationValueVisitor,P)) method passing
  `null` for the additional parameter.

  `final R`

  `visit(AnnotationValue av,
  P p)`

  Visits any annotation value as if by passing itself to that
  value's [`accept`](../element/AnnotationValue.md#accept(javax.lang.model.element.AnnotationValueVisitor,P)).

  `R`

  `visitUnknown(AnnotationValue av,
  P p)`

  Visits an unknown kind of annotation value.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.lang.model.element.[AnnotationValueVisitor](../element/AnnotationValueVisitor.md "interface in javax.lang.model.element")

  `visitAnnotation, visitArray, visitBoolean, visitByte, visitChar, visitDouble, visitEnumConstant, visitFloat, visitInt, visitLong, visitShort, visitString, visitType`

* ## Constructor Details

  + ### AbstractAnnotationValueVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected AbstractAnnotationValueVisitor6()

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses to call.
* ## Method Details

  + ### visit

    public final [R](AbstractAnnotationValueVisitor6.md "type parameter in AbstractAnnotationValueVisitor6") visit([AnnotationValue](../element/AnnotationValue.md "interface in javax.lang.model.element") av,
    [P](AbstractAnnotationValueVisitor6.md "type parameter in AbstractAnnotationValueVisitor6") p)

    Visits any annotation value as if by passing itself to that
    value's [`accept`](../element/AnnotationValue.md#accept(javax.lang.model.element.AnnotationValueVisitor,P)). The invocation
    `v.visit(av, p)` is equivalent to `av.accept(v, p)`.

    Specified by:
    :   `visit` in interface `AnnotationValueVisitor<R,P>`

    Parameters:
    :   `av` - the value to visit
    :   `p` - a visitor-specified parameter

    Returns:
    :   a visitor-specified result
  + ### visit

    public final [R](AbstractAnnotationValueVisitor6.md "type parameter in AbstractAnnotationValueVisitor6") visit([AnnotationValue](../element/AnnotationValue.md "interface in javax.lang.model.element") av)

    Visits an annotation value as if by passing itself to that
    value's [`accept`](../element/AnnotationValue.md#accept(javax.lang.model.element.AnnotationValueVisitor,P)) method passing
    `null` for the additional parameter. The invocation
    `v.visit(av)` is equivalent to `av.accept(v,
    null)`.

    Specified by:
    :   `visit` in interface `AnnotationValueVisitor<R,P>`

    Parameters:
    :   `av` - the value to visit

    Returns:
    :   a visitor-specified result
  + ### visitUnknown

    public [R](AbstractAnnotationValueVisitor6.md "type parameter in AbstractAnnotationValueVisitor6") visitUnknown([AnnotationValue](../element/AnnotationValue.md "interface in javax.lang.model.element") av,
    [P](AbstractAnnotationValueVisitor6.md "type parameter in AbstractAnnotationValueVisitor6") p)

    Visits an unknown kind of annotation value.
    This can occur if the language evolves and new kinds
    of value can be stored in an annotation.

    Specified by:
    :   `visitUnknown` in interface `AnnotationValueVisitor<R,P>`

    Parameters:
    :   `av` - the unknown value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of the visit