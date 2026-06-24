Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class FormatProcessor

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.FormatProcessor

All Implemented Interfaces:
:   `StringTemplate.ProcessorPREVIEW<String,RuntimeException>`, `StringTemplate.Processor.LinkagePREVIEW`

---

public final class FormatProcessor
extends [Object](../lang/Object.md "class in java.lang")
implements [StringTemplate.Processor](../lang/StringTemplate.Processor.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor)<[String](../lang/String.md "class in java.lang"),[RuntimeException](../lang/RuntimeException.md "class in java.lang")>, [StringTemplate.Processor.Linkage](../lang/StringTemplate.Processor.Linkage.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.Processor.Linkage.md#preview-java.lang.StringTemplate.Processor.Linkage)

`FormatProcessor` is a preview API of the Java platform.

Programs can only use `FormatProcessor` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

This [`StringTemplate.Processor`](../lang/StringTemplate.Processor.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor) constructs a [`String`](../lang/String.md "class in java.lang") result using
[`Formatter`](Formatter.md "class in java.util") specifications and values found in the [`StringTemplate`](../lang/StringTemplate.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.md#preview-java.lang.StringTemplate).
Unlike [`Formatter`](Formatter.md "class in java.util"), [`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) uses the value from the
embedded expression that immediately follows, without whitespace, the
[format specifier](../util/Formatter.md#syntax).
For example:

Copy![Copy snippet](../../../copy.svg)

```
FormatProcessor fmt = FormatProcessor.create(Locale.ROOT);
int x = 10;
int y = 20;
String result = fmt."%05d\{x} + %05d\{y} = %05d\{x + y}";
```

In the above example, the value of `result` will be `"00010 + 00020 = 00030"`.

Embedded expressions without a preceeding format specifier, use `%s`
by default.

Copy![Copy snippet](../../../copy.svg)

```
FormatProcessor fmt = FormatProcessor.create(Locale.ROOT);
int x = 10;
int y = 20;
String result1 = fmt."\{x} + \{y} = \{x + y}";
String result2 = fmt."%s\{x} + %s\{y} = %s\{x + y}";
```

In the above example, the value of `result1` and `result2` will
both be `"10 + 20 = 30"`.

The [`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) format specification used and exceptions thrown are the
same as those of [`Formatter`](Formatter.md "class in java.util").

However, there are two significant differences related to the position of arguments.
An explict `n$` and relative `<` index will cause an exception due to
a missing argument list.
Whitespace appearing between the specification and the embedded expression will
also cause an exception.

[`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) allows the use of different locales. For example:

Copy![Copy snippet](../../../copy.svg)

```
Locale locale = Locale.forLanguageTag("th-TH-u-nu-thai");
FormatProcessor thaiFMT = FormatProcessor.create(locale);
int x = 10;
int y = 20;
String result = thaiFMT."%4d\{x} + %4d\{y} = %5d\{x + y}";
```

In the above example, the value of `result` will be
`" ๑๐ + ๒๐ = ๓๐"`.

For day to day use, the predefined [`FMT`](#FMT) [`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor)
is available. [`FMT`](#FMT) is defined using the [`Locale.ROOT`](Locale.md#ROOT).
Example:

Copy![Copy snippet](../../../copy.svg)

```
int x = 10;
int y = 20;
String result = FMT."0x%04x\{x} + 0x%04x\{y} = 0x%04x\{x + y}";
```

In the above example, the value of `result` will be `"0x000a + 0x0014 = 0x001E"`.

Since:
:   21

See Also:
:   * [`StringTemplate.Processor`](../lang/StringTemplate.Processor.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor)

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from interface java.lang.[StringTemplate.Processor](../lang/StringTemplate.Processor.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor)

  `StringTemplate.Processor.LinkagePREVIEW`
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final FormatProcessorPREVIEW`

  `FMT`

  This predefined [`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) instance constructs a [`String`](../lang/String.md "class in java.lang") result using
  the Locale.ROOT [`Locale`](Locale.md "class in java.util").
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static FormatProcessorPREVIEW`

  `create(Locale locale)`

  Create a new [`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) using the specified locale.

  `MethodHandle`

  `linkage(List<String> fragments,
  MethodType type)`

  Constructs a [`MethodHandle`](../lang/invoke/MethodHandle.md "class in java.lang.invoke") that when supplied with the values from
  a [`StringTemplate`](../lang/StringTemplate.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.md#preview-java.lang.StringTemplate) will produce a result equivalent to that provided by
  [`process(StringTemplate)`](#process(java.lang.StringTemplate)).

  `final String`

  `process(StringTemplatePREVIEW stringTemplate)`

  Constructs a [`String`](../lang/String.md "class in java.lang") based on the fragments, format
  specifications found in the fragments and values in the
  supplied [`StringTemplate`](../lang/StringTemplate.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.md#preview-java.lang.StringTemplate) object.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### FMT

    public static final [FormatProcessor](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) FMT

    This predefined [`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) instance constructs a [`String`](../lang/String.md "class in java.lang") result using
    the Locale.ROOT [`Locale`](Locale.md "class in java.util"). See [`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) for more details.
    Example:

    Copy![Copy snippet](../../../copy.svg)

    ```
    int x = 10;
    int y = 20;
    String result = FMT."0x%04x\{x} + 0x%04x\{y} = 0x%04x\{x + y}";
    ```

    In the above example, the value of `result` will be `"0x000a + 0x0014 = 0x001E"`.

    See Also:
    :   - [`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor)
* ## Method Details

  + ### create

    public static [FormatProcessor](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) create([Locale](Locale.md "class in java.util") locale)

    Create a new [`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) using the specified locale.

    Parameters:
    :   `locale` - [`Locale`](Locale.md "class in java.util") used to format

    Returns:
    :   a new instance of [`FormatProcessor`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor)

    Throws:
    :   `NullPointerException` - if locale is null
  + ### process

    public final [String](../lang/String.md "class in java.lang") process([StringTemplate](../lang/StringTemplate.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.md#preview-java.lang.StringTemplate) stringTemplate)

    Constructs a [`String`](../lang/String.md "class in java.lang") based on the fragments, format
    specifications found in the fragments and values in the
    supplied [`StringTemplate`](../lang/StringTemplate.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.md#preview-java.lang.StringTemplate) object. This method constructs a
    format string from the fragments, gathers up the values and
    evaluates the expression asif evaulating
    `new Formatter(locale).format(format, values).toString()`.

    If an embedded expression is not immediately preceded by a
    specifier then a `%s` is inserted in the format.

    Specified by:
    :   `process` in interface `StringTemplate.ProcessorPREVIEW<String,RuntimeException>`

    Parameters:
    :   `stringTemplate` - a [`StringTemplate`](../lang/StringTemplate.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.md#preview-java.lang.StringTemplate) instance

    Returns:
    :   constructed [`String`](../lang/String.md "class in java.lang")

    Throws:
    :   `IllegalFormatException` - If a format specifier contains an illegal syntax, a format
        specifier that is incompatible with the given arguments,
        a specifier not followed immediately by an embedded expression or
        other illegal conditions. For specification of all possible
        formatting errors, see the
        [details](../util/Formatter.md#detail)
        section of the formatter class specification.
    :   `NullPointerException` - if stringTemplate is null

    See Also:
    :   - [`Formatter`](Formatter.md "class in java.util")
  + ### linkage

    public [MethodHandle](../lang/invoke/MethodHandle.md "class in java.lang.invoke") linkage([List](List.md "interface in java.util")<[String](../lang/String.md "class in java.lang")> fragments,
    [MethodType](../lang/invoke/MethodType.md "class in java.lang.invoke") type)

    Constructs a [`MethodHandle`](../lang/invoke/MethodHandle.md "class in java.lang.invoke") that when supplied with the values from
    a [`StringTemplate`](../lang/StringTemplate.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.md#preview-java.lang.StringTemplate) will produce a result equivalent to that provided by
    [`process(StringTemplate)`](#process(java.lang.StringTemplate)). This [`MethodHandle`](../lang/invoke/MethodHandle.md "class in java.lang.invoke")
    is used by [`FMT`](#FMT) and the ilk to perform a more
    specialized composition of a result. This specialization is done by
    prescanning the fragments and value types of a [`StringTemplate`](../lang/StringTemplate.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.md#preview-java.lang.StringTemplate).

    Process template expressions can be specialized when the processor is
    of type [`StringTemplate.Processor.Linkage`](../lang/StringTemplate.Processor.Linkage.md "interface in java.lang")[PREVIEW](../lang/StringTemplate.Processor.Linkage.md#preview-java.lang.StringTemplate.Processor.Linkage) and fetched from a static constant as is
    [`FMT`](#FMT) (`static final FormatProcessor`).

    Other [`FormatProcessors`](FormatProcessor.md "class in java.util")[PREVIEW](#preview-java.util.FormatProcessor) can be specialized when stored in a static
    final.
    For example:

    Copy![Copy snippet](../../../copy.svg)

    ```
    FormatProcessor THAI_FMT = FormatProcessor.create(Locale.forLanguageTag("th-TH-u-nu-thai"));
    ```

    `THAI_FMT` will now produce specialized [`MethodHandles`](../lang/invoke/MethodHandle.md "class in java.lang.invoke") by way
    of [`linkage(List, MethodType)`](#linkage(java.util.List,java.lang.invoke.MethodType)).
    See [`process(StringTemplate)`](#process(java.lang.StringTemplate)) for more information.

    Specified by:
    :   `linkage` in interface `StringTemplate.Processor.LinkagePREVIEW`

    Parameters:
    :   `fragments` - string template fragments
    :   `type` - method type, includes the StringTemplate receiver as
        well as the value types

    Returns:
    :   [`MethodHandle`](../lang/invoke/MethodHandle.md "class in java.lang.invoke") for the processor applied to template

    Throws:
    :   `IllegalFormatException` - If a format specifier contains an illegal syntax, a format
        specifier that is incompatible with the given arguments,
        a specifier not followed immediately by an embedded expression or
        other illegal conditions. For specification of all possible
        formatting errors, see the
        [details](../util/Formatter.md#detail)
        section of the formatter class specification.
    :   `NullPointerException` - if fragments or type is null

    See Also:
    :   - [`Formatter`](Formatter.md "class in java.util")