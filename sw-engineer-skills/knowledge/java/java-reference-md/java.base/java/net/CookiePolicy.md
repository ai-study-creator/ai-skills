Module [java.base](../../module-summary.md)

Package [java.net](package-summary.md)

# Interface CookiePolicy

---

public interface CookiePolicy

CookiePolicy implementations decide which cookies should be accepted
and which should be rejected. Three pre-defined policy implementations
are provided, namely ACCEPT\_ALL, ACCEPT\_NONE and ACCEPT\_ORIGINAL\_SERVER.

See RFC 2965 sec. 3.3 and 7 for more detail.

Since:
:   1.6

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final CookiePolicy`

  `ACCEPT_ALL`

  One pre-defined policy which accepts all cookies.

  `static final CookiePolicy`

  `ACCEPT_NONE`

  One pre-defined policy which accepts no cookies.

  `static final CookiePolicy`

  `ACCEPT_ORIGINAL_SERVER`

  One pre-defined policy which only accepts cookies from original server.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `boolean`

  `shouldAccept(URI uri,
  HttpCookie cookie)`

  Will be called to see whether or not this cookie should be accepted.

* ## Field Details

  + ### ACCEPT\_ALL

    static final [CookiePolicy](CookiePolicy.md "interface in java.net") ACCEPT\_ALL

    One pre-defined policy which accepts all cookies.
  + ### ACCEPT\_NONE

    static final [CookiePolicy](CookiePolicy.md "interface in java.net") ACCEPT\_NONE

    One pre-defined policy which accepts no cookies.
  + ### ACCEPT\_ORIGINAL\_SERVER

    static final [CookiePolicy](CookiePolicy.md "interface in java.net") ACCEPT\_ORIGINAL\_SERVER

    One pre-defined policy which only accepts cookies from original server.
* ## Method Details

  + ### shouldAccept

    boolean shouldAccept([URI](URI.md "class in java.net") uri,
    [HttpCookie](HttpCookie.md "class in java.net") cookie)

    Will be called to see whether or not this cookie should be accepted.

    Parameters:
    :   `uri` - the URI to consult accept policy with
    :   `cookie` - the HttpCookie object in question

    Returns:
    :   `true` if this cookie should be accepted;
        otherwise, `false`