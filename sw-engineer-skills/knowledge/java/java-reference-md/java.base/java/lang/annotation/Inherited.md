Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Annotation Interface Inherited

---

[@Documented](Documented.md "annotation interface in java.lang.annotation")
[@Retention](Retention.md "annotation interface in java.lang.annotation")([RUNTIME](RetentionPolicy.md#RUNTIME))
[@Target](Target.md "annotation interface in java.lang.annotation")([ANNOTATION\_TYPE](ElementType.md#ANNOTATION_TYPE))
public @interface Inherited

Indicates that an annotation interface is automatically inherited. If
an Inherited meta-annotation is present on an annotation interface
declaration, and the user queries the annotation interface on a class
declaration, and the class declaration has no annotation for this interface,
then the class's superclass will automatically be queried for the
annotation interface. This process will be repeated until an annotation for
this interface is found, or the top of the class hierarchy (Object)
is reached. If no superclass has an annotation for this interface, then
the query will indicate that the class in question has no such annotation.

Note that this meta-annotation interface has no effect if the annotated
interface is used to annotate anything other than a class. Note also
that this meta-annotation only causes annotations to be inherited
from superclasses; annotations on implemented interfaces have no
effect.

Since:
:   1.5