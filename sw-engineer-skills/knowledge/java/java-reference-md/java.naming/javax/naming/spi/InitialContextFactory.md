Module [java.naming](../../../module-summary.md)

Package [javax.naming.spi](package-summary.md)

# Interface InitialContextFactory

---

public interface InitialContextFactory

This interface represents a factory that creates an initial context.

The JNDI framework allows for different initial context implementations
to be specified at runtime. The initial context is created using
an *initial context factory*.
An initial context factory must implement the InitialContextFactory
interface, which provides a method for creating instances of initial
context that implement the Context interface.
In addition, the factory class must be public and must have a public
constructor that accepts no arguments.

Since:
:   1.3

See Also:
:   * [`InitialContextFactoryBuilder`](InitialContextFactoryBuilder.md "interface in javax.naming.spi")
    * [`NamingManager.getInitialContext(java.util.Hashtable<?, ?>)`](NamingManager.md#getInitialContext(java.util.Hashtable))
    * [`InitialContext`](../InitialContext.md "class in javax.naming")
    * [`InitialDirContext`](../directory/InitialDirContext.md "class in javax.naming.directory")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `Context`

  `getInitialContext(Hashtable<?,?> environment)`

  Creates an Initial Context for beginning name resolution.

* ## Method Details

  + ### getInitialContext

    [Context](../Context.md "interface in javax.naming") getInitialContext([Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> environment)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Creates an Initial Context for beginning name resolution.
    Special requirements of this context are supplied
    using `environment`.

    The environment parameter is owned by the caller.
    The implementation will not modify the object or keep a reference
    to it, although it may keep a reference to a clone or copy.

    Parameters:
    :   `environment` - The possibly null environment
        specifying information to be used in the creation
        of the initial context.

    Returns:
    :   A non-null initial context object that implements the Context
        interface.

    Throws:
    :   `NamingException` - If cannot create an initial context.