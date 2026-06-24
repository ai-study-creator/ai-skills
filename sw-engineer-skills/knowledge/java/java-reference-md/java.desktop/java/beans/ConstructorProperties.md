Module [java.desktop](../../module-summary.md)

Package [java.beans](package-summary.md)

# Annotation Interface ConstructorProperties

---

[@Documented](../../../java.base/java/lang/annotation/Documented.md "annotation interface in java.lang.annotation")
[@Target](../../../java.base/java/lang/annotation/Target.md "annotation interface in java.lang.annotation")([CONSTRUCTOR](../../../java.base/java/lang/annotation/ElementType.md#CONSTRUCTOR))
[@Retention](../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation")([RUNTIME](../../../java.base/java/lang/annotation/RetentionPolicy.md#RUNTIME))
public @interface ConstructorProperties

An annotation on a constructor that shows how the parameters of
that constructor correspond to the constructed object's getter
methods. For example:
> ```
>    public class Point {
>        @ConstructorProperties({"x", "y"})
>        public Point(int x, int y) {
>            this.x = x;
>            this.y = y;
>        }
>
>        public int getX() {
>            return x;
>        }
>
>        public int getY() {
>            return y;
>        }
>
>        private final int x, y;
>    }
> ```

The annotation shows that the first parameter of the constructor
can be retrieved with the `getX()` method and the second with
the `getY()` method. Since parameter names are not in
general available at runtime, without the annotation there would be
no way to know whether the parameters correspond to `getX()`
and `getY()` or the other way around.

Since:
:   1.6

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