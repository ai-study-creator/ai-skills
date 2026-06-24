Module [java.naming](../../../module-summary.md)

Package [javax.naming.ldap](package-summary.md)

# Class InitialLdapContext

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.InitialContext](../InitialContext.md "class in javax.naming")

[javax.naming.directory.InitialDirContext](../directory/InitialDirContext.md "class in javax.naming.directory")

javax.naming.ldap.InitialLdapContext

All Implemented Interfaces:
:   `Context`, `DirContext`, `LdapContext`

---

public class InitialLdapContext
extends [InitialDirContext](../directory/InitialDirContext.md "class in javax.naming.directory")
implements [LdapContext](LdapContext.md "interface in javax.naming.ldap")

This class is the starting context for performing
LDAPv3-style extended operations and controls.

See `javax.naming.InitialContext` and
`javax.naming.InitialDirContext` for details on synchronization,
and the policy for how an initial context is created.

## Request Controls

When you create an initial context (`InitialLdapContext`),
you can specify a list of request controls.
These controls will be used as the request controls for any
implicit LDAP "bind" operation performed by the context or contexts
derived from the context. These are called *connection request controls*.
Use `getConnectControls()` to get a context's connection request
controls.

The request controls supplied to the initial context constructor
are *not* used as the context request controls
for subsequent context operations such as searches and lookups.
Context request controls are set and updated by using
`setRequestControls()`.

As shown, there can be two different sets of request controls
associated with a context: connection request controls and context
request controls.
This is required for those applications needing to send critical
controls that might not be applicable to both the context operation and
any implicit LDAP "bind" operation.
A typical user program would do the following:
> ```
>  InitialLdapContext lctx = new InitialLdapContext(env, critConnCtls);
>  lctx.setRequestControls(critModCtls);
>  lctx.modifyAttributes(name, mods);
>  Controls[] respCtls =  lctx.getResponseControls();
> ```

It specifies first the critical controls for creating the initial context
(`critConnCtls`), and then sets the context's request controls
(`critModCtls`) for the context operation. If for some reason
`lctx` needs to reconnect to the server, it will use
`critConnCtls`. See the `LdapContext` interface for
more discussion about request controls.

Service provider implementors should read the "Service Provider" section
in the `LdapContext` class description for implementation details.

Since:
:   1.3

See Also:
:   * [`LdapContext`](LdapContext.md "interface in javax.naming.ldap")
    * [`InitialContext`](../InitialContext.md "class in javax.naming")
    * [`InitialDirContext`](../directory/InitialDirContext.md "class in javax.naming.directory")
    * [`NamingManager.setInitialContextFactoryBuilder(javax.naming.spi.InitialContextFactoryBuilder)`](../spi/NamingManager.md#setInitialContextFactoryBuilder(javax.naming.spi.InitialContextFactoryBuilder))

* ## Field Summary

  ### Fields inherited from class javax.naming.[InitialContext](../InitialContext.md "class in javax.naming")

  `defaultInitCtx, gotDefault, myProps`

  ### Fields inherited from interface javax.naming.[Context](../Context.md "interface in javax.naming")

  `APPLET, AUTHORITATIVE, BATCHSIZE, DNS_URL, INITIAL_CONTEXT_FACTORY, LANGUAGE, OBJECT_FACTORIES, PROVIDER_URL, REFERRAL, SECURITY_AUTHENTICATION, SECURITY_CREDENTIALS, SECURITY_PRINCIPAL, SECURITY_PROTOCOL, STATE_FACTORIES, URL_PKG_PREFIXES`

  ### Fields inherited from interface javax.naming.directory.[DirContext](../directory/DirContext.md "interface in javax.naming.directory")

  `ADD_ATTRIBUTE, REMOVE_ATTRIBUTE, REPLACE_ATTRIBUTE`

  ### Fields inherited from interface javax.naming.ldap.[LdapContext](LdapContext.md "interface in javax.naming.ldap")

  `CONTROL_FACTORIES`
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `InitialLdapContext()`

  Constructs an initial context using no environment properties or
  connection request controls.

  `InitialLdapContext(Hashtable<?,?> environment,
  Control[] connCtls)`

  Constructs an initial context
  using environment properties and connection request controls.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `ExtendedResponse`

  `extendedOperation(ExtendedRequest request)`

  Performs an extended operation.

  `Control[]`

  `getConnectControls()`

  Retrieves the connection request controls in effect for this context.

  `Control[]`

  `getRequestControls()`

  Retrieves the request controls in effect for this context.

  `Control[]`

  `getResponseControls()`

  Retrieves the response controls produced as a result of the last
  method invoked on this context.

  `LdapContext`

  `newInstance(Control[] reqCtls)`

  Creates a new instance of this context initialized using request controls.

  `void`

  `reconnect(Control[] connCtls)`

  Reconnects to the LDAP server using the supplied controls and
  this context's environment.

  `void`

  `setRequestControls(Control[] requestControls)`

  Sets the request controls for methods subsequently
  invoked on this context.

  ### Methods inherited from class javax.naming.directory.[InitialDirContext](../directory/InitialDirContext.md "class in javax.naming.directory")

  `bind, bind, createSubcontext, createSubcontext, getAttributes, getAttributes, getAttributes, getAttributes, getSchema, getSchema, getSchemaClassDefinition, getSchemaClassDefinition, modifyAttributes, modifyAttributes, modifyAttributes, modifyAttributes, rebind, rebind, search, search, search, search, search, search, search, search`

  ### Methods inherited from class javax.naming.[InitialContext](../InitialContext.md "class in javax.naming")

  `addToEnvironment, bind, bind, close, composeName, composeName, createSubcontext, createSubcontext, destroySubcontext, destroySubcontext, doLookup, doLookup, getDefaultInitCtx, getEnvironment, getNameInNamespace, getNameParser, getNameParser, getURLOrDefaultInitCtx, getURLOrDefaultInitCtx, init, list, list, listBindings, listBindings, lookup, lookup, lookupLink, lookupLink, rebind, rebind, removeFromEnvironment, rename, rename, unbind, unbind`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.naming.[Context](../Context.md "interface in javax.naming")

  `addToEnvironment, bind, bind, close, composeName, composeName, createSubcontext, createSubcontext, destroySubcontext, destroySubcontext, getEnvironment, getNameInNamespace, getNameParser, getNameParser, list, list, listBindings, listBindings, lookup, lookup, lookupLink, lookupLink, rebind, rebind, removeFromEnvironment, rename, rename, unbind, unbind`

  ### Methods inherited from interface javax.naming.directory.[DirContext](../directory/DirContext.md "interface in javax.naming.directory")

  `bind, bind, createSubcontext, createSubcontext, getAttributes, getAttributes, getAttributes, getAttributes, getSchema, getSchema, getSchemaClassDefinition, getSchemaClassDefinition, modifyAttributes, modifyAttributes, modifyAttributes, modifyAttributes, rebind, rebind, search, search, search, search, search, search, search, search`

* ## Constructor Details

  + ### InitialLdapContext

    public InitialLdapContext()
    throws [NamingException](../NamingException.md "class in javax.naming")

    Constructs an initial context using no environment properties or
    connection request controls.
    Equivalent to `new InitialLdapContext(null, null)`.

    Throws:
    :   `NamingException` - if a naming exception is encountered
  + ### InitialLdapContext

    public InitialLdapContext([Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> environment,
    [Control](Control.md "interface in javax.naming.ldap")[] connCtls)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Constructs an initial context
    using environment properties and connection request controls.
    See `javax.naming.InitialContext` for a discussion of
    environment properties.

    This constructor will not modify its parameters or
    save references to them, but may save a clone or copy.
    Caller should not modify mutable keys and values in
    `environment` after it has been passed to the constructor.

    `connCtls` is used as the underlying context instance's
    connection request controls. See the class description
    for details.

    Parameters:
    :   `environment` - environment used to create the initial DirContext.
        Null indicates an empty environment.
    :   `connCtls` - connection request controls for the initial context.
        If null, no connection request controls are used.

    Throws:
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`reconnect(javax.naming.ldap.Control[])`](#reconnect(javax.naming.ldap.Control%5B%5D))
        - [`LdapContext.reconnect(javax.naming.ldap.Control[])`](LdapContext.md#reconnect(javax.naming.ldap.Control%5B%5D))
* ## Method Details

  + ### extendedOperation

    public [ExtendedResponse](ExtendedResponse.md "interface in javax.naming.ldap") extendedOperation([ExtendedRequest](ExtendedRequest.md "interface in javax.naming.ldap") request)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `LdapContext`

    Performs an extended operation.
    This method is used to support LDAPv3 extended operations.

    Specified by:
    :   `extendedOperation` in interface `LdapContext`

    Parameters:
    :   `request` - The non-null request to be performed.

    Returns:
    :   The possibly null response of the operation. null means
        the operation did not generate any response.

    Throws:
    :   `NamingException` - If an error occurred while performing the
        extended operation.
  + ### newInstance

    public [LdapContext](LdapContext.md "interface in javax.naming.ldap") newInstance([Control](Control.md "interface in javax.naming.ldap")[] reqCtls)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `LdapContext`

    Creates a new instance of this context initialized using request controls.
    This method is a convenience method for creating a new instance
    of this context for the purposes of multithreaded access.
    For example, if multiple threads want to use different context
    request controls,
    each thread may use this method to get its own copy of this context
    and set/get context request controls without having to synchronize with other
    threads.

    The new context has the same environment properties and connection
    request controls as this context. See the class description for details.
    Implementations might also allow this context and the new context
    to share the same network connection or other resources if doing
    so does not impede the independence of either context.

    Specified by:
    :   `newInstance` in interface `LdapContext`

    Parameters:
    :   `reqCtls` - The possibly null request controls
        to use for the new context.
        If null, the context is initialized with no request controls.

    Returns:
    :   A non-null `LdapContext` instance.

    Throws:
    :   `NamingException` - If an error occurred while creating
        the new instance.

    See Also:
    :   - [`InitialLdapContext`](InitialLdapContext.md "class in javax.naming.ldap")
  + ### reconnect

    public void reconnect([Control](Control.md "interface in javax.naming.ldap")[] connCtls)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `LdapContext`

    Reconnects to the LDAP server using the supplied controls and
    this context's environment.

    This method is a way to explicitly initiate an LDAP "bind" operation.
    For example, you can use this method to set request controls for
    the LDAP "bind" operation, or to explicitly connect to the server
    to get response controls returned by the LDAP "bind" operation.

    This method sets this context's `connCtls`
    to be its new connection request controls. This context's
    context request controls are not affected.
    After this method has been invoked, any subsequent
    implicit reconnections will be done using `connCtls`.
    `connCtls` are also used as
    connection request controls for new context instances derived from this
    context.
    These connection request controls are not
    affected by `setRequestControls()`.

    Service provider implementors should read the "Service Provider" section
    in the class description for implementation details.

    Specified by:
    :   `reconnect` in interface `LdapContext`

    Parameters:
    :   `connCtls` - The possibly null controls to use. If null, no
        controls are used.

    Throws:
    :   `NamingException` - If an error occurred while reconnecting.

    See Also:
    :   - [`LdapContext.getConnectControls()`](LdapContext.md#getConnectControls())
        - [`LdapContext.newInstance(javax.naming.ldap.Control[])`](LdapContext.md#newInstance(javax.naming.ldap.Control%5B%5D))
  + ### getConnectControls

    public [Control](Control.md "interface in javax.naming.ldap")[] getConnectControls()
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `LdapContext`

    Retrieves the connection request controls in effect for this context.
    The controls are owned by the JNDI implementation and are
    immutable. Neither the array nor the controls may be modified by the
    caller.

    Specified by:
    :   `getConnectControls` in interface `LdapContext`

    Returns:
    :   A possibly-null array of controls. null means no connect controls
        have been set for this context.

    Throws:
    :   `NamingException` - If an error occurred while getting the request
        controls.
  + ### setRequestControls

    public void setRequestControls([Control](Control.md "interface in javax.naming.ldap")[] requestControls)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `LdapContext`

    Sets the request controls for methods subsequently
    invoked on this context.
    The request controls are owned by the JNDI implementation and are
    immutable. Neither the array nor the controls may be modified by the
    caller.

    This removes any previous request controls and adds
    `requestControls`
    for use by subsequent methods invoked on this context.
    This method does not affect this context's connection request controls.

    Note that `requestControls` will be in effect until the next
    invocation of `setRequestControls()`. You need to explicitly
    invoke `setRequestControls()` with `null` or an empty
    array to clear the controls if you don't want them to affect the
    context methods any more.
    To check what request controls are in effect for this context, use
    `getRequestControls()`.

    Specified by:
    :   `setRequestControls` in interface `LdapContext`

    Parameters:
    :   `requestControls` - The possibly null controls to use. If null, no
        controls are used.

    Throws:
    :   `NamingException` - If an error occurred while setting the
        request controls.

    See Also:
    :   - [`LdapContext.getRequestControls()`](LdapContext.md#getRequestControls())
  + ### getRequestControls

    public [Control](Control.md "interface in javax.naming.ldap")[] getRequestControls()
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `LdapContext`

    Retrieves the request controls in effect for this context.
    The request controls are owned by the JNDI implementation and are
    immutable. Neither the array nor the controls may be modified by the
    caller.

    Specified by:
    :   `getRequestControls` in interface `LdapContext`

    Returns:
    :   A possibly-null array of controls. null means no request controls
        have been set for this context.

    Throws:
    :   `NamingException` - If an error occurred while getting the request
        controls.

    See Also:
    :   - [`LdapContext.setRequestControls(javax.naming.ldap.Control[])`](LdapContext.md#setRequestControls(javax.naming.ldap.Control%5B%5D))
  + ### getResponseControls

    public [Control](Control.md "interface in javax.naming.ldap")[] getResponseControls()
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `LdapContext`

    Retrieves the response controls produced as a result of the last
    method invoked on this context.
    The response controls are owned by the JNDI implementation and are
    immutable. Neither the array nor the controls may be modified by the
    caller.

    These response controls might have been generated by a successful or
    failed operation.

    When a context method that may return response controls is invoked,
    response controls from the previous method invocation are cleared.
    `getResponseControls()` returns all of the response controls
    generated by LDAP operations used by the context method in the order
    received from the LDAP server.
    Invoking `getResponseControls()` does not
    clear the response controls. You can call it many times (and get
    back the same controls) until the next context method that may return
    controls is invoked.

    Specified by:
    :   `getResponseControls` in interface `LdapContext`

    Returns:
    :   A possibly null array of controls. If null, the previous
        method invoked on this context did not produce any controls.

    Throws:
    :   `NamingException` - If an error occurred while getting the response
        controls.