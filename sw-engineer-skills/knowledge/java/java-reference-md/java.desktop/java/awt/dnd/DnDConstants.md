Module [java.desktop](../../../module-summary.md)

Package [java.awt.dnd](package-summary.md)

# Class DnDConstants

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.dnd.DnDConstants

---

public final class DnDConstants
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

This class contains constant values representing
the type of action(s) to be performed by a Drag and Drop operation.

Since:
:   1.2

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ACTION_COPY`

  An `int` representing a "copy" action.

  `static final int`

  `ACTION_COPY_OR_MOVE`

  An `int` representing a "copy" or
  "move" action.

  `static final int`

  `ACTION_LINK`

  An `int` representing a "link" action.

  `static final int`

  `ACTION_MOVE`

  An `int` representing a "move" action.

  `static final int`

  `ACTION_NONE`

  An `int` representing no action.

  `static final int`

  `ACTION_REFERENCE`

  An `int` representing a "reference"
  action (synonym for ACTION\_LINK).
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### ACTION\_NONE

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int ACTION\_NONE

    An `int` representing no action.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.dnd.DnDConstants.ACTION_NONE)
  + ### ACTION\_COPY

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int ACTION\_COPY

    An `int` representing a "copy" action.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.dnd.DnDConstants.ACTION_COPY)
  + ### ACTION\_MOVE

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int ACTION\_MOVE

    An `int` representing a "move" action.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.dnd.DnDConstants.ACTION_MOVE)
  + ### ACTION\_COPY\_OR\_MOVE

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int ACTION\_COPY\_OR\_MOVE

    An `int` representing a "copy" or
    "move" action.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.dnd.DnDConstants.ACTION_COPY_OR_MOVE)
  + ### ACTION\_LINK

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int ACTION\_LINK

    An `int` representing a "link" action.
    The link verb is found in many, if not all native DnD platforms, and the
    actual interpretation of LINK semantics is both platform
    and application dependent. Broadly speaking, the
    semantic is "do not copy, or move the operand, but create a reference
    to it". Defining the meaning of "reference" is where ambiguity is
    introduced.
    The verb is provided for completeness, but its use is not recommended
    for DnD operations between logically distinct applications where
    misinterpretation of the operations semantics could lead to confusing
    results for the user.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.dnd.DnDConstants.ACTION_LINK)
  + ### ACTION\_REFERENCE

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    public static final int ACTION\_REFERENCE

    An `int` representing a "reference"
    action (synonym for ACTION\_LINK).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.dnd.DnDConstants.ACTION_REFERENCE)