Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class Dialog.ModalExclusionType

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Dialog.ModalExclusionType](Dialog.ModalExclusionType.md "enum class in java.awt")>

java.awt.Dialog.ModalExclusionType

All Implemented Interfaces:
:   `Serializable`, `Comparable<Dialog.ModalExclusionType>`, `Constable`

Enclosing class:
:   `Dialog`

---

public static enum Dialog.ModalExclusionType
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Dialog.ModalExclusionType](Dialog.ModalExclusionType.md "enum class in java.awt")>

Any top-level window can be marked not to be blocked by modal
dialogs. This is called "modal exclusion". This enum specifies
the possible modal exclusion types.

Since:
:   1.6

See Also:
:   * [`Window.getModalExclusionType()`](Window.md#getModalExclusionType())
    * [`Window.setModalExclusionType(java.awt.Dialog.ModalExclusionType)`](Window.md#setModalExclusionType(java.awt.Dialog.ModalExclusionType))
    * [`Toolkit.isModalExclusionTypeSupported(java.awt.Dialog.ModalExclusionType)`](Toolkit.md#isModalExclusionTypeSupported(java.awt.Dialog.ModalExclusionType))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `APPLICATION_EXCLUDE`

  `APPLICATION_EXCLUDE` indicates that a top-level window
  won't be blocked by any application-modal dialogs.

  `NO_EXCLUDE`

  No modal exclusion.

  `TOOLKIT_EXCLUDE`

  `TOOLKIT_EXCLUDE` indicates that a top-level window
  won't be blocked by application-modal or toolkit-modal dialogs.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Dialog.ModalExclusionType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Dialog.ModalExclusionType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### NO\_EXCLUDE

    public static final [Dialog.ModalExclusionType](Dialog.ModalExclusionType.md "enum class in java.awt") NO\_EXCLUDE

    No modal exclusion.
  + ### APPLICATION\_EXCLUDE

    public static final [Dialog.ModalExclusionType](Dialog.ModalExclusionType.md "enum class in java.awt") APPLICATION\_EXCLUDE

    `APPLICATION_EXCLUDE` indicates that a top-level window
    won't be blocked by any application-modal dialogs. Also, it isn't
    blocked by document-modal dialogs from outside of its child hierarchy.
  + ### TOOLKIT\_EXCLUDE

    public static final [Dialog.ModalExclusionType](Dialog.ModalExclusionType.md "enum class in java.awt") TOOLKIT\_EXCLUDE

    `TOOLKIT_EXCLUDE` indicates that a top-level window
    won't be blocked by application-modal or toolkit-modal dialogs. Also,
    it isn't blocked by document-modal dialogs from outside of its
    child hierarchy.
    The "toolkitModality" `AWTPermission` must be granted
    for this exclusion. If an exclusion property is being changed to
    `TOOLKIT_EXCLUDE` and this permission is not granted, a
    `SecurityException` will be thrown, and the exclusion
    property will be left unchanged.
* ## Method Details

  + ### values

    public static [Dialog.ModalExclusionType](Dialog.ModalExclusionType.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Dialog.ModalExclusionType](Dialog.ModalExclusionType.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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