Module [java.compiler](../../../module-summary.md)

Package [javax.annotation.processing](package-summary.md)

# Class Completions

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.annotation.processing.Completions

---

public class Completions
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Utility class for assembling [`Completion`](Completion.md "interface in javax.annotation.processing") objects.

Since:
:   1.6

* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static Completion`

  `of(String value)`

  Returns a completion of the value and an empty message.

  `static Completion`

  `of(String value,
  String message)`

  Returns a completion of the value and message.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Method Details

  + ### of

    public static [Completion](Completion.md "interface in javax.annotation.processing") of([String](../../../../java.base/java/lang/String.md "class in java.lang") value,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") message)

    Returns a completion of the value and message.

    Parameters:
    :   `value` - the text of the completion
    :   `message` - a message about the completion

    Returns:
    :   a completion of the value and message
  + ### of

    public static [Completion](Completion.md "interface in javax.annotation.processing") of([String](../../../../java.base/java/lang/String.md "class in java.lang") value)

    Returns a completion of the value and an empty message.

    Parameters:
    :   `value` - the text of the completion

    Returns:
    :   a completion of the value and an empty message