Module [java.management](../../module-summary.md)

Package [javax.management](package-summary.md)

# Annotation Interface ConstructorParameters

---

[@Documented](../../../java.base/java/lang/annotation/Documented.md "annotation interface in java.lang.annotation")
[@Target](../../../java.base/java/lang/annotation/Target.md "annotation interface in java.lang.annotation")([CONSTRUCTOR](../../../java.base/java/lang/annotation/ElementType.md#CONSTRUCTOR))
[@Retention](../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation")([RUNTIME](../../../java.base/java/lang/annotation/RetentionPolicy.md#RUNTIME))
public @interface ConstructorParameters

An annotation on a constructor that shows how the parameters of
that constructor correspond to the constructed object's getter
methods. For example:

> ```
>          public class MemoryUsage {
>              // standard JavaBean conventions with getters
>              @ConstructorParameters({"init", "used", "committed", "max"})
>              public MemoryUsage(long init, long used,
>                                 long committed, long max) {...}
>              public long getInit() {...}
>              public long getUsed() {...}
>              public long getCommitted() {...}
>              public long getMax() {...}
>          }
> ```

The annotation shows that the first parameter of the constructor
can be retrieved with the `getInit()` method, the second one with
the `getUsed()` method, and so on. Since parameter names are not in
general available at runtime, without the annotation there would be
no way of knowing which parameter corresponds to which property.

If a constructor is annotated by the both `@java.beans.ConstructorProperties`
and `@javax.management.ConstructorParameters` annotations
the JMX introspection will give an absolute precedence to the latter one.

Since:
:   9

* ## Required Element Summary

  Required Elements

  Modifier and Type

  Required Element

  Description

  `String[]`

  `value`

  The getter names.

* ## Element Details

  + ### value

    [String](../../../java.base/java/lang/String.md "class in java.lang")[] value

    The getter names.

    Returns:
    :   the getter names corresponding to the parameters in the
        annotated constructor.