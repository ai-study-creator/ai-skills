Module [java.desktop](../../../module-summary.md)

Package [java.awt.print](package-summary.md)

# Interface Pageable

All Known Implementing Classes:
:   `Book`

---

public interface Pageable

The `Pageable` implementation represents a set of
pages to be printed. The `Pageable` object returns
the total number of pages in the set as well as the
[`PageFormat`](PageFormat.md "class in java.awt.print") and [`Printable`](Printable.md "interface in java.awt.print") for a specified page.

See Also:
:   * [`PageFormat`](PageFormat.md "class in java.awt.print")
    * [`Printable`](Printable.md "interface in java.awt.print")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `UNKNOWN_NUMBER_OF_PAGES`

  This constant is returned from the
  [`getNumberOfPages`](#getNumberOfPages())
  method if a `Pageable` implementation does not know
  the number of pages in its set.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `int`

  `getNumberOfPages()`

  Returns the number of pages in the set.

  `PageFormat`

  `getPageFormat(int pageIndex)`

  Returns the `PageFormat` of the page specified by
  `pageIndex`.

  `Printable`

  `getPrintable(int pageIndex)`

  Returns the `Printable` instance responsible for
  rendering the page specified by `pageIndex`.

* ## Field Details

  + ### UNKNOWN\_NUMBER\_OF\_PAGES

    [@Native](../../../../java.base/java/lang/annotation/Native.md "annotation interface in java.lang.annotation")
    static final int UNKNOWN\_NUMBER\_OF\_PAGES

    This constant is returned from the
    [`getNumberOfPages`](#getNumberOfPages())
    method if a `Pageable` implementation does not know
    the number of pages in its set.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#java.awt.print.Pageable.UNKNOWN_NUMBER_OF_PAGES)
* ## Method Details

  + ### getNumberOfPages

    int getNumberOfPages()

    Returns the number of pages in the set.
    To enable advanced printing features,
    it is recommended that `Pageable`
    implementations return the true number of pages
    rather than the
    UNKNOWN\_NUMBER\_OF\_PAGES constant.

    Returns:
    :   the number of pages in this `Pageable`.
  + ### getPageFormat

    [PageFormat](PageFormat.md "class in java.awt.print") getPageFormat(int pageIndex)
    throws [IndexOutOfBoundsException](../../../../java.base/java/lang/IndexOutOfBoundsException.md "class in java.lang")

    Returns the `PageFormat` of the page specified by
    `pageIndex`.

    Parameters:
    :   `pageIndex` - the zero based index of the page whose
        `PageFormat` is being requested

    Returns:
    :   the `PageFormat` describing the size and
        orientation.

    Throws:
    :   `IndexOutOfBoundsException` - if
        the `Pageable` does not contain the requested
        page.
  + ### getPrintable

    [Printable](Printable.md "interface in java.awt.print") getPrintable(int pageIndex)
    throws [IndexOutOfBoundsException](../../../../java.base/java/lang/IndexOutOfBoundsException.md "class in java.lang")

    Returns the `Printable` instance responsible for
    rendering the page specified by `pageIndex`.

    Parameters:
    :   `pageIndex` - the zero based index of the page whose
        `Printable` is being requested

    Returns:
    :   the `Printable` that renders the page.

    Throws:
    :   `IndexOutOfBoundsException` - if
        the `Pageable` does not contain the requested
        page.