Module [java.compiler](../../../../module-summary.md)

Package [javax.lang.model.element](package-summary.md)

# Interface Name

All Superinterfaces:
:   `CharSequence`

---

public interface Name
extends [CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang")

An immutable sequence of characters. When created by the same
implementation, objects implementing this interface must obey the
general [equals contract](../../../../../java.base/java/lang/Object.md#equals(java.lang.Object)) when compared
with each other. Therefore, `Name` objects from the same
implementation are usable in collections while `Name`s from
different implementations may not work properly in collections.

An [empty](../../../../../java.base/java/lang/CharSequence.md#isEmpty())
`Name` has a [length](../../../../../java.base/java/lang/CharSequence.md#length()) of
zero.

In the context of [annotation
processing](../../../annotation/processing/ProcessingEnvironment.md "interface in javax.annotation.processing"), the guarantees for "the same" implementation must
include contexts where the [API mediated](../../../annotation/processing/package-summary.md) side effects of [processors](../../../annotation/processing/Processor.md "interface in javax.annotation.processing") could be visible
to each other, including successive annotation processing
[rounds](../../../annotation/processing/RoundEnvironment.md "interface in javax.annotation.processing").

Since:
:   1.6

See Also:
:   * [`Elements.getName(java.lang.CharSequence)`](../util/Elements.md#getName(java.lang.CharSequence))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `contentEquals(CharSequence cs)`

  Compares this name to the specified `CharSequence`.

  `boolean`

  `equals(Object obj)`

  Returns `true` if the argument represents the same
  name as `this`, and `false` otherwise.

  `int`

  `hashCode()`

  Obeys the general contract of [`Object.hashCode`](../../../../../java.base/java/lang/Object.md#hashCode()).

  ### Methods inherited from interface java.lang.[CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang")

  `charAt, chars, codePoints, isEmpty, length, subSequence, toString`

* ## Method Details

  + ### equals

    boolean equals([Object](../../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Returns `true` if the argument represents the same
    name as `this`, and `false` otherwise.

    Note that the identity of a `Name` is a function both
    of its content in terms of a sequence of characters as well as
    the implementation which created it.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object to be compared with this element

    Returns:
    :   `true` if the specified object represents the same
        name as this

    See Also:
    :   - [`Element.equals(java.lang.Object)`](Element.md#equals(java.lang.Object))
  + ### hashCode

    int hashCode()

    Obeys the general contract of [`Object.hashCode`](../../../../../java.base/java/lang/Object.md#hashCode()).

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object.

    See Also:
    :   - [`equals(java.lang.Object)`](#equals(java.lang.Object))
  + ### contentEquals

    boolean contentEquals([CharSequence](../../../../../java.base/java/lang/CharSequence.md "interface in java.lang") cs)

    Compares this name to the specified `CharSequence`. The result
    is `true` if and only if this name represents the same sequence
    of `char` values as the specified sequence.

    Parameters:
    :   `cs` - The sequence to compare this name against

    Returns:
    :   `true` if this name represents the same sequence
        of `char` values as the specified sequence, `false`
        otherwise

    See Also:
    :   - [`String.contentEquals(CharSequence)`](../../../../../java.base/java/lang/String.md#contentEquals(java.lang.CharSequence))