Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Interface PrintRequestAttribute

All Superinterfaces:
:   `Attribute`, `Serializable`

All Known Implementing Classes:
:   `Chromaticity`, `Copies`, `Destination`, `DialogOwner`, `DialogTypeSelection`, `Fidelity`, `Finishings`, `JobHoldUntil`, `JobImpressions`, `JobKOctets`, `JobMediaSheets`, `JobName`, `JobPriority`, `JobSheets`, `Media`, `MediaName`, `MediaPrintableArea`, `MediaSizeName`, `MediaTray`, `MultipleDocumentHandling`, `NumberUp`, `OrientationRequested`, `PageRanges`, `PresentationDirection`, `PrinterResolution`, `PrintQuality`, `RequestingUserName`, `SheetCollate`, `Sides`

---

public interface PrintRequestAttribute
extends [Attribute](Attribute.md "interface in javax.print.attribute")

Interface `PrintRequestAttribute` is a tagging interface which a
printing attribute class implements to indicate the attribute denotes a
requested setting for a print job.

Attributes which are tagged with `PrintRequestAttribute` and are also
tagged as `PrintJobAttribute`, represent the subset of job attributes
which can be part of the specification of a job request.

If an attribute implements [`DocAttribute`](DocAttribute.md "interface in javax.print.attribute") as well as
`PrintRequestAttribute`, the client may include the attribute in a
`Doc`'s attribute set to specify a job setting which pertains just to
that doc.

See Also:
:   * [`DocAttributeSet`](DocAttributeSet.md "interface in javax.print.attribute")
    * [`PrintRequestAttributeSet`](PrintRequestAttributeSet.md "interface in javax.print.attribute")

* ## Method Summary

  ### Methods inherited from interface javax.print.attribute.[Attribute](Attribute.md "interface in javax.print.attribute")

  `getCategory, getName`