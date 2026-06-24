Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.helpers](package-summary.md)

# Class AttributesImpl

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

org.xml.sax.helpers.AttributesImpl

All Implemented Interfaces:
:   `Attributes`

Direct Known Subclasses:
:   `Attributes2Impl`

---

public class AttributesImpl
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Attributes](../Attributes.md "interface in org.xml.sax")

Default implementation of the Attributes interface.

This class provides a default implementation of the SAX2
[`Attributes`](../Attributes.md "interface in org.xml.sax") interface, with the
addition of manipulators so that the list can be modified or
reused.

There are two typical uses of this class:

1. to take a persistent snapshot of an Attributes object
   in a [`startElement`](../ContentHandler.md#startElement(java.lang.String,java.lang.String,java.lang.String,org.xml.sax.Attributes)) event; or
2. to construct or modify an Attributes object in a SAX2 driver or filter.

This class replaces the now-deprecated SAX1 [`AttributeListImpl`](AttributeListImpl.md "class in org.xml.sax.helpers")
class; in addition to supporting the updated Attributes
interface rather than the deprecated [`AttributeList`](../AttributeList.md "interface in org.xml.sax") interface, it also includes a much more efficient
implementation using a single array rather than a set of Vectors.

Since:
:   1.4, SAX 2.0

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributesImpl()`

  Construct a new, empty AttributesImpl object.

  `AttributesImpl(Attributes atts)`

  Copy an existing Attributes object.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAttribute(String uri,
  String localName,
  String qName,
  String type,
  String value)`

  Add an attribute to the end of the list.

  `void`

  `clear()`

  Clear the attribute list for reuse.

  `int`

  `getIndex(String qName)`

  Look up an attribute's index by qualified (prefixed) name.

  `int`

  `getIndex(String uri,
  String localName)`

  Look up an attribute's index by Namespace name.

  `int`

  `getLength()`

  Return the number of attributes in the list.

  `String`

  `getLocalName(int index)`

  Return an attribute's local name.

  `String`

  `getQName(int index)`

  Return an attribute's qualified (prefixed) name.

  `String`

  `getType(int index)`

  Return an attribute's type by index.

  `String`

  `getType(String qName)`

  Look up an attribute's type by qualified (prefixed) name.

  `String`

  `getType(String uri,
  String localName)`

  Look up an attribute's type by Namespace-qualified name.

  `String`

  `getURI(int index)`

  Return an attribute's Namespace URI.

  `String`

  `getValue(int index)`

  Return an attribute's value by index.

  `String`

  `getValue(String qName)`

  Look up an attribute's value by qualified (prefixed) name.

  `String`

  `getValue(String uri,
  String localName)`

  Look up an attribute's value by Namespace-qualified name.

  `void`

  `removeAttribute(int index)`

  Remove an attribute from the list.

  `void`

  `setAttribute(int index,
  String uri,
  String localName,
  String qName,
  String type,
  String value)`

  Set an attribute in the list.

  `void`

  `setAttributes(Attributes atts)`

  Copy an entire Attributes object.

  `void`

  `setLocalName(int index,
  String localName)`

  Set the local name of a specific attribute.

  `void`

  `setQName(int index,
  String qName)`

  Set the qualified name of a specific attribute.

  `void`

  `setType(int index,
  String type)`

  Set the type of a specific attribute.

  `void`

  `setURI(int index,
  String uri)`

  Set the Namespace URI of a specific attribute.

  `void`

  `setValue(int index,
  String value)`

  Set the value of a specific attribute.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AttributesImpl

    public AttributesImpl()

    Construct a new, empty AttributesImpl object.
  + ### AttributesImpl

    public AttributesImpl([Attributes](../Attributes.md "interface in org.xml.sax") atts)

    Copy an existing Attributes object.

    This constructor is especially useful inside a
    [`startElement`](../ContentHandler.md#startElement(java.lang.String,java.lang.String,java.lang.String,org.xml.sax.Attributes)) event.

    Parameters:
    :   `atts` - The existing Attributes object.
* ## Method Details

  + ### getLength

    public int getLength()

    Return the number of attributes in the list.

    Specified by:
    :   `getLength` in interface `Attributes`

    Returns:
    :   The number of attributes in the list.

    See Also:
    :   - [`Attributes.getLength()`](../Attributes.md#getLength())
  + ### getURI

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getURI(int index)

    Return an attribute's Namespace URI.

    Specified by:
    :   `getURI` in interface `Attributes`

    Parameters:
    :   `index` - The attribute's index (zero-based).

    Returns:
    :   The Namespace URI, the empty string if none is
        available, or null if the index is out of range.

    See Also:
    :   - [`Attributes.getURI(int)`](../Attributes.md#getURI(int))
  + ### getLocalName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getLocalName(int index)

    Return an attribute's local name.

    Specified by:
    :   `getLocalName` in interface `Attributes`

    Parameters:
    :   `index` - The attribute's index (zero-based).

    Returns:
    :   The attribute's local name, the empty string if
        none is available, or null if the index if out of range.

    See Also:
    :   - [`Attributes.getLocalName(int)`](../Attributes.md#getLocalName(int))
  + ### getQName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getQName(int index)

    Return an attribute's qualified (prefixed) name.

    Specified by:
    :   `getQName` in interface `Attributes`

    Parameters:
    :   `index` - The attribute's index (zero-based).

    Returns:
    :   The attribute's qualified name, the empty string if
        none is available, or null if the index is out of bounds.

    See Also:
    :   - [`Attributes.getQName(int)`](../Attributes.md#getQName(int))
  + ### getType

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getType(int index)

    Return an attribute's type by index.

    Specified by:
    :   `getType` in interface `Attributes`

    Parameters:
    :   `index` - The attribute's index (zero-based).

    Returns:
    :   The attribute's type, "CDATA" if the type is unknown, or null
        if the index is out of bounds.

    See Also:
    :   - [`Attributes.getType(int)`](../Attributes.md#getType(int))
  + ### getValue

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getValue(int index)

    Return an attribute's value by index.

    Specified by:
    :   `getValue` in interface `Attributes`

    Parameters:
    :   `index` - The attribute's index (zero-based).

    Returns:
    :   The attribute's value or null if the index is out of bounds.

    See Also:
    :   - [`Attributes.getValue(int)`](../Attributes.md#getValue(int))
  + ### getIndex

    public int getIndex([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Look up an attribute's index by Namespace name.

    In many cases, it will be more efficient to look up the name once and
    use the index query methods rather than using the name query methods
    repeatedly.

    Specified by:
    :   `getIndex` in interface `Attributes`

    Parameters:
    :   `uri` - The attribute's Namespace URI, or the empty
        string if none is available.
    :   `localName` - The attribute's local name.

    Returns:
    :   The attribute's index, or -1 if none matches.

    See Also:
    :   - [`Attributes.getIndex(java.lang.String,java.lang.String)`](../Attributes.md#getIndex(java.lang.String,java.lang.String))
  + ### getIndex

    public int getIndex([String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)

    Look up an attribute's index by qualified (prefixed) name.

    Specified by:
    :   `getIndex` in interface `Attributes`

    Parameters:
    :   `qName` - The qualified name.

    Returns:
    :   The attribute's index, or -1 if none matches.

    See Also:
    :   - [`Attributes.getIndex(java.lang.String)`](../Attributes.md#getIndex(java.lang.String))
  + ### getType

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getType([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Look up an attribute's type by Namespace-qualified name.

    Specified by:
    :   `getType` in interface `Attributes`

    Parameters:
    :   `uri` - The Namespace URI, or the empty string for a name
        with no explicit Namespace URI.
    :   `localName` - The local name.

    Returns:
    :   The attribute's type, or null if there is no
        matching attribute.

    See Also:
    :   - [`Attributes.getType(java.lang.String,java.lang.String)`](../Attributes.md#getType(java.lang.String,java.lang.String))
  + ### getType

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getType([String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)

    Look up an attribute's type by qualified (prefixed) name.

    Specified by:
    :   `getType` in interface `Attributes`

    Parameters:
    :   `qName` - The qualified name.

    Returns:
    :   The attribute's type, or null if there is no
        matching attribute.

    See Also:
    :   - [`Attributes.getType(java.lang.String)`](../Attributes.md#getType(java.lang.String))
  + ### getValue

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getValue([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Look up an attribute's value by Namespace-qualified name.

    Specified by:
    :   `getValue` in interface `Attributes`

    Parameters:
    :   `uri` - The Namespace URI, or the empty string for a name
        with no explicit Namespace URI.
    :   `localName` - The local name.

    Returns:
    :   The attribute's value, or null if there is no
        matching attribute.

    See Also:
    :   - [`Attributes.getValue(java.lang.String,java.lang.String)`](../Attributes.md#getValue(java.lang.String,java.lang.String))
  + ### getValue

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getValue([String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)

    Look up an attribute's value by qualified (prefixed) name.

    Specified by:
    :   `getValue` in interface `Attributes`

    Parameters:
    :   `qName` - The qualified name.

    Returns:
    :   The attribute's value, or null if there is no
        matching attribute.

    See Also:
    :   - [`Attributes.getValue(java.lang.String)`](../Attributes.md#getValue(java.lang.String))
  + ### clear

    public void clear()

    Clear the attribute list for reuse.

    Note that little memory is freed by this call:
    the current array is kept so it can be
    reused.
  + ### setAttributes

    public void setAttributes([Attributes](../Attributes.md "interface in org.xml.sax") atts)

    Copy an entire Attributes object.

    It may be more efficient to reuse an existing object
    rather than constantly allocating new ones.

    Parameters:
    :   `atts` - The attributes to copy.
  + ### addAttribute

    public void addAttribute([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") qName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)

    Add an attribute to the end of the list.

    For the sake of speed, this method does no checking
    to see if the attribute is already in the list: that is
    the responsibility of the application.

    Parameters:
    :   `uri` - The Namespace URI, or the empty string if
        none is available or Namespace processing is not
        being performed.
    :   `localName` - The local name, or the empty string if
        Namespace processing is not being performed.
    :   `qName` - The qualified (prefixed) name, or the empty string
        if qualified names are not available.
    :   `type` - The attribute type as a string.
    :   `value` - The attribute value.
  + ### setAttribute

    public void setAttribute(int index,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") qName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)

    Set an attribute in the list.

    For the sake of speed, this method does no checking
    for name conflicts or well-formedness: such checks are the
    responsibility of the application.

    Parameters:
    :   `index` - The index of the attribute (zero-based).
    :   `uri` - The Namespace URI, or the empty string if
        none is available or Namespace processing is not
        being performed.
    :   `localName` - The local name, or the empty string if
        Namespace processing is not being performed.
    :   `qName` - The qualified name, or the empty string
        if qualified names are not available.
    :   `type` - The attribute type as a string.
    :   `value` - The attribute value.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not point to an attribute
        in the list.
  + ### removeAttribute

    public void removeAttribute(int index)

    Remove an attribute from the list.

    Parameters:
    :   `index` - The index of the attribute (zero-based).

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not point to an attribute
        in the list.
  + ### setURI

    public void setURI(int index,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") uri)

    Set the Namespace URI of a specific attribute.

    Parameters:
    :   `index` - The index of the attribute (zero-based).
    :   `uri` - The attribute's Namespace URI, or the empty
        string for none.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not point to an attribute
        in the list.
  + ### setLocalName

    public void setLocalName(int index,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Set the local name of a specific attribute.

    Parameters:
    :   `index` - The index of the attribute (zero-based).
    :   `localName` - The attribute's local name, or the empty
        string for none.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not point to an attribute
        in the list.
  + ### setQName

    public void setQName(int index,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)

    Set the qualified name of a specific attribute.

    Parameters:
    :   `index` - The index of the attribute (zero-based).
    :   `qName` - The attribute's qualified name, or the empty
        string for none.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not point to an attribute
        in the list.
  + ### setType

    public void setType(int index,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") type)

    Set the type of a specific attribute.

    Parameters:
    :   `index` - The index of the attribute (zero-based).
    :   `type` - The attribute's type.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not point to an attribute
        in the list.
  + ### setValue

    public void setValue(int index,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)

    Set the value of a specific attribute.

    Parameters:
    :   `index` - The index of the attribute (zero-based).
    :   `value` - The attribute's value.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not point to an attribute
        in the list.