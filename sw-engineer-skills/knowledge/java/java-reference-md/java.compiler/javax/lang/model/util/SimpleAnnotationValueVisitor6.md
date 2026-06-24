Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleAnnotationValueVisitor6<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractAnnotationValueVisitor6](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleAnnotationValueVisitor6<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods
:   `P` - the type of the additional parameter to this visitor's methods.

All Implemented Interfaces:
:   `AnnotationValueVisitor<R,P>`

Direct Known Subclasses:
:   `SimpleAnnotationValueVisitor7`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_6](../SourceVersion.md#RELEASE_6))
public class SimpleAnnotationValueVisitor6<R,P>
extends [AbstractAnnotationValueVisitor6](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")<R,P>

A simple visitor for annotation values with default behavior
appropriate for the [`RELEASE_6`](../SourceVersion.md#RELEASE_6)
source version. Visit methods call [`defaultAction(java.lang.Object, P)`](#defaultAction(java.lang.Object,P)) passing their arguments to `defaultAction`'s
corresponding parameters.

Since:
:   1.6

See Also:
:   * [`SimpleAnnotationValueVisitor7`](SimpleAnnotationValueVisitor7.md "class in javax.lang.model.util")
    * [`SimpleAnnotationValueVisitor8`](SimpleAnnotationValueVisitor8.md "class in javax.lang.model.util")
    * [`SimpleAnnotationValueVisitor9`](SimpleAnnotationValueVisitor9.md "class in javax.lang.model.util")
    * [`SimpleAnnotationValueVisitor14`](SimpleAnnotationValueVisitor14.md "class in javax.lang.model.util")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected final R`

  `DEFAULT_VALUE`

  Default value to be returned; [`defaultAction`](#defaultAction(java.lang.Object,P)) returns this value unless the method is
  overridden.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SimpleAnnotationValueVisitor6()`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `SimpleAnnotationValueVisitor6(R defaultValue)`

  Deprecated.

  Release 6 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected R`

  `defaultAction(Object o,
  P p)`

  The default action for visit methods.

  `R`

  `visitAnnotation(AnnotationMirror a,
  P p)`

  Visits an annotation value in an annotation.

  `R`

  `visitArray(List<? extends AnnotationValue> vals,
  P p)`

  Visits an array value in an annotation.

  `R`

  `visitBoolean(boolean b,
  P p)`

  Visits a `boolean` value in an annotation.

  `R`

  `visitByte(byte b,
  P p)`

  Visits a `byte` value in an annotation.

  `R`

  `visitChar(char c,
  P p)`

  Visits a `char` value in an annotation.

  `R`

  `visitDouble(double d,
  P p)`

  Visits a `double` value in an annotation.

  `R`

  `visitEnumConstant(VariableElement c,
  P p)`

  Visits an `enum` value in an annotation.

  `R`

  `visitFloat(float f,
  P p)`

  Visits a `float` value in an annotation.

  `R`

  `visitInt(int i,
  P p)`

  Visits an `int` value in an annotation.

  `R`

  `visitLong(long i,
  P p)`

  Visits a `long` value in an annotation.

  `R`

  `visitShort(short s,
  P p)`

  Visits a `short` value in an annotation.

  `R`

  `visitString(String s,
  P p)`

  Visits a string value in an annotation.

  `R`

  `visitType(TypeMirror t,
  P p)`

  Visits a type value in an annotation.

  ### Methods inherited from class javax.lang.model.util.[AbstractAnnotationValueVisitor6](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### DEFAULT\_VALUE

    protected final [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") DEFAULT\_VALUE

    Default value to be returned; [`defaultAction`](#defaultAction(java.lang.Object,P)) returns this value unless the method is
    overridden.
* ## Constructor Details

  + ### SimpleAnnotationValueVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected SimpleAnnotationValueVisitor6()

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleAnnotationValueVisitor6

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="9")
    protected SimpleAnnotationValueVisitor6([R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") defaultValue)

    Deprecated.

    Release 6 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`DEFAULT_VALUE`](#DEFAULT_VALUE)
* ## Method Details

  + ### defaultAction

    protected [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") defaultAction([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") o,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    The default action for visit methods.

    Parameters:
    :   `o` - the value of the annotation
    :   `p` - a visitor-specified parameter

    Returns:
    :   `DEFAULT_VALUE` unless overridden
  + ### visitBoolean

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitBoolean(boolean b,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits a `boolean` value in an annotation.

    Parameters:
    :   `b` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitByte

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitByte(byte b,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits a `byte` value in an annotation.

    Parameters:
    :   `b` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitChar

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitChar(char c,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits a `char` value in an annotation.

    Parameters:
    :   `c` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitDouble

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitDouble(double d,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits a `double` value in an annotation.

    Parameters:
    :   `d` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitFloat

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitFloat(float f,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits a `float` value in an annotation.

    Parameters:
    :   `f` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitInt

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitInt(int i,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits an `int` value in an annotation.

    Parameters:
    :   `i` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitLong

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitLong(long i,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits a `long` value in an annotation.

    Parameters:
    :   `i` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitShort

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitShort(short s,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits a `short` value in an annotation.

    Parameters:
    :   `s` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitString

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitString([String](../../../../../java.base/java/lang/String.md "class in java.lang") s,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits a string value in an annotation.

    Parameters:
    :   `s` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitType

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitType([TypeMirror](../type/TypeMirror.md "interface in javax.lang.model.type") t,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits a type value in an annotation.

    Parameters:
    :   `t` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitEnumConstant

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitEnumConstant([VariableElement](../element/VariableElement.md "interface in javax.lang.model.element") c,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits an `enum` value in an annotation.

    Parameters:
    :   `c` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitAnnotation

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitAnnotation([AnnotationMirror](../element/AnnotationMirror.md "interface in javax.lang.model.element") a,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits an annotation value in an annotation.

    Parameters:
    :   `a` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`
  + ### visitArray

    public [R](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") visitArray([List](../../../../../java.base/java/util/List.md "interface in java.util")<? extends [AnnotationValue](../element/AnnotationValue.md "interface in javax.lang.model.element")> vals,
    [P](SimpleAnnotationValueVisitor6.md "type parameter in SimpleAnnotationValueVisitor6") p)

    Visits an array value in an annotation.

    Parameters:
    :   `vals` - the value being visited
    :   `p` - a visitor-specified parameter

    Returns:
    :   the result of `defaultAction`