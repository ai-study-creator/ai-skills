Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class FormattableFlags

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.FormattableFlags

---

public class FormattableFlags
extends [Object](../lang/Object.md "class in java.lang")

FormattableFlags are passed to the [`Formattable.formatTo()`](Formattable.md#formatTo(java.util.Formatter,int,int,int)) method and modify the output format for [Formattables](Formattable.md "interface in java.util"). Implementations of [`Formattable`](Formattable.md "interface in java.util") are
responsible for interpreting and validating any flags.

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ALTERNATE`

  Requires the output to use an alternate form.

  `static final int`

  `LEFT_JUSTIFY`

  Left-justifies the output.

  `static final int`

  `UPPERCASE`

  Converts the output to upper case according to the rules of the
  [locale](Locale.md "class in java.util") given during creation of the
  `formatter` argument of the [`formatTo()`](Formattable.md#formatTo(java.util.Formatter,int,int,int)) method.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### LEFT\_JUSTIFY

    public static final int LEFT\_JUSTIFY

    Left-justifies the output. Spaces (`'\u0020'`) will be added
    at the end of the converted value as required to fill the minimum width
    of the field. If this flag is not set then the output will be
    right-justified.

    This flag corresponds to `'-'` (`'\u002d'`) in
    the format specifier.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.FormattableFlags.LEFT_JUSTIFY)
  + ### UPPERCASE

    public static final int UPPERCASE

    Converts the output to upper case according to the rules of the
    [locale](Locale.md "class in java.util") given during creation of the
    `formatter` argument of the [`formatTo()`](Formattable.md#formatTo(java.util.Formatter,int,int,int)) method. The output should be equivalent the following
    invocation of [`String.toUpperCase(java.util.Locale)`](../lang/String.md#toUpperCase(java.util.Locale))

    ```
         out.toUpperCase()
    ```

    This flag corresponds to `'S'` (`'\u0053'`) in
    the format specifier.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.FormattableFlags.UPPERCASE)
  + ### ALTERNATE

    public static final int ALTERNATE

    Requires the output to use an alternate form. The definition of the
    form is specified by the `Formattable`.

    This flag corresponds to `'#'` (`'\u0023'`) in
    the format specifier.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#java.util.FormattableFlags.ALTERNATE)