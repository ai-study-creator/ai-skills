Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Interface HasControls

All Known Subinterfaces:
:   `UnsolicitedNotification`

---

public interface HasControls

This interface is for returning controls with objects returned
in NamingEnumerations.
For example, suppose a server sends back controls with the results
of a search operation, the service provider would return a NamingEnumeration of
objects that are both SearchResult and implement HasControls.
> ```
>    NamingEnumeration elts = ectx.search((Name)name, filter, sctls);
>    while (elts.hasMore()) {
>      Object entry = elts.next();
>
>      // Get search result
>      SearchResult res = (SearchResult)entry;
>      // do something with it
>
>      // Get entry controls
>      if (entry instanceof HasControls) {
>          Control[] entryCtls = ((HasControls)entry).getControls();
>          // do something with controls
>      }
>    }
> ```

Since:
:   1.3

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Control[]`

  `getControls()`

  Retrieves an array of `Control`s from the object that
  implements this interface.

* ## Method Details

  + ### getControls

    [Control](Control.md "interface in javax.naming.ldap")[] getControls()
    throws [NamingException](../NamingException.md "class in javax.naming")

    Retrieves an array of `Control`s from the object that
    implements this interface. It is null if there are no controls.

    Returns:
    :   A possibly null array of `Control` objects.

    Throws:
    :   `NamingException` - If cannot return controls due to an error.