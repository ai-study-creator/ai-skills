Module [java.naming](../../../module-summary.md)

Package [javax.naming.spi](package-summary.md)

# Interface Resolver

---

public interface Resolver

This interface represents an "intermediate context" for name resolution.

The Resolver interface contains methods that are implemented by contexts
that do not support subtypes of Context, but which can act as
intermediate contexts for resolution purposes.

A `Name` parameter passed to any method is owned
by the caller. The service provider will not modify the object
or keep a reference to it.
A `ResolveResult` object returned by any
method is owned by the caller. The caller may subsequently modify it;
the service provider may not.

Since:
:   1.3

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `ResolveResult`

  `resolveToClass(String name,
  Class<? extends Context> contextType)`

  Partially resolves a name.

  `ResolveResult`

  `resolveToClass(Name name,
  Class<? extends Context> contextType)`

  Partially resolves a name.

* ## Method Details

  + ### resolveToClass

    [ResolveResult](ResolveResult.md "class in javax.naming.spi") resolveToClass([Name](../Name.md "interface in javax.naming") name,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Context](../Context.md "interface in javax.naming")> contextType)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Partially resolves a name. Stops at the first
    context that is an instance of a given subtype of
    `Context`.

    Parameters:
    :   `name` - the name to resolve
    :   `contextType` - the type of object to resolve. This should
        be a subtype of `Context`.

    Returns:
    :   the object that was found, along with the unresolved
        suffix of `name`. Cannot be null.

    Throws:
    :   `NotContextException` - if no context of the appropriate type is found
    :   `NamingException` - if a naming exception was encountered

    See Also:
    :   - [`resolveToClass(String, Class)`](#resolveToClass(java.lang.String,java.lang.Class))
  + ### resolveToClass

    [ResolveResult](ResolveResult.md "class in javax.naming.spi") resolveToClass([String](../../../../java.base/java/lang/String.md "class in java.lang") name,
    [Class](../../../../java.base/java/lang/Class.md "class in java.lang")<? extends [Context](../Context.md "interface in javax.naming")> contextType)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Partially resolves a name.
    See [`resolveToClass(Name, Class)`](#resolveToClass(javax.naming.Name,java.lang.Class)) for details.

    Parameters:
    :   `name` - the name to resolve
    :   `contextType` - the type of object to resolve. This should
        be a subtype of `Context`.

    Returns:
    :   the object that was found, along with the unresolved
        suffix of `name`. Cannot be null.

    Throws:
    :   `NotContextException` - if no context of the appropriate type is found
    :   `NamingException` - if a naming exception was encountered