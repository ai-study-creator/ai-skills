Module [java.xml](../../../../module-summary.md)

# Package javax.xml.transform.stax

---

package javax.xml.transform.stax

Provides StAX specific transformation classes.

The [`StAXSource`](StAXSource.md "class in javax.xml.transform.stax") class encapsulates a
[`XMLStreamReader`](../../stream/XMLStreamReader.md "interface in javax.xml.stream") or [`XMLEventReader`](../../stream/XMLEventReader.md "interface in javax.xml.stream")
and can be used as an input where a [`Source`](../Source.md "interface in javax.xml.transform")
object is accepted.

The [`StAXResult`](StAXResult.md "class in javax.xml.transform.stax") class encapsulates a
[`XMLStreamWriter`](../../stream/XMLStreamWriter.md "interface in javax.xml.stream") or [`XMLEventWriter`](../../stream/XMLEventWriter.md "interface in javax.xml.stream")
and can be used as an output where a [`Result`](../Result.md "interface in javax.xml.transform")
object is accepted.

Since:
:   1.6

* Related Packages

  Package

  Description

  [javax.xml.transform](../package-summary.md)

  Defines the generic APIs for processing transformation instructions,
  and performing a transformation from source to result.

  [javax.xml.transform.dom](../dom/package-summary.md)

  Provides DOM specific transformation classes.

  [javax.xml.transform.sax](../sax/package-summary.md)

  Provides SAX specific transformation classes.

  [javax.xml.transform.stream](../stream/package-summary.md)

  Provides stream and URI specific transformation classes.
* Classes

  Class

  Description

  [StAXResult](StAXResult.md "class in javax.xml.transform.stax")

  Acts as a holder for an XML [`Result`](../Result.md "interface in javax.xml.transform") in the
  form of a StAX writer,i.e.

  [StAXSource](StAXSource.md "class in javax.xml.transform.stax")

  Acts as a holder for an XML [`Source`](../Source.md "interface in javax.xml.transform") in the
  form of a StAX reader,i.e.