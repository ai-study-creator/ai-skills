Module [java.compiler](../../../module-summary.md)

Package [javax.annotation.processing](package-summary.md)

# Annotation Interface Generated

---

[@Documented](../../../../java.base/java/lang/annotation/Documented.md "annotation interface in java.lang.annotation")
[@Retention](../../../../java.base/java/lang/annotation/Retention.md "annotation interface in java.lang.annotation")([SOURCE](../../../../java.base/java/lang/annotation/RetentionPolicy.md#SOURCE))
[@Target](../../../../java.base/java/lang/annotation/Target.md "annotation interface in java.lang.annotation")({[PACKAGE](../../../../java.base/java/lang/annotation/ElementType.md#PACKAGE),[TYPE](../../../../java.base/java/lang/annotation/ElementType.md#TYPE),[METHOD](../../../../java.base/java/lang/annotation/ElementType.md#METHOD),[CONSTRUCTOR](../../../../java.base/java/lang/annotation/ElementType.md#CONSTRUCTOR),[FIELD](../../../../java.base/java/lang/annotation/ElementType.md#FIELD),[LOCAL\_VARIABLE](../../../../java.base/java/lang/annotation/ElementType.md#LOCAL_VARIABLE),[PARAMETER](../../../../java.base/java/lang/annotation/ElementType.md#PARAMETER)})
public @interface Generated

The Generated annotation is used to mark source code that has been generated.
It can also be used to differentiate user written code from generated code in
a single file.

## Examples:

```
   @Generated("com.example.Generator")
```

```
   @Generated(value="com.example.Generator", date= "2017-07-04T12:08:56.235-0700")
```

```
   @Generated(value="com.example.Generator", date= "2017-07-04T12:08:56.235-0700",
      comments= "comment 1")
```

Since:
:   9

* ## Required Element Summary

  Required Elements

  Modifier and Type

  Required Element

  Description

  `String[]`

  `value`

  The value element MUST have the name of the code generator.
* ## Optional Element Summary

  Optional Elements

  Modifier and Type

  Optional Element

  Description

  `String`

  `comments`

  A place holder for any comments that the code generator may want to
  include in the generated code.

  `String`

  `date`

  Date when the source was generated.

* ## Element Details

  + ### value

    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] value

    The value element MUST have the name of the code generator. The
    name is the fully qualified name of the code generator.

    Returns:
    :   The name of the code generator
  + ### date

    [String](../../../../java.base/java/lang/String.md "class in java.lang") date

    Date when the source was generated. The date element must follow the ISO
    8601 standard. For example the date element would have the following
    value 2017-07-04T12:08:56.235-0700 which represents 2017-07-04 12:08:56
    local time in the U.S. Pacific Time time zone.

    Returns:
    :   The date the source was generated

    Default:
    :   `""`
  + ### comments

    [String](../../../../java.base/java/lang/String.md "class in java.lang") comments

    A place holder for any comments that the code generator may want to
    include in the generated code.

    Returns:
    :   Comments that the code generated included

    Default:
    :   `""`