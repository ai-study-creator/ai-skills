Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Interface PrintJobAttribute

All Superinterfaces:
:   `Attribute`, `Serializable`

All Known Implementing Classes:
:   `Chromaticity`, `Copies`, `DateTimeAtCompleted`, `DateTimeAtCreation`, `DateTimeAtProcessing`, `Destination`, `Fidelity`, `Finishings`, `JobHoldUntil`, `JobImpressions`, `JobImpressionsCompleted`, `JobKOctets`, `JobKOctetsProcessed`, `JobMediaSheets`, `JobMediaSheetsCompleted`, `JobMessageFromOperator`, `JobName`, `JobOriginatingUserName`, `JobPriority`, `JobSheets`, `JobState`, `JobStateReasons`, `Media`, `MediaName`, `MediaPrintableArea`, `MediaSizeName`, `MediaTray`, `MultipleDocumentHandling`, `NumberOfDocuments`, `NumberOfInterveningJobs`, `NumberUp`, `OrientationRequested`, `OutputDeviceAssigned`, `PageRanges`, `PresentationDirection`, `PrinterResolution`, `PrintQuality`, `SheetCollate`, `Sides`

---

public interface PrintJobAttribute
extends [Attribute](Attribute.md "interface in javax.print.attribute")

`PrintJobAttribute` is a tagging interface which a printing attribute
class implements to indicate the attribute describes the status of a Print
Job or some other characteristic of a Print Job. A Print Service instance
adds a number of `PrintJobAttributes` to a Print Job's attribute set to
report the Print Job's status. If an attribute implements
[`PrintRequestAttribute`](PrintRequestAttribute.md "interface in javax.print.attribute") as well as
`PrintJobAttribute`, the client may include the attribute in a
attribute set to specify the attribute's value for the Print Job.

See Also:
:   * [`PrintRequestAttributeSet`](PrintRequestAttributeSet.md "interface in javax.print.attribute")
    * [`PrintJobAttributeSet`](PrintJobAttributeSet.md "interface in javax.print.attribute")

* ## Method Summary

  ### Methods inherited from interface javax.print.attribute.[Attribute](Attribute.md "interface in javax.print.attribute")

  `getCategory, getName`