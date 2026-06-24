Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class SNIMatcher

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.SNIMatcher

---

public abstract class SNIMatcher
extends [Object](../../../java/lang/Object.md "class in java.lang")

Instances of this class represent a matcher that performs match
operations on an [`SNIServerName`](SNIServerName.md "class in javax.net.ssl") instance.

Servers can use Server Name Indication (SNI) information to decide if
specific [`SSLSocket`](SSLSocket.md "class in javax.net.ssl") or [`SSLEngine`](SSLEngine.md "class in javax.net.ssl") instances should accept
a connection. For example, when multiple "virtual" or "name-based"
servers are hosted on a single underlying network address, the server
application can use SNI information to determine whether this server is
the exact server that the client wants to access. Instances of this
class can be used by a server to verify the acceptable server names of
a particular type, such as host names.

`SNIMatcher` objects are immutable. Subclasses should not provide
methods that can change the state of an instance once it has been created.

Since:
:   1.8

See Also:
:   * [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")
    * [`SNIHostName`](SNIHostName.md "class in javax.net.ssl")
    * [`SSLParameters.getSNIMatchers()`](SSLParameters.md#getSNIMatchers())
    * [`SSLParameters.setSNIMatchers(Collection)`](SSLParameters.md#setSNIMatchers(java.util.Collection))

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `SNIMatcher(int type)`

  Creates an `SNIMatcher` using the specified server name type.
* ## Method Summary

  All MethodsInstance MethodsAbstract MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `final int`

  `getType()`

  Returns the server name type of this `SNIMatcher` object.

  `abstract boolean`

  `matches(SNIServerName serverName)`

  Attempts to match the given [`SNIServerName`](SNIServerName.md "class in javax.net.ssl").

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Constructor Details

  + ### SNIMatcher

    protected SNIMatcher(int type)

    Creates an `SNIMatcher` using the specified server name type.

    Parameters:
    :   `type` - the type of the server name that this matcher performs on

    Throws:
    :   `IllegalArgumentException` - if `type` is not in the range
        of 0 to 255, inclusive.
* ## Method Details

  + ### getType

    public final int getType()

    Returns the server name type of this `SNIMatcher` object.

    Returns:
    :   the server name type of this `SNIMatcher` object.

    See Also:
    :   - [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")
  + ### matches

    public abstract boolean matches([SNIServerName](SNIServerName.md "class in javax.net.ssl") serverName)

    Attempts to match the given [`SNIServerName`](SNIServerName.md "class in javax.net.ssl").

    Parameters:
    :   `serverName` - the [`SNIServerName`](SNIServerName.md "class in javax.net.ssl") instance on which this matcher
        performs match operations

    Returns:
    :   `true` if, and only if, the matcher matches the
        given `serverName`

    Throws:
    :   `NullPointerException` - if `serverName` is `null`
    :   `IllegalArgumentException` - if `serverName` is
        not of the given server name type of this matcher

    See Also:
    :   - [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")