Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Class StreamPrintServiceFactory

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.StreamPrintServiceFactory

---

public abstract class StreamPrintServiceFactory
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

A `StreamPrintServiceFactory` is the factory for
[`StreamPrintService`](StreamPrintService.md "class in javax.print") instances, which can print to an output stream in
a particular document format described as a mime type. A typical output
document format may be Postscript(TM).

This class is implemented by a service and located by the implementation
using the [`ServiceLoader`](../../../java.base/java/util/ServiceLoader.md "class in java.util") facility.

Applications locate instances of this class by calling the
[`lookupStreamPrintServiceFactories(DocFlavor, String)`](#lookupStreamPrintServiceFactories(javax.print.DocFlavor,java.lang.String)) method.

Applications can use a `StreamPrintService` obtained from a factory in
place of a `PrintService` which represents a physical printer device.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `StreamPrintServiceFactory()`

  Constructor for subclasses to call.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `abstract String`

  `getOutputFormat()`

  Queries the factory for the document format that is emitted by printers
  obtained from this factory.

  `abstract StreamPrintService`

  `getPrintService(OutputStream out)`

  Returns a `StreamPrintService` that can print to the specified
  output stream.

  `abstract DocFlavor[]`

  `getSupportedDocFlavors()`

  Queries the factory for the document flavors that can be accepted by
  printers obtained from this factory.

  `static StreamPrintServiceFactory[]`

  `lookupStreamPrintServiceFactories(DocFlavor flavor,
  String outputMimeType)`

  Locates factories for print services that can be used with a print job to
  output a stream of data in the format specified by
  `outputMimeType`.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### StreamPrintServiceFactory

    protected StreamPrintServiceFactory()

    Constructor for subclasses to call.
* ## Method Details

  + ### lookupStreamPrintServiceFactories

    public static [StreamPrintServiceFactory](StreamPrintServiceFactory.md "class in javax.print")[] lookupStreamPrintServiceFactories([DocFlavor](DocFlavor.md "class in javax.print") flavor,
    [String](../../../java.base/java/lang/String.md "class in java.lang") outputMimeType)

    Locates factories for print services that can be used with a print job to
    output a stream of data in the format specified by
    `outputMimeType`.

    The `outputMimeType` parameter describes the document type that you
    want to create, whereas the `flavor` parameter describes the format
    in which the input data will be provided by the application to the
    `StreamPrintService`.

    Although `null` is an acceptable value to use in the lookup of
    stream printing services, it's typical to search for a particular desired
    format, such as Postscript(TM).

    Parameters:
    :   `flavor` - of the input document type - `null` means match all
        types
    :   `outputMimeType` - representing the required output format, used to
        identify suitable stream printer factories. A value of
        `null` means match all formats.

    Returns:
    :   matching factories for stream print service instance, empty if no
        suitable factories could be located
  + ### getOutputFormat

    public abstract [String](../../../java.base/java/lang/String.md "class in java.lang") getOutputFormat()

    Queries the factory for the document format that is emitted by printers
    obtained from this factory.

    Returns:
    :   the output format described as a mime type
  + ### getSupportedDocFlavors

    public abstract [DocFlavor](DocFlavor.md "class in javax.print")[] getSupportedDocFlavors()

    Queries the factory for the document flavors that can be accepted by
    printers obtained from this factory.

    Returns:
    :   array of supported doc flavors
  + ### getPrintService

    public abstract [StreamPrintService](StreamPrintService.md "class in javax.print") getPrintService([OutputStream](../../../java.base/java/io/OutputStream.md "class in java.io") out)

    Returns a `StreamPrintService` that can print to the specified
    output stream. The output stream is created and managed by the
    application. It is the application's responsibility to close the stream
    and to ensure that this `Printer` is not reused. The application
    should not close this stream until any print job created from the printer
    is complete. Doing so earlier may generate a `PrinterException` and
    an event indicating that the job failed.

    Whereas a `PrintService` connected to a physical printer can be
    reused, a `StreamPrintService` connected to a stream cannot. The
    underlying `StreamPrintService` may be disposed by the print system
    with the [`dispose`](StreamPrintService.md#dispose()) method before
    returning from the
    [`print`](DocPrintJob.md#print(javax.print.Doc,javax.print.attribute.PrintRequestAttributeSet)) method of
    `DocPrintJob` so that the print system knows this printer is no
    longer usable. This is equivalent to a physical printer going offline -
    permanently. Applications may supply a `null` print stream to
    create a queryable service. It is not valid to create a `PrintJob`
    for such a stream. Implementations which allocate resources on
    construction should examine the stream and may wish to only allocate
    resources if the stream is `non-null`.

    Parameters:
    :   `out` - destination stream for generated output

    Returns:
    :   a `PrintService` which will generate the format specified
        by the `DocFlavor` supported by this factory