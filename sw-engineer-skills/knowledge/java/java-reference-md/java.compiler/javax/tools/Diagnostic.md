Module [java.compiler](../../module-summary.md)

Package [javax.tools](package-summary.md)

# Interface Diagnostic<S>

Type Parameters:
:   `S` - the type of source object used by this diagnostic

---

public interface Diagnostic<S>

Interface for diagnostics from tools. A diagnostic usually reports
a problem at a specific position in a source file. However, not
all diagnostics are associated with a position or a file.

A position is a zero-based character offset from the beginning of
a file. Negative values (except [`NOPOS`](#NOPOS)) are not valid
positions.

Line and column numbers begin at 1. Negative values (except
[`NOPOS`](#NOPOS)) and 0 are not valid line or column numbers.

Since:
:   1.6

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Interface

  Description

  `static enum`

  `Diagnostic.Kind`

  Kinds of diagnostics, for example, error or warning.
* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final long`

  `NOPOS`

  Used to signal that no position is available.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `getCode()`

  Returns a diagnostic code indicating the type of diagnostic.

  `long`

  `getColumnNumber()`

  Returns the column number of the character offset returned by
  [getPosition()](#getPosition()).

  `long`

  `getEndPosition()`

  Returns the character offset from the beginning of the file
  associated with this diagnostic that indicates the end of the
  problem.

  `Diagnostic.Kind`

  `getKind()`

  Returns the kind of this diagnostic, for example, error or
  warning.

  `long`

  `getLineNumber()`

  Returns the line number of the character offset returned by
  [getPosition()](#getPosition()).

  `String`

  `getMessage(Locale locale)`

  Returns a localized message for the given locale.

  `long`

  `getPosition()`

  Returns a character offset from the beginning of the source object
  associated with this diagnostic that indicates the location of
  the problem.

  `S`

  `getSource()`

  Returns the source object associated with this diagnostic.

  `long`

  `getStartPosition()`

  Returns the character offset from the beginning of the file
  associated with this diagnostic that indicates the start of the
  problem.

* ## Field Details

  + ### NOPOS

    static final long NOPOS

    Used to signal that no position is available.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.tools.Diagnostic.NOPOS)
* ## Method Details

  + ### getKind

    [Diagnostic.Kind](Diagnostic.Kind.md "enum class in javax.tools") getKind()

    Returns the kind of this diagnostic, for example, error or
    warning.

    Returns:
    :   the kind of this diagnostic
  + ### getSource

    [S](Diagnostic.md "type parameter in Diagnostic") getSource()

    Returns the source object associated with this diagnostic.

    Returns:
    :   the source object associated with this diagnostic.
        `null` if no source object is associated with the
        diagnostic.
  + ### getPosition

    long getPosition()

    Returns a character offset from the beginning of the source object
    associated with this diagnostic that indicates the location of
    the problem. In addition, the following must be true:

    `getStartPosition() <= getPosition()`

    `getPosition() <= getEndPosition()`

    Returns:
    :   character offset from beginning of source; [`NOPOS`](#NOPOS) if [`getSource()`](#getSource()) would return `null` or if
        no location is suitable
  + ### getStartPosition

    long getStartPosition()

    Returns the character offset from the beginning of the file
    associated with this diagnostic that indicates the start of the
    problem.

    Returns:
    :   offset from beginning of file; [`NOPOS`](#NOPOS) if and
        only if [`getPosition()`](#getPosition()) returns [`NOPOS`](#NOPOS)
  + ### getEndPosition

    long getEndPosition()

    Returns the character offset from the beginning of the file
    associated with this diagnostic that indicates the end of the
    problem.

    Returns:
    :   offset from beginning of file; [`NOPOS`](#NOPOS) if and
        only if [`getPosition()`](#getPosition()) returns [`NOPOS`](#NOPOS)
  + ### getLineNumber

    long getLineNumber()

    Returns the line number of the character offset returned by
    [getPosition()](#getPosition()).

    Returns:
    :   a line number or [`NOPOS`](#NOPOS) if and only if [`getPosition()`](#getPosition()) returns [`NOPOS`](#NOPOS)
  + ### getColumnNumber

    long getColumnNumber()

    Returns the column number of the character offset returned by
    [getPosition()](#getPosition()).

    Returns:
    :   a column number or [`NOPOS`](#NOPOS) if and only if [`getPosition()`](#getPosition()) returns [`NOPOS`](#NOPOS)
  + ### getCode

    [String](../../../java.base/java/lang/String.md "class in java.lang") getCode()

    Returns a diagnostic code indicating the type of diagnostic. The
    code is implementation-dependent and might be `null`.

    Returns:
    :   a diagnostic code
  + ### getMessage

    [String](../../../java.base/java/lang/String.md "class in java.lang") getMessage([Locale](../../../java.base/java/util/Locale.md "class in java.util") locale)

    Returns a localized message for the given locale. The actual
    message is implementation-dependent. If the locale is `null` use the default locale.

    Parameters:
    :   `locale` - a locale; might be `null`

    Returns:
    :   a localized message