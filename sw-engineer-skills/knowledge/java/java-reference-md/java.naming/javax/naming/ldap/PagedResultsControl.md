Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class PagedResultsControl

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.ldap.BasicControl](BasicControl.md "class in javax.naming.ldap")

javax.naming.ldap.PagedResultsControl

All Implemented Interfaces:
:   `Serializable`, `Control`

---

public final class PagedResultsControl
extends [BasicControl](BasicControl.md "class in javax.naming.ldap")

Requests that the results of a search operation be returned by the LDAP
server in batches of a specified size.
The requestor controls the rate at which batches are returned by the rate
at which it invokes search operations.

The following code sample shows how the class may be used:

```
     // Open an LDAP association
     LdapContext ctx = new InitialLdapContext();

     // Activate paged results
     int pageSize = 20; // 20 entries per page
     byte[] cookie = null;
     int total;
     ctx.setRequestControls(new Control[]{
         new PagedResultsControl(pageSize, Control.CRITICAL) });

     do {
         // Perform the search
         NamingEnumeration results =
             ctx.search("", "(objectclass=*)", new SearchControls());

         // Iterate over a batch of search results
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
         // Examine the paged results control response
         Control[] controls = ctx.getResponseControls();
         if (controls != null) {
             for (int i = 0; i < controls.length; i++) {
                 if (controls[i] instanceof PagedResultsResponseControl) {
                     PagedResultsResponseControl prrc =
                         (PagedResultsResponseControl)controls[i];
                     total = prrc.getResultSize();
                     cookie = prrc.getCookie();
                 } else {
                     // Handle other response controls (if any)
                 }
             }
         }

         // Re-activate paged results
         ctx.setRequestControls(new Control[]{
             new PagedResultsControl(pageSize, cookie, Control.CRITICAL) });
     } while (cookie != null);

     // Close the LDAP association
     ctx.close();
     ...
```

This class implements the LDAPv3 Control for paged-results as defined in
[RFC 2696](http://www.ietf.org/rfc/rfc2696.txt).
The control's value has the following ASN.1 definition:

```
     realSearchControlValue ::= SEQUENCE {
         size      INTEGER (0..maxInt),
                           -- requested page size from client
                           -- result set size estimate from server
         cookie    OCTET STRING
     }
```

Since:
:   1.5

See Also:
:   * [`PagedResultsResponseControl`](PagedResultsResponseControl.md "class in javax.naming.ldap")
    * [Serialized Form](../../../../serialized-form.md#javax.naming.ldap.PagedResultsControl)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `OID`

  The paged-results control's assigned object identifier
  is 1.2.840.113556.1.4.319.

  ### Fields inherited from class javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap")

  `criticality, id, value`

  ### Fields inherited from interface javax.naming.ldap.[Control](Control.md "interface in javax.naming.ldap")

  `CRITICAL, NONCRITICAL`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `PagedResultsControl(int pageSize,
  boolean criticality)`

  Constructs a control to set the number of entries to be returned per
  page of results.

  `PagedResultsControl(int pageSize,
  byte[] cookie,
  boolean criticality)`

  Constructs a control to set the number of entries to be returned per
  page of results.
* ## Method Summary

  ### Methods inherited from class javax.naming.ldap.[BasicControl](BasicControl.md "class in javax.naming.ldap")

  `getEncodedValue, getID, isCritical`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OID

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") OID

    The paged-results control's assigned object identifier
    is 1.2.840.113556.1.4.319.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.ldap.PagedResultsControl.OID)
* ## Constructor Details

  + ### PagedResultsControl

    public PagedResultsControl(int pageSize,
    boolean criticality)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a control to set the number of entries to be returned per
    page of results.

    Parameters:
    :   `pageSize` - The number of entries to return in a page.
    :   `criticality` - If true then the server must honor the control
        and return search results as indicated by
        pageSize or refuse to perform the search.
        If false, then the server need not honor the
        control.

    Throws:
    :   `IOException` - If an error was encountered while encoding the
        supplied arguments into a control.
  + ### PagedResultsControl

    public PagedResultsControl(int pageSize,
    byte[] cookie,
    boolean criticality)
    throws [IOException](../../../../java.base/java/io/IOException.md "class in java.io")

    Constructs a control to set the number of entries to be returned per
    page of results. The cookie is provided by the server and may be
    obtained from the paged-results response control.

    A sequence of paged-results can be abandoned by setting the pageSize
    to zero and setting the cookie to the last cookie received from the
    server.

    Parameters:
    :   `pageSize` - The number of entries to return in a page.
    :   `cookie` - A possibly null server-generated cookie.
    :   `criticality` - If true then the server must honor the control
        and return search results as indicated by
        pageSize or refuse to perform the search.
        If false, then the server need not honor the
        control.

    Throws:
    :   `IOException` - If an error was encountered while encoding the
        supplied arguments into a control.