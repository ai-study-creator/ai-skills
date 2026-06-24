Module [java.naming](../../../module-summary.md)

Package [javax.naming.spi](package-summary.md)

# Interface InitialContextFactoryBuilder

---

public interface InitialContextFactoryBuilder

This interface represents a builder that creates initial context factories.

The JNDI framework allows for different initial context implementations
to be specified at runtime. An initial context is created using
an initial context factory. A program can install its own builder
that creates initial context factories, thereby overriding the
default policies used by the framework, by calling
NamingManager.setInitialContextFactoryBuilder().
The InitialContextFactoryBuilder interface must be implemented by
such a builder.

Since:
:   1.3

See Also:
:   * [`InitialContextFactory`](InitialContextFactory.md "interface in javax.naming.spi")
    * [`NamingManager.getInitialContext(java.util.Hashtable<?, ?>)`](NamingManager.md#getInitialContext(java.util.Hashtable))
    * [`NamingManager.setInitialContextFactoryBuilder(javax.naming.spi.InitialContextFactoryBuilder)`](NamingManager.md#setInitialContextFactoryBuilder(javax.naming.spi.InitialContextFactoryBuilder))
    * [`NamingManager.hasInitialContextFactoryBuilder()`](NamingManager.md#hasInitialContextFactoryBuilder())
    * [`InitialContext`](../InitialContext.md "class in javax.naming")
    * [`InitialDirContext`](../directory/InitialDirContext.md "class in javax.naming.directory")

* ## Method Summary

  All MethodsInstance MethodsAbstract Methods

  Modifier and Type

  Method

  Description

  `InitialContextFactory`

  `createInitialContextFactory(Hashtable<?,?> environment)`

  Creates an initial context factory using the specified
  environment.

* ## Method Details

  + ### createInitialContextFactory

    [InitialContextFactory](InitialContextFactory.md "interface in javax.naming.spi") createInitialContextFactory([Hashtable](../../../../java.base/java/util/Hashtable.md "class in java.util")<?,?> environment)
    throws [NamingException](../NamingException.md "class in javax.naming")

    Creates an initial context factory using the specified
    environment.

    The environment parameter is owned by the caller.
    The implementation will not modify the object or keep a reference
    to it, although it may keep a reference to a clone or copy.

    Parameters:
    :   `environment` - Environment used in creating an initial
        context implementation. Can be null.

    Returns:
    :   A non-null initial context factory.

    Throws:
    :   `NamingException` - If an initial context factory could not be created.