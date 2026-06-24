Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class CompoundControl

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.sound.sampled.Control](Control.md "class in javax.sound.sampled")

javax.sound.sampled.CompoundControl

---

public abstract class CompoundControl
extends [Control](Control.md "class in javax.sound.sampled")

A `CompoundControl`, such as a graphic equalizer, provides control over
two or more related properties, each of which is itself represented as a
`Control`.

Since:
:   1.3

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static class`

  `CompoundControl.Type`

  An instance of the `CompoundControl.Type` inner class identifies
  one kind of compound control.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `CompoundControl(CompoundControl.Type type,
  Control[] memberControls)`

  Constructs a new compound control object with the given parameters.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Control[]`

  `getMemberControls()`

  Returns the set of member controls that comprise the compound control.

  `String`

  `toString()`

  Returns a string representation of the compound control.

  ### Methods inherited from class javax.sound.sampled.[Control](Control.md "class in javax.sound.sampled")

  `getType`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### CompoundControl

    protected CompoundControl([CompoundControl.Type](CompoundControl.Type.md "class in javax.sound.sampled") type,
    [Control](Control.md "class in javax.sound.sampled")[] memberControls)

    Constructs a new compound control object with the given parameters.

    Parameters:
    :   `type` - the type of control represented this compound control object
    :   `memberControls` - the set of member controls
* ## Method Details

  + ### getMemberControls

    public [Control](Control.md "class in javax.sound.sampled")[] getMemberControls()

    Returns the set of member controls that comprise the compound control.

    Returns:
    :   the set of member controls
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of the compound control.

    Overrides:
    :   `toString` in class `Control`

    Returns:
    :   a string representation of the compound control