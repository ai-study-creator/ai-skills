Module [java.desktop](../../../module-summary.md)

Package [javax.imageio.event](package-summary.md)

# Interface IIOReadWarningListener

All Superinterfaces:
:   `EventListener`

---

public interface IIOReadWarningListener
extends [EventListener](../../../../java.base/java/util/EventListener.md "interface in java.util")

An interface used by `ImageReader` implementations to
notify callers of their image and thumbnail reading methods of
warnings (non-fatal errors). Fatal errors cause the relevant
read method to throw an `IIOException`.

Localization is handled by associating a `Locale`
with each `IIOReadWarningListener` as it is registered
with an `ImageReader`. It is up to the
`ImageReader` to provide localized messages.

See Also:
:   * [`ImageReader.addIIOReadWarningListener(javax.imageio.event.IIOReadWarningListener)`](../ImageReader.md#addIIOReadWarningListener(javax.imageio.event.IIOReadWarningListener))
    * [`ImageReader.removeIIOReadWarningListener(javax.imageio.event.IIOReadWarningListener)`](../ImageReader.md#removeIIOReadWarningListener(javax.imageio.event.IIOReadWarningListener))

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `warningOccurred(ImageReader source,
  String warning)`

  Reports the occurrence of a non-fatal error in decoding.

* ## Method Details

  + ### warningOccurred

    void warningOccurred([ImageReader](../ImageReader.md "class in javax.imageio") source,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") warning)

    Reports the occurrence of a non-fatal error in decoding. Decoding
    will continue following the call to this method. The application
    may choose to display a dialog, print the warning to the console,
    ignore the warning, or take any other action it chooses.

    Parameters:
    :   `source` - the `ImageReader` object calling this method.
    :   `warning` - a `String` containing the warning.