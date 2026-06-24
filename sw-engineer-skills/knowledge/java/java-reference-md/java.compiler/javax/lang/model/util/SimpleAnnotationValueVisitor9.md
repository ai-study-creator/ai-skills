Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class SimpleAnnotationValueVisitor9<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractAnnotationValueVisitor6](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleAnnotationValueVisitor6](SimpleAnnotationValueVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleAnnotationValueVisitor7](SimpleAnnotationValueVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.SimpleAnnotationValueVisitor8](SimpleAnnotationValueVisitor8.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.SimpleAnnotationValueVisitor9<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods
:   `P` - the type of the additional parameter to this visitor's methods.

All Implemented Interfaces:
:   `AnnotationValueVisitor<R,P>`

Direct Known Subclasses:
:   `SimpleAnnotationValueVisitor14`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_14](../SourceVersion.md#RELEASE_14))
public class SimpleAnnotationValueVisitor9<R,P>
extends [SimpleAnnotationValueVisitor8](SimpleAnnotationValueVisitor8.md "class in javax.lang.model.util")<R,P>

A simple visitor for annotation values with default behavior
appropriate for source versions [`RELEASE_9`](../SourceVersion.md#RELEASE_9) through [`RELEASE_14`](../SourceVersion.md#RELEASE_14).
Visit methods call [`defaultAction`](SimpleAnnotationValueVisitor6.md#defaultAction(java.lang.Object,P)) passing their arguments to `defaultAction`'s
corresponding parameters.

Since:
:   9

See Also:
:   * [**Compatibility note for subclasses**](SimpleAnnotationValueVisitor6.md#note_for_subclasses)
    * [`SimpleAnnotationValueVisitor6`](SimpleAnnotationValueVisitor6.md "class in javax.lang.model.util")
    * [`SimpleAnnotationValueVisitor7`](SimpleAnnotationValueVisitor7.md "class in javax.lang.model.util")
    * [`SimpleAnnotationValueVisitor8`](SimpleAnnotationValueVisitor8.md "class in javax.lang.model.util")
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

  `SimpleAnnotationValueVisitor9()`

  Constructor for concrete subclasses; uses `null` for the
  default value.

  `protected`

  `SimpleAnnotationValueVisitor9(R defaultValue)`

  Constructor for concrete subclasses; uses the argument for the
  default value.
* ## Method Summary

  ### Methods inherited from class javax.lang.model.util.[SimpleAnnotationValueVisitor6](SimpleAnnotationValueVisitor6.md "class in javax.lang.model.util")

  `defaultAction, visitAnnotation, visitArray, visitBoolean, visitByte, visitChar, visitDouble, visitEnumConstant, visitFloat, visitInt, visitLong, visitShort, visitString, visitType`

  ### Methods inherited from class javax.lang.model.util.[AbstractAnnotationValueVisitor6](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SimpleAnnotationValueVisitor9

    protected SimpleAnnotationValueVisitor9()

    Constructor for concrete subclasses; uses `null` for the
    default value.
  + ### SimpleAnnotationValueVisitor9

    protected SimpleAnnotationValueVisitor9([R](SimpleAnnotationValueVisitor9.md "type parameter in SimpleAnnotationValueVisitor9") defaultValue)

    Constructor for concrete subclasses; uses the argument for the
    default value.

    Parameters:
    :   `defaultValue` - the value to assign to [`SimpleAnnotationValueVisitor6.DEFAULT_VALUE`](SimpleAnnotationValueVisitor6.md#DEFAULT_VALUE)