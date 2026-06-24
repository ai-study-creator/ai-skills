Module [java.desktop](../../../module-summary.md)

Package [javax.sound.sampled](package-summary.md)

# Class Control.Type

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.sound.sampled.Control.Type

Direct Known Subclasses:
:   `BooleanControl.Type`, `CompoundControl.Type`, `EnumControl.Type`, `FloatControl.Type`

Enclosing class:
:   `Control`

---

public static class Control.Type
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

An instance of the `Type` class represents the type of the control.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Type(String name)`

  Constructs a new control type with the name specified.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object obj)`

  Indicates whether the specified object is equal to this control type,
  returning `true` if the objects are the same.

  `final int`

  `hashCode()`

  Returns a hash code value for this control type.

  `final String`

  `toString()`

  Returns type's name as the string representation of the control type.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Type

    protected Type([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Constructs a new control type with the name specified. The name
    should be a descriptive string appropriate for labelling the control
    in an application, such as "Gain" or "Balance".

    Parameters:
    :   `name` - the name of the new control type
* ## Method Details

  + ### equals

    public final boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Indicates whether the specified object is equal to this control type,
    returning `true` if the objects are the same.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare

    Returns:
    :   `true` if the specified object is equal to this control
        type; `false` otherwise

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Returns a hash code value for this control type.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this control type

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public final [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns type's name as the string representation of the control type.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the control type