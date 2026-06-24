Module [java.desktop](../../../../../module-summary.md)

# Package javax.swing.text.html.parser

---

package javax.swing.text.html.parser

Provides the default HTML parser, along with support classes. As the stream
is parsed, the parser notifies a delegate, which must implement the
`HTMLEditorKit.ParserCallback` interface.

**Note:**
Most of the Swing API is *not* thread safe. For details, see
[Concurrency in Swing](https://docs.oracle.com/javase/tutorial/uiswing/concurrency/index.html),
a section in
*[The Java Tutorial](https://docs.oracle.com/javase/tutorial/)*.

Since:
:   1.2

See Also:
:   * [`HTMLEditorKit.ParserCallback`](../HTMLEditorKit.ParserCallback.md "class in javax.swing.text.html")

* Related Packages

  Package

  Description

  [javax.swing.text.html](../package-summary.md)

  Provides the class `HTMLEditorKit` and supporting classes for creating
  HTML text editors.
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [AttributeList](AttributeList.md "class in javax.swing.text.html.parser")

  This class defines the attributes of an SGML element
  as described in a DTD using the ATTLIST construct.

  [ContentModel](ContentModel.md "class in javax.swing.text.html.parser")

  A representation of a content model.

  [DocumentParser](DocumentParser.md "class in javax.swing.text.html.parser")

  A Parser for HTML Documents (actually, you can specify a DTD, but
  you should really only use this class with the html dtd in swing).

  [DTD](DTD.md "class in javax.swing.text.html.parser")

  The representation of an SGML DTD.

  [DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser")

  SGML constants used in a DTD.

  [Element](Element.md "class in javax.swing.text.html.parser")

  An element as described in a DTD using the ELEMENT construct.

  [Entity](Entity.md "class in javax.swing.text.html.parser")

  An entity is described in a DTD using the ENTITY construct.

  [Parser](Parser.md "class in javax.swing.text.html.parser")

  A simple DTD-driven HTML parser.

  [ParserDelegator](ParserDelegator.md "class in javax.swing.text.html.parser")

  Responsible for starting up a new DocumentParser
  each time its parse method is invoked.

  [TagElement](TagElement.md "class in javax.swing.text.html.parser")

  A generic HTML TagElement class.