Module [java.desktop](../../../module-summary.md)

Package [java.awt.print](package-summary.md)

# Interface PrinterGraphics

---

public interface PrinterGraphics

The `PrinterGraphics` interface is implemented by
[`Graphics`](../Graphics.md "class in java.awt") objects that are passed to
[`Printable`](Printable.md "interface in java.awt.print") objects to render a page. It allows an
application to find the [`PrinterJob`](PrinterJob.md "class in java.awt.print") object that is
controlling the printing.

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `PrinterJob`

  `getPrinterJob()`

  Returns the `PrinterJob` that is controlling the
  current rendering request.

* ## Method Details

  + ### getPrinterJob

    [PrinterJob](PrinterJob.md "class in java.awt.print") getPrinterJob()

    Returns the `PrinterJob` that is controlling the
    current rendering request.

    Returns:
    :   the `PrinterJob` controlling the current
        rendering request.

    See Also:
    :   - [`Printable`](Printable.md "interface in java.awt.print")