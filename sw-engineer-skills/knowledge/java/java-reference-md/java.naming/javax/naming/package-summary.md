Module [java.naming](../../module-summary.md)

# Package javax.naming

---

package javax.naming

* Related Packages

  Package

  Description

  [javax.naming.directory](directory/package-summary.md)

  [javax.naming.event](event/package-summary.md)

  [javax.naming.ldap](ldap/package-summary.md)

  [javax.naming.spi](spi/package-summary.md)
* All Classes and InterfacesInterfacesClassesException Classes

  Class

  Description

  [AuthenticationException](AuthenticationException.md "class in javax.naming")

  This exception is thrown when an authentication error occurs while
  accessing the naming or directory service.

  [AuthenticationNotSupportedException](AuthenticationNotSupportedException.md "class in javax.naming")

  This exception is thrown when
  the particular flavor of authentication requested is not supported.

  [BinaryRefAddr](BinaryRefAddr.md "class in javax.naming")

  This class represents the binary form of the address of
  a communications end-point.

  [Binding](Binding.md "class in javax.naming")

  This class represents a name-to-object binding found in a context.

  [CannotProceedException](CannotProceedException.md "class in javax.naming")

  This exception is thrown to indicate that the operation reached
  a point in the name where the operation cannot proceed any further.

  [CommunicationException](CommunicationException.md "class in javax.naming")

  This exception is thrown when the client is
  unable to communicate with the directory or naming service.

  [CompositeName](CompositeName.md "class in javax.naming")

  This class represents a composite name -- a sequence of
  component names spanning multiple namespaces.

  [CompoundName](CompoundName.md "class in javax.naming")

  This class represents a compound name -- a name from
  a hierarchical name space.

  [ConfigurationException](ConfigurationException.md "class in javax.naming")

  This exception is thrown when there is a configuration problem.

  [Context](Context.md "interface in javax.naming")

  This interface represents a naming context, which
  consists of a set of name-to-object bindings.

  [ContextNotEmptyException](ContextNotEmptyException.md "class in javax.naming")

  This exception is thrown when attempting to destroy a context that
  is not empty.

  [InitialContext](InitialContext.md "class in javax.naming")

  This class is the starting context for performing naming operations.

  [InsufficientResourcesException](InsufficientResourcesException.md "class in javax.naming")

  This exception is thrown when resources are not available to complete
  the requested operation.

  [InterruptedNamingException](InterruptedNamingException.md "class in javax.naming")

  This exception is thrown when the naming operation
  being invoked has been interrupted.

  [InvalidNameException](InvalidNameException.md "class in javax.naming")

  This exception indicates that the name being specified does
  not conform to the naming syntax of a naming system.

  [LimitExceededException](LimitExceededException.md "class in javax.naming")

  This exception is thrown when a method
  terminates abnormally due to a user or system specified limit.

  [LinkException](LinkException.md "class in javax.naming")

  This exception is used to describe problems encountered while resolving links.

  [LinkLoopException](LinkLoopException.md "class in javax.naming")

  This exception is thrown when
  a loop was detected while attempting to resolve a link, or an implementation
  specific limit on link counts has been reached.

  [LinkRef](LinkRef.md "class in javax.naming")

  This class represents a Reference whose contents is a name, called the link name,
  that is bound to an atomic name in a context.

  [MalformedLinkException](MalformedLinkException.md "class in javax.naming")

  This exception is thrown when a malformed link was encountered while
  resolving or constructing a link.

  [Name](Name.md "interface in javax.naming")

  The `Name` interface represents a generic name -- an ordered
  sequence of components.

  [NameAlreadyBoundException](NameAlreadyBoundException.md "class in javax.naming")

  This exception is thrown by methods to indicate that
  a binding cannot be added because the name is already bound to
  another object.

  [NameClassPair](NameClassPair.md "class in javax.naming")

  This class represents the object name and class name pair of a binding
  found in a context.

  [NameNotFoundException](NameNotFoundException.md "class in javax.naming")

  This exception is thrown when a component of the name cannot be resolved
  because it is not bound.

  [NameParser](NameParser.md "interface in javax.naming")

  This interface is used for parsing names from a hierarchical
  namespace.

  [NamingEnumeration](NamingEnumeration.md "interface in javax.naming")<T>

  This interface is for enumerating lists returned by
  methods in the javax.naming and javax.naming.directory packages.

  [NamingException](NamingException.md "class in javax.naming")

  This is the superclass of all exceptions thrown by
  operations in the Context and DirContext interfaces.

  [NamingSecurityException](NamingSecurityException.md "class in javax.naming")

  This is the superclass of security-related exceptions
  thrown by operations in the Context and DirContext interfaces.

  [NoInitialContextException](NoInitialContextException.md "class in javax.naming")

  This exception is thrown when no initial context implementation
  can be created.

  [NoPermissionException](NoPermissionException.md "class in javax.naming")

  This exception is thrown when attempting to perform an operation
  for which the client has no permission.

  [NotContextException](NotContextException.md "class in javax.naming")

  This exception is thrown when a naming operation proceeds to a point
  where a context is required to continue the operation, but the
  resolved object is not a context.

  [OperationNotSupportedException](OperationNotSupportedException.md "class in javax.naming")

  This exception is thrown when a context implementation does not support
  the operation being invoked.

  [PartialResultException](PartialResultException.md "class in javax.naming")

  This exception is thrown to indicate that the result being returned
  or returned so far is partial, and that the operation cannot
  be completed.

  [RefAddr](RefAddr.md "class in javax.naming")

  This class represents the address of a communications end-point.

  [Reference](Reference.md "class in javax.naming")

  This class represents a reference to an object that is found outside of
  the naming/directory system.

  [Referenceable](Referenceable.md "interface in javax.naming")

  This interface is implemented by an object that can provide a
  Reference to itself.

  [ReferralException](ReferralException.md "class in javax.naming")

  This abstract class is used to represent a referral exception,
  which is generated in response to a *referral*
  such as that returned by LDAP v3 servers.

  [ServiceUnavailableException](ServiceUnavailableException.md "class in javax.naming")

  This exception is thrown when attempting to communicate with a
  directory or naming service and that service is not available.

  [SizeLimitExceededException](SizeLimitExceededException.md "class in javax.naming")

  This exception is thrown when a method
  produces a result that exceeds a size-related limit.

  [StringRefAddr](StringRefAddr.md "class in javax.naming")

  This class represents the string form of the address of
  a communications end-point.

  [TimeLimitExceededException](TimeLimitExceededException.md "class in javax.naming")

  This exception is thrown when a method
  does not terminate within the specified time limit.