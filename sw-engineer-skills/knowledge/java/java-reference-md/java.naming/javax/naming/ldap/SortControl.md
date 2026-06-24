Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class SortControl

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.ldap.BasicControl](BasicControl.md "class in javax.naming.ldap")

javax.naming.ldap.SortControl

All Implemented Interfaces:
:   `Serializable`, `Control`

---

public final class SortControl
extends [BasicControl](BasicControl.md "class in javax.naming.ldap")

Requests that the results of a search operation be sorted by the LDAP server
before being returned.
The sort criteria are specified using an ordered list of one or more sort
keys, with associated sort parameters.
Search results are sorted at the LDAP server according to the parameters
supplied in the sort control and then returned to the requestor. If sorting
is not supported at the server (and the sort control is marked as critical)
then the search operation is not performed and an error is returned.

The following code sample shows how the class may be used:

```
     // Open an LDAP association
     LdapContext ctx = new InitialLdapContext();

     // Activate sorting
     String sortKey = "cn";
     ctx.setRequestControls(new Control[]{
         new SortControl(sortKey, Control.CRITICAL) });

     // Perform a search
     NamingEnumeration results =
         ctx.search("", "(objectclass=*)", new SearchControls());

     // Iterate over search results
     while (results != null && results.hasMore()) {
         // Display an entry
         SearchResult entry = (SearchResult)results.next();
         System.out.println(entry.getName());
         System.out.println(entry.getAttributes());

         // Handle the entry's response controls (if any)
         if (entry instanceof HasControls) {
             // ((HasControls)entry).getControls();
         }
     }
     // Examine the sort control response
     Control[] controls = ctx.getResponseControls();
     if (controls != null) {
         for (int i = 0; i < controls.length; i++) {
             if (controls[i] instanceof SortResponseControl) {
                 SortResponseControl src = (SortResponseControl)controls[i];
                 if (! src.isSorted()) {
                     throw src.getException();
                 }
             } else {
                 // Handle other response controls (if any)
             }
         }
     }

     // Close the LDAP association
     ctx.close();
     ...
```

This class implements the LDAPv3 Request Control for server-side sorting
as defined in
[RFC 2891](http://www.ietf.org/rfc/rfc2891.txt).
The control's value has the following ASN.1 definition:

```
     SortKeyList ::= SEQUENCE OF SEQUENCE {
         attributeType     AttributeDescription,
         orderingRule  [0] MatchingRuleId OPTIONAL,
         reverseOrder  [1] BOOLEAN DEFAULT FALSE }
```

Since:
:   1.5

See Also:
:   * [`SortKey`](SortKey.md "class in javax.naming.ldap")
    * [`SortResponseControl`](SortResponseControl.md "class in javax.naming.ldap")
    * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.SortControl)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `OID`

  The server-side sort control's assigned object identifier
  is 1.2.840.113556.1.4.473.

  ### Fields inherited from class javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap")

  `criticality, id, value`

  ### Fields inherited from interface javax.naming.ldap.[Control](Control.md "interface in javax.naming.ldap")

  `CRITICAL, NONCRITICAL`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SortControl(String[] sortBy,
  boolean criticality)`

  Constructs a control to sort on a list of attributes in ascending order.

  `SortControl(String sortBy,
  boolean criticality)`

  Constructs a control to sort on a single attribute in ascending order.

  `SortControl(SortKey[] sortBy,
  boolean criticality)`

  Constructs a control to sort on a list of sort keys.
* ## Method Summary

  ### Methods inherited from class javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap")

  `getEncodedValue, getID, isCritical`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OID

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OID

    The server-side sort control's assigned object identifier
    is 1.2.840.113556.1.4.473.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.ldap.SortControl.OID)
* ## Constructor Details

  + ### SortControl

    public SortControl([String](../../../../java.base/java/lang/String.md "class in java.lang") sortBy,
    boolean criticality)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a control to sort on a single attribute in ascending order.
    Sorting will be performed using the ordering matching rule defined
    for use with the specified attribute.

    Parameters:
    :   `sortBy` - An attribute ID to sort by.
    :   `criticality` - If true then the server must honor the control
        and return the search results sorted as
        requested or refuse to perform the search.
        If false, then the server need not honor the
        control.

    Throws:
    :   `IOException` - If an error was encountered while encoding the
        supplied arguments into a control.
  + ### SortControl

    public SortControl([String](../../../../java.base/java/lang/String.md "class in java.lang")[] sortBy,
    boolean criticality)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a control to sort on a list of attributes in ascending order.
    Sorting will be performed using the ordering matching rule defined
    for use with each of the specified attributes.

    Parameters:
    :   `sortBy` - A non-null list of attribute IDs to sort by.
        The list is in order of highest to lowest sort key
        precedence.
    :   `criticality` - If true then the server must honor the control
        and return the search results sorted as
        requested or refuse to perform the search.
        If false, then the server need not honor the
        control.

    Throws:
    :   `IOException` - If an error was encountered while encoding the
        supplied arguments into a control.
  + ### SortControl

    public SortControl([SortKey](SortKey.md "class in javax.naming.ldap")[] sortBy,
    boolean criticality)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a control to sort on a list of sort keys.
    Each sort key specifies the sort order and ordering matching rule to use.

    Parameters:
    :   `sortBy` - A non-null list of keys to sort by.
        The list is in order of highest to lowest sort key
        precedence.
    :   `criticality` - If true then the server must honor the control
        and return the search results sorted as
        requested or refuse to perform the search.
        If false, then the server need not honor the
        control.

    Throws:
    :   `IOException` - If an error was encountered while encoding the
        supplied arguments into a control.