Module [java.xml](../../../module-summary.md)

Package [javax.xml.namespace](package-summary.md)

# Class QName

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.xml.namespace.QName

All Implemented Interfaces:
:   `Serializable`

---

public class QName
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

`QName` represents a **qualified name**
as defined in the XML specifications: [XML Schema Part2:
Datatypes specification](http://www.w3.org/TR/xmlschema-2/#QName), [Namespaces
in XML](http://www.w3.org/TR/REC-xml-names/#ns-qualnames).

The value of a `QName` contains a **Namespace
URI**, **local part** and
**prefix**.

The prefix is included in `QName` to retain lexical
information ***when present*** in an [`XML input source`](../transform/Source.md "interface in javax.xml.transform"). The prefix is
***NOT*** used in [`QName.equals(Object)`](#equals(java.lang.Object)) or to compute the [`QName.hashCode()`](#hashCode()). Equality and the hash code are defined using
***only*** the Namespace URI and local part.

If not specified, the Namespace URI is set to [`XMLConstants.NULL_NS_URI`](../XMLConstants.md#NULL_NS_URI).
If not specified, the prefix is set to [`XMLConstants.DEFAULT_NS_PREFIX`](../XMLConstants.md#DEFAULT_NS_PREFIX).

`QName` is immutable.

Since:
:   1.5

See Also:
:   * [XML Schema Part2: Datatypes specification](http://www.w3.org/TR/xmlschema-2/#QName)
    * [Namespaces in XML](http://www.w3.org/TR/REC-xml-names/#ns-qualnames)
    * [Serialized Form](../../../../serialized-form.md#javax.xml.namespace.QName)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `QName(String localPart)`

  `QName` constructor specifying the local part.

  `QName(String namespaceURI,
  String localPart)`

  `QName` constructor specifying the Namespace URI
  and local part.

  `QName(String namespaceURI,
  String localPart,
  String prefix)`

  `QName` constructor specifying the Namespace URI,
  local part and prefix.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final boolean`

  `equals(Object objectToTest)`

  Test this `QName` for equality with another
  `Object`.

  `String`

  `getLocalPart()`

  Get the local part of this `QName`.

  `String`

  `getNamespaceURI()`

  Get the Namespace URI of this `QName`.

  `String`

  `getPrefix()`

  Get the prefix of this `QName`.

  `final int`

  `hashCode()`

  Generate the hash code for this `QName`.

  `String`

  `toString()`

  `String` representation of this
  `QName`.

  `static QName`

  `valueOf(String qNameAsString)`

  `QName` derived from parsing the formatted
  `String`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### QName

    public QName([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localPart)

    `QName` constructor specifying the Namespace URI
    and local part.

    If the Namespace URI is `null`, it is set to
    [`XMLConstants.NULL_NS_URI`](../XMLConstants.md#NULL_NS_URI). This value represents no
    explicitly defined Namespace as defined by the [Namespaces
    in XML](http://www.w3.org/TR/REC-xml-names/#ns-qualnames) specification. This action preserves compatible
    behavior with QName 1.0. Explicitly providing the [`XMLConstants.NULL_NS_URI`](../XMLConstants.md#NULL_NS_URI) value is the preferred coding
    style.

    If the local part is `null` an
    `IllegalArgumentException` is thrown.
    A local part of "" is allowed to preserve
    compatible behavior with QName 1.0.

    When using this constructor, the prefix is set to [`XMLConstants.DEFAULT_NS_PREFIX`](../XMLConstants.md#DEFAULT_NS_PREFIX).

    The Namespace URI is not validated as a
    [URI reference](http://www.ietf.org/rfc/rfc2396.txt).
    The local part is not validated as a
    [NCName](http://www.w3.org/TR/REC-xml-names/#NT-NCName)
    as specified in [Namespaces
    in XML](http://www.w3.org/TR/REC-xml-names/).

    Parameters:
    :   `namespaceURI` - Namespace URI of the `QName`
    :   `localPart` - local part of the `QName`

    Throws:
    :   `IllegalArgumentException` - When `localPart` is
        `null`

    See Also:
    :   - [`QName(String namespaceURI, String localPart, String
          prefix)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String))
  + ### QName

    public QName([String](../../../../java.base/java/lang/String.md "class in java.lang") namespaceURI,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") localPart,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") prefix)

    `QName` constructor specifying the Namespace URI,
    local part and prefix.

    If the Namespace URI is `null`, it is set to
    [`XMLConstants.NULL_NS_URI`](../XMLConstants.md#NULL_NS_URI). This value represents no
    explicitly defined Namespace as defined by the [Namespaces
    in XML](http://www.w3.org/TR/REC-xml-names/#ns-qualnames) specification. This action preserves compatible
    behavior with QName 1.0. Explicitly providing the [`XMLConstants.NULL_NS_URI`](../XMLConstants.md#NULL_NS_URI) value is the preferred coding
    style.

    If the local part is `null` an
    `IllegalArgumentException` is thrown.
    A local part of "" is allowed to preserve
    compatible behavior with QName 1.0.

    If the prefix is `null`, an
    `IllegalArgumentException` is thrown. Use [`XMLConstants.DEFAULT_NS_PREFIX`](../XMLConstants.md#DEFAULT_NS_PREFIX) to explicitly indicate that no
    prefix is present or the prefix is not relevant.

    The Namespace URI is not validated as a
    [URI reference](http://www.ietf.org/rfc/rfc2396.txt).
    The local part and prefix are not validated as a
    [NCName](http://www.w3.org/TR/REC-xml-names/#NT-NCName)
    as specified in [Namespaces
    in XML](http://www.w3.org/TR/REC-xml-names/).

    Parameters:
    :   `namespaceURI` - Namespace URI of the `QName`
    :   `localPart` - local part of the `QName`
    :   `prefix` - prefix of the `QName`

    Throws:
    :   `IllegalArgumentException` - When `localPart`
        or `prefix` is `null`
  + ### QName

    public QName([String](../../../../java.base/java/lang/String.md "class in java.lang") localPart)

    `QName` constructor specifying the local part.

    If the local part is `null` an
    `IllegalArgumentException` is thrown.
    A local part of "" is allowed to preserve
    compatible behavior with QName 1.0.

    When using this constructor, the Namespace URI is set to
    [`XMLConstants.NULL_NS_URI`](../XMLConstants.md#NULL_NS_URI) and the prefix is set to [`XMLConstants.DEFAULT_NS_PREFIX`](../XMLConstants.md#DEFAULT_NS_PREFIX).

    *In an XML context, all Element and Attribute names exist
    in the context of a Namespace. Making this explicit during the
    construction of a `QName` helps prevent hard to
    diagnosis XML validity errors. The constructors [`QName(String
    namespaceURI, String localPart)`](#%3Cinit%3E(java.lang.String,java.lang.String)) and
    [`QName(String namespaceURI, String localPart, String prefix)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String))
    are preferred.*

    The local part is not validated as a
    [NCName](http://www.w3.org/TR/REC-xml-names/#NT-NCName)
    as specified in [Namespaces
    in XML](http://www.w3.org/TR/REC-xml-names/).

    Parameters:
    :   `localPart` - local part of the `QName`

    Throws:
    :   `IllegalArgumentException` - When `localPart` is
        `null`

    See Also:
    :   - [`QName(String
          namespaceURI, String localPart)`](#%3Cinit%3E(java.lang.String,java.lang.String))
        - [`QName(String namespaceURI, String localPart, String
          prefix)`](#%3Cinit%3E(java.lang.String,java.lang.String,java.lang.String))
* ## Method Details

  + ### getNamespaceURI

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getNamespaceURI()

    Get the Namespace URI of this `QName`.

    Returns:
    :   Namespace URI of this `QName`
  + ### getLocalPart

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getLocalPart()

    Get the local part of this `QName`.

    Returns:
    :   local part of this `QName`
  + ### getPrefix

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getPrefix()

    Get the prefix of this `QName`.

    The prefix assigned to a `QName` might
    ***NOT*** be valid in a different
    context. For example, a `QName` may be assigned a
    prefix in the context of parsing a document but that prefix may
    be invalid in the context of a different document.

    Returns:
    :   prefix of this `QName`
  + ### equals

    public final boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") objectToTest)

    Test this `QName` for equality with another
    `Object`.

    If the `Object` to be tested is not a
    `QName` or is `null`, then this method
    returns `false`.

    Two `QName`s are considered equal if and only if
    both the Namespace URI and local part are equal. This method
    uses `String.equals()` to check equality of the
    Namespace URI and local part. The prefix is
    ***NOT*** used to determine equality.

    This method satisfies the general contract of [`Object.equals(Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `objectToTest` - the `Object` to test for
        equality with this `QName`

    Returns:
    :   `true` if the given `Object` is
        equal to this `QName` else `false`

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    public final int hashCode()

    Generate the hash code for this `QName`.

    The hash code is calculated using both the Namespace URI and
    the local part of the `QName`. The prefix is
    ***NOT*** used to calculate the hash
    code.

    This method satisfies the general contract of [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode()).

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   hash code for this `QName` `Object`

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    `String` representation of this
    `QName`.

    The commonly accepted way of representing a `QName`
    as a `String` was
    [defined](http://jclark.com/xml/xmlns.htm)
    by James Clark. Although this is not a *standard*
    specification, it is in common use, e.g. [`Transformer.setParameter(String name, Object value)`](../transform/Transformer.md#setParameter(java.lang.String,java.lang.Object)).
    This implementation represents a `QName` as:
    "{" + Namespace URI + "}" + local part. If the Namespace URI
    `.equals(XMLConstants.NULL_NS_URI)`, only the
    local part is returned. An appropriate use of this method is
    for debugging or logging for human consumption.

    Note the prefix value is ***NOT***
    returned as part of the `String` representation.

    This method satisfies the general contract of [`Object.toString()`](../../../../java.base/java/lang/Object.md#toString()).

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   `String` representation of this `QName`
  + ### valueOf

    public static [QName](QName.md "class in javax.xml.namespace") valueOf([String](../../../../java.base/java/lang/String.md "class in java.lang") qNameAsString)

    `QName` derived from parsing the formatted
    `String`.

    If the `String` is `null` or does not conform to
    [`QName.toString()`](#toString()) formatting, an
    `IllegalArgumentException` is thrown.

    *The `String` **MUST** be in the
    form returned by [`QName.toString()`](#toString()).*

    The commonly accepted way of representing a `QName`
    as a `String` was
    [defined](http://jclark.com/xml/xmlns.htm)
    by James Clark. Although this is not a *standard*
    specification, it is in common use, e.g. [`Transformer.setParameter(String name, Object value)`](../transform/Transformer.md#setParameter(java.lang.String,java.lang.Object)).
    This implementation parses a `String` formatted
    as: "{" + Namespace URI + "}" + local part. If the Namespace
    URI `.equals(XMLConstants.NULL_NS_URI)`, only the
    local part should be provided.

    The prefix value ***CANNOT*** be
    represented in the `String` and will be set to
    [`XMLConstants.DEFAULT_NS_PREFIX`](../XMLConstants.md#DEFAULT_NS_PREFIX).

    This method does not do full validation of the resulting
    `QName`.

    The Namespace URI is not validated as a
    [URI reference](http://www.ietf.org/rfc/rfc2396.txt).
    The local part is not validated as a
    [NCName](http://www.w3.org/TR/REC-xml-names/#NT-NCName)
    as specified in
    [Namespaces in XML](http://www.w3.org/TR/REC-xml-names/).

    Parameters:
    :   `qNameAsString` - `String` representation
        of the `QName`

    Returns:
    :   `QName` corresponding to the given `String`

    Throws:
    :   `IllegalArgumentException` - When `qNameAsString` is
        `null` or malformed

    See Also:
    :   - [`QName.toString()`](#toString())