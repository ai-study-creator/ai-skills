Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Enum Class Dialog.ModalityType

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt")>

java.awt.Dialog.ModalityType

All Implemented Interfaces:
:   `Serializable`, `Comparable<Dialog.ModalityType>`, `Constable`

Enclosing class:
:   `Dialog`

---

public static enum Dialog.ModalityType
extends [Enum](../../../java.base/java/lang/Enum.md "class in java.lang")<[Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt")>

Modal dialogs block all input to some top-level windows.
Whether a particular window is blocked depends on dialog's type
of modality; this is called the "scope of blocking". The
`ModalityType` enum specifies modal types and their
associated scopes.

Since:
:   1.6

See Also:
:   * [`Dialog.getModalityType()`](Dialog.md#getModalityType())
    * [`Dialog.setModalityType(java.awt.Dialog.ModalityType)`](Dialog.md#setModalityType(java.awt.Dialog.ModalityType))
    * [`Toolkit.isModalityTypeSupported(java.awt.Dialog.ModalityType)`](Toolkit.md#isModalityTypeSupported(java.awt.Dialog.ModalityType))

* ## Nested Class Summary

  ## Nested classes/interfaces inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `Enum.EnumDesc<E extends Enum<E>>`
* ## Enum Constant Summary

  Enum Constants

  Enum Constant

  Description

  `APPLICATION_MODAL`

  An `APPLICATION_MODAL` dialog blocks all top-level windows
  from the same Java application except those from its own child hierarchy.

  `DOCUMENT_MODAL`

  A `DOCUMENT_MODAL` dialog blocks input to all top-level windows
  from the same document except those from its own child hierarchy.

  `MODELESS`

  `MODELESS` dialog doesn't block any top-level windows.

  `TOOLKIT_MODAL`

  A `TOOLKIT_MODAL` dialog blocks all top-level windows run
  from the same toolkit except those from its own child hierarchy.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Dialog.ModalityType`

  `valueOf(String name)`

  Returns the enum constant of this class with the specified name.

  `static Dialog.ModalityType[]`

  `values()`

  Returns an array containing the constants of this enum class, in
  the order they are declared.

  ### Methods inherited from class java.lang.[Enum](../../../java.base/java/lang/Enum.md "class in java.lang")

  `clone, compareTo, describeConstable, equals, finalize, getDeclaringClass, hashCode, name, ordinal, toString, valueOf`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `getClass, notify, notifyAll, wait, wait, wait`

* ## Enum Constant Details

  + ### MODELESS

    public static final [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") MODELESS

    `MODELESS` dialog doesn't block any top-level windows.
  + ### DOCUMENT\_MODAL

    public static final [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") DOCUMENT\_MODAL

    A `DOCUMENT_MODAL` dialog blocks input to all top-level windows
    from the same document except those from its own child hierarchy.
    A document is a top-level window without an owner. It may contain child
    windows that, together with the top-level window are treated as a single
    solid document. Since every top-level window must belong to some
    document, its root can be found as the top-nearest window without an owner.
  + ### APPLICATION\_MODAL

    public static final [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") APPLICATION\_MODAL

    An `APPLICATION_MODAL` dialog blocks all top-level windows
    from the same Java application except those from its own child hierarchy.
    If there are several applets launched in a browser, they can be
    treated either as separate applications or a single one. This behavior
    is implementation-dependent.
  + ### TOOLKIT\_MODAL

    public static final [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") TOOLKIT\_MODAL

    A `TOOLKIT_MODAL` dialog blocks all top-level windows run
    from the same toolkit except those from its own child hierarchy. If there
    are several applets launched in a browser, all of them run with the same
    toolkit; thus, a toolkit-modal dialog displayed by an applet may affect
    other applets and all windows of the browser instance which embeds the
    Java runtime environment for this toolkit.
    Special `AWTPermission` "toolkitModality" must be granted to use
    toolkit-modal dialogs. If a `TOOLKIT_MODAL` dialog is being created
    and this permission is not granted, a `SecurityException` will be
    thrown, and no dialog will be created. If a modality type is being changed
    to `TOOLKIT_MODAL` and this permission is not granted, a
    `SecurityException` will be thrown, and the modality type will
    be left unchanged.
* ## Method Details

  + ### values

    public static [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt")[] values()

    Returns an array containing the constants of this enum class, in
    the order they are declared.

    Returns:
    :   an array containing the constants of this enum class, in the order they are declared
  + ### valueOf

    public static [Dialog.ModalityType](Dialog.ModalityType.md "enum class in java.awt") valueOf([String](../../../java.base/java/lang/String.md "class in java.lang") name)

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