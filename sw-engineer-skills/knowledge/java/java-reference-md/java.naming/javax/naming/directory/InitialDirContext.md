Module [java.naming](../../../module-summary.md)

Package [javax.naming.directory](package-summary.md)

# Class InitialDirContext

[java.lang.Object](../../../../java.base/java/lang/Object.md "class in java.lang")

[javax.naming.InitialContext](../InitialContext.md "class in javax.naming")

javax.naming.directory.InitialDirContext

All Implemented Interfaces:
:   `Context`, `DirContext`

Direct Known Subclasses:
:   `InitialLdapContext`

---

public class InitialDirContext
extends [InitialContext](../InitialContext.md "class in javax.naming")
implements [DirContext](DirContext.md "interface in javax.naming.directory")

This class is the starting context for performing
directory operations. The documentation in the class description
of InitialContext (including those for synchronization) apply here.

Since:
:   1.3

See Also:
:   * [`InitialContext`](../InitialContext.md "class in javax.naming")

* ## Field Summary

  ### Fields inherited from class javax.naming.[InitialContext](../InitialContext.md "class in javax.naming")

  `defaultInitCtx, gotDefault, myProps`

  ### Fields inherited from interface javax.naming.[Context](../Context.md "interface in javax.naming")

  `APPLET, AUTHORITATIVE, BATCHSIZE, DNS_URL, INITIAL_CONTEXT_FACTORY, LANGUAGE, OBJECT_FACTORIES, PROVIDER_URL, REFERRAL, SECURITY_AUTHENTICATION, SECURITY_CREDENTIALS, SECURITY_PRINCIPAL, SECURITY_PROTOCOL, STATE_FACTORIES, URL_PKG_PREFIXES`

  ### Fields inherited from interface javax.naming.directory.[DirContext](DirContext.md "interface in javax.naming.directory")

  `ADD_ATTRIBUTE, REMOVE_ATTRIBUTE, REPLACE_ATTRIBUTE`
* ## Constructor Summary

  Constructors

  Modifier

  Constructor

  Description

  `InitialDirContext()`

  Constructs an initial DirContext.

  `protected`

  `InitialDirContext(boolean lazy)`

  Constructs an initial DirContext with the option of not
  initializing it.

  `InitialDirContext(Hashtable<?,?> environment)`

  Constructs an initial DirContext using the supplied environment.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `bind(String name,
  Object obj,
  Attributes attrs)`

  Binds a name to an object, along with associated attributes.

  `void`

  `bind(Name name,
  Object obj,
  Attributes attrs)`

  Binds a name to an object, along with associated attributes.

  `DirContext`

  `createSubcontext(String name,
  Attributes attrs)`

  Creates and binds a new context, along with associated attributes.

  `DirContext`

  `createSubcontext(Name name,
  Attributes attrs)`

  Creates and binds a new context, along with associated attributes.

  `Attributes`

  `getAttributes(String name)`

  Retrieves all of the attributes associated with a named object.

  `Attributes`

  `getAttributes(String name,
  String[] attrIds)`

  Retrieves selected attributes associated with a named object.

  `Attributes`

  `getAttributes(Name name)`

  Retrieves all of the attributes associated with a named object.

  `Attributes`

  `getAttributes(Name name,
  String[] attrIds)`

  Retrieves selected attributes associated with a named object.

  `DirContext`

  `getSchema(String name)`

  Retrieves the schema associated with the named object.

  `DirContext`

  `getSchema(Name name)`

  Retrieves the schema associated with the named object.

  `DirContext`

  `getSchemaClassDefinition(String name)`

  Retrieves a context containing the schema objects of the
  named object's class definitions.

  `DirContext`

  `getSchemaClassDefinition(Name name)`

  Retrieves a context containing the schema objects of the
  named object's class definitions.

  `void`

  `modifyAttributes(String name,
  int mod_op,
  Attributes attrs)`

  Modifies the attributes associated with a named object.

  `void`

  `modifyAttributes(String name,
  ModificationItem[] mods)`

  Modifies the attributes associated with a named object using
  an ordered list of modifications.

  `void`

  `modifyAttributes(Name name,
  int mod_op,
  Attributes attrs)`

  Modifies the attributes associated with a named object.

  `void`

  `modifyAttributes(Name name,
  ModificationItem[] mods)`

  Modifies the attributes associated with a named object using
  an ordered list of modifications.

  `void`

  `rebind(String name,
  Object obj,
  Attributes attrs)`

  Binds a name to an object, along with associated attributes,
  overwriting any existing binding.

  `void`

  `rebind(Name name,
  Object obj,
  Attributes attrs)`

  Binds a name to an object, along with associated attributes,
  overwriting any existing binding.

  `NamingEnumeration<SearchResult>`

  `search(String name,
  String filterExpr,
  Object[] filterArgs,
  SearchControls cons)`

  Searches in the named context or object for entries that satisfy the
  given search filter.

  `NamingEnumeration<SearchResult>`

  `search(String name,
  String filter,
  SearchControls cons)`

  Searches in the named context or object for entries that satisfy the
  given search filter.

  `NamingEnumeration<SearchResult>`

  `search(String name,
  Attributes matchingAttributes)`

  Searches in a single context for objects that contain a
  specified set of attributes.

  `NamingEnumeration<SearchResult>`

  `search(String name,
  Attributes matchingAttributes,
  String[] attributesToReturn)`

  Searches in a single context for objects that contain a
  specified set of attributes, and retrieves selected attributes.

  `NamingEnumeration<SearchResult>`

  `search(Name name,
  String filterExpr,
  Object[] filterArgs,
  SearchControls cons)`

  Searches in the named context or object for entries that satisfy the
  given search filter.

  `NamingEnumeration<SearchResult>`

  `search(Name name,
  String filter,
  SearchControls cons)`

  Searches in the named context or object for entries that satisfy the
  given search filter.

  `NamingEnumeration<SearchResult>`

  `search(Name name,
  Attributes matchingAttributes)`

  Searches in a single context for objects that contain a
  specified set of attributes.

  `NamingEnumeration<SearchResult>`

  `search(Name name,
  Attributes matchingAttributes,
  String[] attributesToReturn)`

  Searches in a single context for objects that contain a
  specified set of attributes, and retrieves selected attributes.

  ### Methods inherited from class javax.naming.[InitialContext](../InitialContext.md "class in javax.naming")

  `addToEnvironment, bind, bind, close, composeName, composeName, createSubcontext, createSubcontext, destroySubcontext, destroySubcontext, doLookup, doLookup, getDefaultInitCtx, getEnvironment, getNameInNamespace, getNameParser, getNameParser, getURLOrDefaultInitCtx, getURLOrDefaultInitCtx, init, list, list, listBindings, listBindings, lookup, lookup, lookupLink, lookupLink, rebind, rebind, removeFromEnvironment, rename, rename, unbind, unbind`

  ### Methods inherited from class java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, toString, wait, wait, wait`

  ### Methods inherited from interface javax.naming.[Context](../Context.md "interface in javax.naming")

  `addToEnvironment, bind, bind, close, composeName, composeName, createSubcontext, createSubcontext, destroySubcontext, destroySubcontext, getEnvironment, getNameInNamespace, getNameParser, getNameParser, list, list, listBindings, listBindings, lookup, lookup, lookupLink, lookupLink, rebind, rebind, removeFromEnvironment, rename, rename, unbind, unbind`

* ## Constructor Details

  + ### InitialDirContext

    protected InitialDirContext(boolean lazy)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Constructs an initial DirContext with the option of not
    initializing it. This may be used by a constructor in
    a subclass when the value of the environment parameter
    is not yet known at the time the `InitialDirContext`
    constructor is called. The subclass's constructor will
    call this constructor, compute the value of the environment,
    and then call `init()` before returning.

    Parameters:
    :   `lazy` - true means do not initialize the initial DirContext; false
        is equivalent to calling `new InitialDirContext()`

    Throws:
    :   `NamingException` - if a naming exception is encountered

    Since:
    :   1.3

    See Also:
    :   - [`InitialContext.init(Hashtable)`](../InitialContext.md#init(java.util.Hashtable))
  + ### InitialDirContext

    public InitialDirContext()
    throws [NamingException](../NamingException.md "class in javax.naming")

    Constructs an initial DirContext.
    No environment properties are supplied.
    Equivalent to `new InitialDirContext(null)`.

    Throws:
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`InitialDirContext(Hashtable)`](#%3Cinit%3E(java.util.Hashtable))
  + ### InitialDirContext

    public InitialDirContext([Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> environment)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Constructs an initial DirContext using the supplied environment.
    Environment properties are discussed in the
    `javax.naming.InitialContext` class description.

    If the `java.naming.provider.url` property of the supplied
    environment consists of a URL (or a list of URLs) using the ldap
    protocol the resulting [`LdapContext`](../ldap/LdapContext.md "interface in javax.naming.ldap") will use
    an LDAP server resolved by the configured [`LdapDnsProviders`](../ldap/spi/LdapDnsProvider.md "class in javax.naming.ldap.spi"):
    1. If this is the first `InitialDirContext` created with a
       `java.naming.provider.url` using the ldap protocol then the
       [ServiceLoader](../../../../java.base/java/util/ServiceLoader.md "class in java.util") mechanism is
       used to locate [LdapDnsProvider](../ldap/spi/LdapDnsProvider.md "class in javax.naming.ldap.spi") implementations using the system class loader.
       The order that providers are located is implementation specific
       and an implementation is free to cache the located providers.+ The `lookupEndpoints` method of each provider, if instantiated,
         is invoked once with a combination of each of the URLs in the
         `java.naming.provider.url` property and the environment until
         a provider returns non-empty or all providers have been exhausted.
         If none of the
         [LdapDnsProviders](../ldap/spi/LdapDnsProvider.md "class in javax.naming.ldap.spi")
         return a non-empty
         [result](../ldap/spi/LdapDnsProviderResult.md "class in javax.naming.ldap.spi") then
         the implementation will make a best-effort attempt to determine an
         endpoint. A
         [ServiceConfigurationError](../../../../java.base/java/util/ServiceConfigurationError.md "class in java.util"),
         `Error` or `RuntimeException` thrown when loading or
         calling an [LdapDnsProvider](../ldap/spi/LdapDnsProvider.md "class in javax.naming.ldap.spi"), if encountered, will be propagated to the calling
         thread.

    This constructor will not modify `environment`
    or save a reference to it, but may save a clone.
    Caller should not modify mutable keys and values in
    `environment` after it has been passed to the constructor.

    Parameters:
    :   `environment` - environment used to create the initial DirContext.
        Null indicates an empty environment.

    Throws:
    :   `NamingException` - if a naming exception is encountered
* ## Method Details

  + ### getAttributes

    public [Attributes](Attributes.md "interface in javax.naming.directory") getAttributes([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Retrieves all of the attributes associated with a named object.
    See [`DirContext.getAttributes(Name)`](DirContext.md#getAttributes(javax.naming.Name)) for details.

    Specified by:
    :   `getAttributes` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object from which to retrieve attributes

    Returns:
    :   the set of attributes associated with `name`

    Throws:
    :   `NamingException` - if a naming exception is encountered
  + ### getAttributes

    public [Attributes](Attributes.md "interface in javax.naming.directory") getAttributes([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] attrIds)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Retrieves selected attributes associated with a named object.
    See [`DirContext.getAttributes(Name, String[])`](DirContext.md#getAttributes(javax.naming.Name,java.lang.String%5B%5D)) for details.

    Specified by:
    :   `getAttributes` in interface `DirContext`

    Parameters:
    :   `name` - The name of the object from which to retrieve attributes
    :   `attrIds` - the identifiers of the attributes to retrieve.
        null indicates that all attributes should be retrieved;
        an empty array indicates that none should be retrieved.

    Returns:
    :   the requested attributes; never null

    Throws:
    :   `NamingException` - if a naming exception is encountered
  + ### getAttributes

    public [Attributes](Attributes.md "interface in javax.naming.directory") getAttributes([Name](../Name.md "interface in javax.naming") name)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Retrieves all of the attributes associated with a named object.
    See the class description regarding attribute models, attribute
    type names, and operational attributes.

    Specified by:
    :   `getAttributes` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object from which to retrieve attributes

    Returns:
    :   the set of attributes associated with `name`.
        Returns an empty attribute set if name has no attributes;
        never null.

    Throws:
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`DirContext.getAttributes(String)`](DirContext.md#getAttributes(java.lang.String))
        - [`DirContext.getAttributes(Name, String[])`](DirContext.md#getAttributes(javax.naming.Name,java.lang.String%5B%5D))
  + ### getAttributes

    public [Attributes](Attributes.md "interface in javax.naming.directory") getAttributes([Name](../Name.md "interface in javax.naming") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] attrIds)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Retrieves selected attributes associated with a named object.
    See the class description regarding attribute models, attribute
    type names, and operational attributes.

    If the object does not have an attribute
    specified, the directory will ignore the nonexistent attribute
    and return those requested attributes that the object does have.

    A directory might return more attributes than was requested
    (see **Attribute Type Names** in the class description),
    but is not allowed to return arbitrary, unrelated attributes.

    See also **Operational Attributes** in the class
    description.

    Specified by:
    :   `getAttributes` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object from which to retrieve attributes
    :   `attrIds` - the identifiers of the attributes to retrieve.
        null indicates that all attributes should be retrieved;
        an empty array indicates that none should be retrieved.

    Returns:
    :   the requested attributes; never null

    Throws:
    :   `NamingException` - if a naming exception is encountered
  + ### modifyAttributes

    public void modifyAttributes([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    int mod\_op,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Modifies the attributes associated with a named object.
    See [`DirContext.modifyAttributes(Name, int, Attributes)`](DirContext.md#modifyAttributes(javax.naming.Name,int,javax.naming.directory.Attributes)) for details.

    Specified by:
    :   `modifyAttributes` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object whose attributes will be updated
    :   `mod_op` - the modification operation, one of:
        `ADD_ATTRIBUTE`,
        `REPLACE_ATTRIBUTE`,
        `REMOVE_ATTRIBUTE`.
    :   `attrs` - the attributes to be used for the modification; may not be null

    Throws:
    :   `AttributeModificationException` - if the modification cannot
        be completed successfully
    :   `NamingException` - if a naming exception is encountered
  + ### modifyAttributes

    public void modifyAttributes([Name](../Name.md "interface in javax.naming") name,
    int mod\_op,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Modifies the attributes associated with a named object.
    The order of the modifications is not specified. Where
    possible, the modifications are performed atomically.

    Specified by:
    :   `modifyAttributes` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object whose attributes will be updated
    :   `mod_op` - the modification operation, one of:
        `ADD_ATTRIBUTE`,
        `REPLACE_ATTRIBUTE`,
        `REMOVE_ATTRIBUTE`.
    :   `attrs` - the attributes to be used for the modification; may not be null

    Throws:
    :   `AttributeModificationException` - if the modification cannot
        be completed successfully
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`DirContext.modifyAttributes(Name, ModificationItem[])`](DirContext.md#modifyAttributes(javax.naming.Name,javax.naming.directory.ModificationItem%5B%5D))
  + ### modifyAttributes

    public void modifyAttributes([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [ModificationItem](ModificationItem.md "class in javax.naming.directory")[] mods)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Modifies the attributes associated with a named object using
    an ordered list of modifications.
    See [`DirContext.modifyAttributes(Name, ModificationItem[])`](DirContext.md#modifyAttributes(javax.naming.Name,javax.naming.directory.ModificationItem%5B%5D)) for details.

    Specified by:
    :   `modifyAttributes` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object whose attributes will be updated
    :   `mods` - an ordered sequence of modifications to be performed;
        may not be null

    Throws:
    :   `AttributeModificationException` - if the modifications
        cannot be completed successfully
    :   `NamingException` - if a naming exception is encountered
  + ### modifyAttributes

    public void modifyAttributes([Name](../Name.md "interface in javax.naming") name,
    [ModificationItem](ModificationItem.md "class in javax.naming.directory")[] mods)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Modifies the attributes associated with a named object using
    an ordered list of modifications.
    The modifications are performed
    in the order specified. Each modification specifies a
    modification operation code and an attribute on which to
    operate. Where possible, the modifications are
    performed atomically.

    Specified by:
    :   `modifyAttributes` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object whose attributes will be updated
    :   `mods` - an ordered sequence of modifications to be performed;
        may not be null

    Throws:
    :   `AttributeModificationException` - if the modifications
        cannot be completed successfully
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`DirContext.modifyAttributes(Name, int, Attributes)`](DirContext.md#modifyAttributes(javax.naming.Name,int,javax.naming.directory.Attributes))
        - [`ModificationItem`](ModificationItem.md "class in javax.naming.directory")
  + ### bind

    public void bind([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Binds a name to an object, along with associated attributes.
    See [`DirContext.bind(Name, Object, Attributes)`](DirContext.md#bind(javax.naming.Name,java.lang.Object,javax.naming.directory.Attributes)) for details.

    Specified by:
    :   `bind` in interface `DirContext`

    Parameters:
    :   `name` - the name to bind; may not be empty
    :   `obj` - the object to bind; possibly null
    :   `attrs` - the attributes to associate with the binding

    Throws:
    :   `NameAlreadyBoundException` - if name is already bound
    :   `InvalidAttributesException` - if some "mandatory" attributes
        of the binding are not supplied
    :   `NamingException` - if a naming exception is encountered
  + ### bind

    public void bind([Name](../Name.md "interface in javax.naming") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Binds a name to an object, along with associated attributes.
    If `attrs` is null, the resulting binding will have
    the attributes associated with `obj` if `obj` is a
    `DirContext`, and no attributes otherwise.
    If `attrs` is non-null, the resulting binding will have
    `attrs` as its attributes; any attributes associated with
    `obj` are ignored.

    Specified by:
    :   `bind` in interface `DirContext`

    Parameters:
    :   `name` - the name to bind; may not be empty
    :   `obj` - the object to bind; possibly null
    :   `attrs` - the attributes to associate with the binding

    Throws:
    :   `NameAlreadyBoundException` - if name is already bound
    :   `InvalidAttributesException` - if some "mandatory" attributes
        of the binding are not supplied
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`Context.bind(Name, Object)`](../Context.md#bind(javax.naming.Name,java.lang.Object))
        - [`DirContext.rebind(Name, Object, Attributes)`](DirContext.md#rebind(javax.naming.Name,java.lang.Object,javax.naming.directory.Attributes))
  + ### rebind

    public void rebind([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Binds a name to an object, along with associated attributes,
    overwriting any existing binding.
    See [`DirContext.rebind(Name, Object, Attributes)`](DirContext.md#rebind(javax.naming.Name,java.lang.Object,javax.naming.directory.Attributes)) for details.

    Specified by:
    :   `rebind` in interface `DirContext`

    Parameters:
    :   `name` - the name to bind; may not be empty
    :   `obj` - the object to bind; possibly null
    :   `attrs` - the attributes to associate with the binding

    Throws:
    :   `InvalidAttributesException` - if some "mandatory" attributes
        of the binding are not supplied
    :   `NamingException` - if a naming exception is encountered
  + ### rebind

    public void rebind([Name](../Name.md "interface in javax.naming") name,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Binds a name to an object, along with associated attributes,
    overwriting any existing binding.
    If `attrs` is null and `obj` is a `DirContext`,
    the attributes from `obj` are used.
    If `attrs` is null and `obj` is not a `DirContext`,
    any existing attributes associated with the object already bound
    in the directory remain unchanged.
    If `attrs` is non-null, any existing attributes associated with
    the object already bound in the directory are removed and `attrs`
    is associated with the named object. If `obj` is a
    `DirContext` and `attrs` is non-null, the attributes
    of `obj` are ignored.

    Specified by:
    :   `rebind` in interface `DirContext`

    Parameters:
    :   `name` - the name to bind; may not be empty
    :   `obj` - the object to bind; possibly null
    :   `attrs` - the attributes to associate with the binding

    Throws:
    :   `InvalidAttributesException` - if some "mandatory" attributes
        of the binding are not supplied
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`Context.bind(Name, Object)`](../Context.md#bind(javax.naming.Name,java.lang.Object))
        - [`DirContext.bind(Name, Object, Attributes)`](DirContext.md#bind(javax.naming.Name,java.lang.Object,javax.naming.directory.Attributes))
  + ### createSubcontext

    public [DirContext](DirContext.md "interface in javax.naming.directory") createSubcontext([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Creates and binds a new context, along with associated attributes.
    See [`DirContext.createSubcontext(Name, Attributes)`](DirContext.md#createSubcontext(javax.naming.Name,javax.naming.directory.Attributes)) for details.

    Specified by:
    :   `createSubcontext` in interface `DirContext`

    Parameters:
    :   `name` - the name of the context to create; may not be empty
    :   `attrs` - the attributes to associate with the newly created context

    Returns:
    :   the newly created context

    Throws:
    :   `NameAlreadyBoundException` - if the name is already bound
    :   `InvalidAttributesException` - if `attrs` does not
        contain all the mandatory attributes required for creation
    :   `NamingException` - if a naming exception is encountered
  + ### createSubcontext

    public [DirContext](DirContext.md "interface in javax.naming.directory") createSubcontext([Name](../Name.md "interface in javax.naming") name,
    [Attributes](Attributes.md "interface in javax.naming.directory") attrs)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Creates and binds a new context, along with associated attributes.
    This method creates a new subcontext with the given name, binds it in
    the target context (that named by all but terminal atomic
    component of the name), and associates the supplied attributes
    with the newly created object.
    All intermediate and target contexts must already exist.
    If `attrs` is null, this method is equivalent to
    `Context.createSubcontext()`.

    Specified by:
    :   `createSubcontext` in interface `DirContext`

    Parameters:
    :   `name` - the name of the context to create; may not be empty
    :   `attrs` - the attributes to associate with the newly created context

    Returns:
    :   the newly created context

    Throws:
    :   `NameAlreadyBoundException` - if the name is already bound
    :   `InvalidAttributesException` - if `attrs` does not
        contain all the mandatory attributes required for creation
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`Context.createSubcontext(Name)`](../Context.md#createSubcontext(javax.naming.Name))
  + ### getSchema

    public [DirContext](DirContext.md "interface in javax.naming.directory") getSchema([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Retrieves the schema associated with the named object.
    See [`DirContext.getSchema(Name)`](DirContext.md#getSchema(javax.naming.Name)) for details.

    Specified by:
    :   `getSchema` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object whose schema is to be retrieved

    Returns:
    :   the schema associated with the context; never null

    Throws:
    :   `OperationNotSupportedException` - if schema not supported
    :   `NamingException` - if a naming exception is encountered
  + ### getSchema

    public [DirContext](DirContext.md "interface in javax.naming.directory") getSchema([Name](../Name.md "interface in javax.naming") name)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Retrieves the schema associated with the named object.
    The schema describes rules regarding the structure of the namespace
    and the attributes stored within it. The schema
    specifies what types of objects can be added to the directory and where
    they can be added; what mandatory and optional attributes an object
    can have. The range of support for schemas is directory-specific.

    This method returns the root of the schema information tree
    that is applicable to the named object. Several named objects
    (or even an entire directory) might share the same schema.

    Issues such as structure and contents of the schema tree,
    permission to modify to the contents of the schema
    tree, and the effect of such modifications on the directory
    are dependent on the underlying directory.

    Specified by:
    :   `getSchema` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object whose schema is to be retrieved

    Returns:
    :   the schema associated with the context; never null

    Throws:
    :   `OperationNotSupportedException` - if schema not supported
    :   `NamingException` - if a naming exception is encountered
  + ### getSchemaClassDefinition

    public [DirContext](DirContext.md "interface in javax.naming.directory") getSchemaClassDefinition([String](../../../../java.base/java/lang/String.md "class in java.lang") name)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Retrieves a context containing the schema objects of the
    named object's class definitions.
    See [`DirContext.getSchemaClassDefinition(Name)`](DirContext.md#getSchemaClassDefinition(javax.naming.Name)) for details.

    Specified by:
    :   `getSchemaClassDefinition` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object whose object class
        definition is to be retrieved

    Returns:
    :   the `DirContext` containing the named
        object's class definitions; never null

    Throws:
    :   `OperationNotSupportedException` - if schema not supported
    :   `NamingException` - if a naming exception is encountered
  + ### getSchemaClassDefinition

    public [DirContext](DirContext.md "interface in javax.naming.directory") getSchemaClassDefinition([Name](../Name.md "interface in javax.naming") name)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Retrieves a context containing the schema objects of the
    named object's class definitions.

    One category of information found in directory schemas is
    *class definitions*. An "object class" definition
    specifies the object's *type* and what attributes (mandatory
    and optional) the object must/can have. Note that the term
    "object class" being referred to here is in the directory sense
    rather than in the Java sense.
    For example, if the named object is a directory object of
    "Person" class, `getSchemaClassDefinition()` would return a
    `DirContext` representing the (directory's) object class
    definition of "Person".

    The information that can be retrieved from an object class definition
    is directory-dependent.

    Prior to JNDI 1.2, this method
    returned a single schema object representing the class definition of
    the named object.
    Since JNDI 1.2, this method returns a `DirContext` containing
    all of the named object's class definitions.

    Specified by:
    :   `getSchemaClassDefinition` in interface `DirContext`

    Parameters:
    :   `name` - the name of the object whose object class
        definition is to be retrieved

    Returns:
    :   the `DirContext` containing the named
        object's class definitions; never null

    Throws:
    :   `OperationNotSupportedException` - if schema not supported
    :   `NamingException` - if a naming exception is encountered
  + ### search

    public [NamingEnumeration](../NamingEnumeration.md "interface in javax.naming")<[SearchResult](SearchResult.md "class in javax.naming.directory")> search([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Attributes](Attributes.md "interface in javax.naming.directory") matchingAttributes)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Searches in a single context for objects that contain a
    specified set of attributes.
    See [`DirContext.search(Name, Attributes)`](DirContext.md#search(javax.naming.Name,javax.naming.directory.Attributes)) for details.

    Specified by:
    :   `search` in interface `DirContext`

    Parameters:
    :   `name` - the name of the context to search
    :   `matchingAttributes` - the attributes to search for

    Returns:
    :   an enumeration of `SearchResult` objects

    Throws:
    :   `NamingException` - if a naming exception is encountered
  + ### search

    public [NamingEnumeration](../NamingEnumeration.md "interface in javax.naming")<[SearchResult](SearchResult.md "class in javax.naming.directory")> search([Name](../Name.md "interface in javax.naming") name,
    [Attributes](Attributes.md "interface in javax.naming.directory") matchingAttributes)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Searches in a single context for objects that contain a
    specified set of attributes.
    This method returns all the attributes of such objects.
    It is equivalent to supplying null as
    the `attributesToReturn` parameter to the method
    `search(Name, Attributes, String[])`.
      
    See [`DirContext.search(Name, Attributes, String[])`](DirContext.md#search(javax.naming.Name,javax.naming.directory.Attributes,java.lang.String%5B%5D)) for a full description.

    Specified by:
    :   `search` in interface `DirContext`

    Parameters:
    :   `name` - the name of the context to search
    :   `matchingAttributes` - the attributes to search for

    Returns:
    :   an enumeration of `SearchResult` objects

    Throws:
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`DirContext.search(Name, Attributes, String[])`](DirContext.md#search(javax.naming.Name,javax.naming.directory.Attributes,java.lang.String%5B%5D))
  + ### search

    public [NamingEnumeration](../NamingEnumeration.md "interface in javax.naming")<[SearchResult](SearchResult.md "class in javax.naming.directory")> search([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Attributes](Attributes.md "interface in javax.naming.directory") matchingAttributes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] attributesToReturn)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Searches in a single context for objects that contain a
    specified set of attributes, and retrieves selected attributes.
    See [`DirContext.search(Name, Attributes, String[])`](DirContext.md#search(javax.naming.Name,javax.naming.directory.Attributes,java.lang.String%5B%5D)) for details.

    Specified by:
    :   `search` in interface `DirContext`

    Parameters:
    :   `name` - the name of the context to search
    :   `matchingAttributes` - the attributes to search for
    :   `attributesToReturn` - the attributes to return

    Returns:
    :   a non-null enumeration of `SearchResult` objects

    Throws:
    :   `NamingException` - if a naming exception is encountered
  + ### search

    public [NamingEnumeration](../NamingEnumeration.md "interface in javax.naming")<[SearchResult](SearchResult.md "class in javax.naming.directory")> search([Name](../Name.md "interface in javax.naming") name,
    [Attributes](Attributes.md "interface in javax.naming.directory") matchingAttributes,
    [String](../../../../java.base/java/lang/String.md "class in java.lang")[] attributesToReturn)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Searches in a single context for objects that contain a
    specified set of attributes, and retrieves selected attributes.
    The search is performed using the default
    `SearchControls` settings.

    For an object to be selected, each attribute in
    `matchingAttributes` must match some attribute of the
    object. If `matchingAttributes` is empty or
    null, all objects in the target context are returned.

    An attribute *A*1 in
    `matchingAttributes` is considered to match an
    attribute *A*2 of an object if
    *A*1 and *A*2 have the same
    identifier, and each value of *A*1 is equal
    to some value of *A*2. This implies that the
    order of values is not significant, and that
    *A*2 may contain "extra" values not found in
    *A*1 without affecting the comparison. It
    also implies that if *A*1 has no values, then
    testing for a match is equivalent to testing for the presence
    of an attribute *A*2 with the same
    identifier.

    The precise definition of "equality" used in comparing attribute values
    is defined by the underlying directory service. It might use the
    `Object.equals` method, for example, or might use a schema
    to specify a different equality operation.
    For matching based on operations other than equality (such as
    substring comparison) use the version of the `search`
    method that takes a filter argument.

    When changes are made to this `DirContext`,
    the effect on enumerations returned by prior calls to this method
    is undefined.

    If the object does not have the attribute
    specified, the directory will ignore the nonexistent attribute
    and return the requested attributes that the object does have.

    A directory might return more attributes than was requested
    (see **Attribute Type Names** in the class description),
    but is not allowed to return arbitrary, unrelated attributes.

    See also **Operational Attributes** in the class
    description.

    Specified by:
    :   `search` in interface `DirContext`

    Parameters:
    :   `name` - the name of the context to search
    :   `matchingAttributes` - the attributes to search for. If empty or null,
        all objects in the target context are returned.
    :   `attributesToReturn` - the attributes to return. null indicates that
        all attributes are to be returned;
        an empty array indicates that none are to be returned.

    Returns:
    :   a non-null enumeration of `SearchResult` objects.
        Each `SearchResult` contains the attributes
        identified by `attributesToReturn`
        and the name of the corresponding object, named relative
        to the context named by `name`.

    Throws:
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`SearchControls`](SearchControls.md "class in javax.naming.directory")
        - [`SearchResult`](SearchResult.md "class in javax.naming.directory")
        - [`DirContext.search(Name, String, Object[], SearchControls)`](DirContext.md#search(javax.naming.Name,java.lang.String,java.lang.Object%5B%5D,javax.naming.directory.SearchControls))
  + ### search

    public [NamingEnumeration](../NamingEnumeration.md "interface in javax.naming")<[SearchResult](SearchResult.md "class in javax.naming.directory")> search([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") filter,
    [SearchControls](SearchControls.md "class in javax.naming.directory") cons)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Searches in the named context or object for entries that satisfy the
    given search filter. Performs the search as specified by
    the search controls.
    See [`DirContext.search(Name, String, SearchControls)`](DirContext.md#search(javax.naming.Name,java.lang.String,javax.naming.directory.SearchControls)) for details.

    Specified by:
    :   `search` in interface `DirContext`

    Parameters:
    :   `name` - the name of the context or object to search
    :   `filter` - the filter expression to use for the search; may not be null
    :   `cons` - the search controls that control the search. If null,
        the default search controls are used (equivalent
        to `(new SearchControls())`).

    Returns:
    :   an enumeration of `SearchResult`s for
        the objects that satisfy the filter.

    Throws:
    :   `InvalidSearchFilterException` - if the search filter specified is
        not supported or understood by the underlying directory
    :   `InvalidSearchControlsException` - if the search controls
        contain invalid settings
    :   `NamingException` - if a naming exception is encountered
  + ### search

    public [NamingEnumeration](../NamingEnumeration.md "interface in javax.naming")<[SearchResult](SearchResult.md "class in javax.naming.directory")> search([Name](../Name.md "interface in javax.naming") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") filter,
    [SearchControls](SearchControls.md "class in javax.naming.directory") cons)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Searches in the named context or object for entries that satisfy the
    given search filter. Performs the search as specified by
    the search controls.

    The format and interpretation of `filter` follows RFC 2254
    with the
    following interpretations for `attr` and `value`
    mentioned in the RFC.

    `attr` is the attribute's identifier.

    `value` is the string representation the attribute's value.
    The translation of this string representation into the attribute's value
    is directory-specific.

    For the assertion "someCount=127", for example, `attr`
    is "someCount" and `value` is "127".
    The provider determines, based on the attribute ID ("someCount")
    (and possibly its schema), that the attribute's value is an integer.
    It then parses the string "127" appropriately.

    Any non-ASCII characters in the filter string should be
    represented by the appropriate Java (Unicode) characters, and
    not encoded as UTF-8 octets. Alternately, the
    "backslash-hexcode" notation described in RFC 2254 may be used.

    If the directory does not support a string representation of
    some or all of its attributes, the form of `search` that
    accepts filter arguments in the form of Objects can be used instead.
    The service provider for such a directory would then translate
    the filter arguments to its service-specific representation
    for filter evaluation.
    See `search(Name, String, Object[], SearchControls)`.

    RFC 2254 defines certain operators for the filter, including substring
    matches, equality, approximate match, greater than, less than. These
    operators are mapped to operators with corresponding semantics in the
    underlying directory. For example, for the equals operator, suppose
    the directory has a matching rule defining "equality" of the
    attributes in the filter. This rule would be used for checking
    equality of the attributes specified in the filter with the attributes
    of objects in the directory. Similarly, if the directory has a
    matching rule for ordering, this rule would be used for
    making "greater than" and "less than" comparisons.

    Not all of the operators defined in RFC 2254 are applicable to all
    attributes. When an operator is not applicable, the exception
    `InvalidSearchFilterException` is thrown.

    The result is returned in an enumeration of `SearchResult`s.
    Each `SearchResult` contains the name of the object
    and other information about the object (see SearchResult).
    The name is either relative to the target context of the search
    (which is named by the `name` parameter), or
    it is a URL string. If the target context is included in
    the enumeration (as is possible when
    `cons` specifies a search scope of
    `SearchControls.OBJECT_SCOPE` or
    `SearchControls.SUBSTREE_SCOPE`), its name is the empty
    string. The `SearchResult` may also contain attributes of the
    matching object if the `cons` argument specified that attributes
    be returned.

    If the object does not have a requested attribute, that
    nonexistent attribute will be ignored. Those requested
    attributes that the object does have will be returned.

    A directory might return more attributes than were requested
    (see **Attribute Type Names** in the class description)
    but is not allowed to return arbitrary, unrelated attributes.

    See also **Operational Attributes** in the class
    description.

    Specified by:
    :   `search` in interface `DirContext`

    Parameters:
    :   `name` - the name of the context or object to search
    :   `filter` - the filter expression to use for the search; may not be null
    :   `cons` - the search controls that control the search. If null,
        the default search controls are used (equivalent
        to `(new SearchControls())`).

    Returns:
    :   an enumeration of `SearchResult`s of
        the objects that satisfy the filter; never null

    Throws:
    :   `InvalidSearchFilterException` - if the search filter specified is
        not supported or understood by the underlying directory
    :   `InvalidSearchControlsException` - if the search controls
        contain invalid settings
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`DirContext.search(Name, String, Object[], SearchControls)`](DirContext.md#search(javax.naming.Name,java.lang.String,java.lang.Object%5B%5D,javax.naming.directory.SearchControls))
        - [`SearchControls`](SearchControls.md "class in javax.naming.directory")
        - [`SearchResult`](SearchResult.md "class in javax.naming.directory")
  + ### search

    public [NamingEnumeration](../NamingEnumeration.md "interface in javax.naming")<[SearchResult](SearchResult.md "class in javax.naming.directory")> search([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") filterExpr,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] filterArgs,
    [SearchControls](SearchControls.md "class in javax.naming.directory") cons)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Searches in the named context or object for entries that satisfy the
    given search filter. Performs the search as specified by
    the search controls.
    See [`DirContext.search(Name, String, Object[], SearchControls)`](DirContext.md#search(javax.naming.Name,java.lang.String,java.lang.Object%5B%5D,javax.naming.directory.SearchControls)) for details.

    Specified by:
    :   `search` in interface `DirContext`

    Parameters:
    :   `name` - the name of the context or object to search
    :   `filterExpr` - the filter expression to use for the search.
        The expression may contain variables of the
        form "`{i}`" where `i`
        is a nonnegative integer. May not be null.
    :   `filterArgs` - the array of arguments to substitute for the variables
        in `filterExpr`. The value of
        `filterArgs[i]` will replace each
        occurrence of "`{i}`".
        If null, equivalent to an empty array.
    :   `cons` - the search controls that control the search. If null,
        the default search controls are used (equivalent
        to `(new SearchControls())`).

    Returns:
    :   an enumeration of `SearchResult`s of the objects
        that satisfy the filter; never null

    Throws:
    :   `InvalidSearchControlsException` - if `cons` contains
        invalid settings
    :   `InvalidSearchFilterException` - if `filterExpr` with
        `filterArgs` represents an invalid search filter
    :   `NamingException` - if a naming exception is encountered
  + ### search

    public [NamingEnumeration](../NamingEnumeration.md "interface in javax.naming")<[SearchResult](SearchResult.md "class in javax.naming.directory")> search([Name](../Name.md "interface in javax.naming") name,
    [String](../../../../java.base/java/lang/String.md "class in java.lang") filterExpr,
    [Object](../../../../java.base/java/lang/Object.md "class in java.lang")[] filterArgs,
    [SearchControls](SearchControls.md "class in javax.naming.directory") cons)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Description copied from interface: `DirContext`

    Searches in the named context or object for entries that satisfy the
    given search filter. Performs the search as specified by
    the search controls.

    The interpretation of `filterExpr` is based on RFC
    2254. It may additionally contain variables of the form
    `{i}` -- where `i` is an integer -- that
    refer to objects in the `filterArgs` array. The
    interpretation of `filterExpr` is otherwise
    identical to that of the `filter` parameter of the
    method `search(Name, String, SearchControls)`.

    When a variable `{i}` appears in a search filter, it
    indicates that the filter argument `filterArgs[i]`
    is to be used in that place. Such variables may be used
    wherever an *attr*, *value*, or
    *matchingrule* production appears in the filter grammar
    of RFC 2254, section 4. When a string-valued filter argument
    is substituted for a variable, the filter is interpreted as if
    the string were given in place of the variable, with any
    characters having special significance within filters (such as
    `'*'`) having been escaped according to the rules of
    RFC 2254.

    For directories that do not use a string representation for
    some or all of their attributes, the filter argument
    corresponding to an attribute value may be of a type other than
    String. Directories that support unstructured binary-valued
    attributes, for example, should accept byte arrays as filter
    arguments. The interpretation (if any) of filter arguments of
    any other type is determined by the service provider for that
    directory, which maps the filter operations onto operations with
    corresponding semantics in the underlying directory.

    This method returns an enumeration of the results.
    Each element in the enumeration contains the name of the object
    and other information about the object (see `SearchResult`).
    The name is either relative to the target context of the search
    (which is named by the `name` parameter), or
    it is a URL string. If the target context is included in
    the enumeration (as is possible when
    `cons` specifies a search scope of
    `SearchControls.OBJECT_SCOPE` or
    `SearchControls.SUBSTREE_SCOPE`),
    its name is the empty string.

    The `SearchResult` may also contain attributes of the matching
    object if the `cons` argument specifies that attributes be
    returned.

    If the object does not have a requested attribute, that
    nonexistent attribute will be ignored. Those requested
    attributes that the object does have will be returned.

    A directory might return more attributes than were requested
    (see **Attribute Type Names** in the class description)
    but is not allowed to return arbitrary, unrelated attributes.

    If a search filter with invalid variable substitutions is provided
    to this method, the result is undefined.
    When changes are made to this DirContext,
    the effect on enumerations returned by prior calls to this method
    is undefined.

    See also **Operational Attributes** in the class
    description.

    Specified by:
    :   `search` in interface `DirContext`

    Parameters:
    :   `name` - the name of the context or object to search
    :   `filterExpr` - the filter expression to use for the search.
        The expression may contain variables of the
        form "`{i}`" where `i`
        is a nonnegative integer. May not be null.
    :   `filterArgs` - the array of arguments to substitute for the variables
        in `filterExpr`. The value of
        `filterArgs[i]` will replace each
        occurrence of "`{i}`".
        If null, equivalent to an empty array.
    :   `cons` - the search controls that control the search. If null,
        the default search controls are used (equivalent
        to `(new SearchControls())`).

    Returns:
    :   an enumeration of `SearchResult`s of the objects
        that satisfy the filter; never null

    Throws:
    :   `InvalidSearchControlsException` - if `cons` contains
        invalid settings
    :   `InvalidSearchFilterException` - if `filterExpr` with
        `filterArgs` represents an invalid search filter
    :   `NamingException` - if a naming exception is encountered

    See Also:
    :   - [`DirContext.search(Name, Attributes, String[])`](DirContext.md#search(javax.naming.Name,javax.naming.directory.Attributes,java.lang.String%5B%5D))
        - [`MessageFormat`](../../../../java.base/java/text/MessageFormat.md "class in java.text")