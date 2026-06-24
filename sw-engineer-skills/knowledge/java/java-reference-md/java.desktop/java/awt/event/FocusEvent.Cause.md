Module [java.desktop](../../../module-summary.md)

Package [java.awt.event](package-summary.md)

# Enum Class FocusEvent.Cause

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event")>

java.awt.event.FocusEvent.Cause

All Implemented Interfaces:
:   `Serializable`, `Comparable<FocusEvent.Cause>`, `Constable`

Enclosing class:
:   `FocusEvent`

---

public static enum FocusEvent.Cause
extends [Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")<[FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event")>

This enum represents the cause of a `FocusEvent`- the reason why it
occurred. Possible reasons include mouse events, keyboard focus
traversal, window activation.
If no cause is provided then the reason is `UNKNOWN`.

Since:
:   9

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `ACTIVATION`

  An activation of a toplevel window.

  `CLEAR_GLOBAL_FOCUS_OWNER`

  Clearing global focus owner.

  `MOUSE_EVENT`

  An activating mouse event.

  `ROLLBACK`

  Restoring focus after a focus request has been rejected.

  `TRAVERSAL`

  A focus traversal action with unspecified direction.

  `TRAVERSAL_BACKWARD`

  A backward focus traversal action.

  `TRAVERSAL_DOWN`

  A down-cycle focus traversal action.

  `TRAVERSAL_FORWARD`

  A forward focus traversal action.

  `TRAVERSAL_UP`

  An up-cycle focus traversal action.

  `UNEXPECTED`

  A system action causing an unexpected focus change.

  `UNKNOWN`

  The default value.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static FocusEvent.Cause`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static FocusEvent.Cause[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### UNKNOWN

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") UNKNOWN

    The default value.
  + ### MOUSE\_EVENT

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") MOUSE\_EVENT

    An activating mouse event.
  + ### TRAVERSAL

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") TRAVERSAL

    A focus traversal action with unspecified direction.
  + ### TRAVERSAL\_UP

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") TRAVERSAL\_UP

    An up-cycle focus traversal action.
  + ### TRAVERSAL\_DOWN

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") TRAVERSAL\_DOWN

    A down-cycle focus traversal action.
  + ### TRAVERSAL\_FORWARD

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") TRAVERSAL\_FORWARD

    A forward focus traversal action.
  + ### TRAVERSAL\_BACKWARD

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") TRAVERSAL\_BACKWARD

    A backward focus traversal action.
  + ### ROLLBACK

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") ROLLBACK

    Restoring focus after a focus request has been rejected.
  + ### UNEXPECTED

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") UNEXPECTED

    A system action causing an unexpected focus change.
  + ### ACTIVATION

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") ACTIVATION

    An activation of a toplevel window.
  + ### CLEAR\_GLOBAL\_FOCUS\_OWNER

    public static final [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") CLEAR\_GLOBAL\_FOCUS\_OWNER

    Clearing global focus owner.
* ## Method Details

  + ### values

    public static [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [FocusEvent.Cause](FocusEvent.Cause.md "enum class in java.awt.event") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

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