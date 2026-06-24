# Hierarchy For Package java.lang.annotation

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../Object.md "class in java.lang")
  + java.lang.[Throwable](../Throwable.md "class in java.lang") (implements java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.[Error](../Error.md "class in java.lang")
      * java.lang.annotation.[AnnotationFormatError](AnnotationFormatError.md "class in java.lang.annotation")
    - java.lang.[Exception](../Exception.md "class in java.lang")
      * java.lang.[RuntimeException](../RuntimeException.md "class in java.lang")
        + java.lang.annotation.[AnnotationTypeMismatchException](AnnotationTypeMismatchException.md "class in java.lang.annotation")
        + java.lang.annotation.[IncompleteAnnotationException](IncompleteAnnotationException.md "class in java.lang.annotation")

## Interface Hierarchy

* java.lang.annotation.[Annotation](Annotation.md "interface in java.lang.annotation")

## Annotation Interface Hierarchy

* java.lang.annotation.[Documented](Documented.md "annotation interface in java.lang.annotation") (implements java.lang.annotation.[Annotation](Annotation.md "interface in java.lang.annotation"))
* java.lang.annotation.[Inherited](Inherited.md "annotation interface in java.lang.annotation") (implements java.lang.annotation.[Annotation](Annotation.md "interface in java.lang.annotation"))
* java.lang.annotation.[Native](Native.md "annotation interface in java.lang.annotation") (implements java.lang.annotation.[Annotation](Annotation.md "interface in java.lang.annotation"))
* java.lang.annotation.[Repeatable](Repeatable.md "annotation interface in java.lang.annotation") (implements java.lang.annotation.[Annotation](Annotation.md "interface in java.lang.annotation"))
* java.lang.annotation.[Retention](Retention.md "annotation interface in java.lang.annotation") (implements java.lang.annotation.[Annotation](Annotation.md "interface in java.lang.annotation"))
* java.lang.annotation.[Target](Target.md "annotation interface in java.lang.annotation") (implements java.lang.annotation.[Annotation](Annotation.md "interface in java.lang.annotation"))

## Enum Class Hierarchy

* java.lang.[Object](../Object.md "class in java.lang")
  + java.lang.[Enum](../Enum.md "class in java.lang")<E> (implements java.lang.[Comparable](../Comparable.md "interface in java.lang")<T>, java.lang.constant.[Constable](../constant/Constable.md "interface in java.lang.constant"), java.io.[Serializable](../../io/Serializable.md "interface in java.io"))
    - java.lang.annotation.[ElementType](ElementType.md "enum class in java.lang.annotation")
    - java.lang.annotation.[RetentionPolicy](RetentionPolicy.md "enum class in java.lang.annotation")