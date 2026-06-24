Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Annotation Interface Target

---

[@Documented](Documented.md "annotation interface in java.lang.annotation")
[@Retention](Retention.md "annotation interface in java.lang.annotation")([RUNTIME](RetentionPolicy.md#RUNTIME))
[@Target](Target.md "annotation interface in java.lang.annotation")([ANNOTATION\_TYPE](ElementType.md#ANNOTATION_TYPE))
public @interface Target

Indicates the contexts in which an annotation interface is applicable. The
declaration contexts and type contexts in which an annotation interface may
be applicable are specified in JLS , and denoted in source code by
enum constants of [`java.lang.annotation.ElementType`](ElementType.md "enum class in java.lang.annotation").

If an `@Target` meta-annotation is not present on an annotation
interface `T`, then an annotation of type `T` may be written as
a modifier for any declaration.

If an `@Target` meta-annotation is present, the compiler will enforce
the usage restrictions indicated by `ElementType`
enum constants, in line with JLS .

For example, this `@Target` meta-annotation indicates that the
declared interface is itself a meta-annotation interface. It can only be
used on annotation interface declarations:

```
    @Target(ElementType.ANNOTATION_TYPE)
    public @interface MetaAnnotationType {
        ...
    }
```

This `@Target` meta-annotation indicates that the declared class or
interface is intended solely for use as a member class or interface in
complex annotation interface declarations. It cannot be used to annotate
anything directly:

```
    @Target({})
    public @interface MemberInterface {
        ...
    }
```

It is a compile-time error for a single `ElementType` constant to
appear more than once in an `@Target` annotation. For example, the
following `@Target` meta-annotation is illegal:

```
    @Target({ElementType.FIELD, ElementType.METHOD, ElementType.FIELD})
    public @interface Bogus {
        ...
    }
```

Since:
:   1.5

* ## Required Element Summary

  Required Elements

  Modifier and Type

  Required Element

  Description

  `ElementType[]`

  `value`

  Returns an array of the kinds of elements an annotation interface
  can be applied to.

* ## Element Details

  + ### value

    [ElementType](ElementType.md "enum class in java.lang.annotation")[] value

    Returns an array of the kinds of elements an annotation interface
    can be applied to.

    Returns:
    :   an array of the kinds of elements an annotation interface
        can be applied to