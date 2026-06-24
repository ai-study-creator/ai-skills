Module [java.desktop](../../../../../module-summary.md)

Package [javax.swing.text.html.parser](package-summary.md)

# Class Element

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.parser.Element

All Implemented Interfaces:
:   `Serializable`, `DTDConstants`

---

public final class Element
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser"), [Serializable](../../../../../../java.base/java/io/Serializable.md "interface in java.io")

An element as described in a DTD using the ELEMENT construct.
This is essential the description of a tag. It describes the
type, content model, attributes, attribute types etc. It is used
to correctly parse a document by the Parser.

See Also:
:   * [`DTD`](DTD.md "class in javax.swing.text.html.parser")
    * [`AttributeList`](AttributeList.md "class in javax.swing.text.html.parser")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `AttributeList`

  `atts`

  The attributes

  `ContentModel`

  `content`

  The content model

  `Object`

  `data`

  A field to store user data.

  `BitSet`

  `exclusions`

  The set of elements that must not occur inside the element

  `BitSet`

  `inclusions`

  The set of elements that can occur inside the element

  `int`

  `index`

  The element index

  `String`

  `name`

  The name of the element

  `boolean`

  `oEnd`

  `true` if the end tag can be omitted

  `boolean`

  `oStart`

  `true` if the start tag can be omitted

  `int`

  `type`

  The element type

  ### Fields inherited from interface javax.swing.text.html.parser.[DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser")

  `ANY, CDATA, CONREF, CURRENT, DEFAULT, EMPTY, ENDTAG, ENTITIES, ENTITY, FIXED, GENERAL, ID, IDREF, IDREFS, IMPLIED, MD, MODEL, MS, NAME, NAMES, NMTOKEN, NMTOKENS, NOTATION, NUMBER, NUMBERS, NUTOKEN, NUTOKENS, PARAMETER, PI, PUBLIC, RCDATA, REQUIRED, SDATA, STARTTAG, SYSTEM`
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `AttributeList`

  `getAttribute(String name)`

  Get an attribute by name.

  `AttributeList`

  `getAttributeByValue(String value)`

  Get an attribute by value.

  `AttributeList`

  `getAttributes()`

  Get the attributes.

  `ContentModel`

  `getContent()`

  Get content model

  `int`

  `getIndex()`

  Get index.

  `String`

  `getName()`

  Get the name of the element.

  `int`

  `getType()`

  Get type.

  `boolean`

  `isEmpty()`

  Check if empty

  `static int`

  `name2type(String nm)`

  Converts `nm` to type.

  `boolean`

  `omitEnd()`

  Return true if the end tag can be omitted.

  `boolean`

  `omitStart()`

  Return true if the start tag can be omitted.

  `String`

  `toString()`

  Convert to a string.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### index

    public int index

    The element index
  + ### name

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") name

    The name of the element
  + ### oStart

    public boolean oStart

    `true` if the start tag can be omitted
  + ### oEnd

    public boolean oEnd

    `true` if the end tag can be omitted
  + ### inclusions

    public [BitSet](../../../../../../java.base/java/util/BitSet.md "class in java.util") inclusions

    The set of elements that can occur inside the element
  + ### exclusions

    public [BitSet](../../../../../../java.base/java/util/BitSet.md "class in java.util") exclusions

    The set of elements that must not occur inside the element
  + ### type

    public int type

    The element type
  + ### content

    public [ContentModel](ContentModel.md "class in javax.swing.text.html.parser") content

    The content model
  + ### atts

    public [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") atts

    The attributes
  + ### data

    public [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang") data

    A field to store user data. Mostly used to store
    style sheets.
* ## Method Details

  + ### getName

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the element.

    Returns:
    :   the name of the element
  + ### omitStart

    public boolean omitStart()

    Return true if the start tag can be omitted.

    Returns:
    :   `true` if the start tag can be omitted
  + ### omitEnd

    public boolean omitEnd()

    Return true if the end tag can be omitted.

    Returns:
    :   `true` if the end tag can be omitted
  + ### getType

    public int getType()

    Get type.

    Returns:
    :   the type of the element
  + ### getContent

    public [ContentModel](ContentModel.md "class in javax.swing.text.html.parser") getContent()

    Get content model

    Returns:
    :   the content model
  + ### getAttributes

    public [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") getAttributes()

    Get the attributes.

    Returns:
    :   the `AttributeList` specifying the element
  + ### getIndex

    public int getIndex()

    Get index.

    Returns:
    :   the element index
  + ### isEmpty

    public boolean isEmpty()

    Check if empty

    Returns:
    :   true if the current element is empty
  + ### toString

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Convert to a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   a string representation for the given `Element` instance
  + ### getAttribute

    public [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") getAttribute([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Get an attribute by name.

    Parameters:
    :   `name` - the attribute name

    Returns:
    :   the `AttributeList` for the given `name`
  + ### getAttributeByValue

    public [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") getAttributeByValue([String](../../../../../../java.base/java/lang/String.md "class in java.lang") value)

    Get an attribute by value.

    Parameters:
    :   `value` - the string representation of value

    Returns:
    :   the `AttributeList` for the given `value`
  + ### name2type

    public static int name2type([String](../../../../../../java.base/java/lang/String.md "class in java.lang") nm)

    Converts `nm` to type. Returns appropriate DTDConstants
    if the `nm` is equal to CDATA, RCDATA, EMPTY or ANY, 0 otherwise.

    Parameters:
    :   `nm` - a name

    Returns:
    :   appropriate DTDConstants if the `nm` is equal to
        CDATA, RCDATA, EMPTY or ANY, 0 otherwise.