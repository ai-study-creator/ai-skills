Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface StringTemplate.Processor.Linkage

All Known Implementing Classes:
:   `FormatProcessorPREVIEW`

Enclosing interface:
:   `StringTemplate.ProcessorPREVIEW<R,E extends Throwable>`

---

public static sealed interface StringTemplate.Processor.Linkage
permits [FormatProcessor](../util/FormatProcessor.md "class in java.util")[PREVIEW](../util/FormatProcessor.md#preview-java.util.FormatProcessor)

`Linkage` is a preview API of the Java platform.

Programs can only use `Linkage` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

Built-in policies using this additional interface have the flexibility to
specialize the composition of the templated string by returning a customized
[`MethodHandle`](invoke/MethodHandle.md "class in java.lang.invoke") from [`linkage`](#linkage(java.util.List,java.lang.invoke.MethodType)).
These specializations are typically implemented to improve performance;
specializing value types or avoiding boxing and vararg arrays.

Since:
:   21

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `MethodHandle`

  `linkage(List<String> fragments,
  MethodType type)`

  This method creates a [`MethodHandle`](invoke/MethodHandle.md "class in java.lang.invoke") that when invoked with arguments of
  those specified in `type` returns a result that equals that returned by
  the template processor's process method.

* ## Method Details

  + ### linkage

    [MethodHandle](invoke/MethodHandle.md "class in java.lang.invoke") linkage([List](../util/List.md "interface in java.util")<[String](String.md "class in java.lang")> fragments,
    [MethodType](invoke/MethodType.md "class in java.lang.invoke") type)

    This method creates a [`MethodHandle`](invoke/MethodHandle.md "class in java.lang.invoke") that when invoked with arguments of
    those specified in `type` returns a result that equals that returned by
    the template processor's process method. The difference being that this method
    can preview the template's fragments and value types in advance of usage and
    thereby has the opportunity to produce a specialized implementation.

    Parameters:
    :   `fragments` - string template fragments
    :   `type` - method type, includes the StringTemplate receiver as
        well as the value types

    Returns:
    :   [`MethodHandle`](invoke/MethodHandle.md "class in java.lang.invoke") for the processor applied to template

    Throws:
    :   `NullPointerException` - if any of the arguments are null