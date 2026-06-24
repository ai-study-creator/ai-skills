Module [java.naming](../../../module-summary.md)

Package [javax.naming.event](package-summary.md)

# Interface EventDirContext

All Superinterfaces:
:   `Context`, `DirContext`, `EventContext`

---

public interface EventDirContext
extends [EventContext](EventContext.md "interface in javax.naming.event"), [DirContext](../directory/DirContext.md "interface in javax.naming.directory")

Contains methods for registering listeners to be notified
of events fired when objects named in a directory context changes.

The methods in this interface support identification of objects by
[RFC 2254](http://www.ietf.org/rfc/rfc2254.txt)
search filters.

Using the search filter, it is possible to register interest in objects
that do not exist at the time of registration but later come into existence and
satisfy the filter. However, there might be limitations in the extent
to which this can be supported by the service provider and underlying
protocol/service. If the caller submits a filter that cannot be
supported in this way, `addNamingListener()` throws an
`InvalidSearchFilterException`.

See `EventContext` for a description of event source
and target, and information about listener registration/deregistration
that are also applicable to methods in this interface.
See the
[package description](package-summary.md#THREADING)
for information on threading issues.

A `SearchControls` or array object
passed as a parameter to any method is owned by the caller.
The service provider will not modify the object or keep a reference to it.

Since:
:   1.3

* ## Field Summary

  ### Fields inherited from interface javax.naming.[Context](../Context.md "interface in javax.naming")

  `APPLET, AUTHORITATIVE, BATCHSIZE, DNS_URL, INITIAL_CONTEXT_FACTORY, LANGUAGE, OBJECT_FACTORIES, PROVIDER_URL, REFERRAL, SECURITY_AUTHENTICATION, SECURITY_CREDENTIALS, SECURITY_PRINCIPAL, SECURITY_PROTOCOL, STATE_FACTORIES, URL_PKG_PREFIXES`

  ### Fields inherited from interface javax.naming.directory.[DirContext](../directory/DirContext.md "interface in javax.naming.directory")

  `ADD_ATTRIBUTE, REMOVE_ATTRIBUTE, REPLACE_ATTRIBUTE`

  ### Fields inherited from interface javax.naming.event.[EventContext](EventContext.md "interface in javax.naming.event")

  `OBJECT_SCOPE, ONELEVEL_SCOPE, SUBTREE_SCOPE`
* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `void`

  `addNamingListener(String target,
  String filter,
  Object[] filterArgs,
  SearchControls ctls,
  NamingListener l)`

  Adds a listener for receiving naming events fired when
  objects identified by the search filter `filter`
  and filter arguments at the
  object named by the string target name are modified.

  `void`

  `addNamingListener(String target,
  String filter,
  SearchControls ctls,
  NamingListener l)`

  Adds a listener for receiving naming events fired when
  objects identified by the search filter `filter` at the
  object named by the string target name are modified.

  `void`

  `addNamingListener(Name target,
  String filter,
  Object[] filterArgs,
  SearchControls ctls,
  NamingListener l)`

  Adds a listener for receiving naming events fired
  when objects identified by the search filter `filter` and
  filter arguments at the object named by the target are modified.

  `void`

  `addNamingListener(Name target,
  String filter,
  SearchControls ctls,
  NamingListener l)`

  Adds a listener for receiving naming events fired
  when objects identified by the search filter `filter` at
  the object named by target are modified.

  ### Methods inherited from interface javax.naming.[Context](../Context.md "interface in javax.naming")

  `addToEnvironment, bind, bind, close, composeName, composeName, createSubcontext, createSubcontext, destroySubcontext, destroySubcontext, getEnvironment, getNameInNamespace, getNameParser, getNameParser, list, list, listBindings, listBindings, lookup, lookup, lookupLink, lookupLink, rebind, rebind, removeFromEnvironment, rename, rename, unbind, unbind`

  ### Methods inherited from interface javax.naming.directory.[DirContext](../directory/DirContext.md "interface in javax.naming.directory")

  `bind, bind, createSubcontext, createSubcontext, getAttributes, getAttributes, getAttributes, getAttributes, getSchema, getSchema, getSchemaClassDefinition, getSchemaClassDefinition, modifyAttributes, modifyAttributes, modifyAttributes, modifyAttributes, rebind, rebind, search, search, search, search, search, search, search, search`

  ### Methods inherited from interface javax.naming.event.[EventContext](EventContext.md "interface in javax.naming.event")

  `addNamingListener, addNamingListener, removeNamingListener, targetMustExist`

* ## Method Details

  + ### addNamingListener

    void addNamingListener([Name](../Name.md "interface in javax.naming") target,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") filter,
    [SearchControls](../directory/SearchControls.md "class in javax.naming.directory") ctls,
    [NamingListener](NamingListener.md "interface in javax.naming.event") l)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Adds a listener for receiving naming events fired
    when objects identified by the search filter `filter` at
    the object named by target are modified.

    The scope, returningObj flag, and returningAttributes flag from
    the search controls `ctls` are used to control the selection
    of objects that the listener is interested in,
    and determines what information is returned in the eventual
    `NamingEvent` object. Note that the requested
    information to be returned might not be present in the `NamingEvent`
    object if they are unavailable or could not be obtained by the
    service provider or service.

    Parameters:
    :   `target` - The nonnull name of the object resolved relative to this context.
    :   `filter` - The nonnull string filter (see RFC2254).
    :   `ctls` - The possibly null search controls. If null, the default
        search controls are used.
    :   `l` - The nonnull listener.

    Throws:
    :   `NamingException` - If a problem was encountered while
        adding the listener.

    See Also:
    :   - [`EventContext.removeNamingListener(javax.naming.event.NamingListener)`](EventContext.md#removeNamingListener(javax.naming.event.NamingListener))
        - [`DirContext.search(javax.naming.Name, java.lang.String, javax.naming.directory.SearchControls)`](../directory/DirContext.md#search(javax.naming.Name,java.lang.String,javax.naming.directory.SearchControls))
  + ### addNamingListener

    void addNamingListener([String](../../../../java.base/java/lang/String.md "class in java.lang") target,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") filter,
    [SearchControls](../directory/SearchControls.md "class in javax.naming.directory") ctls,
    [NamingListener](NamingListener.md "interface in javax.naming.event") l)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Adds a listener for receiving naming events fired when
    objects identified by the search filter `filter` at the
    object named by the string target name are modified.
    See the overload that accepts a `Name` for details of
    how this method behaves.

    Parameters:
    :   `target` - The nonnull string name of the object resolved relative to this context.
    :   `filter` - The nonnull string filter (see RFC2254).
    :   `ctls` - The possibly null search controls. If null, the default
        search controls is used.
    :   `l` - The nonnull listener.

    Throws:
    :   `NamingException` - If a problem was encountered while
        adding the listener.

    See Also:
    :   - [`EventContext.removeNamingListener(javax.naming.event.NamingListener)`](EventContext.md#removeNamingListener(javax.naming.event.NamingListener))
        - [`DirContext.search(java.lang.String, java.lang.String, javax.naming.directory.SearchControls)`](../directory/DirContext.md#search(java.lang.String,java.lang.String,javax.naming.directory.SearchControls))
  + ### addNamingListener

    void addNamingListener([Name](../Name.md "interface in javax.naming") target,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") filter,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] filterArgs,
    [SearchControls](../directory/SearchControls.md "class in javax.naming.directory") ctls,
    [NamingListener](NamingListener.md "interface in javax.naming.event") l)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Adds a listener for receiving naming events fired
    when objects identified by the search filter `filter` and
    filter arguments at the object named by the target are modified.
    The scope, returningObj flag, and returningAttributes flag from
    the search controls `ctls` are used to control the selection
    of objects that the listener is interested in,
    and determines what information is returned in the eventual
    `NamingEvent` object. Note that the requested
    information to be returned might not be present in the `NamingEvent`
    object if they are unavailable or could not be obtained by the
    service provider or service.

    Parameters:
    :   `target` - The nonnull name of the object resolved relative to this context.
    :   `filter` - The nonnull string filter (see RFC2254).
    :   `filterArgs` - The possibly null array of arguments for the filter.
    :   `ctls` - The possibly null search controls. If null, the default
        search controls are used.
    :   `l` - The nonnull listener.

    Throws:
    :   `NamingException` - If a problem was encountered while
        adding the listener.

    See Also:
    :   - [`EventContext.removeNamingListener(javax.naming.event.NamingListener)`](EventContext.md#removeNamingListener(javax.naming.event.NamingListener))
        - [`DirContext.search(javax.naming.Name, java.lang.String, java.lang.Object[], javax.naming.directory.SearchControls)`](../directory/DirContext.md#search(javax.naming.Name,java.lang.String,java.lang.Object%5B%5D,javax.naming.directory.SearchControls))
  + ### addNamingListener

    void addNamingListener([String](../../../../java.base/java/lang/String.md "class in java.lang") target,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") filter,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] filterArgs,
    [SearchControls](../directory/SearchControls.md "class in javax.naming.directory") ctls,
    [NamingListener](NamingListener.md "interface in javax.naming.event") l)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Adds a listener for receiving naming events fired when
    objects identified by the search filter `filter`
    and filter arguments at the
    object named by the string target name are modified.
    See the overload that accepts a `Name` for details of
    how this method behaves.

    Parameters:
    :   `target` - The nonnull string name of the object resolved relative to this context.
    :   `filter` - The nonnull string filter (see RFC2254).
    :   `filterArgs` - The possibly null array of arguments for the filter.
    :   `ctls` - The possibly null search controls. If null, the default
        search controls is used.
    :   `l` - The nonnull listener.

    Throws:
    :   `NamingException` - If a problem was encountered while
        adding the listener.

    See Also:
    :   - [`EventContext.removeNamingListener(javax.naming.event.NamingListener)`](EventContext.md#removeNamingListener(javax.naming.event.NamingListener))
        - [`DirContext.search(java.lang.String, java.lang.String, java.lang.Object[], javax.naming.directory.SearchControls)`](../directory/DirContext.md#search(java.lang.String,java.lang.String,java.lang.Object%5B%5D,javax.naming.directory.SearchControls))