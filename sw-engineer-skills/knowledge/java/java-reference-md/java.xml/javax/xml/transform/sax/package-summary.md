Module [java.xml](../../../../module-summary.md)

# Package javax.xml.transform.sax

---

package javax.xml.transform.sax

Provides SAX specific transformation classes.

The [`SAXSource`](SAXSource.md "class in javax.xml.transform.sax") class allows the
setting of an [`XMLReader`](../../../../org/xml/sax/XMLReader.md "interface in org.xml.sax") to be used for pulling
parse events, and an [`InputSource`](../../../../org/xml/sax/InputSource.md "class in org.xml.sax") that may be used to
specify the SAX source.

The [`SAXResult`](SAXResult.md "class in javax.xml.transform.sax") class allows the
setting of a [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") to be the receiver of
SAX2 events from the transformation.

The [`SAXTransformerFactory`](SAXTransformerFactory.md "class in javax.xml.transform.sax") extends
[`TransformerFactory`](../TransformerFactory.md "class in javax.xml.transform") to provide factory
methods for creating [`TemplatesHandler`](TemplatesHandler.md "interface in javax.xml.transform.sax"),
[`TransformerHandler`](TransformerHandler.md "interface in javax.xml.transform.sax"), and
[`XMLReader`](../../../../org/xml/sax/XMLReader.md "interface in org.xml.sax") instances.

To obtain a [`SAXTransformerFactory`](SAXTransformerFactory.md "class in javax.xml.transform.sax"),
the caller must cast the [`TransformerFactory`](../TransformerFactory.md "class in javax.xml.transform")
instance returned from
[`TransformerFactory.newInstance()`](../TransformerFactory.md#newInstance()).

The [`TransformerHandler`](TransformerHandler.md "interface in javax.xml.transform.sax") interface
allows a transformation to be created from SAX2 parse events, which is a "push"
model rather than the "pull" model that normally occurs for a transformation.
Normal parse events are received through the
[`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") interface, lexical events such as
startCDATA and endCDATA are received through the
[`LexicalHandler`](../../../../org/xml/sax/ext/LexicalHandler.md "interface in org.xml.sax.ext") interface, and events that signal
the start or end of disabling output escaping are received via
[`ContentHandler.processingInstruction(java.lang.String, java.lang.String)`](../../../../org/xml/sax/ContentHandler.md#processingInstruction(java.lang.String,java.lang.String)), with the
target parameter being
[`Result.PI_DISABLE_OUTPUT_ESCAPING`](../Result.md#PI_DISABLE_OUTPUT_ESCAPING) and
[`Result.PI_ENABLE_OUTPUT_ESCAPING`](../Result.md#PI_ENABLE_OUTPUT_ESCAPING). If
parameters, output properties, or other features need to be set on the
Transformer handler, a [`Transformer`](../Transformer.md "class in javax.xml.transform") reference
will need to be obtained from
[`TransformerHandler.getTransformer()`](TransformerHandler.md#getTransformer()), and
the methods invoked from that reference.

The [`TemplatesHandler`](TemplatesHandler.md "interface in javax.xml.transform.sax") interface
allows the creation of [`Templates`](../Templates.md "interface in javax.xml.transform") objects
from SAX2 parse events. Once the [`ContentHandler`](../../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")
events are complete, the Templates object may be obtained from
[`TemplatesHandler.getTemplates()`](TemplatesHandler.md#getTemplates()). Note that
[`TemplatesHandler.setSystemId(java.lang.String)`](TemplatesHandler.md#setSystemId(java.lang.String)) should
normally be called in order to establish a base system ID from which relative
URLs may be resolved.

The [`SAXTransformerFactory.newXMLFilter(javax.xml.transform.Source)`](SAXTransformerFactory.md#newXMLFilter(javax.xml.transform.Source))
method allows the creation of a [`XMLFilter`](../../../../org/xml/sax/XMLFilter.md "interface in org.xml.sax"), which
encapsulates the SAX2 notion of a "pull" transformation. The resulting
`XMLFilters` can be chained together so that a series of transformations
can happen with one's output becoming another's input.

Since:
:   1.5

* Related Packages

  Package

  Description

  [javax.xml.transform](../package-summary.md)

  Defines the generic APIs for processing transformation instructions,
  and performing a transformation from source to result.

  [javax.xml.transform.dom](../dom/package-summary.md)

  Provides DOM specific transformation classes.

  [javax.xml.transform.stax](../stax/package-summary.md)

  Provides StAX specific transformation classes.

  [javax.xml.transform.stream](../stream/package-summary.md)

  Provides stream and URI specific transformation classes.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [SAXResult](SAXResult.md "class in javax.xml.transform.sax")

  Acts as an holder for a transformation Result.

  [SAXSource](SAXSource.md "class in javax.xml.transform.sax")

  Acts as an holder for SAX-style Source.

  [SAXTransformerFactory](SAXTransformerFactory.md "class in javax.xml.transform.sax")

  This class extends TransformerFactory to provide SAX-specific
  factory methods.

  [TemplatesHandler](TemplatesHandler.md "interface in javax.xml.transform.sax")

  A SAX ContentHandler that may be used to process SAX
  parse events (parsing transformation instructions) into a Templates object.

  [TransformerHandler](TransformerHandler.md "interface in javax.xml.transform.sax")

  A TransformerHandler
  listens for SAX ContentHandler parse events and transforms
  them to a Result.