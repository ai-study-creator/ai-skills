Module [java.desktop](../../module-summary.md)

Package [javax.print](package-summary.md)

# Class StreamPrintService

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.print.StreamPrintService

All Implemented Interfaces:
:   `PrintService`

---

public abstract class StreamPrintService
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")
implements [PrintService](PrintService.md "interface in javax.print")

This class extends [`PrintService`](PrintService.md "interface in javax.print") and represents a print service that
prints data in different formats to a client-provided output stream. This is
principally intended for services where the output format is a document type
suitable for viewing or archiving. The output format must be declared as a
mime type. This is equivalent to an output document flavor where the
representation class is always "java.io.OutputStream" An instance of the
`StreamPrintService` class is obtained from a
[`StreamPrintServiceFactory`](StreamPrintServiceFactory.md "class in javax.print") instance.

Note that a `StreamPrintService` is different from a
`PrintService`, which supports a
[`Destination`](attribute/standard/Destination.md "class in javax.print.attribute.standard") attribute. A
`StreamPrintService` always requires an output stream, whereas a
`PrintService` optionally accepts a `Destination`. A
`StreamPrintService` has no default destination for its formatted
output. Additionally a `StreamPrintService` is expected to generate
output in a format useful in other contexts. `StreamPrintService`'s are
not expected to support the `Destination` attribute.

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `StreamPrintService(OutputStream out)`

  Constructs a `StreamPrintService` object.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `dispose()`

  Disposes this `StreamPrintService`.

  `abstract String`

  `getOutputFormat()`

  Returns the document format emitted by this print service.

  `OutputStream`

  `getOutputStream()`

  Gets the output stream.

  `boolean`

  `isDisposed()`

  Returns a `boolean` indicating whether or not this
  `StreamPrintService` has been disposed.

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.print.[PrintService](PrintService.md "interface in javax.print")

  `addPrintServiceAttributeListener, createPrintJob, equals, getAttribute, getAttributes, getDefaultAttributeValue, getName, getServiceUIFactory, getSupportedAttributeCategories, getSupportedAttributeValues, getSupportedDocFlavors, getUnsupportedAttributes, hashCode, isAttributeCategorySupported, isAttributeValueSupported, isDocFlavorSupported, removePrintServiceAttributeListener`

* ## Constructor Details

  + ### StreamPrintService

    protected StreamPrintService([OutputStream](../../../java.base/java/io/OutputStream.md "class in java.io") out)

    Constructs a `StreamPrintService` object.

    Parameters:
    :   `out` - stream to which to send formatted print data
* ## Method Details

  + ### getOutputStream

    public [OutputStream](../../../java.base/java/io/OutputStream.md "class in java.io") getOutputStream()

    Gets the output stream.

    Returns:
    :   the stream to which this service will send formatted print data
  + ### getOutputFormat

    public abstract [String](../../../java.base/java/lang/String.md "class in java.lang") getOutputFormat()

    Returns the document format emitted by this print service. Must be in
    mimetype format, compatible with the mime type components of
    `DocFlavors`

    Returns:
    :   mime type identifying the output format

    See Also:
    :   - [`DocFlavor`](DocFlavor.md "class in javax.print")
  + ### dispose

    public void dispose()

    Disposes this `StreamPrintService`. If a stream service cannot be
    re-used, it must be disposed to indicate this. Typically the client will
    call this method. Services which write data which cannot meaningfully be
    appended to may also dispose the stream. This does not close the stream.
    It just marks it as not for further use by this service.
  + ### isDisposed

    public boolean isDisposed()

    Returns a `boolean` indicating whether or not this
    `StreamPrintService` has been disposed. If this object has been
    disposed, will return `true`. Used by services and client
    applications to recognize streams to which no further data should be
    written.

    Returns:
    :   `true` if this `StreamPrintService` has been
        disposed; `false` otherwise