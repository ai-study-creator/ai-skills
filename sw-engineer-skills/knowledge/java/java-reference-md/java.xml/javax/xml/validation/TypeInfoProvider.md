Module [java.xml](../../../module-summary.md)

Package [javax.xml.validation](package-summary.md)

# Class TypeInfoProvider

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.validation.TypeInfoProvider

---

public abstract class TypeInfoProvider
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

This class provides access to the type information determined
by [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

Some schema languages, such as W3C XML Schema, encourages a validator
to report the "type" it assigns to each attribute/element.
Those applications who wish to access this type information can invoke
methods defined on this "interface" to access such type information.

Implementation of this "interface" can be obtained through the
[`ValidatorHandler.getTypeInfoProvider()`](ValidatorHandler.md#getTypeInfoProvider()) method.

Since:
:   1.5

See Also:
:   * [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom")

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `TypeInfoProvider()`

  Constructor for the derived class.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `abstract TypeInfo`

  `getAttributeTypeInfo(int index)`

  Returns the immutable [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom") object for the specified
  attribute of the current element.

  `abstract TypeInfo`

  `getElementTypeInfo()`

  Returns the immutable [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom") object for the current
  element.

  `abstract boolean`

  `isIdAttribute(int index)`

  Returns `true` if the specified attribute is determined
  to be ID.

  `abstract boolean`

  `isSpecified(int index)`

  Returns `false` if the attribute was added by the validator.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### TypeInfoProvider

    protected TypeInfoProvider()

    Constructor for the derived class.

    The constructor does nothing.
* ## Method Details

  + ### getElementTypeInfo

    public abstract [TypeInfo](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom") getElementTypeInfo()

    Returns the immutable [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom") object for the current
    element.

    The method may only be called by the startElement event
    or the endElement event
    of the [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") that the application sets to
    the [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

    When W3C XML Schema validation is being performed, in the
    case where an element has a union type, the [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom")
    returned by a call to `getElementTypeInfo()` from the
    startElement
    event will be the union type. The `TypeInfo`
    returned by a call
    from the endElement event will be the actual member type used
    to validate the element.

    Returns:
    :   An immutable [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom") object that represents the
        type of the current element.
        Note that the caller can keep references to the obtained
        [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom") longer than the callback scope.
        Otherwise, this method returns
        null if the validator is unable to
        determine the type of the current element for some reason
        (for example, if the validator is recovering from
        an earlier error.)

    Throws:
    :   `IllegalStateException` - If this method is called from other [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")
        methods.
  + ### getAttributeTypeInfo

    public abstract [TypeInfo](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom") getAttributeTypeInfo(int index)

    Returns the immutable [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom") object for the specified
    attribute of the current element.

    The method may only be called by the startElement event of
    the [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") that the application sets to the
    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

    Parameters:
    :   `index` - The index of the attribute. The same index for
        the [`Attributes`](../../../org/xml/sax/Attributes.md "interface in org.xml.sax") object passed to the
        `startElement` callback.

    Returns:
    :   An immutable [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom") object that represents the
        type of the specified attribute.
        Note that the caller can keep references to the obtained
        [`TypeInfo`](../../../org/w3c/dom/TypeInfo.md "interface in org.w3c.dom") longer than the callback scope.
        Otherwise, this method returns
        null if the validator is unable to
        determine the type.

    Throws:
    :   `IndexOutOfBoundsException` - If the index is invalid.
    :   `IllegalStateException` - If this method is called from other [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")
        methods.
  + ### isIdAttribute

    public abstract boolean isIdAttribute(int index)

    Returns `true` if the specified attribute is determined
    to be ID.

    Exactly how an attribute is "determined to be ID" is up to the
    schema language. In case of W3C XML Schema, this means
    that the actual type of the attribute is the built-in ID type
    or its derived type.

    A [`DocumentBuilder`](../parsers/DocumentBuilder.md "class in javax.xml.parsers") uses this information
    to properly implement [`Attr.isId()`](../../../org/w3c/dom/Attr.md#isId()).

    The method may only be called by the startElement event of
    the [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") that the application sets to the
    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

    Parameters:
    :   `index` - The index of the attribute. The same index for
        the [`Attributes`](../../../org/xml/sax/Attributes.md "interface in org.xml.sax") object passed to the
        `startElement` callback.

    Returns:
    :   true
        if the type of the specified attribute is ID.

    Throws:
    :   `IndexOutOfBoundsException` - If the index is invalid.
    :   `IllegalStateException` - If this method is called from other [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")
        methods.
  + ### isSpecified

    public abstract boolean isSpecified(int index)

    Returns `false` if the attribute was added by the validator.

    This method provides information necessary for
    a [`DocumentBuilder`](../parsers/DocumentBuilder.md "class in javax.xml.parsers") to determine what
    the DOM tree should return from the [`Attr.getSpecified()`](../../../org/w3c/dom/Attr.md#getSpecified()) method.

    The method may only be called by the startElement event of
    the [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax") that the application sets to the
    [`ValidatorHandler`](ValidatorHandler.md "class in javax.xml.validation").

    A general guideline for validators is to return true if
    the attribute was originally present in the pipeline, and
    false if it was added by the validator.

    Parameters:
    :   `index` - The index of the attribute. The same index for
        the [`Attributes`](../../../org/xml/sax/Attributes.md "interface in org.xml.sax") object passed to the
        `startElement` callback.

    Returns:
    :   `true` if the attribute was present before the validator
        processes input. `false` if the attribute was added
        by the validator.

    Throws:
    :   `IndexOutOfBoundsException` - If the index is invalid.
    :   `IllegalStateException` - If this method is called from other [`ContentHandler`](../../../org/xml/sax/ContentHandler.md "interface in org.xml.sax")
        methods.