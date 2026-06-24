Module [java.xml](../../../module-summary.md)

Package [javax.xml.stream](package-summary.md)

# Interface Location

---

public interface Location

Provides information on the location of an event.
All the information provided by a Location is optional. For example
an application may only report line numbers.

Since:
:   1.6

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getCharacterOffset()`

  Return the byte or character offset into the input source this location
  is pointing to.

  `int`

  `getColumnNumber()`

  Return the column number where the current event ends,
  returns -1 if none is available.

  `int`

  `getLineNumber()`

  Return the line number where the current event ends,
  returns -1 if none is available.

  `String`

  `getPublicId()`

  Returns the public ID of the XML

  `String`

  `getSystemId()`

  Returns the system ID of the XML

* ## Method Details

  + ### getLineNumber

    int getLineNumber()

    Return the line number where the current event ends,
    returns -1 if none is available.

    Returns:
    :   the current line number
  + ### getColumnNumber

    int getColumnNumber()

    Return the column number where the current event ends,
    returns -1 if none is available.

    Returns:
    :   the current column number
  + ### getCharacterOffset

    int getCharacterOffset()

    Return the byte or character offset into the input source this location
    is pointing to. If the input source is a file or a byte stream then
    this is the byte offset into that stream, but if the input source is
    a character media then the offset is the character offset.
    Returns -1 if there is no offset available.

    Returns:
    :   the current offset
  + ### getPublicId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getPublicId()

    Returns the public ID of the XML

    Returns:
    :   the public ID, or null if not available
  + ### getSystemId

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getSystemId()

    Returns the system ID of the XML

    Returns:
    :   the system ID, or null if not available