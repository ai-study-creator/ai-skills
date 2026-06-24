Module [java.desktop](../../../module-summary.md)

Package [javax.swing.text](package-summary.md)

# Class DefaultStyledDocument.ElementSpec

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.swing.text.DefaultStyledDocument.ElementSpec

Enclosing class:
:   `DefaultStyledDocument`

---

public static class DefaultStyledDocument.ElementSpec
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

Specification for building elements.

**Warning:**
Serialized objects of this class will not be compatible with
future Swing releases. The current serialization support is
appropriate for short term storage or RMI between applications running
the same version of Swing. As of 1.4, support for long term storage
of all JavaBeans
has been added to the `java.beans` package.
Please see [`XMLEncoder`](../../../java/beans/XMLEncoder.md "class in java.beans").

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final short`

  `ContentType`

  A possible value for getType.

  `static final short`

  `EndTagType`

  A possible value for getType.

  `static final short`

  `JoinFractureDirection`

  A possible value for getDirection.

  `static final short`

  `JoinNextDirection`

  A possible value for getDirection.

  `static final short`

  `JoinPreviousDirection`

  A possible value for getDirection.

  `static final short`

  `OriginateDirection`

  A possible value for getDirection.

  `static final short`

  `StartTagType`

  A possible value for getType.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `ElementSpec(AttributeSet a,
  short type)`

  Constructor useful for markup when the markup will not
  be stored in the document.

  `ElementSpec(AttributeSet a,
  short type,
  char[] txt,
  int offs,
  int len)`

  Constructor for creating a spec externally for batch
  input of content and markup into the document.

  `ElementSpec(AttributeSet a,
  short type,
  int len)`

  Constructor for parsing inside the document when
  the data has already been added, but len information
  is needed.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `char[]`

  `getArray()`

  Gets the array of characters.

  `AttributeSet`

  `getAttributes()`

  Gets the element attributes.

  `short`

  `getDirection()`

  Gets the direction.

  `int`

  `getLength()`

  Gets the length.

  `int`

  `getOffset()`

  Gets the starting offset.

  `short`

  `getType()`

  Gets the element type.

  `void`

  `setDirection(short direction)`

  Sets the direction.

  `void`

  `setType(short type)`

  Sets the element type.

  `String`

  `toString()`

  Converts the element to a string.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### StartTagType

    public static final short StartTagType

    A possible value for getType. This specifies
    that this record type is a start tag and
    represents markup that specifies the start
    of an element.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultStyledDocument.ElementSpec.StartTagType)
  + ### EndTagType

    public static final short EndTagType

    A possible value for getType. This specifies
    that this record type is a end tag and
    represents markup that specifies the end
    of an element.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultStyledDocument.ElementSpec.EndTagType)
  + ### ContentType

    public static final short ContentType

    A possible value for getType. This specifies
    that this record type represents content.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultStyledDocument.ElementSpec.ContentType)
  + ### JoinPreviousDirection

    public static final short JoinPreviousDirection

    A possible value for getDirection. This specifies
    that the data associated with this record should
    be joined to what precedes it.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultStyledDocument.ElementSpec.JoinPreviousDirection)
  + ### JoinNextDirection

    public static final short JoinNextDirection

    A possible value for getDirection. This specifies
    that the data associated with this record should
    be joined to what follows it.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultStyledDocument.ElementSpec.JoinNextDirection)
  + ### OriginateDirection

    public static final short OriginateDirection

    A possible value for getDirection. This specifies
    that the data associated with this record should
    be used to originate a new element. This would be
    the normal value.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultStyledDocument.ElementSpec.OriginateDirection)
  + ### JoinFractureDirection

    public static final short JoinFractureDirection

    A possible value for getDirection. This specifies
    that the data associated with this record should
    be joined to the fractured element.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.swing.text.DefaultStyledDocument.ElementSpec.JoinFractureDirection)
* ## Constructor Details

  + ### ElementSpec

    public ElementSpec([AttributeSet](AttributeSet.md "interface in javax.swing.text") a,
    short type)

    Constructor useful for markup when the markup will not
    be stored in the document.

    Parameters:
    :   `a` - the attributes for the element
    :   `type` - the type of the element (StartTagType, EndTagType,
        ContentType)
  + ### ElementSpec

    public ElementSpec([AttributeSet](AttributeSet.md "interface in javax.swing.text") a,
    short type,
    int len)

    Constructor for parsing inside the document when
    the data has already been added, but len information
    is needed.

    Parameters:
    :   `a` - the attributes for the element
    :   `type` - the type of the element (StartTagType, EndTagType,
        ContentType)
    :   `len` - the length >= 0
  + ### ElementSpec

    public ElementSpec([AttributeSet](AttributeSet.md "interface in javax.swing.text") a,
    short type,
    char[] txt,
    int offs,
    int len)

    Constructor for creating a spec externally for batch
    input of content and markup into the document.

    Parameters:
    :   `a` - the attributes for the element
    :   `type` - the type of the element (StartTagType, EndTagType,
        ContentType)
    :   `txt` - the text for the element
    :   `offs` - the offset into the text >= 0
    :   `len` - the length of the text >= 0
* ## Method Details

  + ### setType

    public void setType(short type)

    Sets the element type.

    Parameters:
    :   `type` - the type of the element (StartTagType, EndTagType,
        ContentType)
  + ### getType

    public short getType()

    Gets the element type.

    Returns:
    :   the type of the element (StartTagType, EndTagType,
        ContentType)
  + ### setDirection

    public void setDirection(short direction)

    Sets the direction.

    Parameters:
    :   `direction` - the direction (JoinPreviousDirection,
        JoinNextDirection)
  + ### getDirection

    public short getDirection()

    Gets the direction.

    Returns:
    :   the direction (JoinPreviousDirection, JoinNextDirection)
  + ### getAttributes

    public [AttributeSet](AttributeSet.md "interface in javax.swing.text") getAttributes()

    Gets the element attributes.

    Returns:
    :   the attribute set
  + ### getArray

    public char[] getArray()

    Gets the array of characters.

    Returns:
    :   the array
  + ### getOffset

    public int getOffset()

    Gets the starting offset.

    Returns:
    :   the offset >= 0
  + ### getLength

    public int getLength()

    Gets the length.

    Returns:
    :   the length >= 0
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Converts the element to a string.

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   the string