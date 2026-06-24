Module [java.desktop](../../../module-summary.md)

Package [java.awt.print](package-summary.md)

# Class Book

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.print.Book

All Implemented Interfaces:
:   `Pageable`

---

public class Book
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Pageable](Pageable.md "interface in java.awt.print")

The `Book` class provides a representation of a document in
which pages may have different page formats and page painters. This
class uses the [`Pageable`](Pageable.md "interface in java.awt.print") interface to interact with a
[`PrinterJob`](PrinterJob.md "class in java.awt.print").

See Also:
:   * [`Pageable`](Pageable.md "interface in java.awt.print")
    * [`PrinterJob`](PrinterJob.md "class in java.awt.print")

* ## Field Summary

  ### Fields inherited from interface java.awt.print.[Pageable](Pageable.md "interface in java.awt.print")

  `UNKNOWN_NUMBER_OF_PAGES`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Book()`

  Creates a new, empty `Book`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `append(Printable painter,
  PageFormat page)`

  Appends a single page to the end of this `Book`.

  `void`

  `append(Printable painter,
  PageFormat page,
  int numPages)`

  Appends `numPages` pages to the end of this
  `Book`.

  `int`

  `getNumberOfPages()`

  Returns the number of pages in this `Book`.

  `PageFormat`

  `getPageFormat(int pageIndex)`

  Returns the [`PageFormat`](PageFormat.md "class in java.awt.print") of the page specified by
  `pageIndex`.

  `Printable`

  `getPrintable(int pageIndex)`

  Returns the [`Printable`](Printable.md "interface in java.awt.print") instance responsible for rendering
  the page specified by `pageIndex`.

  `void`

  `setPage(int pageIndex,
  Printable painter,
  PageFormat page)`

  Sets the `PageFormat` and the `Painter` for a
  specified page number.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### Book

    public Book()

    Creates a new, empty `Book`.
* ## Method Details

  + ### getNumberOfPages

    public int getNumberOfPages()

    Returns the number of pages in this `Book`.

    Specified by:
    :   `getNumberOfPages` in interface `Pageable`

    Returns:
    :   the number of pages this `Book` contains.
  + ### getPageFormat

    public [PageFormat](PageFormat.md "class in java.awt.print") getPageFormat(int pageIndex)
    throws [IndexOutOfBoundsException](../../../../java.base/java/lang/IndexOutOfBoundsException.md "class in java.lang")

    Returns the [`PageFormat`](PageFormat.md "class in java.awt.print") of the page specified by
    `pageIndex`.

    Specified by:
    :   `getPageFormat` in interface `Pageable`

    Parameters:
    :   `pageIndex` - the zero based index of the page whose
        `PageFormat` is being requested

    Returns:
    :   the `PageFormat` describing the size and
        orientation of the page.

    Throws:
    :   `IndexOutOfBoundsException` - if the `Pageable`
        does not contain the requested page
  + ### getPrintable

    public [Printable](Printable.md "interface in java.awt.print") getPrintable(int pageIndex)
    throws [IndexOutOfBoundsException](../../../../java.base/java/lang/IndexOutOfBoundsException.md "class in java.lang")

    Returns the [`Printable`](Printable.md "interface in java.awt.print") instance responsible for rendering
    the page specified by `pageIndex`.

    Specified by:
    :   `getPrintable` in interface `Pageable`

    Parameters:
    :   `pageIndex` - the zero based index of the page whose
        `Printable` is being requested

    Returns:
    :   the `Printable` that renders the page.

    Throws:
    :   `IndexOutOfBoundsException` - if the `Pageable`
        does not contain the requested page
  + ### setPage

    public void setPage(int pageIndex,
    [Printable](Printable.md "interface in java.awt.print") painter,
    [PageFormat](PageFormat.md "class in java.awt.print") page)
    throws [IndexOutOfBoundsException](../../../../java.base/java/lang/IndexOutOfBoundsException.md "class in java.lang")

    Sets the `PageFormat` and the `Painter` for a
    specified page number.

    Parameters:
    :   `pageIndex` - the zero based index of the page whose
        painter and format is altered
    :   `painter` - the `Printable` instance that
        renders the page
    :   `page` - the size and orientation of the page

    Throws:
    :   `IndexOutOfBoundsException` - if the specified
        page is not already in this `Book`
    :   `NullPointerException` - if the `painter` or
        `page` argument is `null`
  + ### append

    public void append([Printable](Printable.md "interface in java.awt.print") painter,
    [PageFormat](PageFormat.md "class in java.awt.print") page)

    Appends a single page to the end of this `Book`.

    Parameters:
    :   `painter` - the `Printable` instance that
        renders the page
    :   `page` - the size and orientation of the page

    Throws:
    :   `NullPointerException` - If the `painter` or `page`
        argument is `null`
  + ### append

    public void append([Printable](Printable.md "interface in java.awt.print") painter,
    [PageFormat](PageFormat.md "class in java.awt.print") page,
    int numPages)

    Appends `numPages` pages to the end of this
    `Book`. Each of the pages is associated with
    `page`.

    Parameters:
    :   `painter` - the `Printable` instance that renders
        the page
    :   `page` - the size and orientation of the page
    :   `numPages` - the number of pages to be added to the
        this `Book`.

    Throws:
    :   `NullPointerException` - If the `painter` or `page`
        argument is `null`