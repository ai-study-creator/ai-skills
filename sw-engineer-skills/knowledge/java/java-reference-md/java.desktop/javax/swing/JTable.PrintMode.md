Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Enum Class JTable.PrintMode

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[JTable.PrintMode](JTable.PrintMode.md "enum class in javax.swing")>

javax.swing.JTable.PrintMode

All Implemented Interfaces:
:   `Serializable`, `Comparable<JTable.PrintMode>`, `Constable`

Enclosing class:
:   `JTable`

---

public static enum JTable.PrintMode
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[JTable.PrintMode](JTable.PrintMode.md "enum class in javax.swing")>

Printing modes, used in printing `JTable`s.

Since:
:   1.5

See Also:
:   * [`JTable.print(JTable.PrintMode, MessageFormat, MessageFormat, boolean, PrintRequestAttributeSet, boolean)`](JTable.md#print(javax.swing.JTable.PrintMode,java.text.MessageFormat,java.text.MessageFormat,boolean,javax.print.attribute.PrintRequestAttributeSet,boolean))
    * [`JTable.getPrintable(javax.swing.JTable.PrintMode, java.text.MessageFormat, java.text.MessageFormat)`](JTable.md#getPrintable(javax.swing.JTable.PrintMode,java.text.MessageFormat,java.text.MessageFormat))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `FIT_WIDTH`

  Printing mode that scales the output smaller, if necessary,
  to fit the table's entire width (and thereby all columns) on each page;
  Rows are spread across multiple pages as necessary.

  `NORMAL`

  Printing mode that prints the table at its current size,
  spreading both columns and rows across multiple pages if necessary.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static JTable.PrintMode`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static JTable.PrintMode[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NORMAL

    public static final [JTable.PrintMode](JTable.PrintMode.md "enum class in javax.swing") NORMAL

    Printing mode that prints the table at its current size,
    spreading both columns and rows across multiple pages if necessary.
  + ### FIT\_WIDTH

    public static final [JTable.PrintMode](JTable.PrintMode.md "enum class in javax.swing") FIT\_WIDTH

    Printing mode that scales the output smaller, if necessary,
    to fit the table's entire width (and thereby all columns) on each page;
    Rows are spread across multiple pages as necessary.
* ## Method Details

  + ### values

    public static [JTable.PrintMode](JTable.PrintMode.md "enum class in javax.swing")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [JTable.PrintMode](JTable.PrintMode.md "enum class in javax.swing") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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