Module [java.desktop](../../../../module-summary.md)

Package [javax.print.attribute.standard](package-summary.md)

# Class ReferenceUriSchemesSupported

[java.lang.Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.print.attribute.EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

javax.print.attribute.standard.ReferenceUriSchemesSupported

All Implemented Interfaces:
:   `Serializable`, `Cloneable`, `Attribute`

---

public class ReferenceUriSchemesSupported
extends [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")
implements [Attribute](../Attribute.md "interface in javax.print.attribute")

Class `ReferenceUriSchemesSupported` is a printing attribute class an
enumeration, that indicates a "URI scheme," such as "http:" or "ftp:", that a
printer can use to retrieve print data stored at a `URI` location. If a
printer supports doc flavors with a print data representation class of
`"java.net.URL"`, the printer uses instances of class
`ReferenceUriSchemesSupported` to advertise the `URI` schemes it
can accept. The acceptable `URI` schemes are included as service
attributes in the lookup service; this lets clients search the for printers
that can get print data using a certain `URI` scheme. The acceptable
`URI` schemes can also be queried using the capability methods in
interface `PrintService`. However, `ReferenceUriSchemesSupported`
attributes are used solely for determining acceptable `URI` schemes,
they are never included in a doc's, print request's, print job's, or print
service's attribute set.

The Internet Assigned Numbers Authority maintains the
[official list of
URI schemes](http://www.iana.org/assignments/uri-schemes.html).

Class `ReferenceUriSchemesSupported` defines enumeration values for
widely used `URI` schemes. A printer that supports additional
`URI` schemes can define them in a subclass of class
`ReferenceUriSchemesSupported`.

**IPP Compatibility:** The category name returned by `getName()` is
the IPP attribute name. The enumeration's integer value is the IPP enum
value. The `toString()` method returns the IPP string representation of
the attribute value.

See Also:
:   * [Serialized Form](../../../../../serialized-form.md#javax.print.attribute.standard.ReferenceUriSchemesSupported)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final ReferenceUriSchemesSupported`

  `FILE`

  Host-specific file names.

  `static final ReferenceUriSchemesSupported`

  `FTP`

  File Transfer Protocol (FTP).

  `static final ReferenceUriSchemesSupported`

  `GOPHER`

  Gopher Protocol.

  `static final ReferenceUriSchemesSupported`

  `HTTP`

  HyperText Transfer Protocol (HTTP).

  `static final ReferenceUriSchemesSupported`

  `HTTPS`

  Secure HyperText Transfer Protocol (HTTPS).

  `static final ReferenceUriSchemesSupported`

  `NEWS`

  USENET news.

  `static final ReferenceUriSchemesSupported`

  `NNTP`

  USENET news using Network News Transfer Protocol (NNTP).

  `static final ReferenceUriSchemesSupported`

  `WAIS`

  Wide Area Information Server (WAIS) protocol.
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `ReferenceUriSchemesSupported(int value)`

  Construct a new reference `URI` scheme enumeration value with the
  given integer value.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final Class<? extends Attribute>`

  `getCategory()`

  Get the printing attribute class which is to be used as the "category"
  for this printing attribute value.

  `protected EnumSyntax[]`

  `getEnumValueTable()`

  Returns the enumeration value table for class
  `ReferenceUriSchemesSupported`.

  `final String`

  `getName()`

  Get the name of the category of which this attribute value is an
  instance.

  `protected String[]`

  `getStringTable()`

  Returns the string table for class `ReferenceUriSchemesSupported`.

  ### Methods inherited from class javax.print.attribute.[EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")

  `clone, getOffset, getValue, hashCode, readResolve, toString`

  ### Methods inherited from class java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")

  `equals, finalize, getClass, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### FTP

    public static final [ReferenceUriSchemesSupported](ReferenceUriSchemesSupported.md "class in javax.print.attribute.standard") FTP

    File Transfer Protocol (FTP).
  + ### HTTP

    public static final [ReferenceUriSchemesSupported](ReferenceUriSchemesSupported.md "class in javax.print.attribute.standard") HTTP

    HyperText Transfer Protocol (HTTP).
  + ### HTTPS

    public static final [ReferenceUriSchemesSupported](ReferenceUriSchemesSupported.md "class in javax.print.attribute.standard") HTTPS

    Secure HyperText Transfer Protocol (HTTPS).
  + ### GOPHER

    public static final [ReferenceUriSchemesSupported](ReferenceUriSchemesSupported.md "class in javax.print.attribute.standard") GOPHER

    Gopher Protocol.
  + ### NEWS

    public static final [ReferenceUriSchemesSupported](ReferenceUriSchemesSupported.md "class in javax.print.attribute.standard") NEWS

    USENET news.
  + ### NNTP

    public static final [ReferenceUriSchemesSupported](ReferenceUriSchemesSupported.md "class in javax.print.attribute.standard") NNTP

    USENET news using Network News Transfer Protocol (NNTP).
  + ### WAIS

    public static final [ReferenceUriSchemesSupported](ReferenceUriSchemesSupported.md "class in javax.print.attribute.standard") WAIS

    Wide Area Information Server (WAIS) protocol.
  + ### FILE

    public static final [ReferenceUriSchemesSupported](ReferenceUriSchemesSupported.md "class in javax.print.attribute.standard") FILE

    Host-specific file names.
* ## Constructor Details

  + ### ReferenceUriSchemesSupported

    protected ReferenceUriSchemesSupported(int value)

    Construct a new reference `URI` scheme enumeration value with the
    given integer value.

    Parameters:
    :   `value` - Integer value
* ## Method Details

  + ### getStringTable

    protected [String](../../../../../java.base/java/lang/String.md "class in java.lang")[] getStringTable()

    Returns the string table for class `ReferenceUriSchemesSupported`.

    Overrides:
    :   `getStringTable` in class `EnumSyntax`

    Returns:
    :   the string table
  + ### getEnumValueTable

    protected [EnumSyntax](../EnumSyntax.md "class in javax.print.attribute")[] getEnumValueTable()

    Returns the enumeration value table for class
    `ReferenceUriSchemesSupported`.

    Overrides:
    :   `getEnumValueTable` in class `EnumSyntax`

    Returns:
    :   the value table
  + ### getCategory

    public final [Class](../../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Attribute](../Attribute.md "interface in javax.print.attribute")> getCategory()

    Get the printing attribute class which is to be used as the "category"
    for this printing attribute value.

    For class `ReferenceUriSchemesSupported` and any vendor-defined
    subclasses, the category is class `ReferenceUriSchemesSupported`
    itself.

    Specified by:
    :   `getCategory` in interface `Attribute`

    Returns:
    :   printing attribute class (category), an instance of class
        [`java.lang.Class`](../../../../../java.base/java/lang/Class.md "class in java.lang")
  + ### getName

    public final [String](../../../../../java.base/java/lang/String.md "class in java.lang") getName()

    Get the name of the category of which this attribute value is an
    instance.

    For class `ReferenceUriSchemesSupported` and any vendor-defined
    subclasses, the category name is
    `"reference-uri-schemes-supported"`.

    Specified by:
    :   `getName` in interface `Attribute`

    Returns:
    :   attribute category name