Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Annotation Interface Override

---

[@Target](annotation/Target.md "annotation interface in java.lang.annotation")([METHOD](annotation/ElementType.md#METHOD))
[@Retention](annotation/Retention.md "annotation interface in java.lang.annotation")([SOURCE](annotation/RetentionPolicy.md#SOURCE))
public @interface Override

Indicates that a method declaration is intended to override a
method declaration in a supertype. If a method is annotated with
this annotation type compilers are required to generate an error
message unless at least one of the following conditions hold:

* The method does override or implement a method declared in a
  supertype.
* The method has a signature that is override-equivalent to that of
  any public method declared in [Object](Object.md "class in java.lang").

Since:
:   1.5