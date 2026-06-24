Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Class CookieManager

[java.lang.Object](../lang/Object.md "class in java.lang")

[java.net.CookieHandler](CookieHandler.md "class in java.net")

java.net.CookieManager

---

public class CookieManager
extends [CookieHandler](CookieHandler.md "class in java.net")

CookieManager provides a concrete implementation of [`CookieHandler`](CookieHandler.md "class in java.net"),
which separates the storage of cookies from the policy surrounding accepting
and rejecting cookies. A CookieManager is initialized with a [`CookieStore`](CookieStore.md "interface in java.net")
which manages storage, and a [`CookiePolicy`](CookiePolicy.md "interface in java.net") object, which makes
policy decisions on cookie acceptance/rejection.

The HTTP cookie management in java.net package looks like:
> ```
>                   use
>  CookieHandler <------- HttpURLConnection
>        ^
>        | impl
>        |         use
>  CookieManager -------> CookiePolicy
>              |   use
>              |--------> HttpCookie
>              |              ^
>              |              | use
>              |   use        |
>              |--------> CookieStore
>                             ^
>                             | impl
>                             |
>                   Internal in-memory implementation
> ```
>
> * CookieHandler is at the core of cookie management. User can call
>   CookieHandler.setDefault to set a concrete CookieHandler implementation
>   to be used.
> * CookiePolicy.shouldAccept will be called by CookieManager.put to see whether
>   or not one cookie should be accepted and put into cookie store. User can use
>   any of three pre-defined CookiePolicy, namely ACCEPT\_ALL, ACCEPT\_NONE and
>   ACCEPT\_ORIGINAL\_SERVER, or user can define his own CookiePolicy implementation
>   and tell CookieManager to use it.
> * CookieStore is the place where any accepted HTTP cookie is stored in.
>   If not specified when created, a CookieManager instance will use an internal
>   in-memory implementation. Or user can implements one and tell CookieManager
>   to use it.
> * Currently, only CookieStore.add(URI, HttpCookie) and CookieStore.get(URI)
>   are used by CookieManager. Others are for completeness and might be needed
>   by a more sophisticated CookieStore implementation, e.g. a NetscapeCookieStore.

There're various ways user can hook up his own HTTP cookie management behavior, e.g.
> * Use CookieHandler.setDefault to set a brand new [`CookieHandler`](CookieHandler.md "class in java.net") implementation* Let CookieManager be the default [`CookieHandler`](CookieHandler.md "class in java.net") implementation,
>     but implement user's own [`CookieStore`](CookieStore.md "interface in java.net") and [`CookiePolicy`](CookiePolicy.md "interface in java.net")
>     and tell default CookieManager to use them:
>     > ```
>     >        // this should be done at the beginning of an HTTP session
>     >        CookieHandler.setDefault(new CookieManager(new MyCookieStore(), new MyCookiePolicy()));
>     > ```
>
>     * Let CookieManager be the default [`CookieHandler`](CookieHandler.md "class in java.net") implementation, but
>       use customized [`CookiePolicy`](CookiePolicy.md "interface in java.net"):
>       > ```
>       >        // this should be done at the beginning of an HTTP session
>       >        CookieHandler.setDefault(new CookieManager());
>       >        // this can be done at any point of an HTTP session
>       >        ((CookieManager)CookieHandler.getDefault()).setCookiePolicy(new MyCookiePolicy());
>       > ```

The implementation conforms to [RFC 2965](http://www.ietf.org/rfc/rfc2965.txt), section 3.3.

Since:
:   1.6

See Also:
:   * [`CookiePolicy`](CookiePolicy.md "interface in java.net")

External Specifications
:   * [RFC 2965: HTTP State Management Mechanism](https://www.rfc-editor.org/info/rfc2965)

* ## Constructor Summary

  Constructors

  Constructor

  Description

  `CookieManager()`

  Create a new cookie manager.

  `CookieManager(CookieStore store,
  CookiePolicy cookiePolicy)`

  Create a new cookie manager with specified cookie store and cookie policy.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `Map<String,List<String>>`

  `get(URI uri,
  Map<String,List<String>> requestHeaders)`

  Gets all the applicable cookies from a cookie cache for the
  specified uri in the request header.

  `CookieStore`

  `getCookieStore()`

  To retrieve current cookie store.

  `void`

  `put(URI uri,
  Map<String,List<String>> responseHeaders)`

  Sets all the applicable cookies, examples are response header
  fields that are named Set-Cookie2, present in the response
  headers into a cookie cache.

  `void`

  `setCookiePolicy(CookiePolicy cookiePolicy)`

  To set the cookie policy of this cookie manager.

  ### Methods inherited from class java.net.[CookieHandler](CookieHandler.md "class in java.net")

  `getDefault, setDefault`

  ### Methods inherited from class java.lang.[Object](../lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### CookieManager

    public CookieManager()

    Create a new cookie manager.

    This constructor will create new cookie manager with default
    cookie store and accept policy. The effect is same as
    `CookieManager(null, null)`.
  + ### CookieManager

    public CookieManager([CookieStore](CookieStore.md "interface in java.net") store,
    [CookiePolicy](CookiePolicy.md "interface in java.net") cookiePolicy)

    Create a new cookie manager with specified cookie store and cookie policy.

    Parameters:
    :   `store` - a `CookieStore` to be used by cookie manager.
        if `null`, cookie manager will use a default one,
        which is an in-memory CookieStore implementation.
    :   `cookiePolicy` - a `CookiePolicy` instance
        to be used by cookie manager as policy callback.
        if `null`, ACCEPT\_ORIGINAL\_SERVER will
        be used.
* ## Method Details

  + ### setCookiePolicy

    public void setCookiePolicy([CookiePolicy](CookiePolicy.md "interface in java.net") cookiePolicy)

    To set the cookie policy of this cookie manager.

    An instance of `CookieManager` will have
    cookie policy ACCEPT\_ORIGINAL\_SERVER by default. Users always
    can call this method to set another cookie policy.

    Parameters:
    :   `cookiePolicy` - the cookie policy. Can be `null`, which
        has no effects on current cookie policy.
  + ### getCookieStore

    public [CookieStore](CookieStore.md "interface in java.net") getCookieStore()

    To retrieve current cookie store.

    Returns:
    :   the cookie store currently used by cookie manager.
  + ### get

    public [Map](../util/Map.md "interface in java.util")<[String](../lang/String.md "class in java.lang"),[List](../util/List.md "interface in java.util")<[String](../lang/String.md "class in java.lang")>> get([URI](URI.md "class in java.net") uri,
    [Map](../util/Map.md "interface in java.util")<[String](../lang/String.md "class in java.lang"),[List](../util/List.md "interface in java.util")<[String](../lang/String.md "class in java.lang")>> requestHeaders)
    throws [IOException](../io/IOException.md "class in java.io")

    Description copied from class: `CookieHandler`

    Gets all the applicable cookies from a cookie cache for the
    specified uri in the request header.

    The `URI` passed as an argument specifies the intended use for
    the cookies. In particular the scheme should reflect whether the cookies
    will be sent over http, https or used in another context like javascript.
    The host part should reflect either the destination of the cookies or
    their origin in the case of javascript.

    It is up to the implementation to take into account the `URI` and
    the cookies attributes and security settings to determine which ones
    should be returned.

    HTTP protocol implementers should make sure that this method is
    called after all request headers related to choosing cookies
    are added, and before the request is sent.

    Specified by:
    :   `get` in class `CookieHandler`

    Parameters:
    :   `uri` - a `URI` representing the intended use for the
        cookies
    :   `requestHeaders` - a Map from request header
        field names to lists of field values representing
        the current request headers

    Returns:
    :   an immutable map from state management headers, with
        field names "Cookie" or "Cookie2" to a list of
        cookies containing state information

    Throws:
    :   `IOException` - if an I/O error occurs

    See Also:
    :   - [`CookieHandler.put(URI, Map)`](CookieHandler.md#put(java.net.URI,java.util.Map))
  + ### put

    public void put([URI](URI.md "class in java.net") uri,
    [Map](../util/Map.md "interface in java.util")<[String](../lang/String.md "class in java.lang"),[List](../util/List.md "interface in java.util")<[String](../lang/String.md "class in java.lang")>> responseHeaders)
    throws [IOException](../io/IOException.md "class in java.io")

    Description copied from class: `CookieHandler`

    Sets all the applicable cookies, examples are response header
    fields that are named Set-Cookie2, present in the response
    headers into a cookie cache.

    Specified by:
    :   `put` in class `CookieHandler`

    Parameters:
    :   `uri` - a `URI` where the cookies come from
    :   `responseHeaders` - an immutable map from field names to
        lists of field values representing the response
        header fields returned

    Throws:
    :   `IOException` - if an I/O error occurs

    See Also:
    :   - [`CookieHandler.get(URI, Map)`](CookieHandler.md#get(java.net.URI,java.util.Map))