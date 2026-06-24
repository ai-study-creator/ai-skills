Module [java.base](../../../module-summary.md)

Package [java.lang.runtime](package-summary.md)

# Class TemplateRuntime

[java.lang.Object](../Object.md "class in java.lang")

java.lang.runtime.TemplateRuntime

---

public final class TemplateRuntime
extends [Object](../Object.md "class in java.lang")

`TemplateRuntime` is a preview API of the Java platform.

Programs can only use `TemplateRuntime` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

Manages string template bootstrap methods. These methods may be used, for example,
by Java compiler implementations to create [`StringTemplate`](../StringTemplate.md "interface in java.lang")[PREVIEW](../StringTemplate.md#preview-java.lang.StringTemplate) instances. For example,
the java compiler will translate the following code;

Copy![Copy snippet](../../../../copy.svg)

```
int x = 10;
int y = 20;
StringTemplate st = RAW."\{x} + \{y} = \{x + y}";
```

to byte code that invokes the [`newStringTemplate(java.lang.invoke.MethodHandles.Lookup, java.lang.String, java.lang.invoke.MethodType, java.lang.String...)`](#newStringTemplate(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.invoke.MethodType,java.lang.String...))
bootstrap method to construct a [`CallSite`](../invoke/CallSite.md "class in java.lang.invoke") that accepts two integers and produces a new
[`StringTemplate`](../StringTemplate.md "interface in java.lang")[PREVIEW](../StringTemplate.md#preview-java.lang.StringTemplate) instance.

Copy![Copy snippet](../../../../copy.svg)

```
MethodHandles.Lookup lookup = MethodHandles.lookup();
MethodType mt = MethodType.methodType(StringTemplate.class, int.class, int.class);
CallSite cs = TemplateRuntime.newStringTemplate(lookup, "", mt, "", " + ", " = ", "");
...
int x = 10;
int y = 20;
StringTemplate st = (StringTemplate)cs.getTarget().invokeExact(x, y);
```

If the string template requires more than
[`StringConcatFactory.MAX_INDY_CONCAT_ARG_SLOTS`](../invoke/StringConcatFactory.md#MAX_INDY_CONCAT_ARG_SLOTS)[PREVIEW](../invoke/StringConcatFactory.md#preview-MAX_INDY_CONCAT_ARG_SLOTS) value slots,
then the java compiler will use the
[`newLargeStringTemplate(java.lang.invoke.MethodHandles.Lookup, java.lang.String, java.lang.invoke.MethodType)`](#newLargeStringTemplate(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.invoke.MethodType)) bootstrap method
instead. For example, the java compiler will translate the following code;

Copy![Copy snippet](../../../../copy.svg)

```
int[] a = new int[1000], b = new int[1000];
...
StringTemplate st = """
     \{a[0]} - \{b[0]}
     \{a[1]} - \{b[1]}
     ...
     \{a[999]} - \{b[999]}
     """;
```

to byte code that invokes the [`newLargeStringTemplate(java.lang.invoke.MethodHandles.Lookup, java.lang.String, java.lang.invoke.MethodType)`](#newLargeStringTemplate(java.lang.invoke.MethodHandles.Lookup,java.lang.String,java.lang.invoke.MethodType))
bootstrap method to construct a [`CallSite`](../invoke/CallSite.md "class in java.lang.invoke") that accepts an array of integers and produces a new
[`StringTemplate`](../StringTemplate.md "interface in java.lang")[PREVIEW](../StringTemplate.md#preview-java.lang.StringTemplate) instance.

Copy![Copy snippet](../../../../copy.svg)

```
MethodType mt = MethodType.methodType(StringTemplate.class, String[].class, Object[].class);
CallSite cs = TemplateRuntime.newStringTemplate(lookup, "", mt);
...
int[] a = new int[1000], b = new int[1000];
...
StringTemplate st = (StringTemplate)cs.getTarget().invokeExact(
        new String[] { "", " - ", "\n", " - ", "\n", ... " - ", "\n" },
        new Object[] { a[0], b[0], a[1], b[1], ..., a[999], b[999]}
        );
```

Since:
:   21

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static CallSite`

  `newLargeStringTemplate(MethodHandles.Lookup lookup,
  String name,
  MethodType type)`

  String template bootstrap method for creating large string templates,
  i.e., when the number of value slots exceeds
  [`StringConcatFactory.MAX_INDY_CONCAT_ARG_SLOTS`](../invoke/StringConcatFactory.md#MAX_INDY_CONCAT_ARG_SLOTS)[PREVIEW](../invoke/StringConcatFactory.md#preview-MAX_INDY_CONCAT_ARG_SLOTS).

  `static CallSite`

  `newStringTemplate(MethodHandles.Lookup lookup,
  String name,
  MethodType type,
  String... fragments)`

  String template bootstrap method for creating string templates.

  `static CallSite`

  `processStringTemplate(MethodHandles.Lookup lookup,
  String name,
  MethodType type,
  MethodHandle processorGetter,
  String... fragments)`

  String template bootstrap method for static final processors.

  ### Methods inherited from class java.lang.[Object](../Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### newStringTemplate

    public static [CallSite](../invoke/CallSite.md "class in java.lang.invoke") newStringTemplate([MethodHandles.Lookup](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [MethodType](../invoke/MethodType.md "class in java.lang.invoke") type,
    [String](../String.md "class in java.lang")... fragments)
    throws [Throwable](../Throwable.md "class in java.lang")

    String template bootstrap method for creating string templates.
    The static arguments include the fragments list.
    The non-static arguments are the values.

    Parameters:
    :   `lookup` - method lookup from call site
    :   `name` - method name - not used
    :   `type` - method type
        (ptypes...) -> StringTemplate
    :   `fragments` - fragment array for string template

    Returns:
    :   [`CallSite`](../invoke/CallSite.md "class in java.lang.invoke") to handle create string template

    Throws:
    :   `NullPointerException` - if any of the arguments is null
    :   `Throwable` - if linkage fails
  + ### newLargeStringTemplate

    public static [CallSite](../invoke/CallSite.md "class in java.lang.invoke") newLargeStringTemplate([MethodHandles.Lookup](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [MethodType](../invoke/MethodType.md "class in java.lang.invoke") type)
    throws [Throwable](../Throwable.md "class in java.lang")

    String template bootstrap method for creating large string templates,
    i.e., when the number of value slots exceeds
    [`StringConcatFactory.MAX_INDY_CONCAT_ARG_SLOTS`](../invoke/StringConcatFactory.md#MAX_INDY_CONCAT_ARG_SLOTS)[PREVIEW](../invoke/StringConcatFactory.md#preview-MAX_INDY_CONCAT_ARG_SLOTS).
    The non-static arguments are the fragments array and values array.

    Parameters:
    :   `lookup` - method lookup from call site
    :   `name` - method name - not used
    :   `type` - method type
        (String[], Object[]) -> StringTemplate

    Returns:
    :   [`CallSite`](../invoke/CallSite.md "class in java.lang.invoke") to handle create large string template

    Throws:
    :   `NullPointerException` - if any of the arguments is null
    :   `Throwable` - if linkage fails
  + ### processStringTemplate

    public static [CallSite](../invoke/CallSite.md "class in java.lang.invoke") processStringTemplate([MethodHandles.Lookup](../invoke/MethodHandles.Lookup.md "class in java.lang.invoke") lookup,
    [String](../String.md "class in java.lang") name,
    [MethodType](../invoke/MethodType.md "class in java.lang.invoke") type,
    [MethodHandle](../invoke/MethodHandle.md "class in java.lang.invoke") processorGetter,
    [String](../String.md "class in java.lang")... fragments)
    throws [Throwable](../Throwable.md "class in java.lang")

    String template bootstrap method for static final processors.
    The static arguments include the fragments array and a [`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke")
    to retrieve the value of the static final processor.
    The non-static arguments are the values.

    Parameters:
    :   `lookup` - method lookup from call site
    :   `name` - method name - not used
    :   `type` - method type
        (ptypes...) -> Object
    :   `processorGetter` - [`MethodHandle`](../invoke/MethodHandle.md "class in java.lang.invoke") to get static final processor
    :   `fragments` - fragments from string template

    Returns:
    :   [`CallSite`](../invoke/CallSite.md "class in java.lang.invoke") to handle string template processing

    Throws:
    :   `NullPointerException` - if any of the arguments is null
    :   `Throwable` - if linkage fails