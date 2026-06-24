Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Enum Class LayoutStyle.ComponentPlacement

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing")>

javax.swing.LayoutStyle.ComponentPlacement

All Implemented Interfaces:
:   `Serializable`, `Comparable<LayoutStyle.ComponentPlacement>`, `Constable`

Enclosing class:
:   `LayoutStyle`

---

public static enum LayoutStyle.ComponentPlacement
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing")>

`ComponentPlacement` is an enumeration of the
possible ways two components can be placed relative to each
other. `ComponentPlacement` is used by the
`LayoutStyle` method `getPreferredGap`. Refer to
`LayoutStyle` for more information.

Since:
:   1.6

See Also:
:   * [`LayoutStyle.getPreferredGap(JComponent,JComponent, ComponentPlacement,int,Container)`](LayoutStyle.md#getPreferredGap(javax.swing.JComponent,javax.swing.JComponent,javax.swing.LayoutStyle.ComponentPlacement,int,java.awt.Container))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `INDENT`

  Enumeration value indicating the distance to indent a component
  is being requested.

  `RELATED`

  Enumeration value indicating the two components are
  visually related and will be placed in the same parent.

  `UNRELATED`

  Enumeration value indicating the two components are
  visually unrelated and will be placed in the same parent.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static LayoutStyle.ComponentPlacement`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static LayoutStyle.ComponentPlacement[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### RELATED

    public static final [LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing") RELATED

    Enumeration value indicating the two components are
    visually related and will be placed in the same parent.
    For example, a `JLabel` providing a label for a
    `JTextField` is typically visually associated
    with the `JTextField`; the constant `RELATED`
    is used for this.
  + ### UNRELATED

    public static final [LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing") UNRELATED

    Enumeration value indicating the two components are
    visually unrelated and will be placed in the same parent.
    For example, groupings of components are usually visually
    separated; the constant `UNRELATED` is used for this.
  + ### INDENT

    public static final [LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing") INDENT

    Enumeration value indicating the distance to indent a component
    is being requested. For example, often times the children of
    a label will be horizontally indented from the label. To determine
    the preferred distance for such a gap use the
    `INDENT` type.

    This value is typically only useful with a direction of
    `EAST` or `WEST`.
* ## Method Details

  + ### values

    public static [LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [LayoutStyle.ComponentPlacement](LayoutStyle.ComponentPlacement.md "enum class in javax.swing") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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