# Hierarchy For Package javax.security.sasl

Package Hierarchies:

* [All Packages](../../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.security.sasl.[AuthorizeCallback](AuthorizeCallback.md "class in javax.security.sasl") (implements javax.security.auth.callback.[Callback](../../../../java.base/javax/security/auth/callback/Callback.md "interface in javax.security.auth.callback"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
  + javax.security.auth.callback.[ChoiceCallback](../../../../java.base/javax/security/auth/callback/ChoiceCallback.md "class in javax.security.auth.callback") (implements javax.security.auth.callback.[Callback](../../../../java.base/javax/security/auth/callback/Callback.md "interface in javax.security.auth.callback"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.security.sasl.[RealmChoiceCallback](RealmChoiceCallback.md "class in javax.security.sasl")
  + javax.security.sasl.[Sasl](Sasl.md "class in javax.security.sasl")
  + javax.security.auth.callback.[TextInputCallback](../../../../java.base/javax/security/auth/callback/TextInputCallback.md "class in javax.security.auth.callback") (implements javax.security.auth.callback.[Callback](../../../../java.base/javax/security/auth/callback/Callback.md "interface in javax.security.auth.callback"), java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.security.sasl.[RealmCallback](RealmCallback.md "class in javax.security.sasl")
  + java.lang.[Throwable](../../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../../java.base/java/lang/Exception.md "class in java.lang")
      * java.io.[IOException](../../../../java.base/java/io/IOException.md "class in java.io")
        + javax.security.sasl.[SaslException](SaslException.md "class in javax.security.sasl")
          - javax.security.sasl.[AuthenticationException](AuthenticationException.md "class in javax.security.sasl")

## Interface Hierarchy

* javax.security.sasl.[SaslClient](SaslClient.md "interface in javax.security.sasl")
* javax.security.sasl.[SaslClientFactory](SaslClientFactory.md "interface in javax.security.sasl")
* javax.security.sasl.[SaslServer](SaslServer.md "interface in javax.security.sasl")
* javax.security.sasl.[SaslServerFactory](SaslServerFactory.md "interface in javax.security.sasl")