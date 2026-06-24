Module [java.security.sasl](../../../module-summary.md)

Package [javax.security.sasl](package-summary.md)

# Class Sasl

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

javax.security.sasl.Sasl

---

public class Sasl
extends [Object](../../../../java.base/java/lang/Object.md "class in java.lang")

A static class for creating SASL clients and servers.

This class defines the policy of how to locate, load, and instantiate
SASL clients and servers.

For example, an application or library gets a SASL client by doing
something like:
> ```
>  SaslClient sc = Sasl.createSaslClient(mechanisms,
>      authorizationId, protocol, serverName, props, callbackHandler);
> ```

It can then proceed to use the instance to create an authentication connection.

Similarly, a server gets a SASL server by using code that looks as follows:
> ```
>  SaslServer ss = Sasl.createSaslServer(mechanism,
>      protocol, serverName, props, callbackHandler);
> ```

Since:
:   1.5

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final String`

  `BOUND_SERVER_NAME`

  The name of a property that specifies the bound server name for
  an unbound server.

  `static final String`

  `CREDENTIALS`

  The name of a property that specifies the credentials to use.

  `static final String`

  `MAX_BUFFER`

  The name of a property that specifies the maximum size of the receive
  buffer in bytes of `SaslClient`/`SaslServer`.

  `static final String`

  `POLICY_FORWARD_SECRECY`

  The name of a property that specifies whether mechanisms that implement
  forward secrecy between sessions are required.

  `static final String`

  `POLICY_NOACTIVE`

  The name of a property that specifies whether
  mechanisms susceptible to active (non-dictionary) attacks
  are not permitted.

  `static final String`

  `POLICY_NOANONYMOUS`

  The name of a property that specifies whether mechanisms that accept
  anonymous login are not permitted.

  `static final String`

  `POLICY_NODICTIONARY`

  The name of a property that specifies whether
  mechanisms susceptible to passive dictionary attacks are not permitted.

  `static final String`

  `POLICY_NOPLAINTEXT`

  The name of a property that specifies
  whether mechanisms susceptible to simple plain passive attacks (e.g.,
  "PLAIN") are not permitted.

  `static final String`

  `POLICY_PASS_CREDENTIALS`

  The name of a property that specifies whether
  mechanisms that pass client credentials are required.

  `static final String`

  `QOP`

  The name of a property that specifies the quality-of-protection to use.

  `static final String`

  `RAW_SEND_SIZE`

  The name of a property that specifies the maximum size of the raw send
  buffer in bytes of `SaslClient`/`SaslServer`.

  `static final String`

  `REUSE`

  The name of a property that specifies whether to reuse previously
  authenticated session information.

  `static final String`

  `SERVER_AUTH`

  The name of a property that specifies whether the
  server must authenticate to the client.

  `static final String`

  `STRENGTH`

  The name of a property that specifies the cipher strength to use.
* ## Method Summary

  All MethodsStatic MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `static SaslClient`

  `createSaslClient(String[] mechanisms,
  String authorizationId,
  String protocol,
  String serverName,
  Map<String,?> props,
  CallbackHandler cbh)`

  Creates a `SaslClient` using the parameters supplied.

  `static SaslServer`

  `createSaslServer(String mechanism,
  String protocol,
  String serverName,
  Map<String,?> props,
  CallbackHandler cbh)`

  Creates a `SaslServer` for the specified mechanism.

  `static Enumeration<SaslClientFactory>`

  `getSaslClientFactories()`

  Gets an enumeration of known factories for producing `SaslClient`.

  `static Enumeration<SaslServerFactory>`

  `getSaslServerFactories()`

  Gets an enumeration of known factories for producing `SaslServer`.

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

* ## Field Details

  + ### QOP

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") QOP

    The name of a property that specifies the quality-of-protection to use.
    The property contains a comma-separated, ordered list
    of quality-of-protection values that the
    client or server is willing to support. A qop value is one of
    - `"auth"` - authentication only
    - `"auth-int"` - authentication plus integrity protection
    - `"auth-conf"` - authentication plus integrity and confidentiality
      protectionThe order of the list specifies the preference order of the client or
    server. If this property is absent, the default qop is `"auth"`.
    The value of this constant is `"javax.security.sasl.qop"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.QOP)
  + ### STRENGTH

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") STRENGTH

    The name of a property that specifies the cipher strength to use.
    The property contains a comma-separated, ordered list
    of cipher strength values that
    the client or server is willing to support. A strength value is one of
    - `"low"`
    - `"medium"`
    - `"high"`The order of the list specifies the preference order of the client or
    server. An implementation should allow configuration of the meaning
    of these values. An application may use the Java Cryptography
    Extension (JCE) with JCE-aware mechanisms to control the selection of
    cipher suites that match the strength values.
      
    If this property is absent, the default strength is
    `"high,medium,low"`.
    The value of this constant is `"javax.security.sasl.strength"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.STRENGTH)
  + ### SERVER\_AUTH

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") SERVER\_AUTH

    The name of a property that specifies whether the
    server must authenticate to the client. The property contains
    `"true"` if the server must
    authenticate the to client; `"false"` otherwise.
    The default is `"false"`.
      
    The value of this constant is
    `"javax.security.sasl.server.authentication"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.SERVER_AUTH)
  + ### BOUND\_SERVER\_NAME

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") BOUND\_SERVER\_NAME

    The name of a property that specifies the bound server name for
    an unbound server. A server is created as an unbound server by setting
    the `serverName` argument in [`createSaslServer(java.lang.String, java.lang.String, java.lang.String, java.util.Map<java.lang.String, ?>, javax.security.auth.callback.CallbackHandler)`](#createSaslServer(java.lang.String,java.lang.String,java.lang.String,java.util.Map,javax.security.auth.callback.CallbackHandler)) as null.
    The property contains the bound host name after the authentication
    exchange has completed. It is only available on the server side.
      
    The value of this constant is
    `"javax.security.sasl.bound.server.name"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.BOUND_SERVER_NAME)
  + ### MAX\_BUFFER

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") MAX\_BUFFER

    The name of a property that specifies the maximum size of the receive
    buffer in bytes of `SaslClient`/`SaslServer`.
    The property contains the string representation of an integer.
      
    If this property is absent, the default size
    is defined by the mechanism.
      
    The value of this constant is `"javax.security.sasl.maxbuffer"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.MAX_BUFFER)
  + ### RAW\_SEND\_SIZE

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") RAW\_SEND\_SIZE

    The name of a property that specifies the maximum size of the raw send
    buffer in bytes of `SaslClient`/`SaslServer`.
    The property contains the string representation of an integer.
    The value of this property is negotiated between the client and server
    during the authentication exchange.
      
    The value of this constant is `"javax.security.sasl.rawsendsize"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.RAW_SEND_SIZE)
  + ### REUSE

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") REUSE

    The name of a property that specifies whether to reuse previously
    authenticated session information. The property contains "true" if the
    mechanism implementation may attempt to reuse previously authenticated
    session information; it contains "false" if the implementation must
    not reuse previously authenticated session information. A setting of
    "true" serves only as a hint: it does not necessarily entail actual
    reuse because reuse might not be possible due to a number of reasons,
    including, but not limited to, lack of mechanism support for reuse,
    expiration of reusable information, and the peer's refusal to support
    reuse.
    The property's default value is "false". The value of this constant
    is "javax.security.sasl.reuse".
    Note that all other parameters and properties required to create a
    SASL client/server instance must be provided regardless of whether
    this property has been supplied. That is, you cannot supply any less
    information in anticipation of reuse.
    Mechanism implementations that support reuse might allow customization
    of its implementation, for factors such as cache size, timeouts, and
    criteria for reusability. Such customizations are
    implementation-dependent.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.REUSE)
  + ### POLICY\_NOPLAINTEXT

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") POLICY\_NOPLAINTEXT

    The name of a property that specifies
    whether mechanisms susceptible to simple plain passive attacks (e.g.,
    "PLAIN") are not permitted. The property
    contains `"true"` if such mechanisms are not permitted;
    `"false"` if such mechanisms are permitted.
    The default is `"false"`.
      
    The value of this constant is
    `"javax.security.sasl.policy.noplaintext"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.POLICY_NOPLAINTEXT)
  + ### POLICY\_NOACTIVE

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") POLICY\_NOACTIVE

    The name of a property that specifies whether
    mechanisms susceptible to active (non-dictionary) attacks
    are not permitted.
    The property contains `"true"`
    if mechanisms susceptible to active attacks
    are not permitted; `"false"` if such mechanisms are permitted.
    The default is `"false"`.
      
    The value of this constant is
    `"javax.security.sasl.policy.noactive"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.POLICY_NOACTIVE)
  + ### POLICY\_NODICTIONARY

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") POLICY\_NODICTIONARY

    The name of a property that specifies whether
    mechanisms susceptible to passive dictionary attacks are not permitted.
    The property contains `"true"`
    if mechanisms susceptible to dictionary attacks are not permitted;
    `"false"` if such mechanisms are permitted.
    The default is `"false"`.
      
    The value of this constant is
    `"javax.security.sasl.policy.nodictionary"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.POLICY_NODICTIONARY)
  + ### POLICY\_NOANONYMOUS

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") POLICY\_NOANONYMOUS

    The name of a property that specifies whether mechanisms that accept
    anonymous login are not permitted. The property contains `"true"`
    if mechanisms that accept anonymous login are not permitted;
    `"false"`
    if such mechanisms are permitted. The default is `"false"`.
      
    The value of this constant is
    `"javax.security.sasl.policy.noanonymous"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.POLICY_NOANONYMOUS)
  + ### POLICY\_FORWARD\_SECRECY

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") POLICY\_FORWARD\_SECRECY

    The name of a property that specifies whether mechanisms that implement
    forward secrecy between sessions are required. Forward secrecy
    means that breaking into one session will not automatically
    provide information for breaking into future sessions.
    The property
    contains `"true"` if mechanisms that implement forward secrecy
    between sessions are required; `"false"` if such mechanisms
    are not required. The default is `"false"`.
      
    The value of this constant is
    `"javax.security.sasl.policy.forward"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.POLICY_FORWARD_SECRECY)
  + ### POLICY\_PASS\_CREDENTIALS

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") POLICY\_PASS\_CREDENTIALS

    The name of a property that specifies whether
    mechanisms that pass client credentials are required. The property
    contains `"true"` if mechanisms that pass
    client credentials are required; `"false"`
    if such mechanisms are not required. The default is `"false"`.
      
    The value of this constant is
    `"javax.security.sasl.policy.credentials"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.POLICY_PASS_CREDENTIALS)
  + ### CREDENTIALS

    public static final [String](../../../../java.base/java/lang/String.md "class in java.lang") CREDENTIALS

    The name of a property that specifies the credentials to use.
    The property contains a mechanism-specific Java credential object.
    Mechanism implementations may examine the value of this property
    to determine whether it is a class that they support.
    The property may be used to supply credentials to a mechanism that
    supports delegated authentication.
      
    The value of this constant is
    `"javax.security.sasl.credentials"`.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#javax.security.sasl.Sasl.CREDENTIALS)
* ## Method Details

  + ### createSaslClient

    public static [SaslClient](SaslClient.md "interface in javax.security.sasl") createSaslClient([String](../../../../java.base/java/lang/String.md "class in java.lang")[] mechanisms,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") authorizationId,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") protocol,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") serverName,
    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),?> props,
    [CallbackHandler](../../../../java.base/javax/security/auth/callback/CallbackHandler.md "interface in javax.security.auth.callback") cbh)
    throws [SaslException](SaslException.md "class in javax.security.sasl")

    Creates a `SaslClient` using the parameters supplied.
    This method uses the
    ,
    described in the
    "Java Cryptography Architecture (JCA) Reference Guide", for
    locating and selecting a `SaslClient` implementation.
    First, it
    obtains an ordered list of `SaslClientFactory` instances from
    the registered security providers for the "SaslClientFactory" service
    and the specified SASL mechanism(s). It then invokes
    `createSaslClient()` on each factory instance on the list
    until one produces a non-null `SaslClient` instance. It returns
    the non-null `SaslClient` instance, or null if the search fails
    to produce a non-null `SaslClient` instance.

    A security provider for SaslClientFactory registers with the
    JCA Security Provider Framework keys of the form   
    `SaslClientFactory.`*`mechanism_name`*
      
    and values that are class names of implementations of
    `javax.security.sasl.SaslClientFactory`.
    For example, a provider that contains a factory class,
    `com.wiz.sasl.digest.ClientFactory`, that supports the
    "DIGEST-MD5" mechanism would register the following entry with the JCA:
    `SaslClientFactory.DIGEST-MD5 com.wiz.sasl.digest.ClientFactory`

    See the
    "Java Cryptography Architecture API Specification & Reference"
    for information about how to install and configure security service
    providers.

    Parameters:
    :   `mechanisms` - The non-null list of mechanism names to try. Each is the
        IANA-registered name of a SASL mechanism. (e.g. "GSSAPI", "CRAM-MD5").
    :   `authorizationId` - The possibly null protocol-dependent
        identification to be used for authorization.
        If null or empty, the server derives an authorization
        ID from the client's authentication credentials.
        When the SASL authentication completes successfully,
        the specified entity is granted access.
    :   `protocol` - The non-null string name of the protocol for which
        the authentication is being performed (e.g., "ldap").
    :   `serverName` - The non-null fully-qualified host name of the server
        to authenticate to.
    :   `props` - The possibly null set of properties used to
        select the SASL mechanism and to configure the authentication
        exchange of the selected mechanism.
        For example, if `props` contains the
        `Sasl.POLICY_NOPLAINTEXT` property with the value
        `"true"`, then the selected
        SASL mechanism must not be susceptible to simple plain passive attacks.
        In addition to the standard properties declared in this class,
        other, possibly mechanism-specific, properties can be included.
        Properties not relevant to the selected mechanism are ignored,
        including any map entries with non-String keys.
    :   `cbh` - The possibly null callback handler to used by the SASL
        mechanisms to get further information from the application/library
        to complete the authentication. For example, a SASL mechanism might
        require the authentication ID, password and realm from the caller.
        The authentication ID is requested by using a `NameCallback`.
        The password is requested by using a `PasswordCallback`.
        The realm is requested by using a `RealmChoiceCallback` if there is a list
        of realms to choose from, and by using a `RealmCallback` if
        the realm must be entered.

    Returns:
    :   A possibly null `SaslClient` created using the parameters
        supplied. If null, cannot find a `SaslClientFactory`
        that will produce one.

    Throws:
    :   `SaslException` - If cannot create a `SaslClient` because
        of an error.
  + ### createSaslServer

    public static [SaslServer](SaslServer.md "interface in javax.security.sasl") createSaslServer([String](../../../../java.base/java/lang/String.md "class in java.lang") mechanism,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") protocol,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") serverName,
    [Map](../../../../java.base/java/util/Map.md "interface in java.util")<[String](../../../../java.base/java/lang/String.md "class in java.lang"),?> props,
    [CallbackHandler](../../../../java.base/javax/security/auth/callback/CallbackHandler.md "interface in javax.security.auth.callback") cbh)
    throws [SaslException](SaslException.md "class in javax.security.sasl")

    Creates a `SaslServer` for the specified mechanism.
    This method uses the
    ,
    described in the
    "Java Cryptography Architecture (JCA) Reference Guide", for
    locating and selecting a `SaslClient` implementation.
    First, it
    obtains an ordered list of `SaslServerFactory` instances from
    the registered security providers for the "SaslServerFactory" service
    and the specified mechanism. It then invokes
    `createSaslServer()` on each factory instance on the list
    until one produces a non-null `SaslServer` instance. It returns
    the non-null `SaslServer` instance, or null if the search fails
    to produce a non-null `SaslServer` instance.

    A security provider for SaslServerFactory registers with the
    JCA Security Provider Framework keys of the form   
    `SaslServerFactory.`*`mechanism_name`*
      
    and values that are class names of implementations of
    `javax.security.sasl.SaslServerFactory`.
    For example, a provider that contains a factory class,
    `com.wiz.sasl.digest.ServerFactory`, that supports the
    "DIGEST-MD5" mechanism would register the following entry with the JCA:
    `SaslServerFactory.DIGEST-MD5 com.wiz.sasl.digest.ServerFactory`

    See the
    "Java Cryptography Architecture API Specification & Reference"
    for information about how to install and configure security
    service providers.

    Parameters:
    :   `mechanism` - The non-null mechanism name. It must be an
        IANA-registered name of a SASL mechanism. (e.g. "GSSAPI", "CRAM-MD5").
    :   `protocol` - The non-null string name of the protocol for which
        the authentication is being performed (e.g., "ldap").
    :   `serverName` - The fully qualified host name of the server, or null
        if the server is not bound to any specific host name. If the mechanism
        does not allow an unbound server, a `SaslException` will
        be thrown.
    :   `props` - The possibly null set of properties used to
        select the SASL mechanism and to configure the authentication
        exchange of the selected mechanism.
        For example, if `props` contains the
        `Sasl.POLICY_NOPLAINTEXT` property with the value
        `"true"`, then the selected
        SASL mechanism must not be susceptible to simple plain passive attacks.
        In addition to the standard properties declared in this class,
        other, possibly mechanism-specific, properties can be included.
        Properties not relevant to the selected mechanism are ignored,
        including any map entries with non-String keys.
    :   `cbh` - The possibly null callback handler to used by the SASL
        mechanisms to get further information from the application/library
        to complete the authentication. For example, a SASL mechanism might
        require the authentication ID, password and realm from the caller.
        The authentication ID is requested by using a `NameCallback`.
        The password is requested by using a `PasswordCallback`.
        The realm is requested by using a `RealmChoiceCallback` if there is a list
        of realms to choose from, and by using a `RealmCallback` if
        the realm must be entered.

    Returns:
    :   A possibly null `SaslServer` created using the parameters
        supplied. If null, cannot find a `SaslServerFactory`
        that will produce one.

    Throws:
    :   `SaslException` - If cannot create a `SaslServer` because
        of an error.
  + ### getSaslClientFactories

    public static [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[SaslClientFactory](SaslClientFactory.md "interface in javax.security.sasl")> getSaslClientFactories()

    Gets an enumeration of known factories for producing `SaslClient`.
    This method uses the same algorithm for locating factories as
    `createSaslClient()`.

    Returns:
    :   A non-null enumeration of known factories for producing
        `SaslClient`.

    See Also:
    :   - [`createSaslClient(java.lang.String[], java.lang.String, java.lang.String, java.lang.String, java.util.Map<java.lang.String, ?>, javax.security.auth.callback.CallbackHandler)`](#createSaslClient(java.lang.String%5B%5D,java.lang.String,java.lang.String,java.lang.String,java.util.Map,javax.security.auth.callback.CallbackHandler))
  + ### getSaslServerFactories

    public static [Enumeration](../../../../java.base/java/util/Enumeration.md "interface in java.util")<[SaslServerFactory](SaslServerFactory.md "interface in javax.security.sasl")> getSaslServerFactories()

    Gets an enumeration of known factories for producing `SaslServer`.
    This method uses the same algorithm for locating factories as
    `createSaslServer()`.

    Returns:
    :   A non-null enumeration of known factories for producing
        `SaslServer`.

    See Also:
    :   - [`createSaslServer(java.lang.String, java.lang.String, java.lang.String, java.util.Map<java.lang.String, ?>, javax.security.auth.callback.CallbackHandler)`](#createSaslServer(java.lang.String,java.lang.String,java.lang.String,java.util.Map,javax.security.auth.callback.CallbackHandler))