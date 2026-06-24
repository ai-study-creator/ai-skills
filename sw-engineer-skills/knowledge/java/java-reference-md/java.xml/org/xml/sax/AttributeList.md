Module [java.xml](../../../module-summary.md)

Package [org.xml.sax](package-summary.md)

# Interface AttributeList

All Known Implementing Classes:
:   `AttributeListImpl`

---

[@Deprecated](../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../java.base/java/lang/Deprecated.md#since())="1.5")
public interface AttributeList

Deprecated.

This interface has been replaced by the SAX2
[`Attributes`](Attributes.md "interface in org.xml.sax")
interface, which includes Namespace support.

Interface for an element's attribute specifications.

This is the original SAX1 interface for reporting an element's
attributes. Unlike the new [`Attributes`](Attributes.md "interface in org.xml.sax")
interface, it does not support Namespace-related information.

When an attribute list is supplied as part of a
[`startElement`](DocumentHandler.md#startElement(java.lang.String,org.xml.sax.AttributeList))
event, the list will return valid results only during the
scope of the event; once the event handler returns control
to the parser, the attribute list is invalid. To save a
persistent copy of the attribute list, use the SAX1
[`AttributeListImpl`](helpers/AttributeListImpl.md "class in org.xml.sax.helpers")
helper class.

An attribute list includes only attributes that have been
specified or defaulted: #IMPLIED attributes will not be included.

There are two ways for the SAX application to obtain information
from the AttributeList. First, it can iterate through the entire
list:

```
 public void startElement (String name, AttributeList atts) {
   for (int i = 0; i < atts.getLength(); i++) {
     String name = atts.getName(i);
     String type = atts.getType(i);
     String value = atts.getValue(i);
     [...]
   }
 }
```

(Note that the result of getLength() will be zero if there
are no attributes.)

As an alternative, the application can request the value or
type of specific attributes:

```
 public void startElement (String name, AttributeList atts) {
   String identifier = atts.getValue("id");
   String label = atts.getValue("label");
   [...]
 }
```

Since:
:   1.4, SAX 1.0

See Also:
:   * [`startElement`](DocumentHandler.md#startElement(java.lang.String,org.xml.sax.AttributeList))
    * [`AttributeListImpl`](helpers/AttributeListImpl.md "class in org.xml.sax.helpers")

* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `int`

  `getLength()`

  Deprecated.

  Return the number of attributes in this list.

  `String`

  `getName(int i)`

  Deprecated.

  Return the name of an attribute in this list (by position).

  `String`

  `getType(int i)`

  Deprecated.

  Return the type of an attribute in the list (by position).

  `String`

  `getType(String name)`

  Deprecated.

  Return the type of an attribute in the list (by name).

  `String`

  `getValue(int i)`

  Deprecated.

  Return the value of an attribute in the list (by position).

  `String`

  `getValue(String name)`

  Deprecated.

  Return the value of an attribute in the list (by name).

* ## Method Details

  + ### getLength

    int getLength()

    Deprecated.

    Return the number of attributes in this list.

    The SAX parser may provide attributes in any
    arbitrary order, regardless of the order in which they were
    declared or specified. The number of attributes may be
    zero.

    Returns:
    :   The number of attributes in the list.
  + ### getName

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getName(int i)

    Deprecated.

    Return the name of an attribute in this list (by position).

    The names must be unique: the SAX parser shall not include the
    same attribute twice. Attributes without values (those declared
    #IMPLIED without a value specified in the start tag) will be
    omitted from the list.

    If the attribute name has a namespace prefix, the prefix
    will still be attached.

    Parameters:
    :   `i` - The index of the attribute in the list (starting at 0).

    Returns:
    :   The name of the indexed attribute, or null
        if the index is out of range.

    See Also:
    :   - [`getLength()`](#getLength())
  + ### getType

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getType(int i)

    Deprecated.

    Return the type of an attribute in the list (by position).

    The attribute type is one of the strings "CDATA", "ID",
    "IDREF", "IDREFS", "NMTOKEN", "NMTOKENS", "ENTITY", "ENTITIES",
    or "NOTATION" (always in upper case).

    If the parser has not read a declaration for the attribute,
    or if the parser does not report attribute types, then it must
    return the value "CDATA" as stated in the XML 1.0 Recommentation
    (clause 3.3.3, "Attribute-Value Normalization").

    For an enumerated attribute that is not a notation, the
    parser will report the type as "NMTOKEN".

    Parameters:
    :   `i` - The index of the attribute in the list (starting at 0).

    Returns:
    :   The attribute type as a string, or
        null if the index is out of range.

    See Also:
    :   - [`getLength()`](#getLength())
        - [`getType(java.lang.String)`](#getType(java.lang.String))
  + ### getValue

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getValue(int i)

    Deprecated.

    Return the value of an attribute in the list (by position).

    If the attribute value is a list of tokens (IDREFS,
    ENTITIES, or NMTOKENS), the tokens will be concatenated
    into a single string separated by whitespace.

    Parameters:
    :   `i` - The index of the attribute in the list (starting at 0).

    Returns:
    :   The attribute value as a string, or
        null if the index is out of range.

    See Also:
    :   - [`getLength()`](#getLength())
        - [`getValue(java.lang.String)`](#getValue(java.lang.String))
  + ### getType

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getType([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated.

    Return the type of an attribute in the list (by name).

    The return value is the same as the return value for
    getType(int).

    If the attribute name has a namespace prefix in the document,
    the application must include the prefix here.

    Parameters:
    :   `name` - The name of the attribute.

    Returns:
    :   The attribute type as a string, or null if no
        such attribute exists.

    See Also:
    :   - [`getType(int)`](#getType(int))
  + ### getValue

    [String](../../../../java.base/java/lang/String.md "class in java.lang") getValue([String](../../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated.

    Return the value of an attribute in the list (by name).

    The return value is the same as the return value for
    getValue(int).

    If the attribute name has a namespace prefix in the document,
    the application must include the prefix here.

    Parameters:
    :   `name` - the name of the attribute to return

    Returns:
    :   The attribute value as a string, or null if
        no such attribute exists.

    See Also:
    :   - [`getValue(int)`](#getValue(int))