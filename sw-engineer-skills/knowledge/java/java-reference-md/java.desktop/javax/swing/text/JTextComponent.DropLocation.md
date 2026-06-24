Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class JTextComponent.DropLocation

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.swing.TransferHandler.DropLocation](../TransferHandler.DropLocation.md "class in javax.swing")

javax.swing.text.JTextComponent.DropLocation

Enclosing class:
:   `JTextComponent`

---

public static final class JTextComponent.DropLocation
extends [TransferHandler.DropLocation](../TransferHandler.DropLocation.md "class in javax.swing")

Represents a drop location for `JTextComponent`s.

Since:
:   1.6

See Also:
:   * [`JTextComponent.getDropLocation()`](JTextComponent.md#getDropLocation())

* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Position.Bias`

  `getBias()`

  Returns the bias for the drop index.

  `int`

  `getIndex()`

  Returns the index where dropped data should be inserted into the
  associated component.

  `String`

  `toString()`

  Returns a string representation of this drop location.

  ### Methods inherited from class javax.swing.[TransferHandler.DropLocation](../TransferHandler.DropLocation.md "class in javax.swing")

  `getDropPoint`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Method Details

  + ### getIndex

    public int getIndex()

    Returns the index where dropped data should be inserted into the
    associated component. This index represents a position between
    characters, as would be interpreted by a caret.

    Returns:
    :   the drop index
  + ### getBias

    public [Position.Bias](Position.Bias.md "class in javax.swing.text") getBias()

    Returns the bias for the drop index.

    Returns:
    :   the drop bias
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this drop location.
    This method is intended to be used for debugging purposes,
    and the content and format of the returned string may vary
    between implementations.

    Overrides:
    :   `toString` in class `TransferHandler.DropLocation`

    Returns:
    :   a string representation of this drop location