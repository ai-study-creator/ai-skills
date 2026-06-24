Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class EnumControl

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.sampled.Control](Control.md "class in javax.sound.sampled")

javax.sound.sampled.EnumControl

---

public abstract class EnumControl
extends [Control](Control.md "class in javax.sound.sampled")

An `EnumControl` provides control over a set of discrete possible
values, each represented by an object. In a graphical user interface, such a
control might be represented by a set of buttons, each of which chooses one
value or setting. For example, a reverb control might provide several preset
reverberation settings, instead of providing continuously adjustable
parameters of the sort that would be represented by [`FloatControl`](FloatControl.md "class in javax.sound.sampled")
objects.

Controls that provide a choice between only two settings can often be
implemented instead as a [`BooleanControl`](BooleanControl.md "class in javax.sound.sampled"), and controls that provide a
set of values along some quantifiable dimension might be implemented instead
as a `FloatControl` with a coarse resolution. However, a key feature of
`EnumControl` is that the returned values are arbitrary objects, rather
than numerical or boolean values. This means that each returned object can
provide further information. As an example, the settings of a
[`REVERB`](EnumControl.Type.md#REVERB) control are instances of
[`ReverbType`](ReverbType.md "class in javax.sound.sampled") that can be queried for the parameter values used for each
setting.

Since:
:   1.3

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `EnumControl.Type`

  An instance of the `EnumControl.Type` inner class identifies one
  kind of enumerated control.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `EnumControl(EnumControl.Type type,
  Object[] values,
  Object value)`

  Constructs a new enumerated control object with the given parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getValue()`

  Obtains this control's current value.

  `Object[]`

  `getValues()`

  Returns the set of possible values for this control.

  `void`

  `setValue(Object value)`

  Sets the current value for the control.

  `String`

  `toString()`

  Returns a string representation of the enumerated control.

  ### Methods inherited from class javax.sound.sampled.[Control](Control.md "class in javax.sound.sampled")

  `getType`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### EnumControl

    protected EnumControl([EnumControl.Type](EnumControl.Type.md "class in javax.sound.sampled") type,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] values,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Constructs a new enumerated control object with the given parameters.

    Parameters:
    :   `type` - the type of control represented this enumerated control
        object
    :   `values` - the set of possible values for the control
    :   `value` - the initial control value
* ## Method Details

  + ### setValue

    public void setValue([Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)

    Sets the current value for the control. The default implementation simply
    sets the value as indicated. If the value indicated is not supported, an
    `IllegalArgumentException` is thrown. Some controls require that
    their line be open before they can be affected by setting a value.

    Parameters:
    :   `value` - the desired new value

    Throws:
    :   `IllegalArgumentException` - if the value indicated does not fall
        within the allowable range
  + ### getValue

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getValue()

    Obtains this control's current value.

    Returns:
    :   the current value
  + ### getValues

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] getValues()

    Returns the set of possible values for this control.

    Returns:
    :   the set of possible values
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the enumerated control.

    Overrides:
    :   `toString` in class `Control`

    Returns:
    :   a string representation of the enumerated control