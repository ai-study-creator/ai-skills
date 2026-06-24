Module [java.desktop](../../../../../module-summary.md)

Package [javax.swing.text.html.parser](package-summary.md)

# Class DTD

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.parser.DTD

All Implemented Interfaces:
:   `DTDConstants`

---

public class DTD
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser")

The representation of an SGML DTD. DTD describes a document
syntax and is used in parsing of HTML documents. It contains
a list of elements and their attributes as well as a list of
entities defined in the DTD.

See Also:
:   * [`Element`](Element.md "class in javax.swing.text.html.parser")
    * [`AttributeList`](AttributeList.md "class in javax.swing.text.html.parser")
    * [`ContentModel`](ContentModel.md "class in javax.swing.text.html.parser")
    * [`Parser`](Parser.md "class in javax.swing.text.html.parser")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `final Element`

  `applet`

  The element corresponding to applet.

  `final Element`

  `base`

  The element corresponding to base.

  `final Element`

  `body`

  The element corresponding to body.

  `Hashtable<String,Element>`

  `elementHash`

  The hash table contains the name of element and
  the corresponding element.

  `Vector<Element>`

  `elements`

  The vector of elements

  `Hashtable<Object,Entity>`

  `entityHash`

  The hash table contains an `Object` and the corresponding `Entity`

  `static final int`

  `FILE_VERSION`

  The version of a file

  `final Element`

  `head`

  The element corresponding to head.

  `final Element`

  `html`

  The element corresponding to html.

  `final Element`

  `isindex`

  The element corresponding to isindex.

  `final Element`

  `meta`

  The element corresponding to meta.

  `String`

  `name`

  the name of the DTD

  `final Element`

  `p`

  The element corresponding to p.

  `final Element`

  `param`

  The element corresponding to param.

  `final Element`

  `pcdata`

  The element corresponding to pcdata.

  `final Element`

  `title`

  The element corresponding to title.

  ### Fields inherited from interface javax.swing.text.html.parser.[DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser")

  `ANY, CDATA, CONREF, CURRENT, DEFAULT, EMPTY, ENDTAG, ENTITIES, ENTITY, FIXED, GENERAL, ID, IDREF, IDREFS, IMPLIED, MD, MODEL, MS, NAME, NAMES, NMTOKEN, NMTOKENS, NOTATION, NUMBER, NUMBERS, NUTOKEN, NUTOKENS, PARAMETER, PI, PUBLIC, RCDATA, REQUIRED, SDATA, STARTTAG, SYSTEM`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `DTD(String name)`

  Creates a new DTD with the specified name.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `protected AttributeList`

  `defAttributeList(String name,
  int type,
  int modifier,
  String value,
  String values,
  AttributeList atts)`

  Creates and returns an `AttributeList` responding to a new attribute.

  `protected ContentModel`

  `defContentModel(int type,
  Object obj,
  ContentModel next)`

  Creates and returns a new content model.

  `protected Element`

  `defElement(String name,
  int type,
  boolean omitStart,
  boolean omitEnd,
  ContentModel content,
  String[] exclusions,
  String[] inclusions,
  AttributeList atts)`

  Creates and returns an `Element`.

  `Entity`

  `defEntity(String name,
  int type,
  int ch)`

  Creates and returns a character `Entity`.

  `protected Entity`

  `defEntity(String name,
  int type,
  String str)`

  Creates and returns an `Entity`.

  `void`

  `defineAttributes(String name,
  AttributeList atts)`

  Defines attributes for an `Element`.

  `Element`

  `defineElement(String name,
  int type,
  boolean omitStart,
  boolean omitEnd,
  ContentModel content,
  BitSet exclusions,
  BitSet inclusions,
  AttributeList atts)`

  Returns the `Element` which matches the
  specified parameters.

  `Entity`

  `defineEntity(String name,
  int type,
  char[] data)`

  Defines an entity.

  `static DTD`

  `getDTD(String name)`

  Returns a DTD with the specified `name`.

  `Element`

  `getElement(int index)`

  Gets an element by index.

  `Element`

  `getElement(String name)`

  Gets an element by name.

  `Entity`

  `getEntity(int ch)`

  Gets a character entity.

  `Entity`

  `getEntity(String name)`

  Gets an entity by name.

  `String`

  `getName()`

  Gets the name of the DTD.

  `static void`

  `putDTDHash(String name,
  DTD dtd)`

  Put a name and appropriate DTD to hashtable.

  `void`

  `read(DataInputStream in)`

  Recreates a DTD from an archived format.

  `String`

  `toString()`

  Returns a string representation of this DTD.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### name

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") name

    the name of the DTD
  + ### elements

    public [Vector](../../../../../../java.base/java/util/Vector.md "class in java.util")<[Element](Element.md "class in javax.swing.text.html.parser")> elements

    The vector of elements
  + ### elementHash

    public [Hashtable](../../../../../../java.base/java/util/Hashtable.md "class in java.util")<[String](../../../../../../java.base/java/lang/String.md "class in java.lang"),[Element](Element.md "class in javax.swing.text.html.parser")> elementHash

    The hash table contains the name of element and
    the corresponding element.
  + ### entityHash

    public [Hashtable](../../../../../../java.base/java/util/Hashtable.md "class in java.util")<[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang"),[Entity](Entity.md "class in javax.swing.text.html.parser")> entityHash

    The hash table contains an `Object` and the corresponding `Entity`
  + ### pcdata

    public final [Element](Element.md "class in javax.swing.text.html.parser") pcdata

    The element corresponding to pcdata.
  + ### html

    public final [Element](Element.md "class in javax.swing.text.html.parser") html

    The element corresponding to html.
  + ### meta

    public final [Element](Element.md "class in javax.swing.text.html.parser") meta

    The element corresponding to meta.
  + ### base

    public final [Element](Element.md "class in javax.swing.text.html.parser") base

    The element corresponding to base.
  + ### isindex

    public final [Element](Element.md "class in javax.swing.text.html.parser") isindex

    The element corresponding to isindex.
  + ### head

    public final [Element](Element.md "class in javax.swing.text.html.parser") head

    The element corresponding to head.
  + ### body

    public final [Element](Element.md "class in javax.swing.text.html.parser") body

    The element corresponding to body.
  + ### applet

    public final [Element](Element.md "class in javax.swing.text.html.parser") applet

    The element corresponding to applet.
  + ### param

    public final [Element](Element.md "class in javax.swing.text.html.parser") param

    The element corresponding to param.
  + ### p

    public final [Element](Element.md "class in javax.swing.text.html.parser") p

    The element corresponding to p.
  + ### title

    public final [Element](Element.md "class in javax.swing.text.html.parser") title

    The element corresponding to title.
  + ### FILE\_VERSION

    public static final int FILE\_VERSION

    The version of a file

    See Also:
    :   - [Constant Field Values](../../../../../../constant-values.md#javax.swing.text.html.parser.DTD.FILE_VERSION)
* ## Constructor Details

  + ### DTD

    protected DTD([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Creates a new DTD with the specified name.

    Parameters:
    :   `name` - the name, as a `String` of the new DTD
* ## Method Details

  + ### getName

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Gets the name of the DTD.

    Returns:
    :   the name of the DTD
  + ### getEntity

    public [Entity](Entity.md "class in javax.swing.text.html.parser") getEntity([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Gets an entity by name.

    Parameters:
    :   `name` - the entity name

    Returns:
    :   the `Entity` corresponding to the
        `name` `String`
  + ### getEntity

    public [Entity](Entity.md "class in javax.swing.text.html.parser") getEntity(int ch)

    Gets a character entity.

    Parameters:
    :   `ch` - the character

    Returns:
    :   the `Entity` corresponding to the
        `ch` character
  + ### getElement

    public [Element](Element.md "class in javax.swing.text.html.parser") getElement([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Gets an element by name. A new element is
    created if the element doesn't exist.

    Parameters:
    :   `name` - the requested `String`

    Returns:
    :   the `Element` corresponding to
        `name`, which may be newly created
  + ### getElement

    public [Element](Element.md "class in javax.swing.text.html.parser") getElement(int index)

    Gets an element by index.

    Parameters:
    :   `index` - the requested index

    Returns:
    :   the `Element` corresponding to
        `index`
  + ### defineEntity

    public [Entity](Entity.md "class in javax.swing.text.html.parser") defineEntity([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name,
    int type,
    char[] data)

    Defines an entity. If the `Entity` specified
    by `name`, `type`, and `data`
    exists, it is returned; otherwise a new `Entity`
    is created and is returned.

    Parameters:
    :   `name` - the name of the `Entity` as a `String`
    :   `type` - the type of the `Entity`
    :   `data` - the `Entity`'s data

    Returns:
    :   the `Entity` requested or a new `Entity`
        if not found
  + ### defineElement

    public [Element](Element.md "class in javax.swing.text.html.parser") defineElement([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name,
    int type,
    boolean omitStart,
    boolean omitEnd,
    [ContentModel](ContentModel.md "class in javax.swing.text.html.parser") content,
    [BitSet](../../../../../../java.base/java/util/BitSet.md "class in java.util") exclusions,
    [BitSet](../../../../../../java.base/java/util/BitSet.md "class in java.util") inclusions,
    [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") atts)

    Returns the `Element` which matches the
    specified parameters. If one doesn't exist, a new
    one is created and returned.

    Parameters:
    :   `name` - the name of the `Element`
    :   `type` - the type of the `Element`
    :   `omitStart` - `true` if start should be omitted
    :   `omitEnd` - `true` if end should be omitted
    :   `content` - the `ContentModel`
    :   `exclusions` - the set of elements that must not occur inside the element
    :   `inclusions` - the set of elements that can occur inside the element
    :   `atts` - the `AttributeList` specifying the
        `Element`

    Returns:
    :   the `Element` specified
  + ### defineAttributes

    public void defineAttributes([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") atts)

    Defines attributes for an `Element`.

    Parameters:
    :   `name` - the name of the `Element`
    :   `atts` - the `AttributeList` specifying the
        `Element`
  + ### defEntity

    public [Entity](Entity.md "class in javax.swing.text.html.parser") defEntity([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name,
    int type,
    int ch)

    Creates and returns a character `Entity`.

    Parameters:
    :   `name` - the entity's name
    :   `type` - the entity's type
    :   `ch` - the entity's value (character)

    Returns:
    :   the new character `Entity`
  + ### defEntity

    protected [Entity](Entity.md "class in javax.swing.text.html.parser") defEntity([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name,
    int type,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") str)

    Creates and returns an `Entity`.

    Parameters:
    :   `name` - the entity's name
    :   `type` - the entity's type
    :   `str` - the entity's data section

    Returns:
    :   the new `Entity`
  + ### defElement

    protected [Element](Element.md "class in javax.swing.text.html.parser") defElement([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name,
    int type,
    boolean omitStart,
    boolean omitEnd,
    [ContentModel](ContentModel.md "class in javax.swing.text.html.parser") content,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang")[] exclusions,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang")[] inclusions,
    [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") atts)

    Creates and returns an `Element`.

    Parameters:
    :   `name` - the element's name
    :   `type` - the element's type
    :   `omitStart` - `true` if the element needs no starting tag
    :   `omitEnd` - `true` if the element needs no closing tag
    :   `content` - the element's content
    :   `exclusions` - the elements that must be excluded from the content of the element
    :   `inclusions` - the elements that can be included as the content of the element
    :   `atts` - the attributes of the element

    Returns:
    :   the new `Element`
  + ### defAttributeList

    protected [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") defAttributeList([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name,
    int type,
    int modifier,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") value,
    [String](../../../../../../java.base/java/lang/String.md "class in java.lang") values,
    [AttributeList](AttributeList.md "class in javax.swing.text.html.parser") atts)

    Creates and returns an `AttributeList` responding to a new attribute.

    Parameters:
    :   `name` - the attribute's name
    :   `type` - the attribute's type
    :   `modifier` - the attribute's modifier
    :   `value` - the default value of the attribute
    :   `values` - the allowed values for the attribute (multiple values could be separated by '|')
    :   `atts` - the previous attribute of the element; to be placed to `AttributeList.next`,
        creating a linked list

    Returns:
    :   the new `AttributeList`
  + ### defContentModel

    protected [ContentModel](ContentModel.md "class in javax.swing.text.html.parser") defContentModel(int type,
    [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [ContentModel](ContentModel.md "class in javax.swing.text.html.parser") next)

    Creates and returns a new content model.

    Parameters:
    :   `type` - the type of the new content model
    :   `obj` - the content of the content model
    :   `next` - pointer to the next content model

    Returns:
    :   the new `ContentModel`
  + ### toString

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns a string representation of this DTD.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string representation of this DTD
  + ### putDTDHash

    public static void putDTDHash([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [DTD](DTD.md "class in javax.swing.text.html.parser") dtd)

    Put a name and appropriate DTD to hashtable.

    Parameters:
    :   `name` - the name of the DTD
    :   `dtd` - the DTD
  + ### getDTD

    public static [DTD](DTD.md "class in javax.swing.text.html.parser") getDTD([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [IOException](../../../../../../java.base/java/io/IOException.md "class in java.io")

    Returns a DTD with the specified `name`. If
    a DTD with that name doesn't exist, one is created
    and returned. Any uppercase characters in the name
    are converted to lowercase.

    Parameters:
    :   `name` - the name of the DTD

    Returns:
    :   the DTD which corresponds to `name`

    Throws:
    :   `IOException` - if an I/O error occurs
  + ### read

    public void read([DataInputStream](../../../../../../java.base/java/io/DataInputStream.md "class in java.io") in)
    throws [IOException](../../../../../../java.base/java/io/IOException.md "class in java.io")

    Recreates a DTD from an archived format.

    Parameters:
    :   `in` - the `DataInputStream` to read from

    Throws:
    :   `IOException` - if an I/O error occurs