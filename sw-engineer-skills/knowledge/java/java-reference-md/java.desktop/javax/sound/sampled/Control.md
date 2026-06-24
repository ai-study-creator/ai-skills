Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class Control

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.Control

Direct Known Subclasses:
:   `BooleanControl`, `CompoundControl`, `EnumControl`, `FloatControl`

---

public abstract class Control
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[`Lines`](Line.md "interface in javax.sound.sampled") often have a set of controls, such as gain and pan, that
affect the audio signal passing through the line. Java Sound's `Line`
objects let you obtain a particular control object by passing its class as
the argument to a [`getControl`](Line.md#getControl(javax.sound.sampled.Control.Type)) method.

Because the various types of controls have different purposes and features,
all of their functionality is accessed from the subclasses that define each
kind of control.

Since:
:   1.3

See Also:
:   * [`Line.getControls()`](Line.md#getControls())
    * [`Line.isControlSupported(javax.sound.sampled.Control.Type)`](Line.md#isControlSupported(javax.sound.sampled.Control.Type))

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `Control.Type`

  An instance of the `Type` class represents the type of the control.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Control(Control.Type type)`

  Constructs a control with the specified type.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Control.Type`

  `getType()`

  Obtains the control's type.

  `String`

  `toString()`

  Returns a string representation of the control.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Control

    protected Control([Control.Type](Control.Type.md "class in javax.sound.sampled") type)

    Constructs a control with the specified type.

    Parameters:
    :   `type` - the kind of control desired
* ## Method Details

  + ### getType

    public [Control.Type](Control.Type.md "class in javax.sound.sampled") getType()

    Obtains the control's type.

    Returns:
    :   the control's type
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the control.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the control