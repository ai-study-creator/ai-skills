# Hierarchy For Package javax.crypto.interfaces

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Interface Hierarchy

* javax.security.auth.[Destroyable](../../security/auth/Destroyable.md "interface in javax.security.auth")
  + java.security.[PrivateKey](../../../java/security/PrivateKey.md "interface in java.security") (also extends java.security.[Key](../../../java/security/Key.md "interface in java.security"))
    - javax.crypto.interfaces.[DHPrivateKey](DHPrivateKey.md "interface in javax.crypto.interfaces") (also extends javax.crypto.interfaces.[DHKey](DHKey.md "interface in javax.crypto.interfaces"))
  + javax.crypto.[SecretKey](../SecretKey.md "interface in javax.crypto") (also extends java.security.[Key](../../../java/security/Key.md "interface in java.security"))
    - javax.crypto.interfaces.[PBEKey](PBEKey.md "interface in javax.crypto.interfaces")
* javax.crypto.interfaces.[DHKey](DHKey.md "interface in javax.crypto.interfaces")
  + javax.crypto.interfaces.[DHPrivateKey](DHPrivateKey.md "interface in javax.crypto.interfaces") (also extends java.security.[PrivateKey](../../../java/security/PrivateKey.md "interface in java.security"))
  + javax.crypto.interfaces.[DHPublicKey](DHPublicKey.md "interface in javax.crypto.interfaces") (also extends java.security.[PublicKey](../../../java/security/PublicKey.md "interface in java.security"))
* java.io.[Serializable](../../../java/io/Serializable.md "interface in java.io")
  + java.security.[Key](../../../java/security/Key.md "interface in java.security")
    - java.security.[PrivateKey](../../../java/security/PrivateKey.md "interface in java.security") (also extends javax.security.auth.[Destroyable](../../security/auth/Destroyable.md "interface in javax.security.auth"))
      * javax.crypto.interfaces.[DHPrivateKey](DHPrivateKey.md "interface in javax.crypto.interfaces") (also extends javax.crypto.interfaces.[DHKey](DHKey.md "interface in javax.crypto.interfaces"))
    - java.security.[PublicKey](../../../java/security/PublicKey.md "interface in java.security")
      * javax.crypto.interfaces.[DHPublicKey](DHPublicKey.md "interface in javax.crypto.interfaces") (also extends javax.crypto.interfaces.[DHKey](DHKey.md "interface in javax.crypto.interfaces"))
    - javax.crypto.[SecretKey](../SecretKey.md "interface in javax.crypto") (also extends javax.security.auth.[Destroyable](../../security/auth/Destroyable.md "interface in javax.security.auth"))
      * javax.crypto.interfaces.[PBEKey](PBEKey.md "interface in javax.crypto.interfaces")