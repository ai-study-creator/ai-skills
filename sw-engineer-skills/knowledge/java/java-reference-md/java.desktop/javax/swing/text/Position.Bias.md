Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class Position.Bias

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.Position.Bias

Enclosing interface:
:   `Position`

---

public static final class Position.Bias
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A typesafe enumeration to indicate bias to a position
in the model. A position indicates a location between
two characters. The bias can be used to indicate an
interest toward one of the two sides of the position
in boundary conditions where a simple offset is
ambiguous.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final Position.Bias`

  `Backward`

  Indicates a bias toward the previous character
  in the model.

  `static final Position.Bias`

  `Forward`

  Indicates to bias toward the next character
  in the model.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `toString()`

  string representation

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### Forward

    public static final [Position.Bias](Position.Bias.md "class in javax.swing.text") Forward

    Indicates to bias toward the next character
    in the model.
  + ### Backward

    public static final [Position.Bias](Position.Bias.md "class in javax.swing.text") Backward

    Indicates a bias toward the previous character
    in the model.
* ## Method Details

  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    string representation

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.