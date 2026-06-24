Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleAnnotationValueVisitor7<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractAnnotationValueVisitor6](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleAnnotationValueVisitor6](SimpleAnnotationValueVisitor6.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleAnnotationValueVisitor7<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods
:   `P` - the type of the additional parameter to this visitor's methods.

All Implemented Interfaces:
:   `AnnotationValueVisitor<R,P>`

Direct Known Subclasses:
:   `SimpleAnnotationValueVisitor8`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_7](../SourceVersion.md#RELEASE_7))
public class SimpleAnnotationValueVisitor7<R,P>
extends [SimpleAnnotationValueVisitor6](SimpleAnnotationValueVisitor6.md "class in javax.lang.model.util")<R,P>

A simple visitor for annotation values with default behavior
appropriate for the [`RELEASE_7`](../SourceVersion.md#RELEASE_7)
source version. Visit methods call [`defaultAction`](SimpleAnnotationValueVisitor6.md#defaultAction(java.lang.Object,P)) passing their arguments to `defaultAction`'s
corresponding parameters.

Since:
:   1.7

See Also:
:   * [**Compatibility note for subclasses**](SimpleAnnotationValueVisitor6.md#note_for_subclasses)
    * [`SimpleAnnotationValueVisitor6`](SimpleAnnotationValueVisitor6.md "class in javax.lang.model.util")
    * [`SimpleAnnotationValueVisitor8`](SimpleAnnotationValueVisitor8.md "class in javax.lang.model.util")
    * [`SimpleAnnotationValueVisitor9`](SimpleAnnotationValueVisitor9.md "class in javax.lang.model.util")
    * [`SimpleAnnotationValueVisitor14`](SimpleAnnotationValueVisitor14.md "class in javax.lang.model.util")

* ## Field Summary

  ### Fields inherited from class javax.lang.model.util.[SimpleAnnotationValueVisitor6](SimpleAnnotationValueVisitor6.md "class in javax.lang.model.util")

  `DEFAULT_VALUE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SimpleAnnotationValueVisitor7()`

  Deprecated.

  Release 7 is obsolete; update to a visitor for a newer
  release level.

  `protected`

  `SimpleAnnotationValueVisitor7(R defaultValue)`

  Deprecated.

  Release 7 is obsolete; update to a visitor for a newer
  release level.
* ## Method Summary

  ### Methods inherited from class javax.lang.model.util.[SimpleAnnotationValueVisitor6](SimpleAnnotationValueVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitAnnotation, visitArray, visitBoolean, visitByte, visitChar, visitDouble, visitEnumConstant, visitFloat, visitInt, visitLong, visitShort, visitString, visitType`

  ### Methods inherited from class javax.lang.model.util.[AbstractAnnotationValueVisitor6](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleAnnotationValueVisitor7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected SimpleAnnotationValueVisitor7()

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleAnnotationValueVisitor7

    [@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="12")
    protected SimpleAnnotationValueVisitor7([R](SimpleAnnotationValueVisitor7.md "type parameter in SimpleAnnotationValueVisitor7") defaultValue)

    Deprecated.

    Release 7 is obsolete; update to a visitor for a newer
    release level.

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleAnnotationValueVisitor6.DEFAULT_VALUE`](SimpleAnnotationValueVisitor6.md#DEFAULT_VALUE)