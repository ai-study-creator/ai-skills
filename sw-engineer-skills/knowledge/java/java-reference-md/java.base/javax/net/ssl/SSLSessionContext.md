Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Interface SSLSessionContext

---

public interface SSLSessionContext

A `SSLSessionContext` represents a set of
`SSLSession`s associated with a single entity. For example,
it could be associated with a server or client who participates in many
sessions concurrently.

Not all environments will contain session contexts. For example, stateless
session resumption.

Session contexts may not contain all sessions. For example, stateless
sessions are not stored in the session context.

There are `SSLSessionContext` parameters that affect how
sessions are stored:

* Sessions can be set to expire after a specified
  time limit.* The number of sessions that can be stored in context
    can be limited.

A session can be retrieved based on its session id, and all session id's
in a `SSLSessionContext` can be listed.

Since:
:   1.4

See Also:
:   * [`SSLSession`](SSLSession.md "interface in javax.net.ssl")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Enumeration<byte[]>`

  `getIds()`

  Returns an Enumeration of all known session id's grouped under this
  `SSLSessionContext`.

  `SSLSession`

  `getSession(byte[] sessionId)`

  Returns the `SSLSession` bound to the specified session id.

  `int`

  `getSessionCacheSize()`

  Returns the size of the cache used for storing `SSLSession`
  objects grouped under this `SSLSessionContext`.

  `int`

  `getSessionTimeout()`

  Returns the timeout limit of `SSLSession` objects grouped
  under this `SSLSessionContext`.

  `void`

  `setSessionCacheSize(int size)`

  Sets the size of the cache used for storing `SSLSession`
  objects grouped under this `SSLSessionContext`.

  `void`

  `setSessionTimeout(int seconds)`

  Sets the timeout limit for `SSLSession` objects grouped
  under this `SSLSessionContext`.

* ## Method Details

  + ### getSession

    [SSLSession](SSLSession.md "interface in javax.net.ssl") getSession(byte[] sessionId)

    Returns the `SSLSession` bound to the specified session id.

    Parameters:
    :   `sessionId` - the Session identifier

    Returns:
    :   the `SSLSession` or null if
        the specified session id does not refer to a valid SSLSession.

    Throws:
    :   `NullPointerException` - if `sessionId` is null.
  + ### getIds

    [Enumeration](../../../java/util/Enumeration.md "interface in java.util")<byte[]> getIds()

    Returns an Enumeration of all known session id's grouped under this
    `SSLSessionContext`.

    Session contexts may not contain all sessions. For example,
    stateless sessions are not stored in the session context.

    Returns:
    :   an enumeration of all the Session id's
  + ### setSessionTimeout

    void setSessionTimeout(int seconds)

    Sets the timeout limit for `SSLSession` objects grouped
    under this `SSLSessionContext`.

    If the timeout limit is set to 't' seconds, a session exceeds the
    timeout limit 't' seconds after its creation time.
    When the timeout limit is exceeded for a session, the
    `SSLSession` object is invalidated and future connections
    cannot resume or rejoin the session.
    A check for sessions exceeding the timeout is made immediately whenever
    the timeout limit is changed for this `SSLSessionContext`.

    Parameters:
    :   `seconds` - the new session timeout limit in seconds; zero means
        there is no limit.

    Throws:
    :   `IllegalArgumentException` - if the timeout specified is `< 0`.

    See Also:
    :   - [`getSessionTimeout()`](#getSessionTimeout())
  + ### getSessionTimeout

    int getSessionTimeout()

    Returns the timeout limit of `SSLSession` objects grouped
    under this `SSLSessionContext`.

    If the timeout limit is set to 't' seconds, a session exceeds the
    timeout limit 't' seconds after its creation time.
    When the timeout limit is exceeded for a session, the
    `SSLSession` object is invalidated and future connections
    cannot resume or rejoin the session.
    A check for sessions exceeding the timeout limit is made immediately
    whenever the timeout limit is changed for this
    `SSLSessionContext`.

    Returns:
    :   the session timeout limit in seconds; zero means there is no
        limit.

    See Also:
    :   - [`setSessionTimeout(int)`](#setSessionTimeout(int))
  + ### setSessionCacheSize

    void setSessionCacheSize(int size)

    Sets the size of the cache used for storing `SSLSession`
    objects grouped under this `SSLSessionContext`.

    Parameters:
    :   `size` - the new session cache size limit; zero means there is no
        limit.

    Throws:
    :   `IllegalArgumentException` - if the specified size is `< 0`.

    See Also:
    :   - [`getSessionCacheSize()`](#getSessionCacheSize())
  + ### getSessionCacheSize

    int getSessionCacheSize()

    Returns the size of the cache used for storing `SSLSession`
    objects grouped under this `SSLSessionContext`.

    Returns:
    :   size of the session cache; zero means there is no size limit.

    See Also:
    :   - [`setSessionCacheSize(int)`](#setSessionCacheSize(int))