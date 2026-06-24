Module [java.naming](../../../module-summary.md)

# Package javax.naming.spi

---

package javax.naming.spi

* Related Packages

  Package

  Description

  [javax.naming](../package-summary.md)

  [javax.naming.directory](../directory/package-summary.md)

  [javax.naming.event](../event/package-summary.md)

  [javax.naming.ldap](../ldap/package-summary.md)
* All Classes and InterfacesInterfacesClasses

  Class

  Description

  [DirectoryManager](DirectoryManager.md "class in javax.naming.spi")

  This class contains methods for supporting `DirContext`
  implementations.

  [DirObjectFactory](DirObjectFactory.md "interface in javax.naming.spi")

  This interface represents a factory for creating an object given
  an object and attributes about the object.

  [DirStateFactory](DirStateFactory.md "interface in javax.naming.spi")

  This interface represents a factory for obtaining the state of an
  object and corresponding attributes for binding.

  [DirStateFactory.Result](DirStateFactory.Result.md "class in javax.naming.spi")

  An object/attributes pair for returning the result of
  DirStateFactory.getStateToBind().

  [InitialContextFactory](InitialContextFactory.md "interface in javax.naming.spi")

  This interface represents a factory that creates an initial context.

  [InitialContextFactoryBuilder](InitialContextFactoryBuilder.md "interface in javax.naming.spi")

  This interface represents a builder that creates initial context factories.

  [NamingManager](NamingManager.md "class in javax.naming.spi")

  This class contains methods for creating context objects
  and objects referred to by location information in the naming
  or directory service.

  [ObjectFactory](ObjectFactory.md "interface in javax.naming.spi")

  This interface represents a factory for creating an object.

  [ObjectFactoryBuilder](ObjectFactoryBuilder.md "interface in javax.naming.spi")

  This interface represents a builder that creates object factories.

  [Resolver](Resolver.md "interface in javax.naming.spi")

  This interface represents an "intermediate context" for name resolution.

  [ResolveResult](ResolveResult.md "class in javax.naming.spi")

  This class represents the result of resolution of a name.

  [StateFactory](StateFactory.md "interface in javax.naming.spi")

  This interface represents a factory for obtaining the state of an
  object for binding.