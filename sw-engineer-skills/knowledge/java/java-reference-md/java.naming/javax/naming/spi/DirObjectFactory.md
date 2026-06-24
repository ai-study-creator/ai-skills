Module [java.naming](../../../module-summary.md)

Package [javax.naming.spi](package-summary.md)

# Interface DirObjectFactory

All Superinterfaces:
:   `ObjectFactory`

---

public interface DirObjectFactory
extends [ObjectFactory](ObjectFactory.md "interface in javax.naming.spi")

This interface represents a factory for creating an object given
an object and attributes about the object.

The JNDI framework allows for object implementations to
be loaded in dynamically via *object factories*. See
`ObjectFactory` for details.

A `DirObjectFactory` extends `ObjectFactory` by allowing
an `Attributes` instance
to be supplied to the `getObjectInstance()` method.
`DirObjectFactory` implementations are intended to be used by `DirContext`
service providers. The service provider, in addition reading an
object from the directory, might already have attributes that
are useful for the object factory to check to see whether the
factory is supposed to process the object. For instance, an LDAP-style
service provider might have read the "objectclass" of the object.
A CORBA object factory might be interested only in LDAP entries
with "objectclass=corbaObject". By using the attributes supplied by
the LDAP service provider, the CORBA object factory can quickly
eliminate objects that it need not worry about, and non-CORBA object
factories can quickly eliminate CORBA-related LDAP entries.

Since:
:   1.3

See Also:
:   * [`NamingManager.getObjectInstance(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>)`](NamingManager.md#getObjectInstance(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable))
    * [`DirectoryManager.getObjectInstance(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>, javax.naming.directory.Attributes)`](DirectoryManager.md#getObjectInstance(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable,javax.naming.directory.Attributes))
    * [`ObjectFactory`](ObjectFactory.md "interface in javax.naming.spi")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Object`

  `getObjectInstance(Object obj,
  Name name,
  Context nameCtx,
  Hashtable<?,?> environment,
  Attributes attrs)`

  Creates an object using the location or reference information, and attributes
  specified.

  ### Methods inherited from interface javax.naming.spi.[ObjectFactory](ObjectFactory.md "interface in javax.naming.spi")

  `getObjectInstance`

* ## Method Details

  + ### getObjectInstance

    [Object](../../../../java.base/java/lang/Object.md "class in java.lang") getObjectInstance([Object](../../../../java.base/java/lang/Object.md "class in java.lang") obj,
    [Name](../Name.md "interface in javax.naming") name,
    [Context](../Context.md "interface in javax.naming") nameCtx,
    [Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> environment,
    [Attributes](../directory/Attributes.md "interface in javax.naming.directory") attrs)
    throws [Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")

    Creates an object using the location or reference information, and attributes
    specified.

    Special requirements of this object are supplied
    using `environment`.
    An example of such an environment property is user identity
    information.

    `DirectoryManager.getObjectInstance()`
    successively loads in object factories. If it encounters a `DirObjectFactory`,
    it will invoke `DirObjectFactory.getObjectInstance()`;
    otherwise, it invokes
    `ObjectFactory.getObjectInstance()`. It does this until a factory
    produces a non-null answer.

    When an exception
    is thrown by an object factory, the exception is passed on to the caller
    of `DirectoryManager.getObjectInstance()`. The search for other factories
    that may produce a non-null answer is halted.
    An object factory should only throw an exception if it is sure that
    it is the only intended factory and that no other object factories
    should be tried.
    If this factory cannot create an object using the arguments supplied,
    it should return null.

    Since `DirObjectFactory` extends `ObjectFactory`, it
    effectively
    has two `getObjectInstance()` methods, where one differs from the other by
    the attributes argument. Given a factory that implements `DirObjectFactory`,
    `DirectoryManager.getObjectInstance()` will only
    use the method that accepts the attributes argument, while
    `NamingManager.getObjectInstance()` will only use the one that does not accept
    the attributes argument.

    See `ObjectFactory` for a description URL context factories and other
    properties of object factories that apply equally to `DirObjectFactory`.

    The `name`, `attrs`, and `environment` parameters
    are owned by the caller.
    The implementation will not modify these objects or keep references
    to them, although it may keep references to clones or copies.

    Parameters:
    :   `obj` - The possibly null object containing location or reference
        information that can be used in creating an object.
    :   `name` - The name of this object relative to `nameCtx`,
        or null if no name is specified.
    :   `nameCtx` - The context relative to which the `name`
        parameter is specified, or null if `name` is
        relative to the default initial context.
    :   `environment` - The possibly null environment that is used in
        creating the object.
    :   `attrs` - The possibly null attributes containing some of `obj`'s
        attributes. `attrs` might not necessarily have all of `obj`'s
        attributes. If the object factory requires more attributes, it needs
        to get it, either using `obj`, or `name` and `nameCtx`.
        The factory must not modify attrs.

    Returns:
    :   The object created; null if an object cannot be created.

    Throws:
    :   `Exception` - If this object factory encountered an exception
        while attempting to create an object, and no other object factories are
        to be tried.

    See Also:
    :   - [`DirectoryManager.getObjectInstance(java.lang.Object, javax.naming.Name, javax.naming.Context, java.util.Hashtable<?, ?>, javax.naming.directory.Attributes)`](DirectoryManager.md#getObjectInstance(java.lang.Object,javax.naming.Name,javax.naming.Context,java.util.Hashtable,javax.naming.directory.Attributes))
        - [`NamingManager.getURLContext(java.lang.String, java.util.Hashtable<?, ?>)`](NamingManager.md#getURLContext(java.lang.String,java.util.Hashtable))