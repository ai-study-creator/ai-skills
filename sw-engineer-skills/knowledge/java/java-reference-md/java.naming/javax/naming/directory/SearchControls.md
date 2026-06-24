Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class SearchControls

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.naming.directory.SearchControls

All Implemented Interfaces:
:   `Serializable`

---

public class SearchControls
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")
implements [Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io")

This class encapsulates
factors that determine scope of search and what gets returned
as a result of the search.

A SearchControls instance is not synchronized against concurrent
multithreaded access. Multiple threads trying to access and modify
a single SearchControls instance should lock the object.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../../serialized-form.md#javax.naming.directory.SearchControls)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `OBJECT_SCOPE`

  Search the named object.

  `static final int`

  `ONELEVEL_SCOPE`

  Search one level of the named context.

  `static final int`

  `SUBTREE_SCOPE`

  Search the entire subtree rooted at the named object.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `SearchControls()`

  Constructs a search constraints using defaults.

  `SearchControls(int scope,
  long countlim,
  int timelim,
  String[] attrs,
  boolean retobj,
  boolean deref)`

  Constructs a search constraints using arguments.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `long`

  `getCountLimit()`

  Retrieves the maximum number of entries that will be returned
  as a result of the search.

  `boolean`

  `getDerefLinkFlag()`

  Determines whether links will be dereferenced during the search.

  `String[]`

  `getReturningAttributes()`

  Retrieves the attributes that will be returned as part of the search.

  `boolean`

  `getReturningObjFlag()`

  Determines whether objects will be returned as part of the result.

  `int`

  `getSearchScope()`

  Retrieves the search scope of these SearchControls.

  `int`

  `getTimeLimit()`

  Retrieves the time limit of these SearchControls in milliseconds.

  `void`

  `setCountLimit(long limit)`

  Sets the maximum number of entries to be returned
  as a result of the search.

  `void`

  `setDerefLinkFlag(boolean on)`

  Enables/disables link dereferencing during the search.

  `void`

  `setReturningAttributes(String[] attrs)`

  Specifies the attributes that will be returned as part of the search.

  `void`

  `setReturningObjFlag(boolean on)`

  Enables/disables returning objects returned as part of the result.

  `void`

  `setSearchScope(int scope)`

  Sets the search scope to one of:
  OBJECT\_SCOPE, ONELEVEL\_SCOPE, SUBTREE\_SCOPE.

  `void`

  `setTimeLimit(int ms)`

  Sets the time limit of these SearchControls in milliseconds.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### OBJECT\_SCOPE

    public static final int OBJECT\_SCOPE

    Search the named object.

    The NamingEnumeration that results from search()
    using OBJECT\_SCOPE will contain one or zero element.
    The enumeration contains one element if the named object satisfies
    the search filter specified in search().
    The element will have as its name the empty string because the names
    of elements in the NamingEnumeration are relative to the
    target context--in this case, the target context is the named object.
    It contains zero element if the named object does not satisfy
    the search filter specified in search().

    The value of this constant is `0`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.directory.SearchControls.OBJECT_SCOPE)
  + ### ONELEVEL\_SCOPE

    public static final int ONELEVEL\_SCOPE

    Search one level of the named context.

    The NamingEnumeration that results from search()
    using ONELEVEL\_SCOPE contains elements with
    objects in the named context that satisfy
    the search filter specified in search().
    The names of elements in the NamingEnumeration are atomic names
    relative to the named context.

    The value of this constant is `1`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.directory.SearchControls.ONELEVEL_SCOPE)
  + ### SUBTREE\_SCOPE

    public static final int SUBTREE\_SCOPE

    Search the entire subtree rooted at the named object.

    If the named object is not a DirContext, search only the object.
    If the named object is a DirContext, search the subtree
    rooted at the named object, including the named object itself.

    The search will not cross naming system boundaries.

    The NamingEnumeration that results from search()
    using SUBTREE\_SCOPE contains elements of objects
    from the subtree (including the named context)
    that satisfy the search filter specified in search().
    The names of elements in the NamingEnumeration are either
    relative to the named context or is a URL string.
    If the named context satisfies the search filter, it is
    included in the enumeration with the empty string as
    its name.

    The value of this constant is `2`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.naming.directory.SearchControls.SUBTREE_SCOPE)
* ## Constructor Details

  + ### SearchControls

    public SearchControls()

    Constructs a search constraints using defaults.

    The defaults are:
    - search one level- no maximum return limit for search results- no time limit for search- return all attributes associated with objects that satisfy
            the search filter.- do not return named object (return only name and class)- do not dereference links during search
  + ### SearchControls

    public SearchControls(int scope,
    long countlim,
    int timelim,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] attrs,
    boolean retobj,
    boolean deref)

    Constructs a search constraints using arguments.

    Parameters:
    :   `scope` - The search scope. One of:
        OBJECT\_SCOPE, ONELEVEL\_SCOPE, SUBTREE\_SCOPE.
    :   `countlim` - The maximum number of entries to return. If 0, return
        all entries that satisfy filter.
    :   `timelim` - The number of milliseconds to wait before returning.
        If 0, wait indefinitely.
    :   `attrs` - The identifiers of the attributes to return along with
        the entry. If null, return all attributes. If empty
        return no attributes.
    :   `retobj` - If true, return the object bound to the name of the
        entry; if false, do not return object.
    :   `deref` - If true, dereference links during search.
* ## Method Details

  + ### getSearchScope

    public int getSearchScope()

    Retrieves the search scope of these SearchControls.

    One of OBJECT\_SCOPE, ONELEVEL\_SCOPE, SUBTREE\_SCOPE.

    Returns:
    :   The search scope of this SearchControls.

    See Also:
    :   - [`setSearchScope(int)`](#setSearchScope(int))
  + ### getTimeLimit

    public int getTimeLimit()

    Retrieves the time limit of these SearchControls in milliseconds.

    If the value is 0, this means to wait indefinitely.

    Returns:
    :   The time limit of these SearchControls in milliseconds.

    See Also:
    :   - [`setTimeLimit(int)`](#setTimeLimit(int))
  + ### getDerefLinkFlag

    public boolean getDerefLinkFlag()

    Determines whether links will be dereferenced during the search.

    Returns:
    :   true if links will be dereferenced; false otherwise.

    See Also:
    :   - [`setDerefLinkFlag(boolean)`](#setDerefLinkFlag(boolean))
  + ### getReturningObjFlag

    public boolean getReturningObjFlag()

    Determines whether objects will be returned as part of the result.

    Returns:
    :   true if objects will be returned; false otherwise.

    See Also:
    :   - [`setReturningObjFlag(boolean)`](#setReturningObjFlag(boolean))
  + ### getCountLimit

    public long getCountLimit()

    Retrieves the maximum number of entries that will be returned
    as a result of the search.

    0 indicates that all entries will be returned.

    Returns:
    :   The maximum number of entries that will be returned.

    See Also:
    :   - [`setCountLimit(long)`](#setCountLimit(long))
  + ### getReturningAttributes

    public [String](../../../../java.base/java/lang/String.md "class in java.lang")[] getReturningAttributes()

    Retrieves the attributes that will be returned as part of the search.

    A value of null indicates that all attributes will be returned.
    An empty array indicates that no attributes are to be returned.

    Returns:
    :   An array of attribute ids identifying the attributes that
        will be returned. Can be null.

    See Also:
    :   - [`setReturningAttributes(java.lang.String[])`](#setReturningAttributes(java.lang.String%5B%5D))
  + ### setSearchScope

    public void setSearchScope(int scope)

    Sets the search scope to one of:
    OBJECT\_SCOPE, ONELEVEL\_SCOPE, SUBTREE\_SCOPE.

    Parameters:
    :   `scope` - The search scope of this SearchControls.

    See Also:
    :   - [`getSearchScope()`](#getSearchScope())
  + ### setTimeLimit

    public void setTimeLimit(int ms)

    Sets the time limit of these SearchControls in milliseconds.

    If the value is 0, this means to wait indefinitely.

    Parameters:
    :   `ms` - The time limit of these SearchControls in milliseconds.

    See Also:
    :   - [`getTimeLimit()`](#getTimeLimit())
  + ### setDerefLinkFlag

    public void setDerefLinkFlag(boolean on)

    Enables/disables link dereferencing during the search.

    Parameters:
    :   `on` - if true links will be dereferenced; if false, not followed.

    See Also:
    :   - [`getDerefLinkFlag()`](#getDerefLinkFlag())
  + ### setReturningObjFlag

    public void setReturningObjFlag(boolean on)

    Enables/disables returning objects returned as part of the result.

    If disabled, only the name and class of the object is returned.
    If enabled, the object will be returned.

    Parameters:
    :   `on` - if true, objects will be returned; if false,
        objects will not be returned.

    See Also:
    :   - [`getReturningObjFlag()`](#getReturningObjFlag())
  + ### setCountLimit

    public void setCountLimit(long limit)

    Sets the maximum number of entries to be returned
    as a result of the search.

    0 indicates no limit: all entries will be returned.

    Parameters:
    :   `limit` - The maximum number of entries that will be returned.

    See Also:
    :   - [`getCountLimit()`](#getCountLimit())
  + ### setReturningAttributes

    public void setReturningAttributes([String](../../../../java.base/java/lang/String.md "class in java.lang")[] attrs)

    Specifies the attributes that will be returned as part of the search.

    null indicates that all attributes will be returned.
    An empty array indicates no attributes are returned.

    Parameters:
    :   `attrs` - An array of attribute ids identifying the attributes that
        will be returned. Can be null.

    See Also:
    :   - [`getReturningAttributes()`](#getReturningAttributes())