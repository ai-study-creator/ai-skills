Module [java.desktop](../../../module-summary.md)

# Package java.awt.print

---

package java.awt.print

Provides classes and interfaces for a general printing API. The API includes
such features as:

* the ability to specify document types
* mechanisms for control of page setup and page formats
* the ability to manage job control dialogs

Since:
:   1.2

* Related Packages

  Package

  Description

  [java.awt](../package-summary.md)

  Contains all of the classes for creating user interfaces and for painting
  graphics and images.
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [Book](Book.md "class in java.awt.print")

  The `Book` class provides a representation of a document in
  which pages may have different page formats and page painters.

  [Pageable](Pageable.md "interface in java.awt.print")

  The `Pageable` implementation represents a set of
  pages to be printed.

  [PageFormat](PageFormat.md "class in java.awt.print")

  The `PageFormat` class describes the size and
  orientation of a page to be printed.

  [Paper](Paper.md "class in java.awt.print")

  The `Paper` class describes the physical characteristics of
  a piece of paper.

  [Printable](Printable.md "interface in java.awt.print")

  The `Printable` interface is implemented
  by the `print` methods of the current
  page painter, which is called by the printing
  system to render a page.

  [PrinterAbortException](PrinterAbortException.md "class in java.awt.print")

  The `PrinterAbortException` class is a subclass of
  [`PrinterException`](PrinterException.md "class in java.awt.print") and is used to indicate that a user
  or application has terminated the print job while it was in
  the process of printing.

  [PrinterException](PrinterException.md "class in java.awt.print")

  The `PrinterException` class and its subclasses are used
  to indicate that an exceptional condition has occurred in the print
  system.

  [PrinterGraphics](PrinterGraphics.md "interface in java.awt.print")

  The `PrinterGraphics` interface is implemented by
  [`Graphics`](../Graphics.md "class in java.awt") objects that are passed to
  [`Printable`](Printable.md "interface in java.awt.print") objects to render a page.

  [PrinterIOException](PrinterIOException.md "class in java.awt.print")

  The `PrinterIOException` class is a subclass of
  [`PrinterException`](PrinterException.md "class in java.awt.print") and is used to indicate that an IO error
  of some sort has occurred while printing.

  [PrinterJob](PrinterJob.md "class in java.awt.print")

  The `PrinterJob` class is the principal class that controls
  printing.