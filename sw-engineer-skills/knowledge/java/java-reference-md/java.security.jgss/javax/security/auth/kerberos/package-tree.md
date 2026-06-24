# Hierarchy For Package javax.security.auth.kerberos

Package Hierarchies:

* [All Packages](../../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.security.auth.kerberos.[EncryptionKey](EncryptionKey.md "class in javax.security.auth.kerberos") (implements javax.crypto.[SecretKey](../../../../../java.base/javax/crypto/SecretKey.md "interface in javax.crypto"))
  + javax.security.auth.kerberos.[KerberosCredMessage](KerberosCredMessage.md "class in javax.security.auth.kerberos") (implements javax.security.auth.[Destroyable](../../../../../java.base/javax/security/auth/Destroyable.md "interface in javax.security.auth"))
  + javax.security.auth.kerberos.[KerberosKey](KerberosKey.md "class in javax.security.auth.kerberos") (implements javax.crypto.[SecretKey](../../../../../java.base/javax/crypto/SecretKey.md "interface in javax.crypto"))
  + javax.security.auth.kerberos.[KerberosPrincipal](KerberosPrincipal.md "class in javax.security.auth.kerberos") (implements java.security.[Principal](../../../../../java.base/java/security/Principal.md "interface in java.security"), java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.security.auth.kerberos.[KerberosTicket](KerberosTicket.md "class in javax.security.auth.kerberos") (implements javax.security.auth.[Destroyable](../../../../../java.base/javax/security/auth/Destroyable.md "interface in javax.security.auth"), javax.security.auth.[Refreshable](../../../../../java.base/javax/security/auth/Refreshable.md "interface in javax.security.auth"), java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.security.auth.kerberos.[KeyTab](KeyTab.md "class in javax.security.auth.kerberos")
  + java.security.[Permission](../../../../../java.base/java/security/Permission.md "class in java.security") (implements java.security.[Guard](../../../../../java.base/java/security/Guard.md "interface in java.security"), java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.security.[BasicPermission](../../../../../java.base/java/security/BasicPermission.md "class in java.security") (implements java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
      * javax.security.auth.kerberos.[DelegationPermission](DelegationPermission.md "class in javax.security.auth.kerberos") (implements java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.security.auth.kerberos.[ServicePermission](ServicePermission.md "class in javax.security.auth.kerberos") (implements java.io.[Serializable](../../../../../java.base/java/io/Serializable.md "interface in java.io"))