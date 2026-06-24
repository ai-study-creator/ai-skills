Module [java.xml](../../../../module-summary.md)

Package [org.xml.sax.helpers](package-summary.md)

# Class AttributeListImpl

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

org.xml.sax.helpers.AttributeListImpl

All Implemented Interfaces:
:   `AttributeList`

---

[@Deprecated](../../../../../java.base/java/lang/Deprecated.md "annotation interface in java.lang")([since](../../../../../java.base/java/lang/Deprecated.md#since())="1.5")
public class AttributeListImpl
extends [Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
implements [AttributeList](../AttributeList.md "interface in org.xml.sax")

Deprecated.

This class implements a deprecated interface,
[`AttributeList`](../AttributeList.md "interface in org.xml.sax");
that interface has been replaced by
[`Attributes`](../Attributes.md "interface in org.xml.sax"),
which is implemented in the
[`AttributesImpl`](AttributesImpl.md "class in org.xml.sax.helpers") helper class.

Default implementation for AttributeList.

AttributeList implements the deprecated SAX1 [`AttributeList`](../AttributeList.md "interface in org.xml.sax") interface, and has been
replaced by the new SAX2 [`AttributesImpl`](AttributesImpl.md "class in org.xml.sax.helpers") interface.

This class provides a convenience implementation of the SAX
[`AttributeList`](../AttributeList.md "interface in org.xml.sax") interface. This
implementation is useful both for SAX parser writers, who can use
it to provide attributes to the application, and for SAX application
writers, who can use it to create a persistent copy of an element's
attribute specifications:

```
 private AttributeList myatts;

 public void startElement (String name, AttributeList atts)
 {
              // create a persistent copy of the attribute list
              // for use outside this method
   myatts = new AttributeListImpl(atts);
   [...]
 }
```

Please note that SAX parsers are not required to use this
class to provide an implementation of AttributeList; it is
supplied only as an optional convenience. In particular,
parser writers are encouraged to invent more efficient
implementations.

Since:
:   1.4, SAX 1.0

See Also:
:   * [`AttributeList`](../AttributeList.md "interface in org.xml.sax")
    * [`DocumentHandler.startElement(java.lang.String, org.xml.sax.AttributeList)`](../DocumentHandler.md#startElement(java.lang.String,org.xml.sax.AttributeList))

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `AttributeListImpl()`

  Deprecated.

  Create an empty attribute list.

  `AttributeListImpl(AttributeList atts)`

  Deprecated.

  Construct a persistent copy of an existing attribute list.
* ## Method Summary

  All MethodsInstance MethodsConcrete MethodsDeprecated Methods

  Modifier and Type

  Method

  Description

  `void`

  `addAttribute(String name,
  String type,
  String value)`

  Deprecated.

  Add an attribute to an attribute list.

  `void`

  `clear()`

  Deprecated.

  Clear the attribute list.

  `int`

  `getLength()`

  Deprecated.

  Return the number of attributes in the list.

  `String`

  `getName(int i)`

  Deprecated.

  Get the name of an attribute (by position).

  `String`

  `getType(int i)`

  Deprecated.

  Get the type of an attribute (by position).

  `String`

  `getType(String name)`

  Deprecated.

  Get the type of an attribute (by name).

  `String`

  `getValue(int i)`

  Deprecated.

  Get the value of an attribute (by position).

  `String`

  `getValue(String name)`

  Deprecated.

  Get the value of an attribute (by name).

  `void`

  `removeAttribute(String name)`

  Deprecated.

  Remove an attribute from the list.

  `void`

  `setAttributeList(AttributeList atts)`

  Deprecated.

  Set the attribute list, discarding previous contents.

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### AttributeListImpl

    public AttributeListImpl()

    Deprecated.

    Create an empty attribute list.

    This constructor is most useful for parser writers, who
    will use it to create a single, reusable attribute list that
    can be reset with the clear method between elements.

    See Also:
    :   - [`addAttribute(java.lang.String, java.lang.String, java.lang.String)`](#addAttribute(java.lang.String,java.lang.String,java.lang.String))
        - [`clear()`](#clear())
  + ### AttributeListImpl

    public AttributeListImpl([AttributeList](../AttributeList.md "interface in org.xml.sax") atts)

    Deprecated.

    Construct a persistent copy of an existing attribute list.

    This constructor is most useful for application writers,
    who will use it to create a persistent copy of an existing
    attribute list.

    Parameters:
    :   `atts` - The attribute list to copy

    See Also:
    :   - [`DocumentHandler.startElement(java.lang.String, org.xml.sax.AttributeList)`](../DocumentHandler.md#startElement(java.lang.String,org.xml.sax.AttributeList))
* ## Method Details

  + ### setAttributeList

    public void setAttributeList([AttributeList](../AttributeList.md "interface in org.xml.sax") atts)

    Deprecated.

    Set the attribute list, discarding previous contents.

    This method allows an application writer to reuse an
    attribute list easily.

    Parameters:
    :   `atts` - The attribute list to copy.
  + ### addAttribute

    public void addAttribute([String](../../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") type,
    [String](../../../../../java.base/java/lang/String.md "class in java.lang") value)

    Deprecated.

    Add an attribute to an attribute list.

    This method is provided for SAX parser writers, to allow them
    to build up an attribute list incrementally before delivering
    it to the application.

    Parameters:
    :   `name` - The attribute name.
    :   `type` - The attribute type ("NMTOKEN" for an enumeration).
    :   `value` - The attribute value (must not be null).

    See Also:
    :   - [`removeAttribute(java.lang.String)`](#removeAttribute(java.lang.String))
        - [`DocumentHandler.startElement(java.lang.String, org.xml.sax.AttributeList)`](../DocumentHandler.md#startElement(java.lang.String,org.xml.sax.AttributeList))
  + ### removeAttribute

    public void removeAttribute([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated.

    Remove an attribute from the list.

    SAX application writers can use this method to filter an
    attribute out of an AttributeList. Note that invoking this
    method will change the length of the attribute list and
    some of the attribute's indices.

    If the requested attribute is not in the list, this is
    a no-op.

    Parameters:
    :   `name` - The attribute name.

    See Also:
    :   - [`addAttribute(java.lang.String, java.lang.String, java.lang.String)`](#addAttribute(java.lang.String,java.lang.String,java.lang.String))
  + ### clear

    public void clear()

    Deprecated.

    Clear the attribute list.

    SAX parser writers can use this method to reset the attribute
    list between DocumentHandler.startElement events. Normally,
    it will make sense to reuse the same AttributeListImpl object
    rather than allocating a new one each time.

    See Also:
    :   - [`DocumentHandler.startElement(java.lang.String, org.xml.sax.AttributeList)`](../DocumentHandler.md#startElement(java.lang.String,org.xml.sax.AttributeList))
  + ### getLength

    public int getLength()

    Deprecated.

    Return the number of attributes in the list.

    Specified by:
    :   `getLength` in interface `AttributeList`

    Returns:
    :   The number of attributes in the list.

    See Also:
    :   - [`AttributeList.getLength()`](../AttributeList.md#getLength())
  + ### getName

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName(int i)

    Deprecated.

    Get the name of an attribute (by position).

    Specified by:
    :   `getName` in interface `AttributeList`

    Parameters:
    :   `i` - The position of the attribute in the list.

    Returns:
    :   The attribute name as a string, or null if there
        is no attribute at that position.

    See Also:
    :   - [`AttributeList.getName(int)`](../AttributeList.md#getName(int))
  + ### getType

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getType(int i)

    Deprecated.

    Get the type of an attribute (by position).

    Specified by:
    :   `getType` in interface `AttributeList`

    Parameters:
    :   `i` - The position of the attribute in the list.

    Returns:
    :   The attribute type as a string ("NMTOKEN" for an
        enumeration, and "CDATA" if no declaration was
        read), or null if there is no attribute at
        that position.

    See Also:
    :   - [`AttributeList.getType(int)`](../AttributeList.md#getType(int))
  + ### getValue

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getValue(int i)

    Deprecated.

    Get the value of an attribute (by position).

    Specified by:
    :   `getValue` in interface `AttributeList`

    Parameters:
    :   `i` - The position of the attribute in the list.

    Returns:
    :   The attribute value as a string, or null if
        there is no attribute at that position.

    See Also:
    :   - [`AttributeList.getValue(int)`](../AttributeList.md#getValue(int))
  + ### getType

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getType([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated.

    Get the type of an attribute (by name).

    Specified by:
    :   `getType` in interface `AttributeList`

    Parameters:
    :   `name` - The attribute name.

    Returns:
    :   The attribute type as a string ("NMTOKEN" for an
        enumeration, and "CDATA" if no declaration was
        read).

    See Also:
    :   - [`AttributeList.getType(java.lang.String)`](../AttributeList.md#getType(java.lang.String))
  + ### getValue

    public [String](../../../../../java.base/java/lang/String.md "class in java.lang") getValue([String](../../../../../java.base/java/lang/String.md "class in java.lang") name)

    Deprecated.

    Get the value of an attribute (by name).

    Specified by:
    :   `getValue` in interface `AttributeList`

    Parameters:
    :   `name` - The attribute name.

    Returns:
    :   The attribute value as a string, or null if
        no such attribute exists.

    See Also:
    :   - [`AttributeList.getValue(java.lang.String)`](../AttributeList.md#getValue(java.lang.String))