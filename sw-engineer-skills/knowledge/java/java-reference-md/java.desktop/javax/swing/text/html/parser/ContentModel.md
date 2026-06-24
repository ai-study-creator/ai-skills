Module [java.desktop](../../../../../module-summary.md)

Package [javax.swing.text.html.parser](package-summary.md)

# Class ContentModel

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.parser.ContentModel

All Implemented Interfaces:
:   `Serializable`

---

public final class ContentModel
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../../../java.base/java/io/Serializable.md "interface in java.io")

A representation of a content model. A content model is
basically a restricted BNF expression. It is restricted in
the sense that it must be deterministic. This means that you
don't have to represent it as a finite state automaton.

See Annex H on page 556 of the SGML handbook for more information.

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `Object`

  `content`

  The content.

  `ContentModel`

  `next`

  The next content model (in a ',', '|' or '&' expression).

  `int`

  `type`

  Type.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ContentModel()`

  Creates `ContentModel`

  `ContentModel(int type,
  Object content,
  ContentModel next)`

  Create a content model of a particular type.

  `ContentModel(int type,
  ContentModel content)`

  Create a content model of a particular type.

  `ContentModel(Element content)`

  Create a content model for an element.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `empty()`

  Return true if the content model could
  match an empty input stream.

  `Element`

  `first()`

  Return the element that must be next.

  `boolean`

  `first(Object token)`

  Return true if the token could potentially be the
  first token in the input stream.

  `void`

  `getElements(Vector<Element> elemVec)`

  Update elemVec with the list of elements that are
  part of the this contentModel.

  `String`

  `toString()`

  Convert to a string.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### type

    public int type

    Type. Either '\*', '?', '+', ',', '|', '&'.
  + ### content

    public [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang") content

    The content. Either an Element or a ContentModel.
  + ### next

    public [ContentModel](ContentModel.md "class in javax.swing.text.html.parser") next

    The next content model (in a ',', '|' or '&' expression).
* ## Constructor Details

  + ### ContentModel

    public ContentModel()

    Creates `ContentModel`
  + ### ContentModel

    public ContentModel([Element](Element.md "class in javax.swing.text.html.parser") content)

    Create a content model for an element.

    Parameters:
    :   `content` - the element
  + ### ContentModel

    public ContentModel(int type,
    [ContentModel](ContentModel.md "class in javax.swing.text.html.parser") content)

    Create a content model of a particular type.

    Parameters:
    :   `type` - the type
    :   `content` - the content
  + ### ContentModel

    public ContentModel(int type,
    [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang") content,
    [ContentModel](ContentModel.md "class in javax.swing.text.html.parser") next)

    Create a content model of a particular type.

    Parameters:
    :   `type` - the type
    :   `content` - the content
    :   `next` - the next content model
* ## Method Details

  + ### empty

    public boolean empty()

    Return true if the content model could
    match an empty input stream.

    Returns:
    :   `true` if the content model could
        match an empty input stream
  + ### getElements

    public void getElements([Vector](../../../../../../java.base/java/util/Vector.md "class in java.util")<[Element](Element.md "class in javax.swing.text.html.parser")> elemVec)

    Update elemVec with the list of elements that are
    part of the this contentModel.

    Parameters:
    :   `elemVec` - the list of elements
  + ### first

    public boolean first([Object](../../../../../../java.base/java/lang/Object.md "class in java.lang") token)

    Return true if the token could potentially be the
    first token in the input stream.

    Parameters:
    :   `token` - the token

    Returns:
    :   `true` if the token could potentially be the first token
        in the input stream
  + ### first

    public [Element](Element.md "class in javax.swing.text.html.parser") first()

    Return the element that must be next.

    Returns:
    :   the element that must be next
  + ### toString

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Convert to a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation of this `ContentModel`