Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class Component.BaselineResizeBehavior

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Component.BaselineResizeBehavior](Component.BaselineResizeBehavior.md "enum class in java.awt")>

java.awt.Component.BaselineResizeBehavior

All Implemented Interfaces:
:   `Serializable`, `Comparable<Component.BaselineResizeBehavior>`, `Constable`

Enclosing class:
:   `Component`

---

public static enum Component.BaselineResizeBehavior
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Component.BaselineResizeBehavior](Component.BaselineResizeBehavior.md "enum class in java.awt")>

Enumeration of the common ways the baseline of a component can
change as the size changes. The baseline resize behavior is
primarily for layout managers that need to know how the
position of the baseline changes as the component size changes.
In general the baseline resize behavior will be valid for sizes
greater than or equal to the minimum size (the actual minimum
size; not a developer specified minimum size). For sizes
smaller than the minimum size the baseline may change in a way
other than the baseline resize behavior indicates. Similarly,
as the size approaches `Integer.MAX_VALUE` and/or
`Short.MAX_VALUE` the baseline may change in a way
other than the baseline resize behavior indicates.

Since:
:   1.6

See Also:
:   * [`Component.getBaselineResizeBehavior()`](Component.md#getBaselineResizeBehavior())
    * [`Component.getBaseline(int,int)`](Component.md#getBaseline(int,int))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `CENTER_OFFSET`

  Indicates the baseline remains a fixed distance from
  the center of the component.

  `CONSTANT_ASCENT`

  Indicates the baseline remains fixed relative to the
  y-origin.

  `CONSTANT_DESCENT`

  Indicates the baseline remains fixed relative to the height
  and does not change as the width is varied.

  `OTHER`

  Indicates the baseline resize behavior can not be expressed using
  any of the other constants.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Component.BaselineResizeBehavior`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Component.BaselineResizeBehavior[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### CONSTANT\_ASCENT

    public static final [Component.BaselineResizeBehavior](Component.BaselineResizeBehavior.md "enum class in java.awt") CONSTANT\_ASCENT

    Indicates the baseline remains fixed relative to the
    y-origin. That is, `getBaseline` returns
    the same value regardless of the height or width. For example, a
    `JLabel` containing non-empty text with a
    vertical alignment of `TOP` should have a
    baseline type of `CONSTANT_ASCENT`.
  + ### CONSTANT\_DESCENT

    public static final [Component.BaselineResizeBehavior](Component.BaselineResizeBehavior.md "enum class in java.awt") CONSTANT\_DESCENT

    Indicates the baseline remains fixed relative to the height
    and does not change as the width is varied. That is, for
    any height H the difference between H and
    `getBaseline(w, H)` is the same. For example, a
    `JLabel` containing non-empty text with a
    vertical alignment of `BOTTOM` should have a
    baseline type of `CONSTANT_DESCENT`.
  + ### CENTER\_OFFSET

    public static final [Component.BaselineResizeBehavior](Component.BaselineResizeBehavior.md "enum class in java.awt") CENTER\_OFFSET

    Indicates the baseline remains a fixed distance from
    the center of the component. That is, for any height H the
    difference between `getBaseline(w, H)` and
    `H / 2` is the same (plus or minus one depending upon
    rounding error).

    Because of possible rounding errors it is recommended
    you ask for the baseline with two consecutive heights and use
    the return value to determine if you need to pad calculations
    by 1. The following shows how to calculate the baseline for
    any height:

    ```
       Dimension preferredSize = component.getPreferredSize();
       int baseline = getBaseline(preferredSize.width,
                                  preferredSize.height);
       int nextBaseline = getBaseline(preferredSize.width,
                                      preferredSize.height + 1);
       // Amount to add to height when calculating where baseline
       // lands for a particular height:
       int padding = 0;
       // Where the baseline is relative to the mid point
       int baselineOffset = baseline - height / 2;
       if (preferredSize.height % 2 == 0 &&
           baseline != nextBaseline) {
           padding = 1;
       }
       else if (preferredSize.height % 2 == 1 &&
                baseline == nextBaseline) {
           baselineOffset--;
           padding = 1;
       }
       // The following calculates where the baseline lands for
       // the height z:
       int calculatedBaseline = (z + padding) / 2 + baselineOffset;
    ```
  + ### OTHER

    public static final [Component.BaselineResizeBehavior](Component.BaselineResizeBehavior.md "enum class in java.awt") OTHER

    Indicates the baseline resize behavior can not be expressed using
    any of the other constants. This may also indicate the baseline
    varies with the width of the component. This is also returned
    by components that do not have a baseline.
* ## Method Details

  + ### values

    public static [Component.BaselineResizeBehavior](Component.BaselineResizeBehavior.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Component.BaselineResizeBehavior](Component.BaselineResizeBehavior.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Returns the enum constant of this class with the specified name.
    The string must match *exactly* an identifier used to declare an
    enum constant in this class. (Extraneous whitespace characters are
    not permitted.)

    Parameters:
    :   `name` - the name of the enum constant to be returned.

    Returns:
    :   the enum constant with the specified name

    Throws:
    :   `IllegalArgumentException` - if this enum class has no constant with the specified name
    :   `NullPointerException` - if the argument is null