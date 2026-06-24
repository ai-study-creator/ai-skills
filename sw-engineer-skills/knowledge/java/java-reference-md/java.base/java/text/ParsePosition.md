Module [java.base](../../module-summary.md)

Package [java.text](package-summary.md)

# Class ParsePosition

[java.lang.Object](../lang/Object.md "class in java.lang")

java.text.ParsePosition

---

public class ParsePosition
extends [Object](../lang/Object.md "class in java.lang")

`ParsePosition` is a simple class used by `Format`
and its subclasses to keep track of the current position during parsing.
The `parseObject` method in the various `Format`
classes requires a `ParsePosition` object as an argument.

By design, as you parse through a string with different formats,
you can use the same `ParsePosition`, since the index parameter
records the current position.

Since:
:   1.1

See Also:
:   * [`Format`](Format.md "class in java.text")

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ParsePosition(int index)`

  Create a new ParsePosition with the given initial index.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `equals(Object obj)`

  Overrides equals

  `int`

  `getErrorIndex()`

  Retrieve the index at which an error occurred, or -1 if the
  error index has not been set.

  `int`

  `getIndex()`

  Retrieve the current parse position.

  `int`

  `hashCode()`

  Returns a hash code for this ParsePosition.

  `void`

  `setErrorIndex(int ei)`

  Set the index at which a parse error occurred.

  `void`

  `setIndex(int index)`

  Set the current parse position.

  `String`

  `toString()`

  Return a string representation of this ParsePosition.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### ParsePosition

    public ParsePosition(int index)

    Create a new ParsePosition with the given initial index.

    Parameters:
    :   `index` - initial index
* ## Method Details

  + ### getIndex

    public int getIndex()

    Retrieve the current parse position. On input to a parse method, this
    is the index of the character at which parsing will begin; on output, it
    is the index of the character following the last character parsed.

    Returns:
    :   the current parse position
  + ### setIndex

    public void setIndex(int index)

    Set the current parse position.

    Parameters:
    :   `index` - the current parse position
  + ### setErrorIndex

    public void setErrorIndex(int ei)

    Set the index at which a parse error occurred. Formatters
    should set this before returning an error code from their
    parseObject method. The default value is -1 if this is not set.

    Parameters:
    :   `ei` - the index at which an error occurred

    Since:
    :   1.2
  + ### getErrorIndex

    public int getErrorIndex()

    Retrieve the index at which an error occurred, or -1 if the
    error index has not been set.

    Returns:
    :   the index at which an error occurred

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

    Returns a hash code for this ParsePosition.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hash code value for this object

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Return a string representation of this ParsePosition.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation of this object