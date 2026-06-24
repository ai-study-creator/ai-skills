Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Annotation Interface Deprecated

---

[@Documented](annotation/Documented.md "annotation interface in java.lang.annotation")
[@Retention](annotation/Retention.md "annotation interface in java.lang.annotation")([RUNTIME](annotation/RetentionPolicy.md#RUNTIME))
[@Target](annotation/Target.md "annotation interface in java.lang.annotation")({[CONSTRUCTOR](annotation/ElementType.md#CONSTRUCTOR),[FIELD](annotation/ElementType.md#FIELD),[LOCAL\_VARIABLE](annotation/ElementType.md#LOCAL_VARIABLE),[METHOD](annotation/ElementType.md#METHOD),[PACKAGE](annotation/ElementType.md#PACKAGE),[MODULE](annotation/ElementType.md#MODULE),[PARAMETER](annotation/ElementType.md#PARAMETER),[TYPE](annotation/ElementType.md#TYPE)})
public @interface Deprecated

A program element annotated `@Deprecated` is one that programmers
are discouraged from using. An element may be deprecated for any of several
reasons, for example, its usage is likely to lead to errors; it may
be changed incompatibly or removed in a future version; it has been
superseded by a newer, usually preferable alternative; or it is obsolete.

Compilers issue warnings when a deprecated program element is used or
overridden in non-deprecated code. Use of the `@Deprecated`
annotation on a local variable declaration or on a parameter declaration
or a package declaration has no effect on the warnings issued by a compiler.

When a module is deprecated, the use of that module in `requires`, but not in `exports` or `opens` clauses causes
a warning to be issued. A module being deprecated does *not* cause
warnings to be issued for uses of types within the module.

This annotation type has a string-valued element `since`. The value
of this element indicates the version in which the annotated program element
was first deprecated.

This annotation type has a boolean-valued element `forRemoval`.
A value of `true` indicates intent to remove the annotated program
element in a future version. A value of `false` indicates that use of
the annotated program element is discouraged, but at the time the program
element was annotated, there was no specific intent to remove it.

Since:
:   1.5

* ## Optional Element Summary

  Optional Elements

  Modifier and Type

  Optional Element

  Description

  `boolean`

  `forRemoval`

  Indicates whether the annotated element is subject to removal in a
  future version.

  `String`

  `since`

  Returns the version in which the annotated element became deprecated.

* ## Element Details

  + ### since

    [String](String.md "class in java.lang") since

    Returns the version in which the annotated element became deprecated.
    The version string is in the same format and namespace as the value of
    the `@since` javadoc tag. The default value is the empty
    string.

    Returns:
    :   the version string

    Since:
    :   9

    Default:
    :   `""`
  + ### forRemoval

    boolean forRemoval

    Indicates whether the annotated element is subject to removal in a
    future version. The default value is `false`.

    Returns:
    :   whether the element is subject to removal

    Since:
    :   9

    Default:
    :   `false`