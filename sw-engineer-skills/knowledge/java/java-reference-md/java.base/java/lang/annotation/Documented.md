Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Annotation Interface Documented

---

[@Documented](Documented.md "annotation interface in java.lang.annotation")
[@Retention](Retention.md "annotation interface in java.lang.annotation")([RUNTIME](RetentionPolicy.md#RUNTIME))
[@Target](Target.md "annotation interface in java.lang.annotation")([ANNOTATION\_TYPE](ElementType.md#ANNOTATION_TYPE))
public @interface Documented

If the annotation `@Documented` is present on the declaration
of an annotation interface *A*, then any `@A` annotation on
an element is considered part of the element's public contract.
In more detail, when an annotation interface *A* is annotated with
`Documented`, the presence and value of *A* annotations
are a part of the public contract of the elements *A*
annotates.
Conversely, if an annotation interface *B* is *not*
annotated with `Documented`, the presence and value of
*B* annotations are *not* part of the public contract
of the elements *B* annotates.
Concretely, if an annotation interface is annotated with `Documented`,
by default a tool like javadoc will display annotations of that interface
in its output while annotations of annotation interfaces without
`Documented` will not be displayed.

Since:
:   1.5