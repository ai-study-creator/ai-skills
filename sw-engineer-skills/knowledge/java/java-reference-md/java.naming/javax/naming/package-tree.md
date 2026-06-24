# Hierarchy For Package javax.naming

Package Hierarchies:

* [All Packages](../../../overview-tree.md)

## Class Hierarchy

* java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")
  + javax.naming.[CompositeName](CompositeName.md "class in javax.naming") (implements javax.naming.[Name](Name.md "interface in javax.naming"))
  + javax.naming.[CompoundName](CompoundName.md "class in javax.naming") (implements javax.naming.[Name](Name.md "interface in javax.naming"))
  + javax.naming.[InitialContext](InitialContext.md "class in javax.naming") (implements javax.naming.[Context](Context.md "interface in javax.naming"))
  + javax.naming.[NameClassPair](NameClassPair.md "class in javax.naming") (implements java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.naming.[Binding](Binding.md "class in javax.naming")
  + javax.naming.[RefAddr](RefAddr.md "class in javax.naming") (implements java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.naming.[BinaryRefAddr](BinaryRefAddr.md "class in javax.naming")
    - javax.naming.[StringRefAddr](StringRefAddr.md "class in javax.naming")
  + javax.naming.[Reference](Reference.md "class in javax.naming") (implements java.lang.[Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang"), java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
    - javax.naming.[LinkRef](LinkRef.md "class in javax.naming")
  + java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") (implements java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
    - java.lang.[Exception](../../../java.base/java/lang/Exception.md "class in java.lang")
      * javax.naming.[NamingException](NamingException.md "class in javax.naming")
        + javax.naming.[CannotProceedException](CannotProceedException.md "class in javax.naming")
        + javax.naming.[CommunicationException](CommunicationException.md "class in javax.naming")
        + javax.naming.[ConfigurationException](ConfigurationException.md "class in javax.naming")
        + javax.naming.[ContextNotEmptyException](ContextNotEmptyException.md "class in javax.naming")
        + javax.naming.[InsufficientResourcesException](InsufficientResourcesException.md "class in javax.naming")
        + javax.naming.[InterruptedNamingException](InterruptedNamingException.md "class in javax.naming")
        + javax.naming.[InvalidNameException](InvalidNameException.md "class in javax.naming")
        + javax.naming.[LimitExceededException](LimitExceededException.md "class in javax.naming")
          - javax.naming.[SizeLimitExceededException](SizeLimitExceededException.md "class in javax.naming")
          - javax.naming.[TimeLimitExceededException](TimeLimitExceededException.md "class in javax.naming")
        + javax.naming.[LinkException](LinkException.md "class in javax.naming")
          - javax.naming.[LinkLoopException](LinkLoopException.md "class in javax.naming")
          - javax.naming.[MalformedLinkException](MalformedLinkException.md "class in javax.naming")
        + javax.naming.[NameAlreadyBoundException](NameAlreadyBoundException.md "class in javax.naming")
        + javax.naming.[NameNotFoundException](NameNotFoundException.md "class in javax.naming")
        + javax.naming.[NamingSecurityException](NamingSecurityException.md "class in javax.naming")
          - javax.naming.[AuthenticationException](AuthenticationException.md "class in javax.naming")
          - javax.naming.[AuthenticationNotSupportedException](AuthenticationNotSupportedException.md "class in javax.naming")
          - javax.naming.[NoPermissionException](NoPermissionException.md "class in javax.naming")
        + javax.naming.[NoInitialContextException](NoInitialContextException.md "class in javax.naming")
        + javax.naming.[NotContextException](NotContextException.md "class in javax.naming")
        + javax.naming.[OperationNotSupportedException](OperationNotSupportedException.md "class in javax.naming")
        + javax.naming.[PartialResultException](PartialResultException.md "class in javax.naming")
        + javax.naming.[ReferralException](ReferralException.md "class in javax.naming")
        + javax.naming.[ServiceUnavailableException](ServiceUnavailableException.md "class in javax.naming")

## Interface Hierarchy

* java.lang.[Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang")
  + javax.naming.[Name](Name.md "interface in javax.naming") (also extends java.lang.[Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<T>, java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
* java.lang.[Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<T>
  + javax.naming.[Name](Name.md "interface in javax.naming") (also extends java.lang.[Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang"), java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io"))
* javax.naming.[Context](Context.md "interface in javax.naming")
* java.util.[Enumeration](../../../java.base/java/util/Enumeration.md "interface in java.util")<E>
  + javax.naming.[NamingEnumeration](NamingEnumeration.md "interface in javax.naming")<T>
* javax.naming.[NameParser](NameParser.md "interface in javax.naming")
* javax.naming.[Referenceable](Referenceable.md "interface in javax.naming")
* java.io.[Serializable](../../../java.base/java/io/Serializable.md "interface in java.io")
  + javax.naming.[Name](Name.md "interface in javax.naming") (also extends java.lang.[Cloneable](../../../java.base/java/lang/Cloneable.md "interface in java.lang"), java.lang.[Comparable](../../../java.base/java/lang/Comparable.md "interface in java.lang")<T>)