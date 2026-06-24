Module [java.naming](../../module-summary.md)

Package [javax.naming](package-summary.md)

# Class NamingException

[java.lang.Object](../../../java.base/java/lang/Object.md "class in java.lang")

[java.lang.Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

[java.lang.Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

javax.naming.NamingException

All Implemented Interfaces:
:   `Serializable`

Direct Known Subclasses:
:   `AttributeInUseException`, `AttributeModificationException`, `CannotProceedException`, `CommunicationException`, `ConfigurationException`, `ContextNotEmptyException`, `InsufficientResourcesException`, `InterruptedNamingException`, `InvalidAttributeIdentifierException`, `InvalidAttributesException`, `InvalidAttributeValueException`, `InvalidNameException`, `InvalidSearchControlsException`, `InvalidSearchFilterException`, `LimitExceededException`, `LinkException`, `NameAlreadyBoundException`, `NameNotFoundException`, `NamingSecurityException`, `NoInitialContextException`, `NoSuchAttributeException`, `NotContextException`, `OperationNotSupportedException`, `PartialResultException`, `ReferralException`, `SchemaViolationException`, `ServiceUnavailableException`

---

public class NamingException
extends [Exception](../../../java.base/java/lang/Exception.md "class in java.lang")

This is the superclass of all exceptions thrown by
operations in the Context and DirContext interfaces.
The nature of the failure is described by the name of the subclass.
This exception captures the information pinpointing where the operation
failed, such as where resolution last proceeded to.

* Resolved Name. Portion of name that has been resolved.* Resolved Object. Object to which resolution of name proceeded.* Remaining Name. Portion of name that has not been resolved.* Explanation. Detail explaining why name resolution failed.* Root Exception. The exception that caused this naming exception
          to be thrown.

null is an acceptable value for any of these fields. When null,
it means that no such information has been recorded for that field.

A NamingException instance is not synchronized against concurrent
multithreaded access. Multiple threads trying to access and modify
a single NamingException instance should lock the object.

This exception has been retrofitted to conform to
the general purpose exception-chaining mechanism. The
*root exception* (or *root cause*) is the same object as the
*cause* returned by the [`Throwable.getCause()`](../../../java.base/java/lang/Throwable.md#getCause()) method.

Since:
:   1.3

See Also:
:   * [Serialized Form](../../../serialized-form.md#javax.naming.NamingException)

* ## Field Summary

  Fields

  Modifier and Type

  Field

  Description

  `protected Name`

  `remainingName`

  Contains the remaining name that has not been resolved yet.

  `protected Name`

  `resolvedName`

  Contains the part of the name that has been successfully resolved.

  `protected Object`

  `resolvedObj`

  Contains the object to which resolution of the part of the name was
  successful.

  `protected Throwable`

  `rootException`

  Contains the original exception that caused this NamingException to
  be thrown.
* ## Constructor Summary

  Constructors

  Constructor

  Description

  `NamingException()`

  Constructs a new NamingException.

  `NamingException(String explanation)`

  Constructs a new NamingException with an explanation.
* ## Method Summary

  All MethodsInstance MethodsConcrete Methods

  Modifier and Type

  Method

  Description

  `void`

  `appendRemainingComponent(String name)`

  Add name as the last component in remaining name.

  `void`

  `appendRemainingName(Name name)`

  Add components from 'name' as the last components in
  remaining name.

  `Throwable`

  `getCause()`

  Returns the cause of this exception.

  `String`

  `getExplanation()`

  Retrieves the explanation associated with this exception.

  `Name`

  `getRemainingName()`

  Retrieves the remaining unresolved portion of the name.

  `Name`

  `getResolvedName()`

  Retrieves the leading portion of the name that was resolved
  successfully.

  `Object`

  `getResolvedObj()`

  Retrieves the object to which resolution was successful.

  `Throwable`

  `getRootCause()`

  Retrieves the root cause of this NamingException, if any.

  `Throwable`

  `initCause(Throwable cause)`

  Initializes the cause of this exception to the specified value.

  `void`

  `setRemainingName(Name name)`

  Sets the remaining name field of this exception.

  `void`

  `setResolvedName(Name name)`

  Sets the resolved name field of this exception.

  `void`

  `setResolvedObj(Object obj)`

  Sets the resolved object field of this exception.

  `void`

  `setRootCause(Throwable e)`

  Records the root cause of this NamingException.

  `String`

  `toString()`

  Generates the string representation of this exception.

  `String`

  `toString(boolean detail)`

  Generates the string representation in more detail.

  ### Methods inherited from class java.lang.[Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang")

  `addSuppressed, fillInStackTrace, getLocalizedMessage, getMessage, getStackTrace, getSuppressed, printStackTrace, printStackTrace, printStackTrace, setStackTrace`

  ### Methods inherited from class java.lang.[Object](../../../java.base/java/lang/Object.md "class in java.lang")

  `clone, equals, finalize, getClass, hashCode, notify, notifyAll, wait, wait, wait`

* ## Field Details

  + ### resolvedName

    protected [Name](Name.md "interface in javax.naming") resolvedName

    Contains the part of the name that has been successfully resolved.
    It is a composite name and can be null.
    This field is initialized by the constructors.
    You should access and manipulate this field
    through its get and set methods.

    See Also:
    :   - [`getResolvedName()`](#getResolvedName())
        - [`setResolvedName(javax.naming.Name)`](#setResolvedName(javax.naming.Name))
  + ### resolvedObj

    protected [Object](../../../java.base/java/lang/Object.md "class in java.lang") resolvedObj

    Contains the object to which resolution of the part of the name was
    successful. Can be null.
    This field is initialized by the constructors.
    You should access and manipulate this field
    through its get and set methods.

    See Also:
    :   - [`getResolvedObj()`](#getResolvedObj())
        - [`setResolvedObj(java.lang.Object)`](#setResolvedObj(java.lang.Object))
  + ### remainingName

    protected [Name](Name.md "interface in javax.naming") remainingName

    Contains the remaining name that has not been resolved yet.
    It is a composite name and can be null.
    This field is initialized by the constructors.
    You should access and manipulate this field
    through its get, set, "append" methods.

    See Also:
    :   - [`getRemainingName()`](#getRemainingName())
        - [`setRemainingName(javax.naming.Name)`](#setRemainingName(javax.naming.Name))
        - [`appendRemainingName(javax.naming.Name)`](#appendRemainingName(javax.naming.Name))
        - [`appendRemainingComponent(java.lang.String)`](#appendRemainingComponent(java.lang.String))
  + ### rootException

    protected [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") rootException

    Contains the original exception that caused this NamingException to
    be thrown. This field is set if there is additional
    information that could be obtained from the original
    exception, or if the original exception could not be
    mapped to a subclass of NamingException.
    Can be null.

    This field predates the general-purpose exception chaining facility.
    The [`initCause(Throwable)`](#initCause(java.lang.Throwable)) and [`getCause()`](#getCause()) methods
    are now the preferred means of accessing this information.

    See Also:
    :   - [`getRootCause()`](#getRootCause())
        - [`setRootCause(Throwable)`](#setRootCause(java.lang.Throwable))
        - [`initCause(Throwable)`](#initCause(java.lang.Throwable))
        - [`getCause()`](#getCause())
* ## Constructor Details

  + ### NamingException

    public NamingException([String](../../../java.base/java/lang/String.md "class in java.lang") explanation)

    Constructs a new NamingException with an explanation.
    All unspecified fields are set to null.

    Parameters:
    :   `explanation` - A possibly null string containing
        additional detail about this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### NamingException

    public NamingException()

    Constructs a new NamingException.
    All fields are set to null.
* ## Method Details

  + ### getResolvedName

    public [Name](Name.md "interface in javax.naming") getResolvedName()

    Retrieves the leading portion of the name that was resolved
    successfully.

    Returns:
    :   The part of the name that was resolved successfully.
        It is a composite name. It can be null, which means
        the resolved name field has not been set.

    See Also:
    :   - [`getResolvedObj()`](#getResolvedObj())
        - [`setResolvedName(javax.naming.Name)`](#setResolvedName(javax.naming.Name))
  + ### getRemainingName

    public [Name](Name.md "interface in javax.naming") getRemainingName()

    Retrieves the remaining unresolved portion of the name.

    Returns:
    :   The part of the name that has not been resolved.
        It is a composite name. It can be null, which means
        the remaining name field has not been set.

    See Also:
    :   - [`setRemainingName(javax.naming.Name)`](#setRemainingName(javax.naming.Name))
        - [`appendRemainingName(javax.naming.Name)`](#appendRemainingName(javax.naming.Name))
        - [`appendRemainingComponent(java.lang.String)`](#appendRemainingComponent(java.lang.String))
  + ### getResolvedObj

    public [Object](../../../java.base/java/lang/Object.md "class in java.lang") getResolvedObj()

    Retrieves the object to which resolution was successful.
    This is the object to which the resolved name is bound.

    Returns:
    :   The possibly null object that was resolved so far.
        null means that the resolved object field has not been set.

    See Also:
    :   - [`getResolvedName()`](#getResolvedName())
        - [`setResolvedObj(java.lang.Object)`](#setResolvedObj(java.lang.Object))
  + ### getExplanation

    public [String](../../../java.base/java/lang/String.md "class in java.lang") getExplanation()

    Retrieves the explanation associated with this exception.

    Returns:
    :   The possibly null detail string explaining more
        about this exception. If null, it means there is no
        detail message for this exception.

    See Also:
    :   - [`Throwable.getMessage()`](../../../java.base/java/lang/Throwable.md#getMessage())
  + ### setResolvedName

    public void setResolvedName([Name](Name.md "interface in javax.naming") name)

    Sets the resolved name field of this exception.

    `name` is a composite name. If the intent is to set
    this field using a compound name or string, you must
    "stringify" the compound name, and create a composite
    name with a single component using the string. You can then
    invoke this method using the resulting composite name.

    A copy of `name` is made and stored.
    Subsequent changes to `name` do not
    affect the copy in this NamingException and vice versa.

    Parameters:
    :   `name` - The possibly null name to set resolved name to.
        If null, it sets the resolved name field to null.

    See Also:
    :   - [`getResolvedName()`](#getResolvedName())
  + ### setRemainingName

    public void setRemainingName([Name](Name.md "interface in javax.naming") name)

    Sets the remaining name field of this exception.

    `name` is a composite name. If the intent is to set
    this field using a compound name or string, you must
    "stringify" the compound name, and create a composite
    name with a single component using the string. You can then
    invoke this method using the resulting composite name.

    A copy of `name` is made and stored.
    Subsequent changes to `name` do not
    affect the copy in this NamingException and vice versa.

    Parameters:
    :   `name` - The possibly null name to set remaining name to.
        If null, it sets the remaining name field to null.

    See Also:
    :   - [`getRemainingName()`](#getRemainingName())
        - [`appendRemainingName(javax.naming.Name)`](#appendRemainingName(javax.naming.Name))
        - [`appendRemainingComponent(java.lang.String)`](#appendRemainingComponent(java.lang.String))
  + ### setResolvedObj

    public void setResolvedObj([Object](../../../java.base/java/lang/Object.md "class in java.lang") obj)

    Sets the resolved object field of this exception.

    Parameters:
    :   `obj` - The possibly null object to set resolved object to.
        If null, the resolved object field is set to null.

    See Also:
    :   - [`getResolvedObj()`](#getResolvedObj())
  + ### appendRemainingComponent

    public void appendRemainingComponent([String](../../../java.base/java/lang/String.md "class in java.lang") name)

    Add name as the last component in remaining name.

    Parameters:
    :   `name` - The component to add.
        If name is null, this method does not do anything.

    See Also:
    :   - [`setRemainingName(javax.naming.Name)`](#setRemainingName(javax.naming.Name))
        - [`getRemainingName()`](#getRemainingName())
        - [`appendRemainingName(javax.naming.Name)`](#appendRemainingName(javax.naming.Name))
  + ### appendRemainingName

    public void appendRemainingName([Name](Name.md "interface in javax.naming") name)

    Add components from 'name' as the last components in
    remaining name.

    `name` is a composite name. If the intent is to append
    a compound name, you should "stringify" the compound name
    then invoke the overloaded form that accepts a String parameter.

    Subsequent changes to `name` do not
    affect the remaining name field in this NamingException and vice versa.

    Parameters:
    :   `name` - The possibly null name containing ordered components to add.
        If name is null, this method does not do anything.

    See Also:
    :   - [`setRemainingName(javax.naming.Name)`](#setRemainingName(javax.naming.Name))
        - [`getRemainingName()`](#getRemainingName())
        - [`appendRemainingComponent(java.lang.String)`](#appendRemainingComponent(java.lang.String))
  + ### getRootCause

    public [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") getRootCause()

    Retrieves the root cause of this NamingException, if any.
    The root cause of a naming exception is used when the service provider
    wants to indicate to the caller a non-naming related exception
    but at the same time wants to use the NamingException structure
    to indicate how far the naming operation proceeded.

    This method predates the general-purpose exception chaining facility.
    The [`getCause()`](#getCause()) method is now the preferred means of obtaining
    this information.

    Returns:
    :   The possibly null exception that caused this naming
        exception. If null, it means no root cause has been
        set for this naming exception.

    See Also:
    :   - [`setRootCause(java.lang.Throwable)`](#setRootCause(java.lang.Throwable))
        - [`rootException`](#rootException)
        - [`getCause()`](#getCause())
  + ### setRootCause

    public void setRootCause([Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") e)

    Records the root cause of this NamingException.
    If `e` is `this`, this method does not do anything.

    This method predates the general-purpose exception chaining facility.
    The [`initCause(Throwable)`](#initCause(java.lang.Throwable)) method is now the preferred means
    of recording this information.

    Parameters:
    :   `e` - The possibly null exception that caused the naming
        operation to fail. If null, it means this naming
        exception has no root cause.

    See Also:
    :   - [`getRootCause()`](#getRootCause())
        - [`rootException`](#rootException)
        - [`initCause(java.lang.Throwable)`](#initCause(java.lang.Throwable))
  + ### getCause

    public [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") getCause()

    Returns the cause of this exception. The cause is the
    throwable that caused this naming exception to be thrown.
    Returns `null` if the cause is nonexistent or
    unknown.

    Overrides:
    :   `getCause` in class `Throwable`

    Returns:
    :   the cause of this exception, or `null` if the
        cause is nonexistent or unknown.

    Since:
    :   1.4

    See Also:
    :   - [`initCause(Throwable)`](#initCause(java.lang.Throwable))
  + ### initCause

    public [Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") initCause([Throwable](../../../java.base/java/lang/Throwable.md "class in java.lang") cause)

    Initializes the cause of this exception to the specified value.
    The cause is the throwable that caused this naming exception to be
    thrown.

    This method may be called at most once.

    Overrides:
    :   `initCause` in class `Throwable`

    Parameters:
    :   `cause` - the cause, which is saved for later retrieval by
        the [`getCause()`](#getCause()) method. A `null` value
        indicates that the cause is nonexistent or unknown.

    Returns:
    :   a reference to this `NamingException` instance.

    Throws:
    :   `IllegalArgumentException` - if `cause` is this
        exception. (A throwable cannot be its own cause.)
    :   `IllegalStateException` - if this method has already
        been called on this exception.

    Since:
    :   1.4

    See Also:
    :   - [`getCause()`](#getCause())
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString()

    Generates the string representation of this exception.
    The string representation consists of this exception's class name,
    its detailed message, and if it has a root cause, the string
    representation of the root cause exception, followed by
    the remaining name (if it is not null).
    This string is used for debugging and not meant to be interpreted
    programmatically.

    Overrides:
    :   `toString` in class `Throwable`

    Returns:
    :   The non-null string containing the string representation
        of this exception.
  + ### toString

    public [String](../../../java.base/java/lang/String.md "class in java.lang") toString(boolean detail)

    Generates the string representation in more detail.
    This string representation consists of the information returned
    by the toString() that takes no parameters, plus the string
    representation of the resolved object (if it is not null).
    This string is used for debugging and not meant to be interpreted
    programmatically.

    Parameters:
    :   `detail` - If true, include details about the resolved object
        in addition to the other information.

    Returns:
    :   The non-null string containing the string representation.