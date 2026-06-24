Module [java.base](../../module-summary.md)

Package [java.lang](package-summary.md)

# Interface StringTemplate

---

public interface StringTemplate

`StringTemplate` is a preview API of the Java platform.

Programs can only use `StringTemplate` when preview features are enabled.

Preview features may be removed in a future release, or upgraded to permanent features of the Java platform.

[`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) is the run-time representation of a string template or
text block template in a template expression.

In the source code of a Java program, a string template or text block template
contains an interleaved succession of *fragment literals* and *embedded
expressions*. The [`fragments()`](#fragments()) method returns the
fragment literals, and the [`values()`](#values()) method returns the
results of evaluating the embedded expressions. [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) does not
provide access to the source code of the embedded expressions themselves; it is
not a compile-time representation of a string template or text block template.

[`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) is primarily used in conjunction with a template processor
to produce a string or other meaningful value. Evaluation of a template expression
first produces an instance of [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate), representing the right hand side
of the template expression, and then passes the instance to the template processor
given by the template expression.

For example, the following code contains a template expression that uses the template
processor `RAW`, which simply yields the [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) passed to it:

Copy![Copy snippet](../../../copy.svg)

```
int x = 10;
int y = 20;
StringTemplate st = RAW."\{x} + \{y} = \{x + y}";
List<String> fragments = st.fragments();
List<Object> values = st.values();
```

`fragments` will be equivalent to `List.of("", " + ", " = ", "")`,
which includes the empty first and last fragments. `values` will be the
equivalent of `List.of(10, 20, 30)`.

The following code contains a template expression with the same template but with a
different template processor, `STR`:

Copy![Copy snippet](../../../copy.svg)

```
int x = 10;
int y = 20;
String s = STR."\{x} + \{y} = \{x + y}";
```

When the template expression is evaluated, an instance of [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) is
produced that returns the same lists from [`fragments()`](#fragments()) and
[`values()`](#values()) as shown above. The [`STR`](#STR) template
processor uses these lists to yield an interpolated string. The value of `s` will
be equivalent to `"10 + 20 = 30"`.

The `interpolate()` method provides a direct way to perform string interpolation
of a [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate). Template processors can use the following code pattern:

Copy![Copy snippet](../../../copy.svg)

```
List<String> fragments = st.fragments();
List<Object> values    = st.values();
... check or manipulate the fragments and/or values ...
String result = StringTemplate.interpolate(fragments, values);
```

The [`process(Processor)`](#process(java.lang.StringTemplate.Processor)) method, in conjunction with
the [`RAW`](#RAW) processor, may be used to defer processing of a
[`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

Copy![Copy snippet](../../../copy.svg)

```
StringTemplate st = RAW."\{x} + \{y} = \{x + y}";
...other steps...
String result = st.process(STR);
```

The factory methods [`of(String)`](#of(java.lang.String)) and
[`of(List, List)`](#of(java.util.List,java.util.List)) can be used to construct a [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

Since:
:   21

See Also:
:   * [`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor)
    * [`FormatProcessor`](../util/FormatProcessor.md "class in java.util")[PREVIEW](../util/FormatProcessor.md#preview-java.util.FormatProcessor)

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static interface`

  `StringTemplate.ProcessorPREVIEW<R,E extends Throwable>`

  Preview.

  This interface describes the methods provided by a generalized string template processor.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final StringTemplate.ProcessorPREVIEW<StringTemplatePREVIEW,RuntimeException>`

  `RAW`

  This [`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor) instance is conventionally used to indicate that the
  processing of the [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) is to be deferred to a later time.

  `static final StringTemplate.ProcessorPREVIEW<String,RuntimeException>`

  `STR`

  This [`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor) instance is conventionally used for the string interpolation
  of a supplied [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsDefault Methods

  Modifier and Type

  Method

  Description

  `static StringTemplatePREVIEW`

  `combine(StringTemplatePREVIEW... stringTemplates)`

  Combine zero or more [`StringTemplates`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) into a single
  [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

  `static StringTemplatePREVIEW`

  `combine(List<StringTemplatePREVIEW> stringTemplates)`

  Combine a list of [`StringTemplates`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) into a single
  [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

  `List<String>`

  `fragments()`

  Returns a list of fragment literals for this [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

  `default String`

  `interpolate()`

  Returns the string interpolation of the fragments and values for this
  [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

  `static String`

  `interpolate(List<String> fragments,
  List<?> values)`

  Creates a string that interleaves the elements of values between the
  elements of fragments.

  `static StringTemplatePREVIEW`

  `of(String string)`

  Returns a [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) as if constructed by invoking
  `StringTemplate.of(List.of(string), List.of())`.

  `static StringTemplatePREVIEW`

  `of(List<String> fragments,
  List<?> values)`

  Returns a StringTemplate with the given fragments and values.

  `default <R,
  E extends Throwable>  
  R`

  `process(StringTemplate.ProcessorPREVIEW<? extends R,? extends E> processor)`

  Returns the result of applying the specified processor to this [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

  `static String`

  `toString(StringTemplatePREVIEW stringTemplate)`

  Produces a diagnostic string that describes the fragments and values of the supplied
  [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

  `List<Object>`

  `values()`

  Returns a list of embedded expression results for this [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

* ## Field Details

  + ### STR

    static final [StringTemplate.Processor](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor)<[String](String.md "class in java.lang"),[RuntimeException](RuntimeException.md "class in java.lang")> STR

    This [`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor) instance is conventionally used for the string interpolation
    of a supplied [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

    For better visibility and when practical, it is recommended that users use the
    [`STR`](#STR) processor instead of invoking the
    [`interpolate()`](#interpolate()) method.
    Example:

    Copy![Copy snippet](../../../copy.svg)

    ```
    int x = 10;
    int y = 20;
    String result = STR."\{x} + \{y} = \{x + y}";
    ```

    In the above example, the value of `result` will be `"10 + 20 = 30"`. This is
    produced by the interleaving concatenation of fragments and values from the supplied
    [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate). To accommodate concatenation, values are converted to strings
    as if invoking [`String.valueOf(Object)`](String.md#valueOf(java.lang.Object)).
  + ### RAW

    static final [StringTemplate.Processor](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor)<[StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate),[RuntimeException](RuntimeException.md "class in java.lang")> RAW

    This [`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor) instance is conventionally used to indicate that the
    processing of the [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) is to be deferred to a later time. Deferred
    processing can be resumed by invoking the
    [`process(Processor)`](#process(java.lang.StringTemplate.Processor)) or
    [`StringTemplate.Processor.process(StringTemplate)`](StringTemplate.Processor.md#process(java.lang.StringTemplate))[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor) methods.

    Copy![Copy snippet](../../../copy.svg)

    ```
    import static java.lang.StringTemplate.RAW;
    ...
    StringTemplate st = RAW."\{x} + \{y} = \{x + y}";
    ...other steps...
    String result = STR.process(st);
    ```
* ## Method Details

  + ### fragments

    [List](../util/List.md "interface in java.util")<[String](String.md "class in java.lang")> fragments()

    Returns a list of fragment literals for this [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).
    The fragment literals are the character sequences preceding each of the embedded
    expressions in source code, plus the character sequence following the last
    embedded expression. Such character sequences may be zero-length if an embedded
    expression appears at the beginning or end of a template, or if two embedded
    expressions are directly adjacent in a template.
    In the example:

    Copy![Copy snippet](../../../copy.svg)

    ```
    String student = "Mary";
    String teacher = "Johnson";
    StringTemplate st = RAW."The student \{student} is in \{teacher}'s classroom.";
    List<String> fragments = st.fragments();
    ```

    `fragments` will be equivalent to
    `List.of("The student ", " is in ", "'s classroom.")`

    Returns:
    :   list of string fragments
  + ### values

    [List](../util/List.md "interface in java.util")<[Object](Object.md "class in java.lang")> values()

    Returns a list of embedded expression results for this [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).
    In the example:

    Copy![Copy snippet](../../../copy.svg)

    ```
    String student = "Mary";
    String teacher = "Johnson";
    StringTemplate st = RAW."The student \{student} is in \{teacher}'s classroom.";
    List<Object> values = st.values();
    ```

    `values` will be equivalent to `List.of(student, teacher)`

    Returns:
    :   list of expression values
  + ### interpolate

    default [String](String.md "class in java.lang") interpolate()

    Returns the string interpolation of the fragments and values for this
    [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

    Returns:
    :   interpolation of this [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate)
  + ### process

    default <R,
    E extends [Throwable](Throwable.md "class in java.lang")> R process([StringTemplate.Processor](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor)<? extends R,? extends E> processor)
    throws E

    Returns the result of applying the specified processor to this [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).
    This method can be used as an alternative to string template expressions. For example,

    Copy![Copy snippet](../../../copy.svg)

    ```
    String student = "Mary";
    String teacher = "Johnson";
    String result1 = STR."The student \{student} is in \{teacher}'s classroom.";
    String result2 = RAW."The student \{student} is in \{teacher}'s classroom.".process(STR);
    ```

    Produces an equivalent result for both `result1` and `result2`.

    Type Parameters:
    :   `R` - Processor's process result type.
    :   `E` - Exception thrown type.

    Parameters:
    :   `processor` - the [`StringTemplate.Processor`](StringTemplate.Processor.md "interface in java.lang")[PREVIEW](StringTemplate.Processor.md#preview-java.lang.StringTemplate.Processor) instance to process

    Returns:
    :   constructed object of type `R`

    Throws:
    :   `E` - exception thrown by the template processor when validation fails
    :   `NullPointerException` - if processor is null
  + ### toString

    static [String](String.md "class in java.lang") toString([StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) stringTemplate)

    Produces a diagnostic string that describes the fragments and values of the supplied
    [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

    Parameters:
    :   `stringTemplate` - the [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) to represent

    Returns:
    :   diagnostic string representing the supplied string template

    Throws:
    :   `NullPointerException` - if stringTemplate is null
  + ### of

    static [StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) of([String](String.md "class in java.lang") string)

    Returns a [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) as if constructed by invoking
    `StringTemplate.of(List.of(string), List.of())`. That is, a [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate)
    with one fragment and no values.

    Parameters:
    :   `string` - single string fragment

    Returns:
    :   StringTemplate composed from string

    Throws:
    :   `NullPointerException` - if string is null
  + ### of

    static [StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) of([List](../util/List.md "interface in java.util")<[String](String.md "class in java.lang")> fragments,
    [List](../util/List.md "interface in java.util")<?> values)

    Returns a StringTemplate with the given fragments and values.

    Parameters:
    :   `fragments` - list of string fragments
    :   `values` - list of expression values

    Returns:
    :   StringTemplate composed from string

    Throws:
    :   `IllegalArgumentException` - if fragments list size is not one more
        than values list size
    :   `NullPointerException` - if fragments is null or values is null or if any fragment is null.
  + ### interpolate

    static [String](String.md "class in java.lang") interpolate([List](../util/List.md "interface in java.util")<[String](String.md "class in java.lang")> fragments,
    [List](../util/List.md "interface in java.util")<?> values)

    Creates a string that interleaves the elements of values between the
    elements of fragments. To accommodate interpolation, values are converted to strings
    as if invoking [`String.valueOf(Object)`](String.md#valueOf(java.lang.Object)).

    Parameters:
    :   `fragments` - list of String fragments
    :   `values` - list of expression values

    Returns:
    :   String interpolation of fragments and values

    Throws:
    :   `IllegalArgumentException` - if fragments list size is not one more
        than values list size
    :   `NullPointerException` - fragments or values is null or if any of the fragments is null
  + ### combine

    static [StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) combine([StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate)... stringTemplates)

    Combine zero or more [`StringTemplates`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) into a single
    [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

    Copy![Copy snippet](../../../copy.svg)

    ```
    StringTemplate st = StringTemplate.combine(RAW."\{a}", RAW."\{b}", RAW."\{c}");
    assert st.interpolate().equals(STR."\{a}\{b}\{c}");
    ```

    Fragment lists from the [`StringTemplates`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) are combined end to
    end with the last fragment from each [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) concatenated with the
    first fragment of the next. To demonstrate, if we were to take two strings and we
    combined them as follows:

    Copy![Copy snippet](../../../copy.svg)

    ```
    String s1 = "abc";
    String s2 = "xyz";
    String sc = s1 + s2;
    assert Objects.equals(sc, "abcxyz");
    ```

    the last character `"c"` from the first string is juxtaposed with the first
    character `"x"` of the second string. The same would be true of combining
    [`StringTemplates`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

    Copy![Copy snippet](../../../copy.svg)

    ```
    StringTemplate st1 = RAW."a\{}b\{}c";
    StringTemplate st2 = RAW."x\{}y\{}z";
    StringTemplate st3 = RAW."a\{}b\{}cx\{}y\{}z";
    StringTemplate stc = StringTemplate.combine(st1, st2);

    assert Objects.equals(st1.fragments(), List.of("a", "b", "c"));
    assert Objects.equals(st2.fragments(), List.of("x", "y", "z"));
    assert Objects.equals(st3.fragments(), List.of("a", "b", "cx", "y", "z"));
    assert Objects.equals(stc.fragments(), List.of("a", "b", "cx", "y", "z"));
    ```

    Values lists are simply concatenated to produce a single values list.
    The result is a well-formed [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) with n+1 fragments and n values, where
    n is the total of number of values across all the supplied
    [`StringTemplates`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

    Parameters:
    :   `stringTemplates` - zero or more [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate)

    Returns:
    :   combined [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate)

    Throws:
    :   `NullPointerException` - if stringTemplates is null or if any of the
        `stringTemplates` are null
  + ### combine

    static [StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) combine([List](../util/List.md "interface in java.util")<[StringTemplate](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate)> stringTemplates)

    Combine a list of [`StringTemplates`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) into a single
    [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

    Copy![Copy snippet](../../../copy.svg)

    ```
    StringTemplate st = StringTemplate.combine(List.of(RAW."\{a}", RAW."\{b}", RAW."\{c}"));
    assert st.interpolate().equals(STR."\{a}\{b}\{c}");
    ```

    Fragment lists from the [`StringTemplates`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) are combined end to
    end with the last fragment from each [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) concatenated with the
    first fragment of the next. To demonstrate, if we were to take two strings and we
    combined them as follows:

    Copy![Copy snippet](../../../copy.svg)

    ```
    String s1 = "abc";
    String s2 = "xyz";
    String sc = s1 + s2;
    assert Objects.equals(sc, "abcxyz");
    ```

    the last character `"c"` from the first string is juxtaposed with the first
    character `"x"` of the second string. The same would be true of combining
    [`StringTemplates`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

    Copy![Copy snippet](../../../copy.svg)

    ```
    StringTemplate st1 = RAW."a\{}b\{}c";
    StringTemplate st2 = RAW."x\{}y\{}z";
    StringTemplate st3 = RAW."a\{}b\{}cx\{}y\{}z";
    StringTemplate stc = StringTemplate.combine(List.of(st1, st2));

    assert Objects.equals(st1.fragments(), List.of("a", "b", "c"));
    assert Objects.equals(st2.fragments(), List.of("x", "y", "z"));
    assert Objects.equals(st3.fragments(), List.of("a", "b", "cx", "y", "z"));
    assert Objects.equals(stc.fragments(), List.of("a", "b", "cx", "y", "z"));
    ```

    Values lists are simply concatenated to produce a single values list.
    The result is a well-formed [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate) with n+1 fragments and n values, where
    n is the total of number of values across all the supplied
    [`StringTemplates`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate).

    Parameters:
    :   `stringTemplates` - list of [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate)

    Returns:
    :   combined [`StringTemplate`](StringTemplate.md "interface in java.lang")[PREVIEW](#preview-java.lang.StringTemplate)

    Throws:
    :   `NullPointerException` - if stringTemplates is null or if any of the
        its elements are null