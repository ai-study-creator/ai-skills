# Hierarchy For Package javax.management.loading

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + java.lang.[ClassLoader](../../../../java.base/java/lang/ClassLoader.md "class in java.lang")
    - java.security.[SecureClassLoader](../../../../java.base/java/security/SecureClassLoader.md "class in java.security")
      * java.net.[URLClassLoader](../../../../java.base/java/net/URLClassLoader.md "class in java.net") (implements java.io.[Closeable](../../../../java.base/java/io/Closeable.md "interface in java.io"))
        + javax.management.loading.[MLet](MLet.md "class in javax.management.loading") (implements java.io.[Externalizable](../../../../java.base/java/io/Externalizable.md "interface in java.io"), javax.management.[MBeanRegistration](../MBeanRegistration.md "interface in javax.management"), javax.management.loading.[MLetMBean](MLetMBean.md "interface in javax.management.loading"))
          - javax.management.loading.[PrivateMLet](PrivateMLet.md "class in javax.management.loading") (implements javax.management.loading.[PrivateClassLoader](PrivateClassLoader.md "interface in javax.management.loading"))
  + javax.management.loading.[DefaultLoaderRepository](DefaultLoaderRepository.md "class in javax.management.loading")
  + javax.management.loading.[MLetContent](MLetContent.md "class in javax.management.loading")

## Interface Hierarchy

* javax.management.loading.[ClassLoaderRepository](ClassLoaderRepository.md "interface in javax.management.loading")
* javax.management.loading.[MLetMBean](MLetMBean.md "interface in javax.management.loading")
* javax.management.loading.[PrivateClassLoader](PrivateClassLoader.md "interface in javax.management.loading")