Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class Rdn

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.ldap.Rdn

All Implemented Interfaces:
:   `Serializable`, `Comparable<Object>`

---

public class Rdn
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"), [Comparable](../../../../java.base/java/lang/Comparable.md "interface in java.lang")<[Object](../../../../java.base/java/lang/Object.md "class in java.lang")>

This class represents a relative distinguished name, or RDN, which is a
component of a distinguished name as specified by
[RFC 2253](http://www.ietf.org/rfc/rfc2253.txt).
An example of an RDN is "OU=Sales+CN=J.Smith". In this example,
the RDN consist of multiple attribute type/value pairs. The
RDN is parsed as described in the class description for
[`LdapName`](LdapName.md "class in javax.naming.ldap").

The Rdn class represents an RDN as attribute type/value mappings,
which can be viewed using
[`Attributes`](../directory/Attributes.md "interface in javax.naming.directory").
In addition, it contains convenience methods that allow easy retrieval
of type and value when the Rdn consist of a single type/value pair,
which is how it appears in a typical usage.
It also contains helper methods that allow escaping of the unformatted
attribute value and unescaping of the value formatted according to the
escaping syntax defined in RFC2253. For methods that take or return
attribute value as an Object, the value is either a String
(in unescaped form) or a byte array.

`Rdn` will properly parse all valid RDNs, but
does not attempt to detect all possible violations when parsing
invalid RDNs. It is "generous" in accepting invalid RDNs.
The "validity" of a name is determined ultimately when it
is supplied to an LDAP server, which may accept or
reject the name based on factors such as its schema information
and interoperability considerations.

The following code example shows how to construct an Rdn using the
constructor that takes type and value as arguments:

```
      Rdn rdn = new Rdn("cn", "Juicy, Fruit");
      System.out.println(rdn.toString());
```

The last line will print `cn=Juicy\, Fruit`. The
[`unescapeValue()`](#unescapeValue(java.lang.String)) method can be
used to unescape the escaped comma resulting in the original
value `"Juicy, Fruit"`. The [`escapeValue()`](#escapeValue(java.lang.Object)) method adds the escape back preceding the comma.

This class can be instantiated by a string representation
of the RDN defined in RFC 2253 as shown in the following code example:

```
      Rdn rdn = new Rdn("cn=Juicy\\, Fruit");
      System.out.println(rdn.toString());
```

The last line will print `cn=Juicy\, Fruit`.

Concurrent multithreaded read-only access of an instance of
`Rdn` need not be synchronized.

Unless otherwise noted, the behavior of passing a null argument
to a constructor or method in this class will cause NullPointerException
to be thrown.

Since:
:   1.5

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.Rdn)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `Rdn(String rdnString)`

  Constructs an Rdn from the given string.

  `Rdn(String type,
  Object value)`

  Constructs an Rdn from the given attribute type and
  value.

  `Rdn(Attributes attrSet)`

  Constructs an Rdn from the given attribute set.

  `Rdn(Rdn rdn)`

  Constructs an Rdn from the given `rdn`.
* ## Method Summary

  All MethodsStatic MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `int`

  `compareTo(Object obj)`

  Compares this Rdn with the specified Object for order.

  `boolean`

  `equals(Object obj)`

  Compares the specified Object with this Rdn for equality.

  `static String`

  `escapeValue(Object val)`

  Given the value of an attribute, returns a string escaped according
  to the rules specified in
  [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt).

  `String`

  `getType()`

  Retrieves one of this Rdn's type.

  `Object`

  `getValue()`

  Retrieves one of this Rdn's value.

  `int`

  `hashCode()`

  Returns the hash code of this RDN.

  `int`

  `size()`

  Retrieves the number of attribute type/value pairs in this Rdn.

  `Attributes`

  `toAttributes()`

  Retrieves the [`Attributes`](../directory/Attributes.md "interface in javax.naming.directory")
  view of the type/value mappings contained in this Rdn.

  `String`

  `toString()`

  Returns this Rdn as a string represented in a format defined by
  [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt) and described
  in the class description for [`LdapName`](LdapName.md "class in javax.naming.ldap").

  `static Object`

  `unescapeValue(String val)`

  Given an attribute value string formatted according to the rules
  specified in
  [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt),
  returns the unformatted value.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Constructor Details

  + ### Rdn

    public Rdn([Attributes](../directory/Attributes.md "interface in javax.naming.directory") attrSet)
    throws [InvalidNameException](../InvalidNameException.md "class in javax.naming")

    Constructs an Rdn from the given attribute set. See
    [`Attributes`](../directory/Attributes.md "interface in javax.naming.directory").

    The string attribute values are not interpreted as
    [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt)
    formatted RDN strings. That is, the values are used
    literally (not parsed) and assumed to be unescaped.

    Parameters:
    :   `attrSet` - The non-null and non-empty attributes containing
        type/value mappings.

    Throws:
    :   `InvalidNameException` - If contents of `attrSet` cannot
        be used to construct a valid RDN.
  + ### Rdn

    public Rdn([String](../../../../java.base/java/lang/String.md "class in java.lang") rdnString)
    throws [InvalidNameException](../InvalidNameException.md "class in javax.naming")

    Constructs an Rdn from the given string.
    This constructor takes a string formatted according to the rules
    defined in [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt)
    and described in the class description for
    [`LdapName`](LdapName.md "class in javax.naming.ldap").

    Parameters:
    :   `rdnString` - The non-null and non-empty RFC2253 formatted string.

    Throws:
    :   `InvalidNameException` - If a syntax error occurs during
        parsing of the rdnString.
  + ### Rdn

    public Rdn([Rdn](Rdn.md "class in javax.naming.ldap") rdn)

    Constructs an Rdn from the given `rdn`.
    The contents of the `rdn` are simply copied into the newly
    created Rdn.

    Parameters:
    :   `rdn` - The non-null Rdn to be copied.
  + ### Rdn

    public Rdn([String](../../../../java.base/java/lang/String.md "class in java.lang") type,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") value)
    throws [InvalidNameException](../InvalidNameException.md "class in javax.naming")

    Constructs an Rdn from the given attribute type and
    value.
    The string attribute values are not interpreted as
    [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt)
    formatted RDN strings. That is, the values are used
    literally (not parsed) and assumed to be unescaped.

    Parameters:
    :   `type` - The non-null and non-empty string attribute type.
    :   `value` - The non-null and non-empty attribute value.

    Throws:
    :   `InvalidNameException` - If type/value cannot be used to
        construct a valid RDN.

    See Also:
    :   - [`toString()`](#toString())
* ## Method Details

  + ### getValue

    public [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getValue()

    Retrieves one of this Rdn's value.
    This is a convenience method for obtaining the value,
    when the RDN contains a single type and value mapping,
    which is the common RDN usage.

    For a multi-valued RDN, this method returns value corresponding
    to the type returned by [`getType()`](#getType()) method.

    Returns:
    :   The non-null attribute value.
  + ### getType

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") getType()

    Retrieves one of this Rdn's type.
    This is a convenience method for obtaining the type,
    when the RDN contains a single type and value mapping,
    which is the common RDN usage.

    For a multi-valued RDN, the type/value pairs have
    no specific order defined on them. In that case, this method
    returns type of one of the type/value pairs.
    The [`getValue()`](#getValue()) method returns the
    value corresponding to the type returned by this method.

    Returns:
    :   The non-null attribute type.
  + ### toString

    public [String](../../../../java.base/java/lang/String.md "class in java.lang") toString()

    Returns this Rdn as a string represented in a format defined by
    [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt) and described
    in the class description for [`LdapName`](LdapName.md "class in javax.naming.ldap").

    Overrides:
    :   `toString` in class `Object`

    Returns:
    :   The string representation of the Rdn.
  + ### compareTo

    public int compareTo([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares this Rdn with the specified Object for order.
    Returns a negative integer, zero, or a positive integer as this
    Rdn is less than, equal to, or greater than the given Object.

    If obj is null or not an instance of Rdn, ClassCastException
    is thrown.

    The attribute type and value pairs of the RDNs are lined up
    against each other and compared lexicographically. The order of
    components in multi-valued Rdns (such as "ou=Sales+cn=Bob") is not
    significant.

    Specified by:
    :   `compareTo` in interface `Comparable<Object>`

    Parameters:
    :   `obj` - The non-null object to compare against.

    Returns:
    :   A negative integer, zero, or a positive integer as this Rdn
        is less than, equal to, or greater than the given Object.

    Throws:
    :   `ClassCastException` - if obj is null or not a Rdn.
  + ### equals

    public boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Compares the specified Object with this Rdn for equality.
    Returns true if the given object is also a Rdn and the two Rdns
    represent the same attribute type and value mappings. The order of
    components in multi-valued Rdns (such as "ou=Sales+cn=Bob") is not
    significant.

    Type and value equality matching is done as below:
    - The types are compared for equality with their case ignored.- String values with different but equivalent usage of quoting,
        escaping, or UTF8-hex-encoding are considered equal.
        The case of the values is ignored during the comparison.

    If obj is null or not an instance of Rdn, false is returned.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `obj` - object to be compared for equality with this Rdn.

    Returns:
    :   true if the specified object is equal to this Rdn.

    See Also:
    :   - [`hashCode()`](#hashCode())
  + ### hashCode

    public int hashCode()

    Returns the hash code of this RDN. Two RDNs that are
    equal (according to the equals method) will have the same
    hash code.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   An int representing the hash code of this Rdn.

    See Also:
    :   - [`equals(java.lang.Object)`](#equals(java.lang.Object))
  + ### toAttributes

    public [Attributes](../directory/Attributes.md "interface in javax.naming.directory") toAttributes()

    Retrieves the [`Attributes`](../directory/Attributes.md "interface in javax.naming.directory")
    view of the type/value mappings contained in this Rdn.

    Returns:
    :   The non-null attributes containing the type/value
        mappings of this Rdn.
  + ### size

    public int size()

    Retrieves the number of attribute type/value pairs in this Rdn.

    Returns:
    :   The non-negative number of type/value pairs in this Rdn.
  + ### escapeValue

    public static [String](../../../../java.base/java/lang/String.md "class in java.lang") escapeValue([Object](../../../../java.base/java/lang/Object.md "class in java.lang") val)

    Given the value of an attribute, returns a string escaped according
    to the rules specified in
    [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt).

    For example, if the val is "Sue, Grabbit and Runn", the escaped
    value returned by this method is "Sue\, Grabbit and Runn".

    A string value is represented as a String and binary value
    as a byte array.

    Parameters:
    :   `val` - The non-null object to be escaped.

    Returns:
    :   Escaped string value.

    Throws:
    :   `ClassCastException` - if val is not a String or byte array.
  + ### unescapeValue

    public static [Object](../../../../java.base/java/lang/Object.md "class in java.lang") unescapeValue([String](../../../../java.base/java/lang/String.md "class in java.lang") val)

    Given an attribute value string formatted according to the rules
    specified in
    [RFC 2253](http://www.ietf.org/rfc/rfc2253.txt),
    returns the unformatted value. Escapes and quotes are
    stripped away, and hex-encoded UTF-8 is converted to equivalent
    UTF-16 characters. Returns a string value as a String, and a
    binary value as a byte array.

    Legal and illegal values are defined in RFC 2253.
    This method is generous in accepting the values and does not
    catch all illegal values.
    Therefore, passing in an illegal value might not necessarily
    trigger an `IllegalArgumentException`.

    Parameters:
    :   `val` - The non-null string to be unescaped.

    Returns:
    :   Unescaped value.

    Throws:
    :   `IllegalArgumentException` - When an Illegal value
        is provided.