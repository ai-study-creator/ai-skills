Module [java.xml](../../../module-summary.md)

# Package javax.xml.datatype

---

package javax.xml.datatype

Defines XML/Java Type Mappings.

This API provides XML/Java type mappings.

The following XML standards apply:

* [W3C XML Schema 1.0 Part 2, Section 3.2.7-14](http://www.w3.org/TR/xmlschema-2/#dateTime)
* [XQuery 1.0 and XPath 2.0 Data Model, xdt:dayTimeDuration](http://www.w3.org/TR/xpath-datamodel#dt-dayTimeDuration)
* [XQuery 1.0 and XPath 2.0 Data Model, xdt:yearMonthDuration](http://www.w3.org/TR/xpath-datamodel#dt-yearMonthDuration)

---

W3C XML Schema/Java Type Mappings

| W3C XML Schema Data Type | Java Data Type |
| --- | --- |
| xs:date | [`XMLGregorianCalendar`](XMLGregorianCalendar.md "class in javax.xml.datatype") |
| xs:dateTime | [`XMLGregorianCalendar`](XMLGregorianCalendar.md "class in javax.xml.datatype") |
| xs:duration | [`Duration`](Duration.md "class in javax.xml.datatype") |
| xs:gDay | [`XMLGregorianCalendar`](XMLGregorianCalendar.md "class in javax.xml.datatype") |
| xs:gMonth | [`XMLGregorianCalendar`](XMLGregorianCalendar.md "class in javax.xml.datatype") |
| xs:gMonthDay | [`XMLGregorianCalendar`](XMLGregorianCalendar.md "class in javax.xml.datatype") |
| xs:gYear | [`XMLGregorianCalendar`](XMLGregorianCalendar.md "class in javax.xml.datatype") |
| xs:gYearMonth | [`XMLGregorianCalendar`](XMLGregorianCalendar.md "class in javax.xml.datatype") |
| xs:time | [`XMLGregorianCalendar`](XMLGregorianCalendar.md "class in javax.xml.datatype") |

---

XQuery and XPath/Java Type Mappings

| XQuery 1.0 and XPath 2.0 Data Model | Java Data Type |
| --- | --- |
| xdt:dayTimeDuration | [`Duration`](Duration.md "class in javax.xml.datatype") |
| xdt:yearMonthDuration | [`Duration`](Duration.md "class in javax.xml.datatype") |

---

W3C XML Schema data types that have a "*natural*" mapping to Java types are defined by
JSR 31: Java Architecture for XML Binding (JAXB) Specification, Binding XML Schema to Java Representations.
JAXB defined mappings for XML Schema built-in data types include:

* xs:anySimpleType
* xs:base64Binary
* xs:boolean
* xs:byte
* xs:decimal
* xs:double
* xs:float
* xs:hexBinary
* xs:int
* xs:integer
* xs:long
* xs:QName
* xs:short
* xs:string
* xs:unsignedByte
* xs:unsignedInt
* xs:unsignedShort

Since:
:   1.5

See Also:
:   * [W3C XML Schema 1.0 Part 2, Section 3.2.7-14](http://www.w3.org/TR/xmlschema-2/#dateTime)
    * [XQuery 1.0 and XPath 2.0 Data Model, xdt:dayTimeDuration](http://www.w3.org/TR/xpath-datamodel#dt-dayTimeDuration)
    * [XQuery 1.0 and XPath 2.0 Data Model, xdt:yearMonthDuration](http://www.w3.org/TR/xpath-datamodel#dt-yearMonthDuration)

* Related Packages

  Package

  Description

  [javax.xml](../package-summary.md)

  Defines constants for XML processing.
* All Classes and InterfacesClassesException Classes

  Class

  Description

  [DatatypeConfigurationException](DatatypeConfigurationException.md "class in javax.xml.datatype")

  Indicates a serious configuration error.

  [DatatypeConstants](DatatypeConstants.md "class in javax.xml.datatype")

  Utility class to contain basic Datatype values as constants.

  [DatatypeConstants.Field](DatatypeConstants.Field.md "class in javax.xml.datatype")

  Type-safe enum class that represents six fields
  of the [`Duration`](Duration.md "class in javax.xml.datatype") class.

  [DatatypeFactory](DatatypeFactory.md "class in javax.xml.datatype")

  Factory that creates new `javax.xml.datatype` `Object`s that map XML to/from Java `Object`s.

  [Duration](Duration.md "class in javax.xml.datatype")

  Immutable representation of a time span as defined in
  the W3C XML Schema 1.0 specification.

  [XMLGregorianCalendar](XMLGregorianCalendar.md "class in javax.xml.datatype")

  Representation for W3C XML Schema 1.0 date/time datatypes.