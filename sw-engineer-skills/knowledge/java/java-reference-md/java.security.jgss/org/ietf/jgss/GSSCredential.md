Module [java.security.jgss](../../../module-summary.md)

Package [org.ietf.jgss](package-summary.md)

# Interface GSSCredential

All Superinterfaces:
:   `Cloneable`

---

public interface GSSCredential
extends [Cloneable](../../../../java.base/java/lang/Cloneable.md "interface in java.lang")

This interface encapsulates the GSS-API credentials for an entity. A
credential contains all the necessary cryptographic information to
enable the creation of a context on behalf of the entity that it
represents. It may contain multiple, distinct, mechanism specific
credential elements, each containing information for a specific
security mechanism, but all referring to the same entity. A credential
may be used to perform context initiation, acceptance, or both.

Credentials are instantiated using one of the
`createCredential` methods in the [`GSSManager`](GSSManager.md "class in org.ietf.jgss") class. GSS-API credential creation is not
intended to provide a "login to the network" function, as such a
function would involve the creation of new credentials rather than
merely acquiring a handle to existing credentials. The
[section on credential
acquisition](package-summary.md#useSubjectCredsOnly) in the package level description describes
how existing credentials are acquired in the Java platform. GSS-API
implementations must impose a local access-control policy on callers to
prevent unauthorized callers from acquiring credentials to which they
are not entitled.

Applications will create a credential object passing the desired
parameters. The application can then use the query methods to obtain
specific information about the instantiated credential object.
When the credential is no longer needed, the application should call
the [`dispose`](#dispose()) method to release any resources held by
the credential object and to destroy any cryptographically sensitive
information.

This example code demonstrates the creation of a GSSCredential
implementation for a specific entity, querying of its fields, and its
release when it is no longer needed:

```
    GSSManager manager = GSSManager.getInstance();

    // start by creating a name object for the entity
    GSSName name = manager.createName("myusername", GSSName.NT_USER_NAME);

    // now acquire credentials for the entity
    GSSCredential cred = manager.createCredential(name,
                    GSSCredential.ACCEPT_ONLY);

    // display credential information - name, remaining lifetime,
    // and the mechanisms it has been acquired over
    System.out.println(cred.getName().toString());
    System.out.println(cred.getRemainingLifetime());

    Oid [] mechs = cred.getMechs();
    if (mechs != null) {
            for (int i = 0; i< mechs.length; i++)
                    System.out.println(mechs[i].toString());
    }

    // release system resources held by the credential
    cred.dispose();
```

Since:
:   1.4

See Also:
:   * [`GSSManager.createCredential(int)`](GSSManager.md#createCredential(int))
    * [`GSSManager.createCredential(GSSName, int, Oid, int)`](GSSManager.md#createCredential(org.ietf.jgss.GSSName,int,org.ietf.jgss.Oid,int))
    * [`GSSManager.createCredential(GSSName, int, Oid[], int)`](GSSManager.md#createCredential(org.ietf.jgss.GSSName,int,org.ietf.jgss.Oid%5B%5D,int))
    * [`dispose()`](#dispose())

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `static final int`

  `ACCEPT_ONLY`

  Credential usage flag requesting that it be usable
  for context acceptance only.

  `static final int`

  `DEFAULT_LIFETIME`

  A lifetime constant representing the default credential lifetime.

  `static final int`

  `INDEFINITE_LIFETIME`

  A lifetime constant representing indefinite credential lifetime.

  `static final int`

  `INITIATE_AND_ACCEPT`

  Credential usage flag requesting that it be usable
  for both context initiation and acceptance.

  `static final int`

  `INITIATE_ONLY`

  Credential usage flag requesting that it be usable
  for context initiation only.
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `add(GSSName name,
  int initLifetime,
  int acceptLifetime,
  Oid mech,
  int usage)`

  Adds a mechanism specific credential-element to an existing
  credential.

  `void`

  `dispose()`

  Releases any sensitive information that the GSSCredential object may
  be containing.

  `boolean`

  `equals(Object another)`

  Tests if this GSSCredential asserts the same entity as the supplied
  object.

  `Oid[]`

  `getMechs()`

  Returns a list of mechanisms supported by this credential.

  `GSSName`

  `getName()`

  Retrieves the name of the entity that the credential asserts.

  `GSSName`

  `getName(Oid mech)`

  Retrieves a Mechanism Name of the entity that the credential
  asserts.

  `int`

  `getRemainingAcceptLifetime(Oid mech)`

  Returns the lifetime in seconds for the credential to remain capable
  of accepting security contexts using the specified mechanism.

  `int`

  `getRemainingInitLifetime(Oid mech)`

  Returns the lifetime in seconds for the credential to remain capable
  of initiating security contexts using the specified mechanism.

  `int`

  `getRemainingLifetime()`

  Returns the remaining lifetime in seconds for a credential.

  `int`

  `getUsage()`

  Returns the credential usage mode.

  `int`

  `getUsage(Oid mech)`

  Returns the credential usage mode for a specific mechanism.

  `int`

  `hashCode()`

  Returns a hashcode value for this GSSCredential.

* ## Field Details

  + ### INITIATE\_AND\_ACCEPT

    static final int INITIATE\_AND\_ACCEPT

    Credential usage flag requesting that it be usable
    for both context initiation and acceptance.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSCredential.INITIATE_AND_ACCEPT)
  + ### INITIATE\_ONLY

    static final int INITIATE\_ONLY

    Credential usage flag requesting that it be usable
    for context initiation only.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSCredential.INITIATE_ONLY)
  + ### ACCEPT\_ONLY

    static final int ACCEPT\_ONLY

    Credential usage flag requesting that it be usable
    for context acceptance only.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSCredential.ACCEPT_ONLY)
  + ### DEFAULT\_LIFETIME

    static final int DEFAULT\_LIFETIME

    A lifetime constant representing the default credential lifetime. This
    value it set to 0.

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSCredential.DEFAULT_LIFETIME)
  + ### INDEFINITE\_LIFETIME

    static final int INDEFINITE\_LIFETIME

    A lifetime constant representing indefinite credential lifetime.
    This value must is set to the maximum integer value in Java -
    [`Integer.MAX_VALUE`](../../../../java.base/java/lang/Integer.md#MAX_VALUE).

    See Also:
    :   - [Constant Field Values](../../../../constant-values.md#org.ietf.jgss.GSSCredential.INDEFINITE_LIFETIME)
* ## Method Details

  + ### dispose

    void dispose()
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Releases any sensitive information that the GSSCredential object may
    be containing. Applications should call this method as soon as the
    credential is no longer needed to minimize the time any sensitive
    information is maintained.

    Throws:
    :   `GSSException` - containing the following
        major error codes:
        [`GSSException.FAILURE`](GSSException.md#FAILURE)
  + ### getName

    [GSSName](GSSName.md "interface in org.ietf.jgss") getName()
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Retrieves the name of the entity that the credential asserts.

    Returns:
    :   a GSSName representing the entity

    Throws:
    :   `GSSException` - containing the following
        major error codes:
        [`GSSException.FAILURE`](GSSException.md#FAILURE)
  + ### getName

    [GSSName](GSSName.md "interface in org.ietf.jgss") getName([Oid](Oid.md "class in org.ietf.jgss") mech)
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Retrieves a Mechanism Name of the entity that the credential
    asserts. This is equivalent to calling [`canonicalize`](GSSName.md#canonicalize(org.ietf.jgss.Oid)) on the value returned by
    the other form of [`getName`](#getName()).

    Parameters:
    :   `mech` - the Oid of the mechanism for which the Mechanism Name
        should be returned.

    Returns:
    :   a GSSName representing the entity canonicalized for the
        desired mechanism

    Throws:
    :   `GSSException` - containing the following
        major error codes:
        [`GSSException.BAD_MECH`](GSSException.md#BAD_MECH),
        [`GSSException.FAILURE`](GSSException.md#FAILURE)
  + ### getRemainingLifetime

    int getRemainingLifetime()
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Returns the remaining lifetime in seconds for a credential. The
    remaining lifetime is the minimum lifetime amongst all the underlying
    mechanism specific credential elements.

    Returns:
    :   the minimum remaining lifetime in seconds for this
        credential. A return value of [`INDEFINITE_LIFETIME`](#INDEFINITE_LIFETIME) indicates that the credential does
        not expire. A return value of 0 indicates that the credential is
        already expired.

    Throws:
    :   `GSSException` - containing the following
        major error codes:
        [`GSSException.FAILURE`](GSSException.md#FAILURE)

    See Also:
    :   - [`getRemainingInitLifetime(Oid)`](#getRemainingInitLifetime(org.ietf.jgss.Oid))
        - [`getRemainingAcceptLifetime(Oid)`](#getRemainingAcceptLifetime(org.ietf.jgss.Oid))
  + ### getRemainingInitLifetime

    int getRemainingInitLifetime([Oid](Oid.md "class in org.ietf.jgss") mech)
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Returns the lifetime in seconds for the credential to remain capable
    of initiating security contexts using the specified mechanism. This
    method queries the initiator credential element that belongs to the
    specified mechanism.

    Parameters:
    :   `mech` - the Oid of the mechanism whose initiator credential element
        should be queried.

    Returns:
    :   the number of seconds remaining in the life of this credential
        element. A return value of [`INDEFINITE_LIFETIME`](#INDEFINITE_LIFETIME) indicates that the credential element does not
        expire. A return value of 0 indicates that the credential element is
        already expired.

    Throws:
    :   `GSSException` - containing the following
        major error codes:
        [`GSSException.BAD_MECH`](GSSException.md#BAD_MECH),
        [`GSSException.FAILURE`](GSSException.md#FAILURE)
  + ### getRemainingAcceptLifetime

    int getRemainingAcceptLifetime([Oid](Oid.md "class in org.ietf.jgss") mech)
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Returns the lifetime in seconds for the credential to remain capable
    of accepting security contexts using the specified mechanism. This
    method queries the acceptor credential element that belongs to the
    specified mechanism.

    Parameters:
    :   `mech` - the Oid of the mechanism whose acceptor credential element
        should be queried.

    Returns:
    :   the number of seconds remaining in the life of this credential
        element. A return value of [`INDEFINITE_LIFETIME`](#INDEFINITE_LIFETIME) indicates that the credential element does not
        expire. A return value of 0 indicates that the credential element is
        already expired.

    Throws:
    :   `GSSException` - containing the following
        major error codes:
        [`GSSException.BAD_MECH`](GSSException.md#BAD_MECH),
        [`GSSException.FAILURE`](GSSException.md#FAILURE)
  + ### getUsage

    int getUsage()
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Returns the credential usage mode. In other words, it
    tells us if this credential can be used for initiating or accepting
    security contexts. It does not tell us which mechanism(s) has to be
    used in order to do so. It is expected that an application will allow
    the GSS-API to pick a default mechanism after calling this method.

    Returns:
    :   The return value will be one of [`INITIATE_ONLY`](#INITIATE_ONLY), [`ACCEPT_ONLY`](#ACCEPT_ONLY), and [`INITIATE_AND_ACCEPT`](#INITIATE_AND_ACCEPT).

    Throws:
    :   `GSSException` - containing the following
        major error codes:
        [`GSSException.FAILURE`](GSSException.md#FAILURE)
  + ### getUsage

    int getUsage([Oid](Oid.md "class in org.ietf.jgss") mech)
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Returns the credential usage mode for a specific mechanism. In other
    words, it tells us if this credential can be used
    for initiating or accepting security contexts with a given underlying
    mechanism.

    Parameters:
    :   `mech` - the Oid of the mechanism whose credentials usage mode is
        to be determined.

    Returns:
    :   The return value will be one of [`INITIATE_ONLY`](#INITIATE_ONLY), [`ACCEPT_ONLY`](#ACCEPT_ONLY), and [`INITIATE_AND_ACCEPT`](#INITIATE_AND_ACCEPT).

    Throws:
    :   `GSSException` - containing the following
        major error codes:
        [`GSSException.BAD_MECH`](GSSException.md#BAD_MECH),
        [`GSSException.FAILURE`](GSSException.md#FAILURE)
  + ### getMechs

    [Oid](Oid.md "class in org.ietf.jgss")[] getMechs()
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Returns a list of mechanisms supported by this credential. It does
    not tell us which ones can be used to initiate
    contexts and which ones can be used to accept contexts. The
    application must call the [`getUsage`](#getUsage(org.ietf.jgss.Oid)) method with
    each of the returned Oid's to determine the possible modes of
    usage.

    Returns:
    :   an array of Oid's corresponding to the supported mechanisms.

    Throws:
    :   `GSSException` - containing the following
        major error codes:
        [`GSSException.FAILURE`](GSSException.md#FAILURE)
  + ### add

    void add([GSSName](GSSName.md "interface in org.ietf.jgss") name,
    int initLifetime,
    int acceptLifetime,
    [Oid](Oid.md "class in org.ietf.jgss") mech,
    int usage)
    throws [GSSException](GSSException.md "class in org.ietf.jgss")

    Adds a mechanism specific credential-element to an existing
    credential. This method allows the construction of credentials, one
    mechanism at a time.

    This routine is envisioned to be used mainly by context acceptors
    during the creation of acceptor credentials which are to be used
    with a variety of clients using different security mechanisms.

    This routine adds the new credential element "in-place". To add the
    element in a new credential, first call `clone` to obtain a
    copy of this credential, then call its `add` method.

    As always, GSS-API implementations must impose a local access-control
    policy on callers to prevent unauthorized callers from acquiring
    credentials to which they are not entitled.
    Non-default values for initLifetime and acceptLifetime cannot always
    be honored by the underlying mechanisms, thus callers should be
    prepared to call [`getRemainingInitLifetime`](#getRemainingInitLifetime(org.ietf.jgss.Oid)) and [`getRemainingAcceptLifetime`](#getRemainingAcceptLifetime(org.ietf.jgss.Oid)) on the credential.

    Parameters:
    :   `name` - the name of the principal for whom this credential is to
        be acquired. Use `null` to specify the default
        principal.
    :   `initLifetime` - the number of seconds that the credential element
        should remain valid for initiating of security contexts. Use [`GSSCredential.INDEFINITE_LIFETIME`](#INDEFINITE_LIFETIME)
        to request that the credentials have the maximum permitted lifetime
        for this. Use [`GSSCredential.DEFAULT_LIFETIME`](#DEFAULT_LIFETIME) to request default credential lifetime
        for this.
    :   `acceptLifetime` - the number of seconds that the credential
        element should remain valid for accepting security contexts. Use [`GSSCredential.INDEFINITE_LIFETIME`](#INDEFINITE_LIFETIME)
        to request that the credentials have the maximum permitted lifetime
        for this. Use [`GSSCredential.DEFAULT_LIFETIME`](#DEFAULT_LIFETIME) to request default credential lifetime
        for this.
    :   `mech` - the mechanism over which the credential is to be acquired.
    :   `usage` - the usage mode that this credential
        element should add to the credential. The value
        of this parameter must be one of:
        [`INITIATE_AND_ACCEPT`](#INITIATE_AND_ACCEPT),
        [`ACCEPT_ONLY`](#ACCEPT_ONLY), and
        [`INITIATE_ONLY`](#INITIATE_ONLY).

    Throws:
    :   `GSSException` - containing the following
        major error codes:
        [`GSSException.DUPLICATE_ELEMENT`](GSSException.md#DUPLICATE_ELEMENT),
        [`GSSException.BAD_MECH`](GSSException.md#BAD_MECH),
        [`GSSException.BAD_NAMETYPE`](GSSException.md#BAD_NAMETYPE),
        [`GSSException.NO_CRED`](GSSException.md#NO_CRED),
        [`GSSException.CREDENTIALS_EXPIRED`](GSSException.md#CREDENTIALS_EXPIRED),
        [`GSSException.FAILURE`](GSSException.md#FAILURE)
  + ### equals

    boolean equals([Object](../../../../java.base/java/lang/Object.md "class in java.lang") another)

    Tests if this GSSCredential asserts the same entity as the supplied
    object. The two credentials must be acquired over the same
    mechanisms and must refer to the same principal.

    Overrides:
    :   `equals` in class `Object`

    Parameters:
    :   `another` - another GSSCredential for comparison to this one

    Returns:
    :   `true` if the two GSSCredentials assert the same
        entity; `false` otherwise.

    See Also:
    :   - [`Object.hashCode()`](../../../../java.base/java/lang/Object.md#hashCode())
        - [`HashMap`](../../../../java.base/java/util/HashMap.md "class in java.util")
  + ### hashCode

    int hashCode()

    Returns a hashcode value for this GSSCredential.

    Overrides:
    :   `hashCode` in class `Object`

    Returns:
    :   a hashCode value

    See Also:
    :   - [`Object.equals(java.lang.Object)`](../../../../java.base/java/lang/Object.md#equals(java.lang.Object))
        - [`System.identityHashCode(java.lang.Object)`](../../../../java.base/java/lang/System.md#identityHashCode(java.lang.Object))