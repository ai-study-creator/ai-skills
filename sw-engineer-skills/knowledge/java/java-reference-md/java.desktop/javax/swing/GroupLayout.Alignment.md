Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Enum Class GroupLayout.Alignment

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[GroupLayout.Alignment](GroupLayout.Alignment.md "enum class in javax.swing")>

javax.swing.GroupLayout.Alignment

All Implemented Interfaces:
:   `Serializable`, `Comparable<GroupLayout.Alignment>`, `Constable`

Enclosing class:
:   `GroupLayout`

---

public static enum GroupLayout.Alignment
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[GroupLayout.Alignment](GroupLayout.Alignment.md "enum class in javax.swing")>

Enumeration of the possible ways `ParallelGroup` can align
its children.

Since:
:   1.6

See Also:
:   * [`GroupLayout.createParallelGroup(Alignment)`](GroupLayout.md#createParallelGroup(javax.swing.GroupLayout.Alignment))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `BASELINE`

  Indicates the elements should be aligned along
  their baseline.

  `CENTER`

  Indicates the elements should be centered in
  the region.

  `LEADING`

  Indicates the elements should be
  aligned to the origin.

  `TRAILING`

  Indicates the elements should be aligned to the end of the
  region.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static GroupLayout.Alignment`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static GroupLayout.Alignment[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### LEADING

    public static final [GroupLayout.Alignment](GroupLayout.Alignment.md "enum class in javax.swing") LEADING

    Indicates the elements should be
    aligned to the origin. For the horizontal axis with a left to
    right orientation this means aligned to the left edge. For the
    vertical axis leading means aligned to the top edge.

    See Also:
    :   - [`GroupLayout.createParallelGroup(Alignment)`](GroupLayout.md#createParallelGroup(javax.swing.GroupLayout.Alignment))
  + ### TRAILING

    public static final [GroupLayout.Alignment](GroupLayout.Alignment.md "enum class in javax.swing") TRAILING

    Indicates the elements should be aligned to the end of the
    region. For the horizontal axis with a left to right
    orientation this means aligned to the right edge. For the
    vertical axis trailing means aligned to the bottom edge.

    See Also:
    :   - [`GroupLayout.createParallelGroup(Alignment)`](GroupLayout.md#createParallelGroup(javax.swing.GroupLayout.Alignment))
  + ### CENTER

    public static final [GroupLayout.Alignment](GroupLayout.Alignment.md "enum class in javax.swing") CENTER

    Indicates the elements should be centered in
    the region.

    See Also:
    :   - [`GroupLayout.createParallelGroup(Alignment)`](GroupLayout.md#createParallelGroup(javax.swing.GroupLayout.Alignment))
  + ### BASELINE

    public static final [GroupLayout.Alignment](GroupLayout.Alignment.md "enum class in javax.swing") BASELINE

    Indicates the elements should be aligned along
    their baseline.

    See Also:
    :   - [`GroupLayout.createParallelGroup(Alignment)`](GroupLayout.md#createParallelGroup(javax.swing.GroupLayout.Alignment))
        - [`GroupLayout.createBaselineGroup(boolean,boolean)`](GroupLayout.md#createBaselineGroup(boolean,boolean))
* ## Method Details

  + ### values

    public static [GroupLayout.Alignment](GroupLayout.Alignment.md "enum class in javax.swing")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [GroupLayout.Alignment](GroupLayout.Alignment.md "enum class in javax.swing") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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