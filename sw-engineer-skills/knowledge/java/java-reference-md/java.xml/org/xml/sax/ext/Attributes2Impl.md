Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.ext](package-summary.md)

# Class Attributes2Impl

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[org.xml.sax.helpers.AttributesImpl](../helpers/AttributesImpl.md "class in org.xml.sax.helpers")

org.xml.sax.ext.Attributes2Impl

All Implemented Interfaces:
:   `Attributes`, `Attributes2`

---

public class Attributes2Impl
extends [AttributesImpl](../helpers/AttributesImpl.md "class in org.xml.sax.helpers")
implements [Attributes2](Attributes2.md "interface in org.xml.sax.ext")

SAX2 extension helper for additional Attributes information,
implementing the [`Attributes2`](Attributes2.md "interface in org.xml.sax.ext") interface.

This is not part of core-only SAX2 distributions.

The *specified* flag for each attribute will always
be true, unless it has been set to false in the copy constructor
or using [`setSpecified(int, boolean)`](#setSpecified(int,boolean)).
Similarly, the *declared* flag for each attribute will
always be false, except for defaulted attributes (*specified*
is false), non-CDATA attributes, or when it is set to true using
[`setDeclared(int, boolean)`](#setDeclared(int,boolean)).
If you change an attribute's type by hand, you may need to modify
its *declared* flag to match.

Since:
:   1.5, SAX 2.0 (extensions 1.1 alpha)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Attributes2Impl()`

  Construct a new, empty Attributes2Impl object.

  `Attributes2Impl(Attributes atts)`

  Copy an existing Attributes or Attributes2 object.
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

  Add an attribute to the end of the list, setting its
  "specified" flag to true.

  `boolean`

  `isDeclared(int index)`

  Returns the current value of the attribute's "declared" flag.

  `boolean`

  `isDeclared(String qName)`

  Returns the current value of the attribute's "declared" flag.

  `boolean`

  `isDeclared(String uri,
  String localName)`

  Returns the current value of the attribute's "declared" flag.

  `boolean`

  `isSpecified(int index)`

  Returns the current value of an attribute's "specified" flag.

  `boolean`

  `isSpecified(String qName)`

  Returns the current value of an attribute's "specified" flag.

  `boolean`

  `isSpecified(String uri,
  String localName)`

  Returns the current value of an attribute's "specified" flag.

  `void`

  `removeAttribute(int index)`

  Remove an attribute from the list.

  `void`

  `setAttributes(Attributes atts)`

  Copy an entire Attributes object.

  `void`

  `setDeclared(int index,
  boolean value)`

  Assign a value to the "declared" flag of a specific attribute.

  `void`

  `setSpecified(int index,
  boolean value)`

  Assign a value to the "specified" flag of a specific attribute.

  ### Methods inherited from class org.xml.sax.helpers.[AttributesImpl](../helpers/AttributesImpl.md "class in org.xml.sax.helpers")

  `clear, getIndex, getIndex, getLength, getLocalName, getQName, getType, getType, getType, getURI, getValue, getValue, getValue, setAttribute, setLocalName, setQName, setType, setURI, setValue`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface org.xml.sax.[Attributes](../Attributes.md "interface in org.xml.sax")

  `getIndex, getIndex, getLength, getLocalName, getQName, getType, getType, getType, getURI, getValue, getValue, getValue`

* ## Constructor Details

  + ### Attributes2Impl

    public Attributes2Impl()

    Construct a new, empty Attributes2Impl object.
  + ### Attributes2Impl

    public Attributes2Impl([Attributes](../Attributes.md "interface in org.xml.sax") atts)

    Copy an existing Attributes or Attributes2 object.
    If the object implements Attributes2, values of the
    *specified* and *declared* flags for each
    attribute are copied.
    Otherwise the flag values are defaulted to assume no DTD was used,
    unless there is evidence to the contrary (such as attributes with
    type other than CDATA, which must have been *declared*).

    This constructor is especially useful inside a
    [`startElement`](../ContentHandler.md#startElement(java.lang.String,java.lang.String,java.lang.String,org.xml.sax.Attributes)) event.

    Parameters:
    :   `atts` - The existing Attributes object.
* ## Method Details

  + ### isDeclared

    public boolean isDeclared(int index)

    Returns the current value of the attribute's "declared" flag.

    Specified by:
    :   `isDeclared` in interface `Attributes2`

    Parameters:
    :   `index` - The attribute index (zero-based).

    Returns:
    :   true if the attribute was declared in the DTD,
        false otherwise.
  + ### isDeclared

    public boolean isDeclared([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Returns the current value of the attribute's "declared" flag.

    Specified by:
    :   `isDeclared` in interface `Attributes2`

    Parameters:
    :   `uri` - The Namespace URI, or the empty string if
        the name has no Namespace URI.
    :   `localName` - The attribute's local name.

    Returns:
    :   true if the attribute was declared in the DTD,
        false otherwise.
  + ### isDeclared

    public boolean isDeclared([String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)

    Returns the current value of the attribute's "declared" flag.

    Specified by:
    :   `isDeclared` in interface `Attributes2`

    Parameters:
    :   `qName` - The XML qualified (prefixed) name.

    Returns:
    :   true if the attribute was declared in the DTD,
        false otherwise.
  + ### isSpecified

    public boolean isSpecified(int index)

    Returns the current value of an attribute's "specified" flag.

    Specified by:
    :   `isSpecified` in interface `Attributes2`

    Parameters:
    :   `index` - The attribute index (zero-based).

    Returns:
    :   current flag value

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not identify an attribute.
  + ### isSpecified

    public boolean isSpecified([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName)

    Returns the current value of an attribute's "specified" flag.

    Specified by:
    :   `isSpecified` in interface `Attributes2`

    Parameters:
    :   `uri` - The Namespace URI, or the empty string if
        the name has no Namespace URI.
    :   `localName` - The attribute's local name.

    Returns:
    :   current flag value

    Throws:
    :   `IllegalArgumentException` - When the
        supplied names do not identify an attribute.
  + ### isSpecified

    public boolean isSpecified([String](../../../../../java.base/java/lang/String.md "class in java.lang") qName)

    Returns the current value of an attribute's "specified" flag.

    Specified by:
    :   `isSpecified` in interface `Attributes2`

    Parameters:
    :   `qName` - The XML qualified (prefixed) name.

    Returns:
    :   current flag value

    Throws:
    :   `IllegalArgumentException` - When the
        supplied name does not identify an attribute.
  + ### setAttributes

    public void setAttributes([Attributes](../Attributes.md "interface in org.xml.sax") atts)

    Copy an entire Attributes object. The "specified" flags are
    assigned as true, and "declared" flags as false (except when
    an attribute's type is not CDATA),
    unless the object is an Attributes2 object.
    In that case those flag values are all copied.

    Overrides:
    :   `setAttributes` in class `AttributesImpl`

    Parameters:
    :   `atts` - The attributes to copy.

    See Also:
    :   - [`AttributesImpl.setAttributes(org.xml.sax.Attributes)`](../helpers/AttributesImpl.md#setAttributes(org.xml.sax.Attributes))
  + ### addAttribute

    public void addAttribute([String](../../../../../java.base/java/lang/String.md "class in java.lang") uri,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") localName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") qName,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)

    Add an attribute to the end of the list, setting its
    "specified" flag to true. To set that flag's value
    to false, use [`setSpecified(int, boolean)`](#setSpecified(int,boolean)).

    Unless the attribute *type* is CDATA, this attribute
    is marked as being declared in the DTD. To set that flag's value
    to true for CDATA attributes, use [`setDeclared(int, boolean)`](#setDeclared(int,boolean)).

    Overrides:
    :   `addAttribute` in class `AttributesImpl`

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

    See Also:
    :   - [`AttributesImpl.addAttribute(java.lang.String, java.lang.String, java.lang.String, java.lang.String, java.lang.String)`](../helpers/AttributesImpl.md#addAttribute(java.lang.String,java.lang.String,java.lang.String,java.lang.String,java.lang.String))
  + ### removeAttribute

    public void removeAttribute(int index)

    Description copied from class: `AttributesImpl`

    Remove an attribute from the list.

    Overrides:
    :   `removeAttribute` in class `AttributesImpl`

    Parameters:
    :   `index` - The index of the attribute (zero-based).
  + ### setDeclared

    public void setDeclared(int index,
    boolean value)

    Assign a value to the "declared" flag of a specific attribute.
    This is normally needed only for attributes of type CDATA,
    including attributes whose type is changed to or from CDATA.

    Parameters:
    :   `index` - The index of the attribute (zero-based).
    :   `value` - The desired flag value.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not identify an attribute.

    See Also:
    :   - [`AttributesImpl.setType(int, java.lang.String)`](../helpers/AttributesImpl.md#setType(int,java.lang.String))
  + ### setSpecified

    public void setSpecified(int index,
    boolean value)

    Assign a value to the "specified" flag of a specific attribute.
    This is the only way this flag can be cleared, except clearing
    by initialization with the copy constructor.

    Parameters:
    :   `index` - The index of the attribute (zero-based).
    :   `value` - The desired flag value.

    Throws:
    :   `ArrayIndexOutOfBoundsException` - When the
        supplied index does not identify an attribute.