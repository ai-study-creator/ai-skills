Module [java.desktop](../../../../../module-summary.md)

Package [javax.swing.text.html.parser](package-summary.md)

# Class AttributeList

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.parser.AttributeList

All Implemented Interfaces:
:   `Serializable`, `DTDConstants`

---

public final class AttributeList
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser"), [Serializable](../../../../../../java.base/java/io/Serializable.md "interface in java.io")

This class defines the attributes of an SGML element
as described in a DTD using the ATTLIST construct.
An AttributeList can be obtained from the Element
class using the getAttributes() method.

It is actually an element in a linked list. Use the
getNext() method repeatedly to enumerate all the attributes
of an element.

See Also:
:   * [`Element`](Element.md "class in javax.swing.text.html.parser")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `int`

  `modifier`

  The attribute modifier

  `String`

  `name`

  The attribute name

  `AttributeList`

  `next`

  The next attribute in the list

  `int`

  `type`

  The attribute type

  `String`

  `value`

  The default attribute value

  `Vector<?>`

  `values`

  The possible attribute values

  ### Fields inherited from interface javax.swing.text.html.parser.[DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser")

  `ANY, CDATA, CONREF, CURRENT, DEFAULT, EMPTY, ENDTAG, ENTITIES, ENTITY, FIXED, GENERAL, ID, IDREF, IDREFS, IMPLIED, MD, MODEL, MS, NAME, NAMES, NMTOKEN, NMTOKENS, NOTATION, NUMBER, NUMBERS, NUTOKEN, NUTOKENS, PARAMETER, PI, PUBLIC, RCDATA, REQUIRED, SDATA, STARTTAG, SYSTEM`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributeList(String name)`

  Create an attribute list element.

  `AttributeList(String name,
  int type,
  int modifier,
  String value,
  Vector<?> values,
  AttributeList next)`

  Create an attribute list element.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `getModifier()`

  Returns the attribute modifier.

  `String`

  `getName()`

  Returns the attribute name.

  `AttributeList`

  `getNext()`

  Returns the next attribute in the list.

  `int`

  `getType()`

  Returns the attribute type.

  `String`

  `getValue()`

  Returns default attribute value.

  `Enumeration<?>`

  `getValues()`

  Returns possible attribute values.

  `static int`

  `name2type(String nm)`

  Converts an attribute name to the type

  `String`

  `toString()`

  Returns a string representation of the object.

  `static String`

  `type2name(int tp)`

  Converts a type to the attribute name

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### name

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") name

    The attribute name
  + ### type

    public int type

    The attribute type
  + ### values

    public [Vector](../../../../../../java.base/java/util/Vector.md "class in java.util")<?> values

    The possible attribute values
  + ### modifier

    public int modifier

    The attribute modifier
  + ### value

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") value

    The default attribute value
  + ### next

    public [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") next

    The next attribute in the list
* ## Constructor Details

  + ### AttributeList

    public AttributeList([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Create an attribute list element.

    Parameters:
    :   `name` - the attribute name
  + ### AttributeList

    public AttributeList([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name,
    int type,
    int modifier,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") value,
    [Vector](../../../../../../java.base/java/util/Vector.md "class in java.util")<?> values,
    [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") next)

    Create an attribute list element.

    Parameters:
    :   `name` - the attribute name
    :   `type` - the attribute type
    :   `modifier` - the attribute modifier
    :   `value` - the default attribute value
    :   `values` - the possible attribute values
    :   `next` - the next attribute in the list
* ## Method Details

  + ### getName

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Returns the attribute name.

    Returns:
    :   the attribute name
  + ### getType

    public int getType()

    Returns the attribute type.

    Returns:
    :   the attribute type

    See Also:
    :   - [`DTDConstants`](DTDConstants.md "interface in javax.swing.text.html.parser")
  + ### getModifier

    public int getModifier()

    Returns the attribute modifier.

    Returns:
    :   the attribute modifier

    See Also:
    :   - [`DTDConstants`](DTDConstants.md "interface in javax.swing.text.html.parser")
  + ### getValues

    public [Enumeration](../../../../../../java.base/java/util/Enumeration.md "interface in java.util")<?> getValues()

    Returns possible attribute values.

    Returns:
    :   possible attribute values
  + ### getValue

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getValue()

    Returns default attribute value.

    Returns:
    :   default attribute value
  + ### getNext

    public [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") getNext()

    Returns the next attribute in the list.

    Returns:
    :   the next attribute in the list
  + ### toString

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Description copied from class: `Object`

    Returns a string representation of the object.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   string representation
  + ### name2type

    public static int name2type([String](../../../../../../java.base/java/lang/String.md "class in java.lang") nm)

    Converts an attribute name to the type

    Parameters:
    :   `nm` - an attribute name

    Returns:
    :   the type
  + ### type2name

    public static [String](../../../../../../java.base/java/lang/String.md "class in java.lang") type2name(int tp)

    Converts a type to the attribute name

    Parameters:
    :   `tp` - a type

    Returns:
    :   the attribute name