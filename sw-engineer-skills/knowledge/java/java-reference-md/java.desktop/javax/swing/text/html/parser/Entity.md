Module [java.desktop](../../../../../module-summary.md)

Package [javax.swing.text.html.parser](package-summary.md)

# Class Entity

[java.lang.Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.html.parser.Entity

All Implemented Interfaces:
:   `DTDConstants`

---

public final class Entity
extends [Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser")

An entity is described in a DTD using the ENTITY construct.
It defines the type and value of the entity.

See Also:
:   * [`DTD`](DTD.md "class in javax.swing.text.html.parser")

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `char[]`

  `data`

  The char array of data.

  `String`

  `name`

  The name of the entity.

  `int`

  `type`

  The type of the entity.

  ### Fields inherited from interface javax.swing.text.html.parser.[DTDConstants](DTDConstants.md "interface in javax.swing.text.html.parser")

  `ANY, CDATA, CONREF, CURRENT, DEFAULT, EMPTY, ENDTAG, ENTITIES, ENTITY, FIXED, GENERAL, ID, IDREF, IDREFS, IMPLIED, MD, MODEL, MS, NAME, NAMES, NMTOKEN, NMTOKENS, NOTATION, NUMBER, NUMBERS, NUTOKEN, NUTOKENS, PARAMETER, PI, PUBLIC, RCDATA, REQUIRED, SDATA, STARTTAG, SYSTEM`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Entity(String name,
  int type,
  char[] data)`

  Creates an entity.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `char[]`

  `getData()`

  Returns the `data`.

  `String`

  `getName()`

  Gets the name of the entity.

  `String`

  `getString()`

  Returns the data as a `String`.

  `int`

  `getType()`

  Gets the type of the entity.

  `boolean`

  `isGeneral()`

  Returns `true` if it is a general entity.

  `boolean`

  `isParameter()`

  Returns `true` if it is a parameter entity.

  `static int`

  `name2type(String nm)`

  Converts `nm` string to the corresponding
  entity type.

  ### Methods inherited from class java.lang.[Object](../../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### name

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") name

    The name of the entity.
  + ### type

    public int type

    The type of the entity.
  + ### data

    public char[] data

    The char array of data.
* ## Constructor Details

  + ### Entity

    public Entity([String](../../../../../../java.base/java/lang/String.md "class in java.lang") name,
    int type,
    char[] data)

    Creates an entity.

    Parameters:
    :   `name` - the name of the entity
    :   `type` - the type of the entity
    :   `data` - the char array of data
* ## Method Details

  + ### getName

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Gets the name of the entity.

    Returns:
    :   the name of the entity, as a `String`
  + ### getType

    public int getType()

    Gets the type of the entity.

    Returns:
    :   the type of the entity
  + ### isParameter

    public boolean isParameter()

    Returns `true` if it is a parameter entity.

    Returns:
    :   `true` if it is a parameter entity
  + ### isGeneral

    public boolean isGeneral()

    Returns `true` if it is a general entity.

    Returns:
    :   `true` if it is a general entity
  + ### getData

    public char[] getData()

    Returns the `data`.

    Returns:
    :   the `data`
  + ### getString

    public [String](../../../../../../java.base/java/lang/String.md "class in java.lang") getString()

    Returns the data as a `String`.

    Returns:
    :   the data as a `String`
  + ### name2type

    public static int name2type([String](../../../../../../java.base/java/lang/String.md "class in java.lang") nm)

    Converts `nm` string to the corresponding
    entity type. If the string does not have a corresponding
    entity type, returns the type corresponding to "CDATA".
    Valid entity types are: "PUBLIC", "CDATA", "SDATA", "PI",
    "STARTTAG", "ENDTAG", "MS", "MD", "SYSTEM".

    Parameters:
    :   `nm` - the string to be converted

    Returns:
    :   the corresponding entity type, or the type corresponding
        to "CDATA", if none exists