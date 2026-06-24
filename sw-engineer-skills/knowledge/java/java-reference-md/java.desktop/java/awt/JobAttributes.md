Module [java.desktop](../../module-summary.md)

Package [java.awt](package-summary.md)

# Class JobAttributes

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

java.awt.JobAttributes

All Implemented Interfaces:
:   `Cloneable`

---

public final class JobAttributes
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang")

A set of attributes which control a print job.

Instances of this class control the number of copies, default selection,
destination, print dialog, file and printer names, page ranges, multiple
document handling (including collation), and multi-page imposition (such
as duplex) of every print job which uses the instance. Attribute names are
compliant with the Internet Printing Protocol (IPP) 1.1 where possible.
Attribute values are partially compliant where possible.

To use a method which takes an inner class type, pass a reference to
one of the constant fields of the inner class. Client code cannot create
new instances of the inner class types because none of those classes
has a public constructor. For example, to set the print dialog type to
the cross-platform, pure Java print dialog, use the following code:

```
 import java.awt.JobAttributes;

 public class PureJavaPrintDialogExample {
     public void setPureJavaPrintDialog(JobAttributes jobAttributes) {
         jobAttributes.setDialog(JobAttributes.DialogType.COMMON);
     }
 }
```

Every IPP attribute which supports an *attributeName*-default value
has a corresponding `setattributeNameToDefault` method.
Default value fields are not provided.

Since:
:   1.3

* ## Nested Class Summary

  Nested Classes

  Modifier and Type

  Class

  Description

  `static final class`

  `JobAttributes.DefaultSelectionType`

  A type-safe enumeration of possible default selection states.

  `static final class`

  `JobAttributes.DestinationType`

  A type-safe enumeration of possible job destinations.

  `static final class`

  `JobAttributes.DialogType`

  A type-safe enumeration of possible dialogs to display to the user.

  `static final class`

  `JobAttributes.MultipleDocumentHandlingType`

  A type-safe enumeration of possible multiple copy handling states.

  `static final class`

  `JobAttributes.SidesType`

  A type-safe enumeration of possible multi-page impositions.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `JobAttributes()`

  Constructs a `JobAttributes` instance with default
  values for every attribute.

  `JobAttributes(int copies,
  JobAttributes.DefaultSelectionType defaultSelection,
  JobAttributes.DestinationType destination,
  JobAttributes.DialogType dialog,
  String fileName,
  int maxPage,
  int minPage,
  JobAttributes.MultipleDocumentHandlingType multipleDocumentHandling,
  int[][] pageRanges,
  String printer,
  JobAttributes.SidesType sides)`

  Constructs a `JobAttributes` instance with the
  specified values for every attribute.

  `JobAttributes(JobAttributes obj)`

  Constructs a `JobAttributes` instance which is a copy
  of the supplied `JobAttributes`.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Object`

  `clone()`

  Creates and returns a copy of this `JobAttributes`.

  `boolean`

  `equals(Object obj)`

  Determines whether two JobAttributes are equal to each other.

  `int`

  `getCopies()`

  Returns the number of copies the application should render for jobs
  using these attributes.

  `JobAttributes.DefaultSelectionType`

  `getDefaultSelection()`

  Specifies whether, for jobs using these attributes, the application
  should print all pages, the range specified by the return value of
  `getPageRanges`, or the current selection.

  `JobAttributes.DestinationType`

  `getDestination()`

  Specifies whether output will be to a printer or a file for jobs using
  these attributes.

  `JobAttributes.DialogType`

  `getDialog()`

  Returns whether, for jobs using these attributes, the user should see
  a print dialog in which to modify the print settings, and which type of
  print dialog should be displayed.

  `String`

  `getFileName()`

  Specifies the file name for the output file for jobs using these
  attributes.

  `int`

  `getFromPage()`

  Returns, for jobs using these attributes, the first page to be
  printed, if a range of pages is to be printed.

  `int`

  `getMaxPage()`

  Specifies the maximum value the user can specify as the last page to
  be printed for jobs using these attributes.

  `int`

  `getMinPage()`

  Specifies the minimum value the user can specify as the first page to
  be printed for jobs using these attributes.

  `JobAttributes.MultipleDocumentHandlingType`

  `getMultipleDocumentHandling()`

  Specifies the handling of multiple copies, including collation, for
  jobs using these attributes.

  `int[][]`

  `getPageRanges()`

  Specifies, for jobs using these attributes, the ranges of pages to be
  printed, if a range of pages is to be printed.

  `String`

  `getPrinter()`

  Returns the destination printer for jobs using these attributes.

  `JobAttributes.SidesType`

  `getSides()`

  Returns how consecutive pages should be imposed upon the sides of the
  print medium for jobs using these attributes.

  `int`

  `getToPage()`

  Returns, for jobs using these attributes, the last page (inclusive)
  to be printed, if a range of pages is to be printed.

  `int`

  `hashCode()`

  Returns a hash code value for this JobAttributes.

  `void`

  `set(JobAttributes obj)`

  Sets all of the attributes of this `JobAttributes` to
  the same values as the attributes of obj.

  `void`

  `setCopies(int copies)`

  Specifies the number of copies the application should render for jobs
  using these attributes.

  `void`

  `setCopiesToDefault()`

  Sets the number of copies the application should render for jobs using
  these attributes to the default.

  `void`

  `setDefaultSelection(JobAttributes.DefaultSelectionType defaultSelection)`

  Specifies whether, for jobs using these attributes, the application
  should print all pages, the range specified by the return value of
  `getPageRanges`, or the current selection.

  `void`

  `setDestination(JobAttributes.DestinationType destination)`

  Specifies whether output will be to a printer or a file for jobs using
  these attributes.

  `void`

  `setDialog(JobAttributes.DialogType dialog)`

  Specifies whether, for jobs using these attributes, the user should see
  a print dialog in which to modify the print settings, and which type of
  print dialog should be displayed.

  `void`

  `setFileName(String fileName)`

  Specifies the file name for the output file for jobs using these
  attributes.

  `void`

  `setFromPage(int fromPage)`

  Specifies, for jobs using these attributes, the first page to be
  printed, if a range of pages is to be printed.

  `void`

  `setMaxPage(int maxPage)`

  Specifies the maximum value the user can specify as the last page to
  be printed for jobs using these attributes.

  `void`

  `setMinPage(int minPage)`

  Specifies the minimum value the user can specify as the first page to
  be printed for jobs using these attributes.

  `void`

  `setMultipleDocumentHandling(JobAttributes.MultipleDocumentHandlingType multipleDocumentHandling)`

  Specifies the handling of multiple copies, including collation, for
  jobs using these attributes.

  `void`

  `setMultipleDocumentHandlingToDefault()`

  Sets the handling of multiple copies, including collation, for jobs
  using these attributes to the default.

  `void`

  `setPageRanges(int[][] pageRanges)`

  Specifies, for jobs using these attributes, the ranges of pages to be
  printed, if a range of pages is to be printed.

  `void`

  `setPrinter(String printer)`

  Specifies the destination printer for jobs using these attributes.

  `void`

  `setSides(JobAttributes.SidesType sides)`

  Specifies how consecutive pages should be imposed upon the sides of the
  print medium for jobs using these attributes.

  `void`

  `setSidesToDefault()`

  Sets how consecutive pages should be imposed upon the sides of the
  print medium for jobs using these attributes to the default.

  `void`

  `setToPage(int toPage)`

  Specifies, for jobs using these attributes, the last page (inclusive)
  to be printed, if a range of pages is to be printed.

  `String`

  `toString()`

  Returns a string representation of this JobAttributes.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### JobAttributes

    public JobAttributes()

    Constructs a `JobAttributes` instance with default
    values for every attribute. The dialog defaults to
    `DialogType.NATIVE`. Min page defaults to
    `1`. Max page defaults to `Integer.MAX_VALUE`.
    Destination defaults to `DestinationType.PRINTER`.
    Selection defaults to `DefaultSelectionType.ALL`.
    Number of copies defaults to `1`. Multiple document handling defaults
    to `MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_UNCOLLATED_COPIES`.
    Sides defaults to `SidesType.ONE_SIDED`. File name defaults
    to `null`.
  + ### JobAttributes

    public JobAttributes([JobAttributes](JobAttributes.md "class in java.awt") obj)

    Constructs a `JobAttributes` instance which is a copy
    of the supplied `JobAttributes`.

    Parameters:
    :   `obj` - the `JobAttributes` to copy
  + ### JobAttributes

    public JobAttributes(int copies,
    [JobAttributes.DefaultSelectionType](JobAttributes.DefaultSelectionType.md "class in java.awt") defaultSelection,
    [JobAttributes.DestinationType](JobAttributes.DestinationType.md "class in java.awt") destination,
    [JobAttributes.DialogType](JobAttributes.DialogType.md "class in java.awt") dialog,
    [String](../../../java.base/java/lang/String.md "class in java.lang") fileName,
    int maxPage,
    int minPage,
    [JobAttributes.MultipleDocumentHandlingType](JobAttributes.MultipleDocumentHandlingType.md "class in java.awt") multipleDocumentHandling,
    int[][] pageRanges,
    [String](../../../java.base/java/lang/String.md "class in java.lang") printer,
    [JobAttributes.SidesType](JobAttributes.SidesType.md "class in java.awt") sides)

    Constructs a `JobAttributes` instance with the
    specified values for every attribute.

    Parameters:
    :   `copies` - an integer greater than 0
    :   `defaultSelection` - `DefaultSelectionType.ALL`,
        `DefaultSelectionType.RANGE`, or
        `DefaultSelectionType.SELECTION`
    :   `destination` - `DestinationType.FILE` or
        `DestinationType.PRINTER`
    :   `dialog` - `DialogType.COMMON`,
        `DialogType.NATIVE`, or
        `DialogType.NONE`
    :   `fileName` - the possibly `null` file name
    :   `maxPage` - an integer greater than zero and greater than or equal
        to *minPage*
    :   `minPage` - an integer greater than zero and less than or equal
        to *maxPage*
    :   `multipleDocumentHandling` - `MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_COLLATED_COPIES` or
        `MultipleDocumentHandlingType.SEPARATE_DOCUMENTS_UNCOLLATED_COPIES`
    :   `pageRanges` - an array of integer arrays of two elements; an array
        is interpreted as a range spanning all pages including and
        between the specified pages; ranges must be in ascending
        order and must not overlap; specified page numbers cannot be
        less than *minPage* nor greater than *maxPage*;
        for example:

        ```
                  (new int[][] { new int[] { 1, 3 }, new int[] { 5, 5 },
                                 new int[] { 15, 19 } }),
        ```

        specifies pages 1, 2, 3, 5, 15, 16, 17, 18, and 19. Note that
        (`new int[][] { new int[] { 1, 1 }, new int[] { 1, 2 } }`),
        is an invalid set of page ranges because the two ranges
        overlap
    :   `printer` - the possibly `null` printer name
    :   `sides` - `SidesType.ONE_SIDED`,
        `SidesType.TWO_SIDED_LONG_EDGE`, or
        `SidesType.TWO_SIDED_SHORT_EDGE`

    Throws:
    :   `IllegalArgumentException` - if one or more of the above
        conditions is violated
* ## Method Details

  + ### clone

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") clone()

    Creates and returns a copy of this `JobAttributes`.

    Overrides:
    :   `clone` in class `Object`

    Returns:
    :   the newly created copy; it is safe to cast this Object into
        a `JobAttributes`

    See Also:
    :   - [`Cloneable`](../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + ### set

    public void set([JobAttributes](JobAttributes.md "class in java.awt") obj)

    Sets all of the attributes of this `JobAttributes` to
    the same values as the attributes of obj.

    Parameters:
    :   `obj` - the `JobAttributes` to copy
  + ### getCopies

    public int getCopies()

    Returns the number of copies the application should render for jobs
    using these attributes. This attribute is updated to the value chosen
    by the user.

    Returns:
    :   an integer greater than 0.
  + ### setCopies

    public void setCopies(int copies)

    Specifies the number of copies the application should render for jobs
    using these attributes. Not specifying this attribute is equivalent to
    specifying `1`.

    Parameters:
    :   `copies` - an integer greater than 0

    Throws:
    :   `IllegalArgumentException` - if `copies` is less than
        or equal to 0
  + ### setCopiesToDefault

    public void setCopiesToDefault()

    Sets the number of copies the application should render for jobs using
    these attributes to the default. The default number of copies is 1.
  + ### getDefaultSelection

    public [JobAttributes.DefaultSelectionType](JobAttributes.DefaultSelectionType.md "class in java.awt") getDefaultSelection()

    Specifies whether, for jobs using these attributes, the application
    should print all pages, the range specified by the return value of
    `getPageRanges`, or the current selection. This attribute
    is updated to the value chosen by the user.

    Returns:
    :   DefaultSelectionType.ALL, DefaultSelectionType.RANGE, or
        DefaultSelectionType.SELECTION
  + ### setDefaultSelection

    public void setDefaultSelection([JobAttributes.DefaultSelectionType](JobAttributes.DefaultSelectionType.md "class in java.awt") defaultSelection)

    Specifies whether, for jobs using these attributes, the application
    should print all pages, the range specified by the return value of
    `getPageRanges`, or the current selection. Not specifying
    this attribute is equivalent to specifying DefaultSelectionType.ALL.

    Parameters:
    :   `defaultSelection` - DefaultSelectionType.ALL,
        DefaultSelectionType.RANGE, or DefaultSelectionType.SELECTION.

    Throws:
    :   `IllegalArgumentException` - if defaultSelection is `null`
  + ### getDestination

    public [JobAttributes.DestinationType](JobAttributes.DestinationType.md "class in java.awt") getDestination()

    Specifies whether output will be to a printer or a file for jobs using
    these attributes. This attribute is updated to the value chosen by the
    user.

    Returns:
    :   DestinationType.FILE or DestinationType.PRINTER
  + ### setDestination

    public void setDestination([JobAttributes.DestinationType](JobAttributes.DestinationType.md "class in java.awt") destination)

    Specifies whether output will be to a printer or a file for jobs using
    these attributes. Not specifying this attribute is equivalent to
    specifying DestinationType.PRINTER.

    Parameters:
    :   `destination` - DestinationType.FILE or DestinationType.PRINTER.

    Throws:
    :   `IllegalArgumentException` - if destination is null.
  + ### getDialog

    public [JobAttributes.DialogType](JobAttributes.DialogType.md "class in java.awt") getDialog()

    Returns whether, for jobs using these attributes, the user should see
    a print dialog in which to modify the print settings, and which type of
    print dialog should be displayed. DialogType.COMMON denotes a cross-
    platform, pure Java print dialog. DialogType.NATIVE denotes the
    platform's native print dialog. If a platform does not support a native
    print dialog, the pure Java print dialog is displayed instead.
    DialogType.NONE specifies no print dialog (i.e., background printing).
    This attribute cannot be modified by, and is not subject to any
    limitations of, the implementation or the target printer.

    Returns:
    :   `DialogType.COMMON`, `DialogType.NATIVE`, or
        `DialogType.NONE`
  + ### setDialog

    public void setDialog([JobAttributes.DialogType](JobAttributes.DialogType.md "class in java.awt") dialog)

    Specifies whether, for jobs using these attributes, the user should see
    a print dialog in which to modify the print settings, and which type of
    print dialog should be displayed. DialogType.COMMON denotes a cross-
    platform, pure Java print dialog. DialogType.NATIVE denotes the
    platform's native print dialog. If a platform does not support a native
    print dialog, the pure Java print dialog is displayed instead.
    DialogType.NONE specifies no print dialog (i.e., background printing).
    Not specifying this attribute is equivalent to specifying
    DialogType.NATIVE.

    Parameters:
    :   `dialog` - DialogType.COMMON, DialogType.NATIVE, or
        DialogType.NONE.

    Throws:
    :   `IllegalArgumentException` - if dialog is null.
  + ### getFileName

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getFileName()

    Specifies the file name for the output file for jobs using these
    attributes. This attribute is updated to the value chosen by the user.

    Returns:
    :   the possibly `null` file name
  + ### setFileName

    public void setFileName([String](../../../java.base/java/lang/String.md "class in java.lang") fileName)

    Specifies the file name for the output file for jobs using these
    attributes. Default is platform-dependent and implementation-defined.

    Parameters:
    :   `fileName` - the possibly null file name.
  + ### getFromPage

    public int getFromPage()

    Returns, for jobs using these attributes, the first page to be
    printed, if a range of pages is to be printed. This attribute is
    updated to the value chosen by the user. An application should ignore
    this attribute on output, unless the return value of the
    `getDefaultSelection` method is DefaultSelectionType.RANGE. An
    application should honor the return value of `getPageRanges`
    over the return value of this method, if possible.

    Returns:
    :   an integer greater than zero and less than or equal to
        *toPage* and greater than or equal to *minPage* and
        less than or equal to *maxPage*.
  + ### setFromPage

    public void setFromPage(int fromPage)

    Specifies, for jobs using these attributes, the first page to be
    printed, if a range of pages is to be printed. If this attribute is not
    specified, then the values from the pageRanges attribute are used. If
    pageRanges and either or both of fromPage and toPage are specified,
    pageRanges takes precedence. Specifying none of pageRanges, fromPage,
    or toPage is equivalent to calling
    setPageRanges(new int[][] { new int[] { *minPage* } });

    Parameters:
    :   `fromPage` - an integer greater than zero and less than or equal to
        *toPage* and greater than or equal to *minPage* and
        less than or equal to *maxPage*.

    Throws:
    :   `IllegalArgumentException` - if one or more of the above
        conditions is violated.
  + ### getMaxPage

    public int getMaxPage()

    Specifies the maximum value the user can specify as the last page to
    be printed for jobs using these attributes. This attribute cannot be
    modified by, and is not subject to any limitations of, the
    implementation or the target printer.

    Returns:
    :   an integer greater than zero and greater than or equal
        to *minPage*.
  + ### setMaxPage

    public void setMaxPage(int maxPage)

    Specifies the maximum value the user can specify as the last page to
    be printed for jobs using these attributes. Not specifying this
    attribute is equivalent to specifying `Integer.MAX_VALUE`.

    Parameters:
    :   `maxPage` - an integer greater than zero and greater than or equal
        to *minPage*

    Throws:
    :   `IllegalArgumentException` - if one or more of the above
        conditions is violated
  + ### getMinPage

    public int getMinPage()

    Specifies the minimum value the user can specify as the first page to
    be printed for jobs using these attributes. This attribute cannot be
    modified by, and is not subject to any limitations of, the
    implementation or the target printer.

    Returns:
    :   an integer greater than zero and less than or equal
        to *maxPage*.
  + ### setMinPage

    public void setMinPage(int minPage)

    Specifies the minimum value the user can specify as the first page to
    be printed for jobs using these attributes. Not specifying this
    attribute is equivalent to specifying `1`.

    Parameters:
    :   `minPage` - an integer greater than zero and less than or equal
        to *maxPage*.

    Throws:
    :   `IllegalArgumentException` - if one or more of the above
        conditions is violated.
  + ### getMultipleDocumentHandling

    public [JobAttributes.MultipleDocumentHandlingType](JobAttributes.MultipleDocumentHandlingType.md "class in java.awt") getMultipleDocumentHandling()

    Specifies the handling of multiple copies, including collation, for
    jobs using these attributes. This attribute is updated to the value
    chosen by the user.

    Returns:
    :   MultipleDocumentHandlingType.SEPARATE\_DOCUMENTS\_COLLATED\_COPIES or
        MultipleDocumentHandlingType.SEPARATE\_DOCUMENTS\_UNCOLLATED\_COPIES.
  + ### setMultipleDocumentHandling

    public void setMultipleDocumentHandling([JobAttributes.MultipleDocumentHandlingType](JobAttributes.MultipleDocumentHandlingType.md "class in java.awt") multipleDocumentHandling)

    Specifies the handling of multiple copies, including collation, for
    jobs using these attributes. Not specifying this attribute is equivalent
    to specifying
    MultipleDocumentHandlingType.SEPARATE\_DOCUMENTS\_UNCOLLATED\_COPIES.

    Parameters:
    :   `multipleDocumentHandling` - MultipleDocumentHandlingType.SEPARATE\_DOCUMENTS\_COLLATED\_COPIES or
        MultipleDocumentHandlingType.SEPARATE\_DOCUMENTS\_UNCOLLATED\_COPIES.

    Throws:
    :   `IllegalArgumentException` - if multipleDocumentHandling is null.
  + ### setMultipleDocumentHandlingToDefault

    public void setMultipleDocumentHandlingToDefault()

    Sets the handling of multiple copies, including collation, for jobs
    using these attributes to the default. The default handling is
    MultipleDocumentHandlingType.SEPARATE\_DOCUMENTS\_UNCOLLATED\_COPIES.
  + ### getPageRanges

    public int[][] getPageRanges()

    Specifies, for jobs using these attributes, the ranges of pages to be
    printed, if a range of pages is to be printed. All range numbers are
    inclusive. This attribute is updated to the value chosen by the user.
    An application should ignore this attribute on output, unless the
    return value of the `getDefaultSelection` method is
    DefaultSelectionType.RANGE.

    Returns:
    :   an array of integer arrays of 2 elements. An array
        is interpreted as a range spanning all pages including and
        between the specified pages. Ranges must be in ascending
        order and must not overlap. Specified page numbers cannot be
        less than *minPage* nor greater than *maxPage*.
        For example:
        (new int[][] { new int[] { 1, 3 }, new int[] { 5, 5 },
        new int[] { 15, 19 } }),
        specifies pages 1, 2, 3, 5, 15, 16, 17, 18, and 19.
  + ### setPageRanges

    public void setPageRanges(int[][] pageRanges)

    Specifies, for jobs using these attributes, the ranges of pages to be
    printed, if a range of pages is to be printed. All range numbers are
    inclusive. If this attribute is not specified, then the values from the
    fromPage and toPages attributes are used. If pageRanges and either or
    both of fromPage and toPage are specified, pageRanges takes precedence.
    Specifying none of pageRanges, fromPage, or toPage is equivalent to
    calling setPageRanges(new int[][] { new int[] { *minPage*,
    *minPage* } });

    Parameters:
    :   `pageRanges` - an array of integer arrays of 2 elements. An array
        is interpreted as a range spanning all pages including and
        between the specified pages. Ranges must be in ascending
        order and must not overlap. Specified page numbers cannot be
        less than *minPage* nor greater than *maxPage*.
        For example:
        (new int[][] { new int[] { 1, 3 }, new int[] { 5, 5 },
        new int[] { 15, 19 } }),
        specifies pages 1, 2, 3, 5, 15, 16, 17, 18, and 19. Note that
        (new int[][] { new int[] { 1, 1 }, new int[] { 1, 2 } }),
        is an invalid set of page ranges because the two ranges
        overlap.

    Throws:
    :   `IllegalArgumentException` - if one or more of the above
        conditions is violated.
  + ### getPrinter

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getPrinter()

    Returns the destination printer for jobs using these attributes. This
    attribute is updated to the value chosen by the user.

    Returns:
    :   the possibly null printer name.
  + ### setPrinter

    public void setPrinter([String](../../../java.base/java/lang/String.md "class in java.lang") printer)

    Specifies the destination printer for jobs using these attributes.
    Default is platform-dependent and implementation-defined.

    Parameters:
    :   `printer` - the possibly null printer name.
  + ### getSides

    public [JobAttributes.SidesType](JobAttributes.SidesType.md "class in java.awt") getSides()

    Returns how consecutive pages should be imposed upon the sides of the
    print medium for jobs using these attributes. SidesType.ONE\_SIDED
    imposes each consecutive page upon the same side of consecutive media
    sheets. This imposition is sometimes called *simplex*.
    SidesType.TWO\_SIDED\_LONG\_EDGE imposes each consecutive pair of pages
    upon front and back sides of consecutive media sheets, such that the
    orientation of each pair of pages on the medium would be correct for
    the reader as if for binding on the long edge. This imposition is
    sometimes called *duplex*. SidesType.TWO\_SIDED\_SHORT\_EDGE imposes
    each consecutive pair of pages upon front and back sides of consecutive
    media sheets, such that the orientation of each pair of pages on the
    medium would be correct for the reader as if for binding on the short
    edge. This imposition is sometimes called *tumble*. This attribute
    is updated to the value chosen by the user.

    Returns:
    :   SidesType.ONE\_SIDED, SidesType.TWO\_SIDED\_LONG\_EDGE, or
        SidesType.TWO\_SIDED\_SHORT\_EDGE.
  + ### setSides

    public void setSides([JobAttributes.SidesType](JobAttributes.SidesType.md "class in java.awt") sides)

    Specifies how consecutive pages should be imposed upon the sides of the
    print medium for jobs using these attributes. SidesType.ONE\_SIDED
    imposes each consecutive page upon the same side of consecutive media
    sheets. This imposition is sometimes called *simplex*.
    SidesType.TWO\_SIDED\_LONG\_EDGE imposes each consecutive pair of pages
    upon front and back sides of consecutive media sheets, such that the
    orientation of each pair of pages on the medium would be correct for
    the reader as if for binding on the long edge. This imposition is
    sometimes called *duplex*. SidesType.TWO\_SIDED\_SHORT\_EDGE imposes
    each consecutive pair of pages upon front and back sides of consecutive
    media sheets, such that the orientation of each pair of pages on the
    medium would be correct for the reader as if for binding on the short
    edge. This imposition is sometimes called *tumble*. Not specifying
    this attribute is equivalent to specifying SidesType.ONE\_SIDED.

    Parameters:
    :   `sides` - SidesType.ONE\_SIDED, SidesType.TWO\_SIDED\_LONG\_EDGE, or
        SidesType.TWO\_SIDED\_SHORT\_EDGE.

    Throws:
    :   `IllegalArgumentException` - if sides is null.
  + ### setSidesToDefault

    public void setSidesToDefault()

    Sets how consecutive pages should be imposed upon the sides of the
    print medium for jobs using these attributes to the default. The
    default imposition is SidesType.ONE\_SIDED.
  + ### getToPage

    public int getToPage()

    Returns, for jobs using these attributes, the last page (inclusive)
    to be printed, if a range of pages is to be printed. This attribute is
    updated to the value chosen by the user. An application should ignore
    this attribute on output, unless the return value of the
    `getDefaultSelection` method is DefaultSelectionType.RANGE. An
    application should honor the return value of `getPageRanges`
    over the return value of this method, if possible.

    Returns:
    :   an integer greater than zero and greater than or equal
        to *toPage* and greater than or equal to *minPage*
        and less than or equal to *maxPage*.
  + ### setToPage

    public void setToPage(int toPage)

    Specifies, for jobs using these attributes, the last page (inclusive)
    to be printed, if a range of pages is to be printed.
    If this attribute is not specified, then the values from the pageRanges
    attribute are used. If pageRanges and either or both of fromPage and
    toPage are specified, pageRanges takes precedence. Specifying none of
    pageRanges, fromPage, or toPage is equivalent to calling
    setPageRanges(new int[][] { new int[] { *minPage* } });

    Parameters:
    :   `toPage` - an integer greater than zero and greater than or equal
        to *fromPage* and greater than or equal to *minPage*
        and less than or equal to *maxPage*.

    Throws:
    :   `IllegalArgumentException` - if one or more of the above
        conditions is violated.
  + ### equals

    public boolean equals([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Determines whether two JobAttributes are equal to each other.

    Two JobAttributes are equal if and only if each of their attributes are
    equal. Attributes of enumeration type are equal if and only if the
    fields refer to the same unique enumeration object. A set of page
    ranges is equal if and only if the sets are of equal length, each range
    enumerates the same pages, and the ranges are in the same order.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - the object whose equality will be checked.

    Returns:
    :   whether obj is equal to this JobAttribute according to the
        above criteria.

    See Also:
    :   - [`Object.hashCode()`](../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public int hashCode()

    Returns a hash code value for this JobAttributes.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   the hash code.

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this JobAttributes.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation.