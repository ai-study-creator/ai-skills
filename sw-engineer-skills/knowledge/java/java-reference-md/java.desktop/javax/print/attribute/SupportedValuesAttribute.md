Module [java.desktop](../../../module-summary.md)

Package [javax.print.attribute](package-summary.md)

# Interface SupportedValuesAttribute

All Superinterfaces:
:   `Attribute`, `Serializable`

All Known Implementing Classes:
:   `CopiesSupported`, `JobImpressionsSupported`, `JobKOctetsSupported`, `JobMediaSheetsSupported`, `JobPrioritySupported`, `NumberUpSupported`

---

public interface SupportedValuesAttribute
extends [Attribute](Attribute.md "interface in javax.print.attribute")

Interface `SupportedValuesAttribute` is a tagging interface which a
printing attribute class implements to indicate the attribute describes the
supported values for another attribute. For example, if a Print Service
instance supports the [`Copies`](standard/Copies.md "class in javax.print.attribute.standard")
attribute, the Print Service instance will have a
[`CopiesSupported`](standard/CopiesSupported.md "class in javax.print.attribute.standard")
attribute, which is a `SupportedValuesAttribute` giving the legal
values a client may specify for the
[`Copies`](standard/Copies.md "class in javax.print.attribute.standard") attribute.

* ## Method Summary

  ### Methods inherited from interface javax.print.attribute.[Attribute](Attribute.md "interface in javax.print.attribute")

  `getCategory, getName`