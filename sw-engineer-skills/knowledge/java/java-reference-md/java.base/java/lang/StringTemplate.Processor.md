Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface StringTemplate.Processor<R,E extends [Throwable](Throwable.md "class in java.lang")>

Type Parameters:
:   `R` - Processor's process result type
:   `E` - Exception thrown type

All Known Implementing Classes:
:   `FormatProcessorPREVIEW`

Enclosing interface:
:   `StringTemplatePREVIEW`

Functional Interface:
:   This is a functional interface and can therefore be used as the assignment target for a lambda expression or method reference.

---

[@FunctionalInterface](FunctionalInterface.md "annotation interface in java.lang")
public static interface StringTemplate.Processor<R,E extends [Throwable](Throwable.md "class in java.lang")>

`Processor` is a preview API of the Java platform.

Programs can only use `Processor` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

This interface describes the methods provided by a generalized string template processor. The
primary method [`process(StringTemplate)`](#process(java.lang.StringTemplate)) is used to validate
and compose a result using a [`StringTemplate's`](StringTemplate.md "interface in java.lang")[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate) fragments and values lists.

For example:

Copy![Copy snippet](../../../copy.svg)

```
class MyProcessor implements Processor<String, IllegalArgumentException> {
    @Override
    public String process(StringTemplate st) throws IllegalArgumentException {
         StringBuilder sb = new StringBuilder();
         Iterator<String> fragmentsIter = st.fragments().iterator();

         for (Object value : st.values()) {
             sb.append(fragmentsIter.next());

             if (value instanceof Boolean) {
                 throw new IllegalArgumentException("I don't like Booleans");
             }

             sb.append(value);
         }

         sb.append(fragmentsIter.next());

         return sb.toString();
    }
}

MyProcessor myProcessor = new MyProcessor();
try {
    int x = 10;
    int y = 20;
    String result = myProcessor."\{x} + \{y} = \{x + y}";
    ...
} catch (IllegalArgumentException ex) {
    ...
}
```

Implementations of this interface may provide, but are not limited to, validating
inputs, composing inputs into a result, and transforming an intermediate string
result to a non-string value before delivering the final result.

The user has the option of validating inputs used in composition. For example an SQL
processor could prevent injection vulnerabilities by sanitizing inputs or throwing an
exception of type `E` if an SQL statement is a potential vulnerability.

Composing allows user control over how the result is assembled. Most often, a
user will construct a new string from the string template, with placeholders
replaced by string representations of value list elements. These string
representations are created as if invoking [`String.valueOf(java.lang.Object)`](String.md#valueOf(java.lang.Object)).

Transforming allows the processor to return something other than a string. For
instance, a JSON processor could return a JSON object, by parsing the string created
by composition, instead of the composed string.

[`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate.Processor) is a [`FunctionalInterface`](FunctionalInterface.md "annotation interface in java.lang"). This permits
declaration of a processor using lambda expressions;

Copy![Copy snippet](../../../copy.svg)

```
Processor<String, RuntimeException> processor = st -> {
    List<String> fragments = st.fragments();
    List<Object> values = st.values();
    // check or manipulate the fragments and/or values
    ...
    return StringTemplate.interpolate(fragments, values);
};
```

The [`StringTemplate.interpolate()`](StringTemplate.md#interpolate())[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate) method is available for those processors
that just need to work with the string interpolation;

Copy![Copy snippet](../../../copy.svg)

```
Processor<String, RuntimeException> processor = StringTemplate::interpolate;
```

or simply transform the string interpolation into something other than
[`String`](String.md "class in java.lang");

Copy![Copy snippet](../../../copy.svg)

```
Processor<JSONObject, RuntimeException> jsonProcessor = st -> new JSONObject(st.interpolate());
```

Since:
:   21

See Also:
:   * [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate)
    * [`FormatProcessor`](../util/FormatProcessor.md "class in java.util")[PREVIEW](../util/FormatProcessor.md#preview-java.util.FormatProcessor)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `StringTemplate.Processor.LinkagePREVIEW`

  Preview.

  Built-in policies using this additional interface have the flexibility to
  specialize the composition of the templated string by returning a customized
  [`MethodHandle`](invoke/MethodHandle.md "class in java.lang.invoke") from [`linkage`](StringTemplate.Processor.Linkage.md#linkage(java.util.List,java.lang.invoke.MethodType))[PREVIEW](StringTemplate.Processor.Linkage.md#preview-java.lang.StringTemplate.Processor.Linkage).
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `static <T> StringTemplate.ProcessorPREVIEW<T,RuntimeException>`

  `of(Function<? super StringTemplatePREVIEW,? extends T> process)`

  This factory method can be used to create a [`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate.Processor) containing a
  [`process(java.lang.StringTemplate)`](#process(java.lang.StringTemplate)) method derived from a lambda expression.

  `R`

  `process(StringTemplatePREVIEW stringTemplate)`

  Constructs a result based on the template fragments and values in the
  supplied [`stringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate) object.

* ## Method Details

  + ### process

    [R](StringTemplate.Processor.md "type parameter in StringTemplate.Processor") process([StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate) stringTemplate)
    throws E

    Constructs a result based on the template fragments and values in the
    supplied [`stringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate) object.

    Parameters:
    :   `stringTemplate` - a [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate) instance

    Returns:
    :   constructed object of type R

    Throws:
    :   `E` - exception thrown by the template processor when validation fails
  + ### of

    static <T>
    [StringTemplate.Processor](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate.Processor)<T,[RuntimeException](RuntimeException.md "class in java.lang")> of([Function](../util/function/Function.md "interface in java.util.function")<? super [StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate),? extends T> process)

    This factory method can be used to create a [`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate.Processor) containing a
    [`process(java.lang.StringTemplate)`](#process(java.lang.StringTemplate)) method derived from a lambda expression. As an example;

    Copy![Copy snippet](../../../copy.svg)

    ```
    Processor<String, RuntimeException> mySTR = Processor.of(StringTemplate::interpolate);
    int x = 10;
    int y = 20;
    String str = mySTR."\{x} + \{y} = \{x + y}";
    ```

    The result type of the constructed [`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate.Processor) may be derived from
    the lambda expression, thus this method may be used in a var
    statement. For example, `mySTR` from above can also be declared using;

    Copy![Copy snippet](../../../copy.svg)

    ```
    var mySTR = Processor.of(StringTemplate::interpolate);
    ```

    [`RuntimeException`](RuntimeException.md "class in java.lang") is the assumed exception thrown type.

    Type Parameters:
    :   `T` - Processor's process result type

    Parameters:
    :   `process` - a function that takes a [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](StringTemplate.md#preview-java.lang.StringTemplate) as an argument
        and returns the inferred result type

    Returns:
    :   a [`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate.Processor)