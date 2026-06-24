Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class FieldPosition

[java.lang.Object](../lang/Object.md "class in java.lang")

java.text.FieldPosition

---

public class FieldPosition
extends [Object](../lang/Object.md "class in java.lang")

`FieldPosition` is a simple class used by `Format`
and its subclasses to identify fields in formatted output. Fields can
be identified in two ways:

* By an integer constant, whose names typically end with
  `_FIELD`. The constants are defined in the various
  subclasses of `Format`.* By a `Format.Field` constant, see `ERA_FIELD`
    and its friends in `DateFormat` for an example.

`FieldPosition` keeps track of the position of the
field within the formatted output with two indices: the index
of the first character of the field and the index of the last
character of the field.

One version of the `format` method in the various
`Format` classes requires a `FieldPosition`
object as an argument. You use this `format` method
to perform partial formatting or to get information about the
formatted output (such as the position of a field).

If you are interested in the positions of all attributes in the
formatted string use the `Format` method
`formatToCharacterIterator`.

Since:
:   1.1

See Also:
:   * [`Format`](Format.md "class in java.text")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `FieldPosition(int field)`

  Creates a FieldPosition object for the given field.

  `FieldPosition(Format.Field attribute)`

  Creates a FieldPosition object for the given field constant.

  `FieldPosition(Format.Field attribute,
  int fieldID)`

  Creates a `FieldPosition` object for the given field.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Overrides equals

  `int`

  `getBeginIndex()`

  Retrieves the index of the first character in the requested field.

  `int`

  `getEndIndex()`

  Retrieves the index of the character following the last character in the
  requested field.

  `int`

  `getField()`

  Retrieves the field identifier.

  `Format.Field`

  `getFieldAttribute()`

  Returns the field identifier as an attribute constant
  from one of the `Field` subclasses.

  `int`

  `hashCode()`

  Returns a hash code for this FieldPosition.

  `void`

  `setBeginIndex(int bi)`

  Sets the begin index.

  `void`

  `setEndIndex(int ei)`

  Sets the end index.

  `String`

  `toString()`

  Return a string representation of this FieldPosition.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### FieldPosition

    public FieldPosition(int field)

    Creates a FieldPosition object for the given field. Fields are
    identified by constants, whose names typically end with \_FIELD,
    in the various subclasses of Format.

    Parameters:
    :   `field` - the field identifier

    See Also:
    :   - [`NumberFormat.INTEGER_FIELD`](NumberFormat.md#INTEGER_FIELD)
        - [`NumberFormat.FRACTION_FIELD`](NumberFormat.md#FRACTION_FIELD)
        - [`DateFormat.YEAR_FIELD`](DateFormat.md#YEAR_FIELD)
        - [`DateFormat.MONTH_FIELD`](DateFormat.md#MONTH_FIELD)
  + ### FieldPosition

    public FieldPosition([Format.Field](Format.Field.md "class in java.text") attribute)

    Creates a FieldPosition object for the given field constant. Fields are
    identified by constants defined in the various `Format`
    subclasses. This is equivalent to calling
    `new FieldPosition(attribute, -1)`.

    Parameters:
    :   `attribute` - Format.Field constant identifying a field

    Since:
    :   1.4
  + ### FieldPosition

    public FieldPosition([Format.Field](Format.Field.md "class in java.text") attribute,
    int fieldID)

    Creates a `FieldPosition` object for the given field.
    The field is identified by an attribute constant from one of the
    `Field` subclasses as well as an integer field ID
    defined by the `Format` subclasses. `Format`
    subclasses that are aware of `Field` should give precedence
    to `attribute` and ignore `fieldID` if
    `attribute` is not null. However, older `Format`
    subclasses may not be aware of `Field` and rely on
    `fieldID`. If the field has no corresponding integer
    constant, `fieldID` should be -1.

    Parameters:
    :   `attribute` - Format.Field constant identifying a field
    :   `fieldID` - integer constant identifying a field

    Since:
    :   1.4
* ## Method Details

  + ### getFieldAttribute

    public [Format.Field](Format.Field.md "class in java.text") getFieldAttribute()

    Returns the field identifier as an attribute constant
    from one of the `Field` subclasses. May return null if
    the field is specified only by an integer field ID.

    Returns:
    :   Identifier for the field

    Since:
    :   1.4
  + ### getField

    public int getField()

    Retrieves the field identifier.

    Returns:
    :   the field identifier
  + ### getBeginIndex

    public int getBeginIndex()

    Retrieves the index of the first character in the requested field.

    Returns:
    :   the begin index
  + ### getEndIndex

    public int getEndIndex()

    Retrieves the index of the character following the last character in the
    requested field.

    Returns:
    :   the end index
  + ### setBeginIndex

    public void setBeginIndex(int bi)

    Sets the begin index. For use by subclasses of Format.

    Parameters:
    :   `bi` - the begin index

    Since:
    :   1.2
  + ### setEndIndex

    public void setEndIndex(int ei)

    Sets the end index. For use by subclasses of Format.

    Parameters:
    :   `ei` - the end index

    Since:
    :   1.2
  + ### equals

    public boolean equals([Object](../lang/Object.md "class in java.lang") obj)

    Overrides equals

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

    public int hashCode()

    Returns a hash code for this FieldPosition.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Return a string representation of this FieldPosition.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this object