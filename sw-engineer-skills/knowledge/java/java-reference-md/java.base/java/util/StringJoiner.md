Module [java.base](../../module-summary.md)

Package [java.util](package-summary.md)

# Class StringJoiner

[java.lang.Object](../lang/Object.md "class in java.lang")

java.util.StringJoiner

---

public final class StringJoiner
extends [Object](../lang/Object.md "class in java.lang")

`StringJoiner` is used to construct a sequence of characters separated
by a delimiter and optionally starting with a supplied prefix
and ending with a supplied suffix.

Prior to adding something to the `StringJoiner`, its
`sj.toString()` method will, by default, return `prefix + suffix`.
However, if the `setEmptyValue` method is called, the `emptyValue`
supplied will be returned instead. This can be used, for example, when
creating a string using set notation to indicate an empty set, i.e.
`"{}"`, where the `prefix` is `"{"`, the
`suffix` is `"}"` and nothing has been added to the
`StringJoiner`.

Since:
:   1.8

See Also:
:   * [`Collectors.joining(CharSequence)`](stream/Collectors.md#joining(java.lang.CharSequence))
    * [`Collectors.joining(CharSequence, CharSequence, CharSequence)`](stream/Collectors.md#joining(java.lang.CharSequence,java.lang.CharSequence,java.lang.CharSequence))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `StringJoiner(CharSequence delimiter)`

  Constructs a `StringJoiner` with no characters in it, with no
  `prefix` or `suffix`, and a copy of the supplied
  `delimiter`.

  `StringJoiner(CharSequence delimiter,
  CharSequence prefix,
  CharSequence suffix)`

  Constructs a `StringJoiner` with no characters in it using copies
  of the supplied `prefix`, `delimiter` and `suffix`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `StringJoiner`

  `add(CharSequence newElement)`

  Adds a copy of the given `CharSequence` value as the next
  element of the `StringJoiner` value.

  `int`

  `length()`

  Returns the length of the `String` representation
  of this `StringJoiner`.

  `StringJoiner`

  `merge(StringJoiner other)`

  Adds the contents of the given `StringJoiner` without prefix and
  suffix as the next element if it is non-empty.

  `StringJoiner`

  `setEmptyValue(CharSequence emptyValue)`

  Sets the sequence of characters to be used when determining the string
  representation of this `StringJoiner` and no elements have been
  added yet, that is, when it is empty.

  `String`

  `toString()`

  Returns the current value, consisting of the `prefix`, the values
  added so far separated by the `delimiter`, and the `suffix`,
  unless no elements have been added in which case, the
  `prefix + suffix` or the `emptyValue` characters are returned.

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### StringJoiner

    public StringJoiner([CharSequence](../lang/CharSequence.md "interface in java.lang") delimiter)

    Constructs a `StringJoiner` with no characters in it, with no
    `prefix` or `suffix`, and a copy of the supplied
    `delimiter`.
    If no characters are added to the `StringJoiner` and methods
    accessing the value of it are invoked, it will not return a
    `prefix` or `suffix` (or properties thereof) in the result,
    unless `setEmptyValue` has first been called.

    Parameters:
    :   `delimiter` - the sequence of characters to be used between each
        element added to the `StringJoiner` value

    Throws:
    :   `NullPointerException` - if `delimiter` is `null`
  + ### StringJoiner

    public StringJoiner([CharSequence](../lang/CharSequence.md "interface in java.lang") delimiter,
    [CharSequence](../lang/CharSequence.md "interface in java.lang") prefix,
    [CharSequence](../lang/CharSequence.md "interface in java.lang") suffix)

    Constructs a `StringJoiner` with no characters in it using copies
    of the supplied `prefix`, `delimiter` and `suffix`.
    If no characters are added to the `StringJoiner` and methods
    accessing the string value of it are invoked, it will return the
    `prefix + suffix` (or properties thereof) in the result, unless
    `setEmptyValue` has first been called.

    Parameters:
    :   `delimiter` - the sequence of characters to be used between each
        element added to the `StringJoiner`
    :   `prefix` - the sequence of characters to be used at the beginning
    :   `suffix` - the sequence of characters to be used at the end

    Throws:
    :   `NullPointerException` - if `prefix`, `delimiter`, or
        `suffix` is `null`
* ## Method Details

  + ### setEmptyValue

    public [StringJoiner](StringJoiner.md "class in java.util") setEmptyValue([CharSequence](../lang/CharSequence.md "interface in java.lang") emptyValue)

    Sets the sequence of characters to be used when determining the string
    representation of this `StringJoiner` and no elements have been
    added yet, that is, when it is empty. A copy of the `emptyValue`
    parameter is made for this purpose. Note that once an add method has been
    called, the `StringJoiner` is no longer considered empty, even if
    the element(s) added correspond to the empty `String`.

    Parameters:
    :   `emptyValue` - the characters to return as the value of an empty
        `StringJoiner`

    Returns:
    :   this `StringJoiner` itself so the calls may be chained

    Throws:
    :   `NullPointerException` - when the `emptyValue` parameter is
        `null`
  + ### toString

    public [String](../lang/String.md "class in java.lang") toString()

    Returns the current value, consisting of the `prefix`, the values
    added so far separated by the `delimiter`, and the `suffix`,
    unless no elements have been added in which case, the
    `prefix + suffix` or the `emptyValue` characters are returned.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation of this `StringJoiner`
  + ### add

    public [StringJoiner](StringJoiner.md "class in java.util") add([CharSequence](../lang/CharSequence.md "interface in java.lang") newElement)

    Adds a copy of the given `CharSequence` value as the next
    element of the `StringJoiner` value. If `newElement` is
    `null`, then `"null"` is added.

    Parameters:
    :   `newElement` - The element to add

    Returns:
    :   a reference to this `StringJoiner`
  + ### merge

    public [StringJoiner](StringJoiner.md "class in java.util") merge([StringJoiner](StringJoiner.md "class in java.util") other)

    Adds the contents of the given `StringJoiner` without prefix and
    suffix as the next element if it is non-empty. If the given `StringJoiner` is empty, the call has no effect.

    A `StringJoiner` is empty if [`add()`](#add(java.lang.CharSequence))
    has never been called, and if `merge()` has never been called
    with a non-empty `StringJoiner` argument.

    If the other `StringJoiner` is using a different delimiter,
    then elements from the other `StringJoiner` are concatenated with
    that delimiter and the result is appended to this `StringJoiner`
    as a single element.

    Parameters:
    :   `other` - The `StringJoiner` whose contents should be merged
        into this one

    Returns:
    :   This `StringJoiner`

    Throws:
    :   `NullPointerException` - if the other `StringJoiner` is null
  + ### length

    public int length()

    Returns the length of the `String` representation
    of this `StringJoiner`. Note that if
    no add methods have been called, then the length of the `String`
    representation (either `prefix + suffix` or `emptyValue`)
    will be returned. The value should be equivalent to
    `toString().length()`.

    Returns:
    :   the length of the current value of `StringJoiner`