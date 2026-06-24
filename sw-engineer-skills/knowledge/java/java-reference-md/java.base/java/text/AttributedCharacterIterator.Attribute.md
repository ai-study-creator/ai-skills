Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class AttributedCharacterIterator.Attribute

[java.lang.Object](../lang/Object.md "class in java.lang")

java.text.AttributedCharacterIterator.Attribute

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `Format.Field`, `TextAttribute`

Enclosing interface:
:   `AttributedCharacterIterator`

---

public static class AttributedCharacterIterator.Attribute
extends [Object](../lang/Object.md "class in java.lang")
implements [Serializable](../io/Serializable.md "interface in java.io")

Defines attribute keys that are used to identify text attributes. These
keys are used in `AttributedCharacterIterator` and `AttributedString`.

Since:
:   1.2

See Also:
:   * [`AttributedCharacterIterator`](AttributedCharacterIterator.md "interface in java.text")
    * [`AttributedString`](AttributedString.md "class in java.text")
    * [Serialized Form](../../../serialized-form.md#java.text.AttributedCharacterIterator.Attribute)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final AttributedCharacterIterator.Attribute`

  `INPUT_METHOD_SEGMENT`

  Attribute key for input method segments.

  `static final AttributedCharacterIterator.Attribute`

  `LANGUAGE`

  Attribute key for the language of some text.

  `static final AttributedCharacterIterator.Attribute`

  `READING`

  Attribute key for the reading of some text.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `Attribute(String name)`

  Constructs an `Attribute` with the given name.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object obj)`

  Compares two objects for equality.

  `protected String`

  `getName()`

  Returns the name of the attribute.

  `final int`

  `hashCode()`

  Returns a hash code value for the object.

  `protected Object`

  `readResolve()`

  Resolves instances being deserialized to the predefined constants.

  `String`

  `toString()`

  Returns a string representation of the object.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### LANGUAGE

    public static final [AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text") LANGUAGE

    Attribute key for the language of some text.

    Values are instances of [`Locale`](../util/Locale.md "class in java.util").

    See Also:
    :   - [`Locale`](../util/Locale.md "class in java.util")
  + ### READING

    public static final [AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text") READING

    Attribute key for the reading of some text. In languages where the written form
    and the pronunciation of a word are only loosely related (such as Japanese),
    it is often necessary to store the reading (pronunciation) along with the
    written form.

    Values are instances of [`Annotation`](Annotation.md "class in java.text") holding instances of [`String`](../lang/String.md "class in java.lang").

    See Also:
    :   - [`Annotation`](Annotation.md "class in java.text")
        - [`String`](../lang/String.md "class in java.lang")
  + ### INPUT\_METHOD\_SEGMENT

    public static final [AttributedCharacterIterator.Attribute](AttributedCharacterIterator.Attribute.md "class in java.text") INPUT\_METHOD\_SEGMENT

    Attribute key for input method segments. Input methods often break
    up text into segments, which usually correspond to words.

    Values are instances of [`Annotation`](Annotation.md "class in java.text") holding a `null` reference.

    See Also:
    :   - [`Annotation`](Annotation.md "class in java.text")
* ## Constructor Details

  + ### Attribute

    protected Attribute([String](../lang/String.md "class in java.lang") name)

    Constructs an `Attribute` with the given name.

    Parameters:
    :   `name` - the name of `Attribute`
* ## Method Details

  + ### equals

    public final boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Compares two objects for equality. This version only returns true
    for `x.equals(y)` if `x` and `y` refer
    to the same object, and guarantees this for all subclasses.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the reference object with which to compare.

    Returns:
    :   `true` if this object is the same as the obj
        argument; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../lang/Object.md#hashCode())
        - [`HashMap`](../util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Returns a hash code value for the object. This version is identical to
    the one in `Object`, but is also final.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns a string representation of the object. This version returns the
    concatenation of class name, `"("`, a name identifying the attribute
    and `")"`.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of the object.
  + ### getName

    protected [String](../lang/String.md "class in java.lang") getName()

    Returns the name of the attribute.

    Returns:
    :   the name of `Attribute`
  + ### readResolve

    protected [Object](../lang/Object.md "class in java.lang") readResolve()
    throws [InvalidObjectException](../io/InvalidObjectException.md "class in java.io")

    Resolves instances being deserialized to the predefined constants.

    Returns:
    :   the resolved `Attribute` object

    Throws:
    :   `InvalidObjectException` - if the object to resolve is not
        an instance of `Attribute`