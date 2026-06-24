Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.util](package-summary.md)

# Class AbstractAnnotationValueVisitor14<R,P>

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.lang.model.util.AbstractAnnotationValueVisitor6](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractAnnotationValueVisitor7](AbstractAnnotationValueVisitor7.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractAnnotationValueVisitor8](AbstractAnnotationValueVisitor8.md "class in javax.lang.model.util")<R,P>

[javax.lang.model.util.AbstractAnnotationValueVisitor9](AbstractAnnotationValueVisitor9.md "class in javax.lang.model.util")<R,P>

javax.lang.model.util.AbstractAnnotationValueVisitor14<R,P>

Type Parameters:
:   `R` - the return type of this visitor's methods
:   `P` - the type of the additional parameter to this visitor's methods.

All Implemented Interfaces:
:   `AnnotationValueVisitor<R,P>`

---

[@SupportedSourceVersion](../../../annotation/processing/SupportedSourceVersion.md "annotation interface in javax.annotation.processing")([RELEASE\_21](../SourceVersion.md#RELEASE_21))
public abstract class AbstractAnnotationValueVisitor14<R,P>
extends [AbstractAnnotationValueVisitor9](AbstractAnnotationValueVisitor9.md "class in javax.lang.model.util")<R,P>

A skeletal visitor for annotation values with default behavior
appropriate for source version [`RELEASE_14`](../SourceVersion.md#RELEASE_14).

Since:
:   14

See Also:
:   * [**Compatibility note for subclasses**](AbstractAnnotationValueVisitor6.md#note_for_subclasses)
    * [`AbstractAnnotationValueVisitor6`](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")
    * [`AbstractAnnotationValueVisitor7`](AbstractAnnotationValueVisitor7.md "class in javax.lang.model.util")
    * [`AbstractAnnotationValueVisitor8`](AbstractAnnotationValueVisitor8.md "class in javax.lang.model.util")
    * [`AbstractAnnotationValueVisitor9`](AbstractAnnotationValueVisitor9.md "class in javax.lang.model.util")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `AbstractAnnotationValueVisitor14()`

  Constructor for concrete subclasses to call.
* ## Method Summary

  ### Methods inherited from class javax.lang.model.util.[AbstractAnnotationValueVisitor6](AbstractAnnotationValueVisitor6.md "class in javax.lang.model.util")

  `visit, visit, visitUnknown`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.lang.model.element.[AnnotationValueVisitor](../element/AnnotationValueVisitor.md "interface in javax.lang.model.element")

  `visitAnnotation, visitArray, visitBoolean, visitByte, visitChar, visitDouble, visitEnumConstant, visitFloat, visitInt, visitLong, visitShort, visitString, visitType`

* ## Constructor Details

  + ### AbstractAnnotationValueVisitor14

    protected AbstractAnnotationValueVisitor14()

    Constructor for concrete subclasses to call.