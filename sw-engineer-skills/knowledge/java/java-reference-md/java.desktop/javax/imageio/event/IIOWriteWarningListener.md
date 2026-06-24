Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.event](package-summary.md)

# Interface IIOWriteWarningListener

All Superinterfaces:
:   `EventListener`

---

public interface IIOWriteWarningListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

An interface used by `ImageWriter` implementations to
notify callers of their image and thumbnail reading methods of
warnings (non-fatal errors). Fatal errors cause the relevant
read method to throw an `IIOException`.

Localization is handled by associating a `Locale`
with each `IIOWriteWarningListener` as it is registered
with an `ImageWriter`. It is up to the
`ImageWriter` to provide localized messages.

See Also:
:   * [`ImageWriter.addIIOWriteWarningListener(javax.imageio.event.IIOWriteWarningListener)`](../ImageWriter.md#addIIOWriteWarningListener(javax.imageio.event.IIOWriteWarningListener))
    * [`ImageWriter.removeIIOWriteWarningListener(javax.imageio.event.IIOWriteWarningListener)`](../ImageWriter.md#removeIIOWriteWarningListener(javax.imageio.event.IIOWriteWarningListener))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `warningOccurred(ImageWriter source,
  int imageIndex,
  String warning)`

  Reports the occurrence of a non-fatal error in encoding.

* ## Method Details

  + ### warningOccurred

    void warningOccurred([ImageWriter](../ImageWriter.md "class in javax.imageio") source,
    int imageIndex,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") warning)

    Reports the occurrence of a non-fatal error in encoding. Encoding
    will continue following the call to this method. The application
    may choose to display a dialog, print the warning to the console,
    ignore the warning, or take any other action it chooses.

    Parameters:
    :   `source` - the `ImageWriter` object calling this method.
    :   `imageIndex` - the index, starting with 0, of the image
        generating the warning.
    :   `warning` - a `String` containing the warning.