Module [java.base](../../../module-summary.md)

# Package java.lang.annotation

---

package java.lang.annotation

Provides library support for the Java programming language
annotation facility.

Since:
:   1.5

* Related Packages

  Package

  Description

  [java.lang](../package-summary.md)

  Provides classes that are fundamental to the design of the Java
  programming language.
* All Classes and InterfacesInterfacesEnum ClassesException ClassesAnnotation Interfaces

  Class

  Description

  [Annotation](Annotation.md "interface in java.lang.annotation")

  The common interface extended by all annotation interfaces.

  [AnnotationFormatError](AnnotationFormatError.md "class in java.lang.annotation")

  Thrown when the annotation parser attempts to read an annotation
  from a class file and determines that the annotation is malformed.

  [AnnotationTypeMismatchException](AnnotationTypeMismatchException.md "class in java.lang.annotation")

  Thrown to indicate that a program has attempted to access an element of
  an annotation whose type has changed after the annotation was compiled
  (or serialized).

  [Documented](Documented.md "annotation interface in java.lang.annotation")

  If the annotation `@Documented` is present on the declaration
  of an annotation interface *A*, then any `@A` annotation on
  an element is considered part of the element's public contract.

  [ElementType](ElementType.md "enum class in java.lang.annotation")

  The constants of this enumerated class provide a simple classification of the
  syntactic locations where annotations may appear in a Java program.

  [IncompleteAnnotationException](IncompleteAnnotationException.md "class in java.lang.annotation")

  Thrown to indicate that a program has attempted to access an element of
  an annotation interface that was added to the annotation interface definition
  after the annotation was compiled (or serialized).

  [Inherited](Inherited.md "annotation interface in java.lang.annotation")

  Indicates that an annotation interface is automatically inherited.

  [Native](Native.md "annotation interface in java.lang.annotation")

  Indicates that a field defining a constant value may be referenced
  from native code.

  [Repeatable](Repeatable.md "annotation interface in java.lang.annotation")

  The annotation interface `java.lang.annotation.Repeatable` is
  used to indicate that the annotation interface whose declaration it
  (meta-)annotates is *repeatable*.

  [Retention](Retention.md "annotation interface in java.lang.annotation")

  Indicates how long annotations with the annotated interface are to
  be retained.

  [RetentionPolicy](RetentionPolicy.md "enum class in java.lang.annotation")

  Annotation retention policy.

  [Target](Target.md "annotation interface in java.lang.annotation")

  Indicates the contexts in which an annotation interface is applicable.