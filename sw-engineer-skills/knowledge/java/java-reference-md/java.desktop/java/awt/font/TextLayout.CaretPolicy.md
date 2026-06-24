Module [java.desktop](../../../module-summary.md)

Package [java.awt.font](package-summary.md)

# Class TextLayout.CaretPolicy

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.font.TextLayout.CaretPolicy

Enclosing class:
:   `TextLayout`

---

public static class TextLayout.CaretPolicy
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Defines a policy for determining the strong caret location.
This class contains one method, `getStrongCaret`, which
is used to specify the policy that determines the strong caret in
dual-caret text. The strong caret is used to move the caret to the
left or right. Instances of this class can be passed to
`getCaretShapes`, `getNextLeftHit` and
`getNextRightHit` to customize strong caret
selection.

To specify alternate caret policies, subclass `CaretPolicy`
and override `getStrongCaret`. `getStrongCaret`
should inspect the two `TextHitInfo` arguments and choose
one of them as the strong caret.

Most clients do not need to use this class.

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CaretPolicy()`

  Constructs a `CaretPolicy`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `TextHitInfo`

  `getStrongCaret(TextHitInfo hit1,
  TextHitInfo hit2,
  TextLayout layout)`

  Chooses one of the specified `TextHitInfo` instances as
  a strong caret in the specified `TextLayout`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CaretPolicy

    public CaretPolicy()

    Constructs a `CaretPolicy`.
* ## Method Details

  + ### getStrongCaret

    public [TextHitInfo](TextHitInfo.md "class in java.awt.font") getStrongCaret([TextHitInfo](TextHitInfo.md "class in java.awt.font") hit1,
    [TextHitInfo](TextHitInfo.md "class in java.awt.font") hit2,
    [TextLayout](TextLayout.md "class in java.awt.font") layout)

    Chooses one of the specified `TextHitInfo` instances as
    a strong caret in the specified `TextLayout`.

    Parameters:
    :   `hit1` - a valid hit in `layout`
    :   `hit2` - a valid hit in `layout`
    :   `layout` - the `TextLayout` in which
        `hit1` and `hit2` are used

    Returns:
    :   `hit1` or `hit2`
        (or an equivalent `TextHitInfo`), indicating the
        strong caret.