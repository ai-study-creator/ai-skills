Module [java.desktop](../../module-summary.md)

Package [javax.swing](package-summary.md)

# Enum Class SwingWorker.StateValue

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[SwingWorker.StateValue](SwingWorker.StateValue.md "enum class in javax.swing")>

javax.swing.SwingWorker.StateValue

All Implemented Interfaces:
:   `Serializable`, `Comparable<SwingWorker.StateValue>`, `Constable`

Enclosing class:
:   `SwingWorker<T,V>`

---

public static enum SwingWorker.StateValue
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[SwingWorker.StateValue](SwingWorker.StateValue.md "enum class in javax.swing")>

Values for the `state` bound property.

Since:
:   1.6

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `DONE`

  `SwingWorker` is `DONE`
  after `doInBackground` method
  is finished.

  `PENDING`

  Initial `SwingWorker` state.

  `STARTED`

  `SwingWorker` is `STARTED`
  before invoking `doInBackground`.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static SwingWorker.StateValue`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static SwingWorker.StateValue[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### PENDING

    public static final [SwingWorker.StateValue](SwingWorker.StateValue.md "enum class in javax.swing") PENDING

    Initial `SwingWorker` state.
  + ### STARTED

    public static final [SwingWorker.StateValue](SwingWorker.StateValue.md "enum class in javax.swing") STARTED

    `SwingWorker` is `STARTED`
    before invoking `doInBackground`.
  + ### DONE

    public static final [SwingWorker.StateValue](SwingWorker.StateValue.md "enum class in javax.swing") DONE

    `SwingWorker` is `DONE`
    after `doInBackground` method
    is finished.
* ## Method Details

  + ### values

    public static [SwingWorker.StateValue](SwingWorker.StateValue.md "enum class in javax.swing")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [SwingWorker.StateValue](SwingWorker.StateValue.md "enum class in javax.swing") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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