Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleTextSequence

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.accessibility.AccessibleTextSequence

---

public class AccessibleTextSequence
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

This class collects together key details of a span of text. It is used by
implementors of the class `AccessibleExtendedText` in order to return
the requested triplet of a `String`, and the start and end
indices/offsets into a larger body of text that the `String` comes
from.

See Also:
:   * [`AccessibleExtendedText`](AccessibleExtendedText.md "interface in javax.accessibility")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `int`

  `endIndex`

  The end index of the text sequence.

  `int`

  `startIndex`

  The start index of the text sequence.

  `String`

  `text`

  The text.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleTextSequence(int start,
  int end,
  String txt)`

  Constructs an `AccessibleTextSequence` with the given parameters.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### startIndex

    public int startIndex

    The start index of the text sequence.
  + ### endIndex

    public int endIndex

    The end index of the text sequence.
  + ### text

    public [String](../../../java.base/java/lang/String.md "class in java.lang") text

    The text.
* ## Constructor Details

  + ### AccessibleTextSequence

    public AccessibleTextSequence(int start,
    int end,
    [String](../../../java.base/java/lang/String.md "class in java.lang") txt)

    Constructs an `AccessibleTextSequence` with the given parameters.

    Parameters:
    :   `start` - the beginning index of the span of text
    :   `end` - the ending index of the span of text
    :   `txt` - the `String` shared by this text span

    Since:
    :   1.6