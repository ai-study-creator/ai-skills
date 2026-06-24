Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Interface PrintServiceAttribute

All Superinterfaces:
:   `Attribute`, `Serializable`

All Known Implementing Classes:
:   `ColorSupported`, `PagesPerMinute`, `PagesPerMinuteColor`, `PDLOverrideSupported`, `PrinterInfo`, `PrinterIsAcceptingJobs`, `PrinterLocation`, `PrinterMakeAndModel`, `PrinterMessageFromOperator`, `PrinterMoreInfo`, `PrinterMoreInfoManufacturer`, `PrinterName`, `PrinterState`, `PrinterStateReasons`, `PrinterURI`, `QueuedJobCount`

---

public interface PrintServiceAttribute
extends [Attribute](Attribute.md "interface in javax.print.attribute")

Interface `PrintServiceAttribute` is a tagging interface which a
printing attribute class implements to indicate the attribute describes the
status of a Print Service or some other characteristic of a Print Service. A
Print Service instance adds a number of `PrintServiceAttributes` to a
Print service's attribute set to report the Print Service's status.

See Also:
:   * [`PrintServiceAttributeSet`](PrintServiceAttributeSet.md "interface in javax.print.attribute")

* ## Method Summary

  ### Methods inherited from interface javax.print.attribute.[Attribute](Attribute.md "interface in javax.print.attribute")

  `getCategory, getName`