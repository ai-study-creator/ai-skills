Module [java.desktop](../../module-summary.md)

Package [javax.accessibility](package-summary.md)

# Class AccessibleAttributeSequence

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.accessibility.AccessibleAttributeSequence

---

public class AccessibleAttributeSequence
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

This class collects together the span of text that share the same contiguous
set of attributes, along with that set of attributes. It is used by
implementors of the class `AccessibleContext` in order to generate
`ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED` events.

See Also:
:   * [`AccessibleContext`](AccessibleContext.md "class in javax.accessibility")
    * [`AccessibleContext.ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED`](AccessibleContext.md#ACCESSIBLE_TEXT_ATTRIBUTES_CHANGED)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `AttributeSet`

  `attributes`

  The text attributes.

  `int`

  `endIndex`

  The end index of the text sequence.

  `int`

  `startIndex`

  The start index of the text sequence.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AccessibleAttributeSequence(int start,
  int end,
  AttributeSet attr)`

  Constructs an `AccessibleAttributeSequence` with the given
  parameters.
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
  + ### attributes

    public [AttributeSet](../swing/text/AttributeSet.md "interface in javax.swing.text") attributes

    The text attributes.
* ## Constructor Details

  + ### AccessibleAttributeSequence

    public AccessibleAttributeSequence(int start,
    int end,
    [AttributeSet](../swing/text/AttributeSet.md "interface in javax.swing.text") attr)

    Constructs an `AccessibleAttributeSequence` with the given
    parameters.

    Parameters:
    :   `start` - the beginning index of the span of text
    :   `end` - the ending index of the span of text
    :   `attr` - the `AttributeSet` shared by this text span

    Since:
    :   1.6