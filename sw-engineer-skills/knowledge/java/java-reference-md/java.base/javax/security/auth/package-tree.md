# Hierarchy For Package javax.security.auth

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../java/lang/Object.md "class in java.lang")
  + java.security.[Permission](../../../java/security/Permission.md "class in java.security") (implements java.security.[Guard](../../../java/security/Guard.md "interface in java.security"), java.io.[Serializable](../../../java/io/Serializable.md "interface in java.io"))
    - java.security.[BasicPermission](../../../java/security/BasicPermission.md "class in java.security") (implements java.io.[Serializable](../../../java/io/Serializable.md "interface in java.io"))
      * javax.security.auth.[AuthPermission](AuthPermission.md "class in javax.security.auth")
    - javax.security.auth.[PrivateCredentialPermission](PrivateCredentialPermission.md "class in javax.security.auth")
  + javax.security.auth.[Subject](Subject.md "class in javax.security.auth") (implements java.io.[Serializable](../../../java/io/Serializable.md "interface in java.io"))
  + javax.security.auth.[SubjectDomainCombiner](SubjectDomainCombiner.md "class in javax.security.auth") (implements java.security.[DomainCombiner](../../../java/security/DomainCombiner.md "interface in java.security"))
  + java.lang.[Throwable](../../../java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../java/lang/Exception.md "class in java.lang")
      * javax.security.auth.[DestroyFailedException](DestroyFailedException.md "class in javax.security.auth")
      * javax.security.auth.[RefreshFailedException](RefreshFailedException.md "class in javax.security.auth")

## Interface Hierarchy

* javax.security.auth.[Destroyable](Destroyable.md "interface in javax.security.auth")
* javax.security.auth.[Refreshable](Refreshable.md "interface in javax.security.auth")