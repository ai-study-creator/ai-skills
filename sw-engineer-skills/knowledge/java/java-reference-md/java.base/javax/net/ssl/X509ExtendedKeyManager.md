Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Class X509ExtendedKeyManager

[java.lang.Object](../../../java/lang/Object.md "class in java.lang")

javax.net.ssl.X509ExtendedKeyManager

All Implemented Interfaces:
:   `KeyManager`, `X509KeyManager`

---

public abstract class X509ExtendedKeyManager
extends [Object](../../../java/lang/Object.md "class in java.lang")
implements [X509KeyManager](X509KeyManager.md "interface in javax.net.ssl")

Abstract class that provides for extension of the X509KeyManager
interface.

Methods in this class should be overridden to provide actual
implementations.

Since:
:   1.5

* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `protected`

  `X509ExtendedKeyManager()`

  Constructor used by subclasses only.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `String`

  `chooseEngineClientAlias(String[] keyType,
  Principal[] issuers,
  SSLEngine engine)`

  Choose an alias to authenticate the client side of an
  `SSLEngine` connection given the public key type
  and the list of certificate issuer authorities recognized by
  the peer (if any).

  `String`

  `chooseEngineServerAlias(String keyType,
  Principal[] issuers,
  SSLEngine engine)`

  Choose an alias to authenticate the server side of an
  `SSLEngine` connection given the public key type
  and the list of certificate issuer authorities recognized by
  the peer (if any).

  ### Methods inherited from class java.lang.[Object](../../../java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.net.ssl.[X509KeyManager](X509KeyManager.md "interface in javax.net.ssl")

  `chooseClientAlias, chooseServerAlias, getCertificateChain, getClientAliases, getPrivateKey, getServerAliases`

* ## Constructor Details

  + ### X509ExtendedKeyManager

    protected X509ExtendedKeyManager()

    Constructor used by subclasses only.
* ## Method Details

  + ### chooseEngineClientAlias

    public [String](../../../java/lang/String.md "class in java.lang") chooseEngineClientAlias([String](../../../java/lang/String.md "class in java.lang")[] keyType,
    [Principal](../../../java/security/Principal.md "interface in java.security")[] issuers,
    [SSLEngine](SSLEngine.md "class in javax.net.ssl") engine)

    Choose an alias to authenticate the client side of an
    `SSLEngine` connection given the public key type
    and the list of certificate issuer authorities recognized by
    the peer (if any).

    The default implementation returns null.

    Parameters:
    :   `keyType` - the key algorithm type name(s), ordered
        with the most-preferred key type first.
    :   `issuers` - the list of acceptable CA issuer subject names
        or null if it does not matter which issuers are used.
    :   `engine` - the `SSLEngine` to be used for this
        connection. This parameter can be null, which indicates
        that implementations of this interface are free to
        select an alias applicable to any engine.

    Returns:
    :   the alias name for the desired key, or null if there
        are no matches.
  + ### chooseEngineServerAlias

    public [String](../../../java/lang/String.md "class in java.lang") chooseEngineServerAlias([String](../../../java/lang/String.md "class in java.lang") keyType,
    [Principal](../../../java/security/Principal.md "interface in java.security")[] issuers,
    [SSLEngine](SSLEngine.md "class in javax.net.ssl") engine)

    Choose an alias to authenticate the server side of an
    `SSLEngine` connection given the public key type
    and the list of certificate issuer authorities recognized by
    the peer (if any).

    The default implementation returns null.

    Parameters:
    :   `keyType` - the key algorithm type name.
    :   `issuers` - the list of acceptable CA issuer subject names
        or null if it does not matter which issuers are used.
    :   `engine` - the `SSLEngine` to be used for this
        connection. This parameter can be null, which indicates
        that implementations of this interface are free to
        select an alias applicable to any engine.

    Returns:
    :   the alias name for the desired key, or null if there
        are no matches.