Module [java.base](../../../module-summary.md)

Package [javax.net.ssl](package-summary.md)

# Interface X509KeyManager

All Superinterfaces:
:   `KeyManager`

All Known Implementing Classes:
:   `X509ExtendedKeyManager`

---

public interface X509KeyManager
extends [KeyManager](KeyManager.md "interface in javax.net.ssl")

Instances of this interface manage which X509 certificate-based
key pairs are used to authenticate the local side of a secure
socket.

During secure socket negotiations, implementations
call methods in this interface to:

* determine the set of aliases that are available for negotiations
  based on the criteria presented,* select the  *best alias* based on
    the criteria presented, and* obtain the corresponding key material for given aliases.

Note: the X509ExtendedKeyManager should be used in favor of this
class.

Since:
:   1.4

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `String`

  `chooseClientAlias(String[] keyType,
  Principal[] issuers,
  Socket socket)`

  Choose an alias to authenticate the client side of a secure
  socket given the public key type and the list of
  certificate issuer authorities recognized by the peer (if any).

  `String`

  `chooseServerAlias(String keyType,
  Principal[] issuers,
  Socket socket)`

  Choose an alias to authenticate the server side of a secure
  socket given the public key type and the list of
  certificate issuer authorities recognized by the peer (if any).

  `X509Certificate[]`

  `getCertificateChain(String alias)`

  Returns the certificate chain associated with the given alias.

  `String[]`

  `getClientAliases(String keyType,
  Principal[] issuers)`

  Get the matching aliases for authenticating the client side of a secure
  socket given the public key type and the list of
  certificate issuer authorities recognized by the peer (if any).

  `PrivateKey`

  `getPrivateKey(String alias)`

  Returns the key associated with the given alias.

  `String[]`

  `getServerAliases(String keyType,
  Principal[] issuers)`

  Get the matching aliases for authenticating the server side of a secure
  socket given the public key type and the list of
  certificate issuer authorities recognized by the peer (if any).

* ## Method Details

  + ### getClientAliases

    [String](../../../java/lang/String.md "class in java.lang")[] getClientAliases([String](../../../java/lang/String.md "class in java.lang") keyType,
    [Principal](../../../java/security/Principal.md "interface in java.security")[] issuers)

    Get the matching aliases for authenticating the client side of a secure
    socket given the public key type and the list of
    certificate issuer authorities recognized by the peer (if any).

    Parameters:
    :   `keyType` - the key algorithm type name
    :   `issuers` - the list of acceptable CA issuer subject names,
        or null if it does not matter which issuers are used.

    Returns:
    :   an array of the matching alias names, or null if there
        were no matches.
  + ### chooseClientAlias

    [String](../../../java/lang/String.md "class in java.lang") chooseClientAlias([String](../../../java/lang/String.md "class in java.lang")[] keyType,
    [Principal](../../../java/security/Principal.md "interface in java.security")[] issuers,
    [Socket](../../../java/net/Socket.md "class in java.net") socket)

    Choose an alias to authenticate the client side of a secure
    socket given the public key type and the list of
    certificate issuer authorities recognized by the peer (if any).

    Parameters:
    :   `keyType` - the key algorithm type name(s), ordered
        with the most-preferred key type first.
    :   `issuers` - the list of acceptable CA issuer subject names
        or null if it does not matter which issuers are used.
    :   `socket` - the socket to be used for this connection. This
        parameter can be null, which indicates that
        implementations are free to select an alias applicable
        to any socket.

    Returns:
    :   the alias name for the desired key, or null if there
        are no matches.
  + ### getServerAliases

    [String](../../../java/lang/String.md "class in java.lang")[] getServerAliases([String](../../../java/lang/String.md "class in java.lang") keyType,
    [Principal](../../../java/security/Principal.md "interface in java.security")[] issuers)

    Get the matching aliases for authenticating the server side of a secure
    socket given the public key type and the list of
    certificate issuer authorities recognized by the peer (if any).

    Parameters:
    :   `keyType` - the key algorithm type name
    :   `issuers` - the list of acceptable CA issuer subject names
        or null if it does not matter which issuers are used.

    Returns:
    :   an array of the matching alias names, or null
        if there were no matches.
  + ### chooseServerAlias

    [String](../../../java/lang/String.md "class in java.lang") chooseServerAlias([String](../../../java/lang/String.md "class in java.lang") keyType,
    [Principal](../../../java/security/Principal.md "interface in java.security")[] issuers,
    [Socket](../../../java/net/Socket.md "class in java.net") socket)

    Choose an alias to authenticate the server side of a secure
    socket given the public key type and the list of
    certificate issuer authorities recognized by the peer (if any).

    Parameters:
    :   `keyType` - the key algorithm type name.
    :   `issuers` - the list of acceptable CA issuer subject names
        or null if it does not matter which issuers are used.
    :   `socket` - the socket to be used for this connection. This
        parameter can be null, which indicates that
        implementations are free to select an alias applicable
        to any socket.

    Returns:
    :   the alias name for the desired key, or null if there
        are no matches.
  + ### getCertificateChain

    [X509Certificate](../../../java/security/cert/X509Certificate.md "class in java.security.cert")[] getCertificateChain([String](../../../java/lang/String.md "class in java.lang") alias)

    Returns the certificate chain associated with the given alias.

    Parameters:
    :   `alias` - the alias name

    Returns:
    :   the certificate chain (ordered with the user's certificate first
        and the root certificate authority last), or null
        if the alias can't be found.
  + ### getPrivateKey

    [PrivateKey](../../../java/security/PrivateKey.md "interface in java.security") getPrivateKey([String](../../../java/lang/String.md "class in java.lang") alias)

    Returns the key associated with the given alias.

    Parameters:
    :   `alias` - the alias name

    Returns:
    :   the requested key, or null if the alias can't be found.