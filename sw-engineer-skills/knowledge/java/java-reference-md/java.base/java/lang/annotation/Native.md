Module [java.base](../../../module-summary.md)

Package [java.lang.annotation](package-summary.md)

# Annotation Interface Native

---

[@Documented](Documented.md "annotation interface in java.lang.annotation")
[@Target](Target.md "annotation interface in java.lang.annotation")([FIELD](ElementType.md#FIELD))
[@Retention](Retention.md "annotation interface in java.lang.annotation")([SOURCE](RetentionPolicy.md#SOURCE))
public @interface Native

Indicates that a field defining a constant value may be referenced
from native code.
The annotation may be used as a hint by tools that generate native
header files to determine whether a header file is required, and
if so, what declarations it should contain.

Since:
:   1.8