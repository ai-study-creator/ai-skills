Module [java.xml](../../module-summary.md)

Package [javax.xml](package-summary.md)

# Class XMLConstants

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.XMLConstants

---

public final class XMLConstants
extends [Object](../../../java.base/java/lang/Object.md "class in java.lang")

Defines constants for XML Processing APIs.

## External Access Properties

The value of the external access properties, including [`ACCESS_EXTERNAL_DTD`](#ACCESS_EXTERNAL_DTD),
[`ACCESS_EXTERNAL_SCHEMA`](#ACCESS_EXTERNAL_SCHEMA), and [`ACCESS_EXTERNAL_STYLESHEET`](#ACCESS_EXTERNAL_STYLESHEET),
is defined as follows.

### Value:

A list of protocols separated by comma. A protocol is the scheme portion of a
[`URI`](../../../java.base/java/net/URI.md "class in java.net"), or in the case of the JAR protocol, "jar" plus the scheme
portion separated by colon. A scheme is defined as:
> scheme = alpha \*( alpha | digit | "+" | "-" | "." )  
> where alpha = a-z and A-Z.  
>   
> And the JAR protocol:  
> jar[:scheme]  
>   
> Protocols including the keyword "jar" are case-insensitive. Any whitespaces as defined by
> [`Character.isSpaceChar(char)`](../../../java.base/java/lang/Character.md#isSpaceChar(char)) in the value will be ignored.
> Examples of protocols are file, http, jar:file.

### Default value:

The default value is implementation specific and therefore not specified.
The following options are provided for consideration:
> * an empty string to deny all access to external references;
> * a specific protocol, such as file, to give permission to only the protocol;
> * the keyword "all" to grant permission to all protocols.
>
>   
> When FEATURE\_SECURE\_PROCESSING is enabled, it is recommended that implementations
> restrict external connections by default, though this may cause problems for applications
> that process XML/XSD/XSL with external references.

### Granting all access:

The keyword "all" grants permission to all protocols.

## Property Precedence

Properties, including the [External Access Properties](#EAP) and
[`USE_CATALOG`](#USE_CATALOG), can be specified through multiple configuration sources.
They follow the configuration process as defined in the
[Configuration](../../../java.xml/module-summary.md#Conf) section
of the module summary.

Since:
:   1.5

See Also:
:   * [Extensible Markup Language (XML) 1.1](http://www.w3.org/TR/xml11/)
    * [Extensible Markup Language (XML) 1.0 (Second Edition)](http://www.w3.org/TR/REC-xml)
    * [XML 1.0 Second Edition Specification Errata](http://www.w3.org/XML/xml-V10-2e-errata)
    * [Namespaces in XML 1.1](http://www.w3.org/TR/xml-names11/)
    * [Namespaces in XML](http://www.w3.org/TR/REC-xml-names)
    * [XML Schema Part 1: Structures](http://www.w3.org/TR/xmlschema-1/)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `ACCESS_EXTERNAL_DTD`

  Property: accessExternalDTD

  `static final String`

  `ACCESS_EXTERNAL_SCHEMA`

  Property: accessExternalSchema

  `static final String`

  `ACCESS_EXTERNAL_STYLESHEET`

  Property: accessExternalStylesheet

  `static final String`

  `DEFAULT_NS_PREFIX`

  Prefix to use to represent the default XML Namespace.

  `static final String`

  `FEATURE_SECURE_PROCESSING`

  Feature for secure processing.

  `static final String`

  `NULL_NS_URI`

  Namespace URI to use to represent that there is no Namespace.

  `static final String`

  `RELAXNG_NS_URI`

  RELAX NG Namespace URI.

  `static final String`

  `USE_CATALOG`

  Feature: useCatalog

  `static final String`

  `W3C_XML_SCHEMA_INSTANCE_NS_URI`

  W3C XML Schema Instance Namespace URI.

  `static final String`

  `W3C_XML_SCHEMA_NS_URI`

  W3C XML Schema Namespace URI.

  `static final String`

  `W3C_XPATH_DATATYPE_NS_URI`

  W3C XPath Datatype Namespace URI.

  `static final String`

  `XML_DTD_NS_URI`

  XML Document Type Declaration Namespace URI as an arbitrary value.

  `static final String`

  `XML_NS_PREFIX`

  The official XML Namespace prefix.

  `static final String`

  `XML_NS_URI`

  The official XML Namespace name URI.

  `static final String`

  `XMLNS_ATTRIBUTE`

  The official XML attribute used for specifying XML Namespace
  declarations.

  `static final String`

  `XMLNS_ATTRIBUTE_NS_URI`

  The official XML attribute used for specifying XML Namespace
  declarations, [`XMLConstants.XMLNS_ATTRIBUTE`](#XMLNS_ATTRIBUTE), Namespace name URI.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### NULL\_NS\_URI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") NULL\_NS\_URI

    Namespace URI to use to represent that there is no Namespace.

    Defined by the Namespace specification to be "".

    See Also:
    :   - [Namespaces in XML, 5.2 Namespace Defaulting](http://www.w3.org/TR/REC-xml-names/#defaulting)
        - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.NULL_NS_URI)
  + ### DEFAULT\_NS\_PREFIX

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") DEFAULT\_NS\_PREFIX

    Prefix to use to represent the default XML Namespace.

    Defined by the XML specification to be "".

    See Also:
    :   - [Namespaces in XML, 3. Qualified Names](http://www.w3.org/TR/REC-xml-names/#ns-qualnames)
        - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.DEFAULT_NS_PREFIX)
  + ### XML\_NS\_URI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") XML\_NS\_URI

    The official XML Namespace name URI.

    Defined by the XML specification to be
    "`http://www.w3.org/XML/1998/namespace`".

    See Also:
    :   - [Namespaces in XML, 3. Qualified Names](http://www.w3.org/TR/REC-xml-names/#ns-qualnames)
        - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.XML_NS_URI)
  + ### XML\_NS\_PREFIX

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") XML\_NS\_PREFIX

    The official XML Namespace prefix.

    Defined by the XML specification to be "`xml`".

    See Also:
    :   - [Namespaces in XML, 3. Qualified Names](http://www.w3.org/TR/REC-xml-names/#ns-qualnames)
        - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.XML_NS_PREFIX)
  + ### XMLNS\_ATTRIBUTE\_NS\_URI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") XMLNS\_ATTRIBUTE\_NS\_URI

    The official XML attribute used for specifying XML Namespace
    declarations, [`XMLConstants.XMLNS_ATTRIBUTE`](#XMLNS_ATTRIBUTE), Namespace name URI.

    Defined by the XML specification to be
    "`http://www.w3.org/2000/xmlns/`".

    See Also:
    :   - [Namespaces in XML, 3. Qualified Names](http://www.w3.org/TR/REC-xml-names/#ns-qualnames)
        - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.XMLNS_ATTRIBUTE_NS_URI)
  + ### XMLNS\_ATTRIBUTE

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") XMLNS\_ATTRIBUTE

    The official XML attribute used for specifying XML Namespace
    declarations.

    It is ***NOT*** valid to use as a
    prefix. Defined by the XML specification to be
    "`xmlns`".

    See Also:
    :   - [Namespaces in XML, 3. Qualified Names](http://www.w3.org/TR/REC-xml-names/#ns-qualnames)
        - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.XMLNS_ATTRIBUTE)
  + ### W3C\_XML\_SCHEMA\_NS\_URI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") W3C\_XML\_SCHEMA\_NS\_URI

    W3C XML Schema Namespace URI.

    Defined to be "`http://www.w3.org/2001/XMLSchema`".

    See Also:
    :   - [XML Schema Part 1:
          Structures, 2.6 Schema-Related Markup in Documents Being Validated](http://www.w3.org/TR/xmlschema-1/#Instance_Document_Constructions)
        - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.W3C_XML_SCHEMA_NS_URI)
  + ### W3C\_XML\_SCHEMA\_INSTANCE\_NS\_URI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") W3C\_XML\_SCHEMA\_INSTANCE\_NS\_URI

    W3C XML Schema Instance Namespace URI.

    Defined to be "`http://www.w3.org/2001/XMLSchema-instance`".

    See Also:
    :   - [XML Schema Part 1:
          Structures, 2.6 Schema-Related Markup in Documents Being Validated](http://www.w3.org/TR/xmlschema-1/#Instance_Document_Constructions)
        - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.W3C_XML_SCHEMA_INSTANCE_NS_URI)
  + ### W3C\_XPATH\_DATATYPE\_NS\_URI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") W3C\_XPATH\_DATATYPE\_NS\_URI

    W3C XPath Datatype Namespace URI.

    Defined to be "`http://www.w3.org/2003/11/xpath-datatypes`".

    See Also:
    :   - [XQuery 1.0 and XPath 2.0 Data Model](http://www.w3.org/TR/xpath-datamodel)
        - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.W3C_XPATH_DATATYPE_NS_URI)
  + ### XML\_DTD\_NS\_URI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") XML\_DTD\_NS\_URI

    XML Document Type Declaration Namespace URI as an arbitrary value.

    Since not formally defined by any existing standard, arbitrarily define to be "`http://www.w3.org/TR/REC-xml`".

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.XML_DTD_NS_URI)
  + ### RELAXNG\_NS\_URI

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") RELAXNG\_NS\_URI

    RELAX NG Namespace URI.

    Defined to be "`http://relaxng.org/ns/structure/1.0`".

    See Also:
    :   - [RELAX NG Specification](http://relaxng.org/spec-20011203.html)
        - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.RELAXNG_NS_URI)
  + ### FEATURE\_SECURE\_PROCESSING

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") FEATURE\_SECURE\_PROCESSING

    Feature for secure processing.
    - `true` instructs the implementation to process XML securely.
      This may set limits on XML constructs to avoid conditions such as denial of service attacks.
    - `false` instructs the implementation to process XML in accordance with the XML specifications
      ignoring security issues such as limits on XML constructs to avoid conditions such as denial of service attacks.

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.FEATURE_SECURE_PROCESSING)
  + ### ACCESS\_EXTERNAL\_DTD

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESS\_EXTERNAL\_DTD

    Property: accessExternalDTD

    Restrict access to external DTDs and external Entity References to the protocols specified.
    If access is denied due to the restriction of this property, a runtime exception that
    is specific to the context is thrown. In the case of [`SAXParser`](parsers/SAXParser.md "class in javax.xml.parsers")
    for example, [`SAXException`](../../org/xml/sax/SAXException.md "class in org.xml.sax") is thrown.

    **Value:**  as defined in [the class description](#EAP).

    **System Property:** `javax.xml.accessExternalDTD`.

    **Configuration File:**
    Yes. The property can be set in the
    [configuration file](../../../java.xml/module-summary.md#ConfigurationFile).

    Since:
    :   1.7

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.ACCESS_EXTERNAL_DTD)
  + ### ACCESS\_EXTERNAL\_SCHEMA

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESS\_EXTERNAL\_SCHEMA

    Property: accessExternalSchema

    Restrict access to the protocols specified for external reference set by the
    schemaLocation attribute, Import and Include element. If access is denied
    due to the restriction of this property, a runtime exception that is specific
    to the context is thrown. In the case of [`SchemaFactory`](validation/SchemaFactory.md "class in javax.xml.validation")
    for example, org.xml.sax.SAXException is thrown.

    **Value:**  as defined in [the class description](#EAP).

    **System Property:** `javax.xml.accessExternalSchema`

    **Configuration File:**
    Yes. The property can be set in the
    [configuration file](../../../java.xml/module-summary.md#ConfigurationFile).

    Since:
    :   1.7

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.ACCESS_EXTERNAL_SCHEMA)
  + ### ACCESS\_EXTERNAL\_STYLESHEET

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") ACCESS\_EXTERNAL\_STYLESHEET

    Property: accessExternalStylesheet

    Restrict access to the protocols specified for external references set by the
    stylesheet processing instruction, Import and Include element, and document function.
    If access is denied due to the restriction of this property, a runtime exception
    that is specific to the context is thrown. In the case of constructing new
    [`Transformer`](transform/Transformer.md "class in javax.xml.transform") for example,
    [`TransformerConfigurationException`](transform/TransformerConfigurationException.md "class in javax.xml.transform")
    will be thrown by the [`TransformerFactory`](transform/TransformerFactory.md "class in javax.xml.transform").

    **Value:**  as defined in [the class description](#EAP).

    **System Property:** `javax.xml.accessExternalStylesheet`

    **Configuration File:**
    Yes. The property can be set in the
    [configuration file](../../../java.xml/module-summary.md#ConfigurationFile).

    Since:
    :   1.7

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.ACCESS_EXTERNAL_STYLESHEET)
  + ### USE\_CATALOG

    public static final [String](../../../java.base/java/lang/String.md "class in java.lang") USE\_CATALOG

    Feature: useCatalog

    Instructs XML processors to use XML Catalogs to resolve entity references.
    Catalogs may be set through JAXP factories, system properties, or
    configuration file by using the `javax.xml.catalog.files` property
    defined in [`CatalogFeatures`](catalog/CatalogFeatures.md "class in javax.xml.catalog").
    The following code enables Catalog on SAX parser:

    Copy![Copy snippet](../../../copy.svg)

    ```
         SAXParserFactory spf = SAXParserFactory.newInstance();
         spf.setFeature(XMLConstants.USE_CATALOG, true);
         SAXParser parser = spf.newSAXParser();
         parser.setProperty(CatalogFeatures.Feature.FILES.getPropertyName(), "catalog.xml");
    ```

    **Value:** a boolean. If the value is true, and a catalog is set,
    the XML parser will resolve external references using
    [`CatalogResolver`](catalog/CatalogResolver.md "interface in javax.xml.catalog"). If the value is false,
    XML Catalog is ignored even if one is set. The default value is true.

    **System Property:** `javax.xml.useCatalog`

    **Configuration File:**
    Yes. The property can be set in the
    [configuration file](../../../java.xml/module-summary.md#ConfigurationFile).

    Since:
    :   9

    See Also:
    :   - [Constant Field Values](../../../constant-values.md#javax.xml.XMLConstants.USE_CATALOG)