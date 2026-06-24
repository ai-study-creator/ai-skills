Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class StandardConstants

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.StandardConstants

---

public final class StandardConstants
extends [Object](../../../java/lang/Object.md "class in java.lang")

Standard constants definitions

Since:
:   1.8

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `SNI_HOST_NAME`

  The "host\_name" type representing of a DNS hostname
  (see [`SNIHostName`](SNIHostName.md "class in javax.net.ssl")) in a Server Name Indication (SNI) extension.
* ## Method Summary

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### SNI\_HOST\_NAME

    public static final int SNI\_HOST\_NAME

    The "host\_name" type representing of a DNS hostname
    (see [`SNIHostName`](SNIHostName.md "class in javax.net.ssl")) in a Server Name Indication (SNI) extension.

    The SNI extension is a feature that extends the SSL/TLS protocols to
    indicate what server name the client is attempting to connect to during
    handshaking. See section 3, "Server Name Indication", of [TLS Extensions (RFC 6066)](http://www.ietf.org/rfc/rfc6066.txt).

    The value of this constant is 0.

    See Also:
    :   - [`SNIServerName`](SNIServerName.md "class in javax.net.ssl")
        - [`SNIHostName`](SNIHostName.md "class in javax.net.ssl")
        - [Constant Field Values](../../../../constant-values.md#javax.net.ssl.StandardConstants.SNI_HOST_NAME)